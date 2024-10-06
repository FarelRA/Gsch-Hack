package p080z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;
/* renamed from: z0.b */
/* loaded from: classes.dex */
public final class C0982b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ BottomAppBar f2986a;

    public C0982b(BottomAppBar bottomAppBar) {
        this.f2986a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2986a.f1204R = null;
    }
}
