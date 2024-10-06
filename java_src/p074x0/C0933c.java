package p074x0;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: x0.c */
/* loaded from: classes.dex */
public class C0933c<V extends View> extends CoordinatorLayout.AbstractC0138c<V> {

    /* renamed from: a */
    public C0934d f2910a;

    /* renamed from: b */
    public int f2911b;

    public C0933c() {
        this.f2911b = 0;
    }

    public C0933c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2911b = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: f */
    public boolean mo77f(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo75t(coordinatorLayout, v, i);
        if (this.f2910a == null) {
            this.f2910a = new C0934d(v);
        }
        C0934d c0934d = this.f2910a;
        View view = c0934d.f2912a;
        c0934d.f2913b = view.getTop();
        c0934d.f2914c = view.getLeft();
        c0934d.m74a();
        int i2 = this.f2911b;
        if (i2 != 0) {
            C0934d c0934d2 = this.f2910a;
            if (c0934d2.f2915d != i2) {
                c0934d2.f2915d = i2;
                c0934d2.m74a();
            }
            this.f2911b = 0;
            return true;
        }
        return true;
    }

    /* renamed from: s */
    public final int m76s() {
        C0934d c0934d = this.f2910a;
        if (c0934d != null) {
            return c0934d.f2915d;
        }
        return 0;
    }

    /* renamed from: t */
    public void mo75t(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m1253q(v, i);
    }
}
