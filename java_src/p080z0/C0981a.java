package p080z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;
/* renamed from: z0.a */
/* loaded from: classes.dex */
public final class C0981a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ BottomAppBar f2985a;

    public C0981a(BottomAppBar bottomAppBar) {
        this.f2985a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2985a.f1203Q = null;
    }
}
