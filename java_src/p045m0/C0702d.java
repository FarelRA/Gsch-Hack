package p045m0;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import p045m0.InterfaceC0699b;
import p047n0.C0747c;
/* renamed from: m0.d */
/* loaded from: classes.dex */
public final class C0702d extends Thread {

    /* renamed from: h */
    public static final boolean f2455h = C0725s.f2511a;

    /* renamed from: b */
    public final BlockingQueue<AbstractC0713m<?>> f2456b;

    /* renamed from: c */
    public final BlockingQueue<AbstractC0713m<?>> f2457c;

    /* renamed from: d */
    public final InterfaceC0699b f2458d;

    /* renamed from: e */
    public final InterfaceC0723q f2459e;

    /* renamed from: f */
    public volatile boolean f2460f = false;

    /* renamed from: g */
    public final C0728t f2461g;

    public C0702d(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, InterfaceC0699b interfaceC0699b, InterfaceC0723q interfaceC0723q) {
        this.f2456b = priorityBlockingQueue;
        this.f2457c = priorityBlockingQueue2;
        this.f2458d = interfaceC0699b;
        this.f2459e = interfaceC0723q;
        this.f2461g = new C0728t(this, priorityBlockingQueue2, interfaceC0723q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x002e, code lost:
        if (r12.f2461g.m318a(r0) == false) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m344a() {
        boolean z;
        boolean z2;
        AbstractC0713m<?> take = this.f2456b.take();
        take.m340a("cache-queue-take");
        take.m332k(1);
        try {
            take.m336f();
            InterfaceC0699b.C0700a m267a = ((C0747c) this.f2458d).m267a(take.m338d());
            if (m267a == null) {
                take.m340a("cache-miss");
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                boolean z3 = false;
                if (m267a.f2449e < currentTimeMillis) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    take.m340a("cache-hit-expired");
                    take.f2491l = m267a;
                    if (!this.f2461g.m318a(take)) {
                        this.f2457c.put(take);
                    }
                }
                take.m340a("cache-hit");
                C0720p<?> mo237j = take.mo237j(new C0712l(m267a.f2445a, m267a.f2451g));
                take.m340a("cache-hit-parsed");
                if (mo237j.f2509c == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    take.m340a("cache-parsing-failed");
                    InterfaceC0699b interfaceC0699b = this.f2458d;
                    String m338d = take.m338d();
                    C0747c c0747c = (C0747c) interfaceC0699b;
                    synchronized (c0747c) {
                        InterfaceC0699b.C0700a m267a2 = c0747c.m267a(m338d);
                        if (m267a2 != null) {
                            m267a2.f2450f = 0L;
                            m267a2.f2449e = 0L;
                            c0747c.m262f(m338d, m267a2);
                        }
                    }
                    take.f2491l = null;
                    if (!this.f2461g.m318a(take)) {
                        this.f2457c.put(take);
                    }
                } else {
                    if (m267a.f2450f < currentTimeMillis) {
                        z3 = true;
                    }
                    if (z3) {
                        take.m340a("cache-hit-refresh-needed");
                        take.f2491l = m267a;
                        mo237j.f2510d = true;
                        if (!this.f2461g.m318a(take)) {
                            ((C0705g) this.f2459e).m342a(take, mo237j, new RunnableC0701c(this, take));
                        }
                    }
                    ((C0705g) this.f2459e).m342a(take, mo237j, null);
                }
            }
        } finally {
            take.m332k(2);
        }
    }

    /* renamed from: b */
    public final void m343b() {
        this.f2460f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f2455h) {
            C0725s.m321d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        ((C0747c) this.f2458d).m264d();
        while (true) {
            try {
                m344a();
            } catch (InterruptedException unused) {
                if (this.f2460f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C0725s.m322c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
