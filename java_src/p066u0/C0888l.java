package p066u0;

import java.util.ArrayDeque;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: u0.l */
/* loaded from: classes.dex */
public final class C0888l<TResult> {

    /* renamed from: a */
    public final Object f2799a = new Object();

    /* renamed from: b */
    public final C0886j f2800b = new C0886j();
    @GuardedBy("mLock")

    /* renamed from: c */
    public boolean f2801c;
    @GuardedBy("mLock")

    /* renamed from: d */
    public Object f2802d;
    @GuardedBy("mLock")

    /* renamed from: e */
    public Exception f2803e;

    /* renamed from: a */
    public final void m121a(InterfaceC0878b interfaceC0878b) {
        ExecutorC0887k executorC0887k = C0881e.f2789a;
        C0886j c0886j = this.f2800b;
        C0884h c0884h = new C0884h(executorC0887k, interfaceC0878b);
        synchronized (c0886j.f2795a) {
            try {
                if (c0886j.f2796b == null) {
                    c0886j.f2796b = new ArrayDeque();
                }
                c0886j.f2796b.add(c0884h);
            } catch (Throwable th) {
                throw th;
            }
        }
        m116f();
    }

    /* renamed from: b */
    public final Exception m120b() {
        Exception exc;
        synchronized (this.f2799a) {
            exc = this.f2803e;
        }
        return exc;
    }

    /* renamed from: c */
    public final TResult m119c() {
        TResult tresult;
        synchronized (this.f2799a) {
            if (this.f2801c) {
                Exception exc = this.f2803e;
                if (exc == null) {
                    tresult = (TResult) this.f2802d;
                } else {
                    throw new C0879c(exc);
                }
            } else {
                throw new IllegalStateException("Task is not yet complete");
            }
        }
        return tresult;
    }

    /* renamed from: d */
    public final boolean m118d() {
        boolean z;
        synchronized (this.f2799a) {
            z = false;
            if (this.f2801c && this.f2803e == null) {
                z = true;
            }
        }
        return z;
    }

    @GuardedBy("mLock")
    /* renamed from: e */
    public final void m117e() {
        boolean z;
        String str;
        if (this.f2801c) {
            int i = C0877a.f2787a;
            synchronized (this.f2799a) {
                z = this.f2801c;
            }
            if (z) {
                Exception m120b = m120b();
                if (m120b == null) {
                    if (m118d()) {
                        str = "result ".concat(String.valueOf(m119c()));
                    } else {
                        str = "unknown issue";
                    }
                } else {
                    str = "failure";
                }
                throw new C0877a("Complete with: ".concat(str), m120b);
            }
            throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
    }

    /* renamed from: f */
    public final void m116f() {
        synchronized (this.f2799a) {
            if (this.f2801c) {
                this.f2800b.m122a(this);
            }
        }
    }
}
