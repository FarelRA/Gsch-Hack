package p045m0;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import p047n0.C0744a;
import p047n0.C0747c;
import p047n0.C0758i;
/* renamed from: m0.o */
/* loaded from: classes.dex */
public final class C0717o {

    /* renamed from: a */
    public final AtomicInteger f2496a;

    /* renamed from: b */
    public final HashSet f2497b;

    /* renamed from: c */
    public final PriorityBlockingQueue<AbstractC0713m<?>> f2498c;

    /* renamed from: d */
    public final PriorityBlockingQueue<AbstractC0713m<?>> f2499d;

    /* renamed from: e */
    public final InterfaceC0699b f2500e;

    /* renamed from: f */
    public final InterfaceC0709i f2501f;

    /* renamed from: g */
    public final InterfaceC0723q f2502g;

    /* renamed from: h */
    public final C0710j[] f2503h;

    /* renamed from: i */
    public C0702d f2504i;

    /* renamed from: j */
    public final ArrayList f2505j;

    /* renamed from: k */
    public final ArrayList f2506k;

    /* renamed from: m0.o$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0718a {
        /* renamed from: a */
        void m326a();
    }

    @Deprecated
    /* renamed from: m0.o$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0719b<T> {
        /* renamed from: a */
        void m325a();
    }

    public C0717o(C0747c c0747c, C0744a c0744a) {
        C0705g c0705g = new C0705g(new Handler(Looper.getMainLooper()));
        this.f2496a = new AtomicInteger();
        this.f2497b = new HashSet();
        this.f2498c = new PriorityBlockingQueue<>();
        this.f2499d = new PriorityBlockingQueue<>();
        this.f2505j = new ArrayList();
        this.f2506k = new ArrayList();
        this.f2500e = c0747c;
        this.f2501f = c0744a;
        this.f2503h = new C0710j[4];
        this.f2502g = c0705g;
    }

    /* renamed from: a */
    public final void m328a(C0758i c0758i) {
        c0758i.f2487h = this;
        synchronized (this.f2497b) {
            this.f2497b.add(c0758i);
        }
        c0758i.f2486g = Integer.valueOf(this.f2496a.incrementAndGet());
        c0758i.m340a("add-to-queue");
        m327b(c0758i, 0);
        if (!c0758i.f2488i) {
            this.f2499d.add(c0758i);
        } else {
            this.f2498c.add(c0758i);
        }
    }

    /* renamed from: b */
    public final void m327b(AbstractC0713m<?> abstractC0713m, int i) {
        synchronized (this.f2506k) {
            Iterator it = this.f2506k.iterator();
            while (it.hasNext()) {
                ((InterfaceC0718a) it.next()).m326a();
            }
        }
    }
}
