package p074x0;

import android.view.View;
import p076y.C0954m;
/* renamed from: x0.d */
/* loaded from: classes.dex */
public final class C0934d {

    /* renamed from: a */
    public final View f2912a;

    /* renamed from: b */
    public int f2913b;

    /* renamed from: c */
    public int f2914c;

    /* renamed from: d */
    public int f2915d;

    public C0934d(View view) {
        this.f2912a = view;
    }

    /* renamed from: a */
    public final void m74a() {
        int i = this.f2915d;
        View view = this.f2912a;
        C0954m.m31e(view, i - (view.getTop() - this.f2913b));
        C0954m.m32d(view, 0 - (view.getLeft() - this.f2914c));
    }
}
