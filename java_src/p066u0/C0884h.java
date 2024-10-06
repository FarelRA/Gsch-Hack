package p066u0;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: u0.h */
/* loaded from: classes.dex */
public final class C0884h implements InterfaceC0885i {

    /* renamed from: a */
    public final Executor f2792a;

    /* renamed from: b */
    public final Object f2793b = new Object();
    @GuardedBy("mLock")
    @Nullable

    /* renamed from: c */
    public final InterfaceC0878b f2794c;

    public C0884h(ExecutorC0887k executorC0887k, InterfaceC0878b interfaceC0878b) {
        this.f2792a = executorC0887k;
        this.f2794c = interfaceC0878b;
    }

    @Override // p066u0.InterfaceC0885i
    /* renamed from: a */
    public final void mo123a(C0888l c0888l) {
        synchronized (this.f2793b) {
            if (this.f2794c == null) {
                return;
            }
            this.f2792a.execute(new RunnableC0883g(this, c0888l));
        }
    }
}
