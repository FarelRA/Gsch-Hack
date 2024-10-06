package p045m0;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import p045m0.AbstractC0713m;
import p045m0.InterfaceC0699b;
/* renamed from: m0.t */
/* loaded from: classes.dex */
public final class C0728t implements AbstractC0713m.InterfaceC0715b {

    /* renamed from: a */
    public final HashMap f2519a = new HashMap();

    /* renamed from: b */
    public final InterfaceC0723q f2520b;

    /* renamed from: c */
    public final C0702d f2521c;

    /* renamed from: d */
    public final BlockingQueue<AbstractC0713m<?>> f2522d;

    public C0728t(C0702d c0702d, PriorityBlockingQueue priorityBlockingQueue, InterfaceC0723q interfaceC0723q) {
        this.f2520b = interfaceC0723q;
        this.f2521c = c0702d;
        this.f2522d = priorityBlockingQueue;
    }

    /* renamed from: a */
    public final synchronized boolean m318a(AbstractC0713m<?> abstractC0713m) {
        String m338d = abstractC0713m.m338d();
        if (!this.f2519a.containsKey(m338d)) {
            this.f2519a.put(m338d, null);
            abstractC0713m.m331l(this);
            if (C0725s.f2511a) {
                C0725s.m323b("new request, sending to network %s", m338d);
            }
            return false;
        }
        List list = (List) this.f2519a.get(m338d);
        if (list == null) {
            list = new ArrayList();
        }
        abstractC0713m.m340a("waiting-for-response");
        list.add(abstractC0713m);
        this.f2519a.put(m338d, list);
        if (C0725s.f2511a) {
            C0725s.m323b("Request for cacheKey=%s is in flight, putting on hold.", m338d);
        }
        return true;
    }

    /* renamed from: b */
    public final synchronized void m317b(AbstractC0713m<?> abstractC0713m) {
        BlockingQueue<AbstractC0713m<?>> blockingQueue;
        String m338d = abstractC0713m.m338d();
        List list = (List) this.f2519a.remove(m338d);
        if (list != null && !list.isEmpty()) {
            if (C0725s.f2511a) {
                C0725s.m321d("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), m338d);
            }
            AbstractC0713m<?> abstractC0713m2 = (AbstractC0713m) list.remove(0);
            this.f2519a.put(m338d, list);
            abstractC0713m2.m331l(this);
            if (this.f2521c != null && (blockingQueue = this.f2522d) != null) {
                try {
                    blockingQueue.put(abstractC0713m2);
                } catch (InterruptedException e) {
                    C0725s.m322c("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.f2521c.m343b();
                }
            }
        }
    }

    /* renamed from: c */
    public final void m316c(AbstractC0713m<?> abstractC0713m, C0720p<?> c0720p) {
        boolean z;
        List<AbstractC0713m> list;
        InterfaceC0699b.C0700a c0700a = c0720p.f2508b;
        if (c0700a != null) {
            if (c0700a.f2449e < System.currentTimeMillis()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                String m338d = abstractC0713m.m338d();
                synchronized (this) {
                    list = (List) this.f2519a.remove(m338d);
                }
                if (list != null) {
                    if (C0725s.f2511a) {
                        C0725s.m321d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), m338d);
                    }
                    for (AbstractC0713m abstractC0713m2 : list) {
                        ((C0705g) this.f2520b).m342a(abstractC0713m2, c0720p, null);
                    }
                    return;
                }
                return;
            }
        }
        m317b(abstractC0713m);
    }
}
