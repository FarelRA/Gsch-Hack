package p018e1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p022f1.C0485h;
/* renamed from: e1.a */
/* loaded from: classes.dex */
public final class C0446a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f1732a;

    /* renamed from: b */
    public final /* synthetic */ boolean f1733b = false;

    /* renamed from: c */
    public final /* synthetic */ C0449d f1734c;

    public C0446a(C0449d c0449d) {
        this.f1734c = c0449d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f1732a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0449d c0449d = this.f1734c;
        c0449d.f1745a = 0;
        c0449d.f1746b = null;
        if (this.f1732a) {
            return;
        }
        C0485h c0485h = c0449d.f1758n;
        boolean z = this.f1733b;
        c0485h.m667b(z ? 8 : 4, z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        C0449d c0449d = this.f1734c;
        c0449d.f1758n.m667b(0, this.f1733b);
        c0449d.f1745a = 1;
        c0449d.f1746b = animator;
        this.f1732a = false;
    }
}
