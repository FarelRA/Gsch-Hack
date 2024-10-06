package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C0191b;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes.dex */
public final class C0242l implements C0191b.InterfaceC0193b {

    /* renamed from: a */
    public final /* synthetic */ C0212k f944a;

    public C0242l(C0212k c0212k) {
        this.f944a = c0212k;
    }

    /* renamed from: a */
    public final int m1059a() {
        return this.f944a.getChildCount();
    }

    /* renamed from: b */
    public final void m1058b(int i) {
        C0212k c0212k = this.f944a;
        View childAt = c0212k.getChildAt(i);
        if (childAt != null) {
            c0212k.getClass();
            C0212k.m1132m(childAt);
            childAt.clearAnimation();
        }
        c0212k.removeViewAt(i);
    }
}
