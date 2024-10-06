package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p006b1.InterfaceC0309d;
/* renamed from: com.google.android.material.transformation.c */
/* loaded from: classes.dex */
public final class C0354c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0309d f1357a;

    public C0354c(InterfaceC0309d interfaceC0309d) {
        this.f1357a = interfaceC0309d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        InterfaceC0309d interfaceC0309d = this.f1357a;
        InterfaceC0309d.C0313d revealInfo = interfaceC0309d.getRevealInfo();
        revealInfo.f1135c = Float.MAX_VALUE;
        interfaceC0309d.setRevealInfo(revealInfo);
    }
}
