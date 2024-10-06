package p004b;

import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: b.m */
/* loaded from: classes.dex */
public final class RunnableC0279m implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ LayoutInflater$Factory2C0266j f1041b;

    /* renamed from: b.m$a */
    /* loaded from: classes.dex */
    public class C0280a extends C0736h {
        public C0280a() {
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            RunnableC0279m runnableC0279m = RunnableC0279m.this;
            runnableC0279m.f1041b.f997n.setAlpha(1.0f);
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = runnableC0279m.f1041b;
            layoutInflater$Factory2C0266j.f1000q.m21d(null);
            layoutInflater$Factory2C0266j.f1000q = null;
        }

        @Override // p046m1.C0736h, p076y.InterfaceC0961r
        /* renamed from: e */
        public final void mo17e() {
            RunnableC0279m.this.f1041b.f997n.setVisibility(0);
        }
    }

    public RunnableC0279m(LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j) {
        this.f1041b = layoutInflater$Factory2C0266j;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z;
        ViewGroup viewGroup;
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = this.f1041b;
        layoutInflater$Factory2C0266j.f998o.showAtLocation(layoutInflater$Factory2C0266j.f997n, 55, 0, 0);
        C0960q c0960q = layoutInflater$Factory2C0266j.f1000q;
        if (c0960q != null) {
            c0960q.m23b();
        }
        if (layoutInflater$Factory2C0266j.f1001r && (viewGroup = layoutInflater$Factory2C0266j.f1002s) != null) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (viewGroup.isLaidOut()) {
                z = true;
                if (!z) {
                    layoutInflater$Factory2C0266j.f997n.setAlpha(0.0f);
                    C0960q m35a = C0954m.m35a(layoutInflater$Factory2C0266j.f997n);
                    m35a.m24a(1.0f);
                    layoutInflater$Factory2C0266j.f1000q = m35a;
                    m35a.m21d(new C0280a());
                    return;
                }
                layoutInflater$Factory2C0266j.f997n.setAlpha(1.0f);
                layoutInflater$Factory2C0266j.f997n.setVisibility(0);
                return;
            }
        }
        z = false;
        if (!z) {
        }
    }
}
