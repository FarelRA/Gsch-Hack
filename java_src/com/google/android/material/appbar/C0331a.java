package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: com.google.android.material.appbar.a */
/* loaded from: classes.dex */
public final class C0331a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f1184a;

    /* renamed from: b */
    public final /* synthetic */ AppBarLayout f1185b;

    /* renamed from: c */
    public final /* synthetic */ AppBarLayout.BaseBehavior f1186c;

    public C0331a(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f1186c = baseBehavior;
        this.f1184a = coordinatorLayout;
        this.f1185b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f1186c.m90A(this.f1184a, this.f1185b, intValue);
    }
}
