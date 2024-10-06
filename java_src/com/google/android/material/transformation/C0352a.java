package com.google.android.material.transformation;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: com.google.android.material.transformation.a */
/* loaded from: classes.dex */
public final class C0352a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ View f1354a;

    public C0352a(View view) {
        this.f1354a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1354a.invalidate();
    }
}
