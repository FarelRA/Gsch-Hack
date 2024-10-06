package p045m0;
/* renamed from: m0.c */
/* loaded from: classes.dex */
public final class RunnableC0701c implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ AbstractC0713m f2453b;

    /* renamed from: c */
    public final /* synthetic */ C0702d f2454c;

    public RunnableC0701c(C0702d c0702d, AbstractC0713m abstractC0713m) {
        this.f2454c = c0702d;
        this.f2453b = abstractC0713m;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f2454c.f2457c.put(this.f2453b);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
