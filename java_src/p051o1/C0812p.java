package p051o1;
/* renamed from: o1.p */
/* loaded from: classes.dex */
public final class C0812p extends AbstractRunnableC0809m {

    /* renamed from: c */
    public final /* synthetic */ int f2691c;

    /* renamed from: d */
    public final /* synthetic */ Object f2692d;

    public /* synthetic */ C0812p(int i, Object obj) {
        this.f2691c = i;
        this.f2692d = obj;
    }

    @Override // p051o1.AbstractRunnableC0809m
    /* renamed from: b */
    public final void mo211b() {
        int i = this.f2691c;
        Object obj = this.f2692d;
        switch (i) {
            case 0:
                C0815s c0815s = (C0815s) obj;
                if (c0815s.f2707m != null) {
                    c0815s.f2696b.m214a("Unbind from service.", new Object[0]);
                    c0815s.f2695a.unbindService(c0815s.f2706l);
                    c0815s.f2701g = false;
                    c0815s.f2707m = null;
                    c0815s.f2706l = null;
                }
                c0815s.m208b();
                return;
            default:
                ServiceConnectionC0814r serviceConnectionC0814r = (ServiceConnectionC0814r) obj;
                C0815s c0815s2 = serviceConnectionC0814r.f2693a;
                c0815s2.f2696b.m214a("unlinkToDeath", new Object[0]);
                c0815s2.f2707m.asBinder().unlinkToDeath(c0815s2.f2704j, 0);
                C0815s c0815s3 = serviceConnectionC0814r.f2693a;
                c0815s3.f2707m = null;
                c0815s3.f2701g = false;
                return;
        }
    }
}
