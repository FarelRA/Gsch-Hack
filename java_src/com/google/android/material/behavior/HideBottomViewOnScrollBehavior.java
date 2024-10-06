package com.google.android.material.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p021f0.AbstractanimationInterpolatorC0475d;
import p071w0.C0916a;
import p077y0.C0964a;
/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.AbstractC0138c<V> {

    /* renamed from: a */
    public int f1187a;

    /* renamed from: b */
    public int f1188b;

    /* renamed from: c */
    public ViewPropertyAnimator f1189c;

    public HideBottomViewOnScrollBehavior() {
        this.f1187a = 0;
        this.f1188b = 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1187a = 0;
        this.f1188b = 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: f */
    public boolean mo77f(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f1187a = v.getMeasuredHeight();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: j */
    public final void mo974j(View view, int i) {
        int i2 = this.f1188b;
        if (i2 != 1 && i > 0) {
            mo968t(view);
        } else if (i2 == 2 || i >= 0) {
        } else {
            mo967u(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: o */
    public final boolean mo973o(int i) {
        return i == 2;
    }

    /* renamed from: s */
    public final void m972s(View view, int i, long j, AbstractanimationInterpolatorC0475d abstractanimationInterpolatorC0475d) {
        this.f1189c = view.animate().translationY(i).setInterpolator(abstractanimationInterpolatorC0475d).setDuration(j).setListener(new C0964a(this));
    }

    /* renamed from: t */
    public void mo968t(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f1189c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f1188b = 1;
        m972s(v, this.f1187a, 175L, C0916a.f2874c);
    }

    /* renamed from: u */
    public void mo967u(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f1189c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f1188b = 2;
        m972s(v, 0, 225L, C0916a.f2875d);
    }
}
