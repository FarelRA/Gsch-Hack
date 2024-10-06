package p046m1;

import android.util.Base64;
import android.util.Log;
import p051o1.C0808l;
import p051o1.C0811o;
import p051o1.C0815s;
import p066u0.C0880d;
import p066u0.C0882f;
import p066u0.C0888l;
/* renamed from: m1.i */
/* loaded from: classes.dex */
public final class C0737i implements InterfaceC0729a {

    /* renamed from: a */
    public final C0741m f2587a;

    public C0737i(C0741m c0741m) {
        this.f2587a = c0741m;
    }

    @Override // p046m1.InterfaceC0729a
    /* renamed from: a */
    public final C0888l mo273a(C0733e c0733e) {
        C0741m c0741m = this.f2587a;
        if (c0741m.f2599c == null) {
            return C0882f.m124a(new C0730b(-2, null));
        }
        try {
            byte[] decode = Base64.decode(c0733e.f2524a, 10);
            Long l = c0733e.f2525b;
            c0741m.f2597a.m214a("requestIntegrityToken(%s)", c0733e);
            C0880d c0880d = new C0880d();
            C0815s c0815s = c0741m.f2599c;
            C0739k c0739k = new C0739k(c0741m, c0880d, decode, l, c0880d, c0733e);
            synchronized (c0815s.f2700f) {
                c0815s.f2699e.add(c0880d);
                c0880d.f2788a.m121a(new C0743o(c0815s, c0880d));
            }
            synchronized (c0815s.f2700f) {
                if (c0815s.f2705k.getAndIncrement() > 0) {
                    C0808l c0808l = c0815s.f2696b;
                    Object[] objArr = new Object[0];
                    c0808l.getClass();
                    if (Log.isLoggable("PlayCore", 3)) {
                        Log.d("PlayCore", C0808l.m213b(c0808l.f2685a, "Already connected to the service.", objArr));
                    }
                }
            }
            c0815s.m209a().post(new C0811o(c0815s, c0880d, c0739k));
            return c0880d.f2788a;
        } catch (IllegalArgumentException e) {
            return C0882f.m124a(new C0730b(-13, e));
        }
    }
}
