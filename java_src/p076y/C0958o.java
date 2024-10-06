package p076y;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: y.o */
/* loaded from: classes.dex */
public final class C0958o extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0961r f2943a;

    /* renamed from: b */
    public final /* synthetic */ View f2944b;

    public C0958o(InterfaceC0961r interfaceC0961r, View view) {
        this.f2943a = interfaceC0961r;
        this.f2944b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2943a.mo18d(this.f2944b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2943a.mo19b();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2943a.mo17e();
    }
}
