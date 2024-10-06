package p077y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
/* renamed from: y0.a */
/* loaded from: classes.dex */
public final class C0964a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f2948a;

    public C0964a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f2948a = hideBottomViewOnScrollBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2948a.f1189c = null;
    }
}
