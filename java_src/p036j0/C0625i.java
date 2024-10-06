package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: j0.i */
/* loaded from: classes.dex */
public final class C0625i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0619g f2207a;

    public C0625i(AbstractC0619g abstractC0619g) {
        this.f2207a = abstractC0619g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2207a.m484m();
        animator.removeListener(this);
    }
}
