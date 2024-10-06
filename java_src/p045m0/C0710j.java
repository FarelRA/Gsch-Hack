package p045m0;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import p045m0.AbstractC0713m;
import p045m0.C0705g;
import p047n0.C0744a;
import p047n0.C0747c;
/* renamed from: m0.j */
/* loaded from: classes.dex */
public final class C0710j extends Thread {

    /* renamed from: b */
    public final BlockingQueue<AbstractC0713m<?>> f2471b;

    /* renamed from: c */
    public final InterfaceC0709i f2472c;

    /* renamed from: d */
    public final InterfaceC0699b f2473d;

    /* renamed from: e */
    public final InterfaceC0723q f2474e;

    /* renamed from: f */
    public volatile boolean f2475f = false;

    public C0710j(PriorityBlockingQueue priorityBlockingQueue, InterfaceC0709i interfaceC0709i, InterfaceC0699b interfaceC0699b, InterfaceC0723q interfaceC0723q) {
        this.f2471b = priorityBlockingQueue;
        this.f2472c = interfaceC0709i;
        this.f2473d = interfaceC0699b;
        this.f2474e = interfaceC0723q;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00cb A[Catch: all -> 0x00d9, TRY_ENTER, TryCatch #3 {all -> 0x0071, blocks: (B:3:0x0013, B:5:0x0031, B:7:0x0037, B:8:0x0041, B:10:0x004e, B:12:0x0052, B:13:0x0064, B:18:0x0074, B:21:0x00c8, B:22:0x00ca, B:26:0x00d0, B:20:0x00ac, B:23:0x00cb, B:24:0x00cd), top: B:35:0x0013 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m341a() {
        AbstractC0713m.InterfaceC0715b interfaceC0715b;
        AbstractC0713m<?> take = this.f2471b.take();
        InterfaceC0723q interfaceC0723q = this.f2474e;
        SystemClock.elapsedRealtime();
        take.m332k(3);
        try {
            try {
                take.m340a("network-queue-take");
                take.m336f();
                TrafficStats.setThreadStatsTag(take.f2483d);
                C0712l m271a = ((C0744a) this.f2472c).m271a(take);
                take.m340a("network-http-complete");
                if (m271a.f2479d && take.m337e()) {
                    take.m339c("not-modified");
                    take.m334h();
                } else {
                    C0720p<?> mo237j = take.mo237j(m271a);
                    take.m340a("network-parse-complete");
                    if (take.f2488i && mo237j.f2508b != null) {
                        ((C0747c) this.f2473d).m262f(take.m338d(), mo237j.f2508b);
                        take.m340a("network-cache-written");
                    }
                    take.m335g();
                    ((C0705g) interfaceC0723q).m342a(take, mo237j, null);
                    take.m333i(mo237j);
                }
            } catch (C0724r e) {
                SystemClock.elapsedRealtime();
                C0705g c0705g = (C0705g) interfaceC0723q;
                c0705g.getClass();
                take.m340a("post-error");
                c0705g.f2464a.execute(new C0705g.RunnableC0707b(take, new C0720p(e), null));
                synchronized (take.f2484e) {
                    interfaceC0715b = take.f2492m;
                }
                if (interfaceC0715b != null) {
                    ((C0728t) interfaceC0715b).m317b(take);
                }
            } catch (Exception e2) {
                Log.e("Volley", C0725s.m324a("Unhandled exception %s", e2.toString()), e2);
                C0724r c0724r = new C0724r(e2);
                SystemClock.elapsedRealtime();
                C0705g c0705g2 = (C0705g) interfaceC0723q;
                c0705g2.getClass();
                take.m340a("post-error");
                c0705g2.f2464a.execute(new C0705g.RunnableC0707b(take, new C0720p(c0724r), null));
                synchronized (take.f2484e) {
                }
            }
        } finally {
            take.m332k(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m341a();
            } catch (InterruptedException unused) {
                if (this.f2475f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C0725s.m322c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
