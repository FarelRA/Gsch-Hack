package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p046m1.C0736h;
import p071w0.C0923h;
/* loaded from: classes.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    public final C0923h f1349c;

    /* renamed from: d */
    public final C0923h f1350d;

    /* renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$a */
    /* loaded from: classes.dex */
    public class C0351a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f1351a;

        /* renamed from: b */
        public final /* synthetic */ View f1352b;

        public C0351a(boolean z, View view) {
            this.f1351a = z;
            this.f1352b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f1351a) {
                return;
            }
            this.f1352b.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (this.f1351a) {
                this.f1352b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f1349c = new C0923h(75L);
        this.f1350d = new C0923h(0L);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1349c = new C0923h(75L);
        this.f1350d = new C0923h(0L);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: b */
    public final boolean mo912b(View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: r */
    public final boolean mo88r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: t */
    public final AnimatorSet mo911t(View view, View view2, boolean z, boolean z2) {
        C0923h c0923h;
        ObjectAnimator ofFloat;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        if (z) {
            c0923h = this.f1349c;
        } else {
            c0923h = this.f1350d;
        }
        if (z) {
            if (!z2) {
                view2.setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.ALPHA, 0.0f);
        }
        c0923h.m96a(ofFloat);
        arrayList.add(ofFloat);
        AnimatorSet animatorSet = new AnimatorSet();
        C0736h.m309D(animatorSet, arrayList);
        animatorSet.addListener(new C0351a(z, view2));
        return animatorSet;
    }
}
