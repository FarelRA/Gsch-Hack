package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import p020f.C0460c;
/* renamed from: j0.u */
/* loaded from: classes.dex */
public final class C0643u extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0635o f2241a;

    /* renamed from: b */
    public final /* synthetic */ View f2242b;

    public C0643u(C0460c c0460c, View view) {
        this.f2241a = c0460c;
        this.f2242b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2241a.mo457b(this.f2242b);
    }
}
