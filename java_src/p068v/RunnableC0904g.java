package p068v;

import android.os.Handler;
import java.util.concurrent.Callable;
import p068v.C0901f;
/* renamed from: v.g */
/* loaded from: classes.dex */
public final class RunnableC0904g implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ Callable f2851b;

    /* renamed from: c */
    public final /* synthetic */ Handler f2852c;

    /* renamed from: d */
    public final /* synthetic */ C0901f.InterfaceC0903b f2853d;

    /* renamed from: v.g$a */
    /* loaded from: classes.dex */
    public class RunnableC0905a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ Object f2854b;

        public RunnableC0905a(Object obj) {
            this.f2854b = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC0904g.this.f2853d.mo103a(this.f2854b);
        }
    }

    public RunnableC0904g(CallableC0893b callableC0893b, Handler handler, C0895d c0895d) {
        this.f2851b = callableC0893b;
        this.f2852c = handler;
        this.f2853d = c0895d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        try {
            obj = this.f2851b.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.f2852c.post(new RunnableC0905a(obj));
    }
}
