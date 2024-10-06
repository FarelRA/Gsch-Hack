package p016e;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p046m1.C0736h;
import p076y.C0960q;
import p076y.InterfaceC0961r;
/* renamed from: e.g */
/* loaded from: classes.dex */
public final class C0403g {

    /* renamed from: c */
    public Interpolator f1515c;

    /* renamed from: d */
    public InterfaceC0961r f1516d;

    /* renamed from: e */
    public boolean f1517e;

    /* renamed from: b */
    public long f1514b = -1;

    /* renamed from: f */
    public final C0404a f1518f = new C0404a();

    /* renamed from: a */
    public final ArrayList<C0960q> f1513a = new ArrayList<>();

    /* renamed from: e.g$a */
    /* loaded from: classes.dex */
    public class C0404a extends C0736h {

        /* renamed from: h0 */
        public boolean f1519h0 = false;

        /* renamed from: i0 */
        public int f1520i0 = 0;

        public C0404a() {
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            int i = this.f1520i0 + 1;
            this.f1520i0 = i;
            C0403g c0403g = C0403g.this;
            if (i == c0403g.f1513a.size()) {
                InterfaceC0961r interfaceC0961r = c0403g.f1516d;
                if (interfaceC0961r != null) {
                    interfaceC0961r.mo19b();
                }
                this.f1520i0 = 0;
                this.f1519h0 = false;
                c0403g.f1517e = false;
            }
        }

        @Override // p046m1.C0736h, p076y.InterfaceC0961r
        /* renamed from: e */
        public final void mo17e() {
            if (this.f1519h0) {
                return;
            }
            this.f1519h0 = true;
            InterfaceC0961r interfaceC0961r = C0403g.this.f1516d;
            if (interfaceC0961r != null) {
                interfaceC0961r.mo17e();
            }
        }
    }

    /* renamed from: a */
    public final void m828a() {
        if (this.f1517e) {
            Iterator<C0960q> it = this.f1513a.iterator();
            while (it.hasNext()) {
                it.next().m23b();
            }
            this.f1517e = false;
        }
    }

    /* renamed from: b */
    public final void m827b() {
        View view;
        if (this.f1517e) {
            return;
        }
        Iterator<C0960q> it = this.f1513a.iterator();
        while (it.hasNext()) {
            C0960q next = it.next();
            long j = this.f1514b;
            if (j >= 0) {
                next.m22c(j);
            }
            Interpolator interpolator = this.f1515c;
            if (interpolator != null && (view = next.f2946a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f1516d != null) {
                next.m21d(this.f1518f);
            }
            View view2 = next.f2946a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f1517e = true;
    }
}
