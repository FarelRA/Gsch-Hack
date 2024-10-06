package p046m1;

import android.os.RemoteException;
import android.util.Log;
import p051o1.AbstractRunnableC0809m;
import p051o1.C0808l;
import p051o1.C0816t;
import p066u0.C0880d;
/* renamed from: m1.k */
/* loaded from: classes.dex */
public final class C0739k extends AbstractRunnableC0809m {

    /* renamed from: c */
    public final /* synthetic */ byte[] f2589c;

    /* renamed from: d */
    public final /* synthetic */ Long f2590d;

    /* renamed from: e */
    public final /* synthetic */ C0880d f2591e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC0731c f2592f;

    /* renamed from: g */
    public final /* synthetic */ C0741m f2593g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0739k(C0741m c0741m, C0880d c0880d, byte[] bArr, Long l, C0880d c0880d2, C0733e c0733e) {
        super(c0880d);
        this.f2593g = c0741m;
        this.f2589c = bArr;
        this.f2590d = l;
        this.f2591e = c0880d2;
        this.f2592f = c0733e;
    }

    @Override // p051o1.AbstractRunnableC0809m
    /* renamed from: a */
    public final void mo212a(Exception exc) {
        if (exc instanceof C0816t) {
            super.mo212a(new C0730b(-9, exc));
        } else {
            super.mo212a(exc);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [android.os.IInterface, o1.j] */
    @Override // p051o1.AbstractRunnableC0809m
    /* renamed from: b */
    public final void mo211b() {
        C0880d c0880d = this.f2591e;
        C0741m c0741m = this.f2593g;
        try {
            c0741m.f2599c.f2707m.mo215a(C0741m.m272a(c0741m, this.f2589c, this.f2590d), new BinderC0740l(c0741m, c0880d));
        } catch (RemoteException e) {
            C0808l c0808l = c0741m.f2597a;
            Object[] objArr = {this.f2592f};
            c0808l.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", C0808l.m213b(c0808l.f2685a, "requestIntegrityToken(%s)", objArr), e);
            }
            c0880d.m126a(new C0730b(-100, e));
        }
    }
}
