package p073x;
/* renamed from: x.c */
/* loaded from: classes.dex */
public final class C0929c<T> extends C0928b {

    /* renamed from: d */
    public final Object f2895d;

    public C0929c() {
        super(12);
        this.f2895d = new Object();
    }

    @Override // p073x.C0928b
    /* renamed from: a */
    public final T mo92a() {
        T t;
        synchronized (this.f2895d) {
            t = (T) super.mo92a();
        }
        return t;
    }

    @Override // p073x.C0928b
    /* renamed from: b */
    public final boolean mo91b(T t) {
        boolean mo91b;
        synchronized (this.f2895d) {
            mo91b = super.mo91b(t);
        }
        return mo91b;
    }
}
