package p004b;

import android.view.View;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: b.n */
/* loaded from: classes.dex */
public final class C0281n extends C0736h {

    /* renamed from: h0 */
    public final /* synthetic */ LayoutInflater$Factory2C0266j f1043h0;

    public C0281n(LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j) {
        this.f1043h0 = layoutInflater$Factory2C0266j;
    }

    @Override // p076y.InterfaceC0961r
    /* renamed from: b */
    public final void mo19b() {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = this.f1043h0;
        layoutInflater$Factory2C0266j.f997n.setAlpha(1.0f);
        layoutInflater$Factory2C0266j.f1000q.m21d(null);
        layoutInflater$Factory2C0266j.f1000q = null;
    }

    @Override // p046m1.C0736h, p076y.InterfaceC0961r
    /* renamed from: e */
    public final void mo17e() {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = this.f1043h0;
        layoutInflater$Factory2C0266j.f997n.setVisibility(0);
        layoutInflater$Factory2C0266j.f997n.sendAccessibilityEvent(32);
        if (layoutInflater$Factory2C0266j.f997n.getParent() instanceof View) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            ((View) layoutInflater$Factory2C0266j.f997n.getParent()).requestApplyInsets();
        }
    }
}
