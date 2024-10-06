package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import p043l1.C0693a;
/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b */
    public AnimatorSet f1339b;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: s */
    public void mo910s(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f1339b;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet mo911t = mo911t(view, view2, z, z3);
        this.f1339b = mo911t;
        mo911t.addListener(new C0693a(this));
        this.f1339b.start();
        if (z2) {
            return;
        }
        this.f1339b.end();
    }

    /* renamed from: t */
    public abstract AnimatorSet mo911t(View view, View view2, boolean z, boolean z2);
}
