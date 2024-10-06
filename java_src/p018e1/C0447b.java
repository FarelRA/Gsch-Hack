package p018e1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: e1.b */
/* loaded from: classes.dex */
public final class C0447b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ boolean f1735a = false;

    /* renamed from: b */
    public final /* synthetic */ C0449d f1736b;

    public C0447b(C0449d c0449d) {
        this.f1736b = c0449d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0449d c0449d = this.f1736b;
        c0449d.f1745a = 0;
        c0449d.f1746b = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        C0449d c0449d = this.f1736b;
        c0449d.f1758n.m667b(0, this.f1735a);
        c0449d.f1745a = 2;
        c0449d.f1746b = animator;
    }
}
