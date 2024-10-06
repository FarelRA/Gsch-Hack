package p066u0;

import android.os.Looper;
import java.util.concurrent.Executor;
import p064t0.HandlerC0875a;
/* renamed from: u0.k */
/* loaded from: classes.dex */
public final class ExecutorC0887k implements Executor {

    /* renamed from: a */
    public final HandlerC0875a f2798a = new HandlerC0875a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2798a.post(runnable);
    }
}
