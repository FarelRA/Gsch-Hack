package p045m0;

import android.os.Handler;
import java.util.concurrent.Executor;
import p045m0.C0720p;
/* renamed from: m0.g */
/* loaded from: classes.dex */
public final class C0705g implements InterfaceC0723q {

    /* renamed from: a */
    public final ExecutorC0706a f2464a;

    /* renamed from: m0.g$a */
    /* loaded from: classes.dex */
    public class ExecutorC0706a implements Executor {

        /* renamed from: a */
        public final /* synthetic */ Handler f2465a;

        public ExecutorC0706a(Handler handler) {
            this.f2465a = handler;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f2465a.post(runnable);
        }
    }

    /* renamed from: m0.g$b */
    /* loaded from: classes.dex */
    public static class RunnableC0707b implements Runnable {

        /* renamed from: b */
        public final AbstractC0713m f2466b;

        /* renamed from: c */
        public final C0720p f2467c;

        /* renamed from: d */
        public final Runnable f2468d;

        public RunnableC0707b(AbstractC0713m abstractC0713m, C0720p c0720p, RunnableC0701c runnableC0701c) {
            this.f2466b = abstractC0713m;
            this.f2467c = c0720p;
            this.f2468d = runnableC0701c;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            C0720p.InterfaceC0721a interfaceC0721a;
            this.f2466b.m336f();
            C0720p c0720p = this.f2467c;
            C0724r c0724r = c0720p.f2509c;
            if (c0724r == null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f2466b.mo238b(c0720p.f2507a);
            } else {
                AbstractC0713m abstractC0713m = this.f2466b;
                synchronized (abstractC0713m.f2484e) {
                    interfaceC0721a = abstractC0713m.f2485f;
                }
                if (interfaceC0721a != null) {
                    interfaceC0721a.mo232a(c0724r);
                }
            }
            if (this.f2467c.f2510d) {
                this.f2466b.m340a("intermediate-response");
            } else {
                this.f2466b.m339c("done");
            }
            Runnable runnable = this.f2468d;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public C0705g(Handler handler) {
        this.f2464a = new ExecutorC0706a(handler);
    }

    /* renamed from: a */
    public final void m342a(AbstractC0713m abstractC0713m, C0720p c0720p, RunnableC0701c runnableC0701c) {
        synchronized (abstractC0713m.f2484e) {
            abstractC0713m.f2489j = true;
        }
        abstractC0713m.m340a("post-response");
        this.f2464a.execute(new RunnableC0707b(abstractC0713m, c0720p, runnableC0701c));
    }
}
