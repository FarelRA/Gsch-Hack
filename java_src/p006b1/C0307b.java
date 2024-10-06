package p006b1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewAnimationUtils;
import p006b1.InterfaceC0309d;
/* renamed from: b1.b */
/* loaded from: classes.dex */
public final class C0307b {
    /* renamed from: a */
    public static AnimatorSet m997a(InterfaceC0309d interfaceC0309d, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(interfaceC0309d, InterfaceC0309d.C0311b.f1131a, InterfaceC0309d.C0310a.f1129b, new InterfaceC0309d.C0313d(f, f2, f3));
        InterfaceC0309d.C0313d revealInfo = interfaceC0309d.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) interfaceC0309d, (int) f, (int) f2, revealInfo.f1135c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }
}
