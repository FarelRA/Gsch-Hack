package p066u0;
/* renamed from: u0.g */
/* loaded from: classes.dex */
public final class RunnableC0883g implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ C0888l f2790b;

    /* renamed from: c */
    public final /* synthetic */ C0884h f2791c;

    public RunnableC0883g(C0884h c0884h, C0888l c0888l) {
        this.f2791c = c0884h;
        this.f2790b = c0888l;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f2791c.f2793b) {
            InterfaceC0878b interfaceC0878b = this.f2791c.f2794c;
            if (interfaceC0878b != null) {
                interfaceC0878b.mo127b(this.f2790b);
            }
        }
    }
}
