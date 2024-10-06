package p051o1;
/* renamed from: o1.v */
/* loaded from: classes.dex */
public final class C0818v implements InterfaceC0799c {

    /* renamed from: c */
    public static final Object f2709c = new Object();

    /* renamed from: a */
    public volatile InterfaceC0799c f2710a;

    /* renamed from: b */
    public volatile Object f2711b = f2709c;

    public C0818v(InterfaceC0797a interfaceC0797a) {
        this.f2710a = interfaceC0797a;
    }

    @Override // p051o1.InterfaceC0799c
    /* renamed from: a */
    public final Object mo207a() {
        Object obj = this.f2711b;
        Object obj2 = f2709c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f2711b;
                if (obj == obj2) {
                    obj = this.f2710a.mo207a();
                    Object obj3 = this.f2711b;
                    if (obj3 != obj2 && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f2711b = obj;
                    this.f2710a = null;
                }
            }
        }
        return obj;
    }
}
