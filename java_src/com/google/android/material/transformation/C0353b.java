package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import p006b1.InterfaceC0309d;
/* renamed from: com.google.android.material.transformation.b */
/* loaded from: classes.dex */
public final class C0353b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0309d f1355a;

    /* renamed from: b */
    public final /* synthetic */ Drawable f1356b;

    public C0353b(InterfaceC0309d interfaceC0309d, Drawable drawable) {
        this.f1355a = interfaceC0309d;
        this.f1356b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1355a.setCircularRevealOverlayDrawable(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f1355a.setCircularRevealOverlayDrawable(this.f1356b);
    }
}
