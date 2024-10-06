package p043l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
/* renamed from: l1.a */
/* loaded from: classes.dex */
public final class C0693a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ExpandableTransformationBehavior f2438a;

    public C0693a(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f2438a = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2438a.f1339b = null;
    }
}
