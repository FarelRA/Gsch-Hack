package p006b1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: b1.a */
/* loaded from: classes.dex */
public final class C0306a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0309d f1128a;

    public C0306a(InterfaceC0309d interfaceC0309d) {
        this.f1128a = interfaceC0309d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1128a.mo992b();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f1128a.mo993a();
    }
}
