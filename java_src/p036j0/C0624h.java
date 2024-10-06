package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p039k.C0655b;
/* renamed from: j0.h */
/* loaded from: classes.dex */
public final class C0624h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C0655b f2205a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC0619g f2206b;

    public C0624h(AbstractC0619g abstractC0619g, C0655b c0655b) {
        this.f2206b = abstractC0619g;
        this.f2205a = c0655b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2205a.remove(animator);
        this.f2206b.f2193m.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2206b.f2193m.add(animator);
    }
}
