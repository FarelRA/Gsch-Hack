package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p046m1.C0736h;
import p071w0.C0922g;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: g */
    public HashMap f1353g;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: s */
    public final void mo910s(View view, View view2, boolean z, boolean z2) {
        boolean z3;
        int i;
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                this.f1353g = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if ((childAt.getLayoutParams() instanceof CoordinatorLayout.C0141f) && (((CoordinatorLayout.C0141f) childAt.getLayoutParams()).f605a instanceof FabTransformationScrimBehavior)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (childAt != view2 && !z3) {
                    HashMap hashMap = this.f1353g;
                    if (!z) {
                        if (hashMap != null && hashMap.containsKey(childAt)) {
                            i = ((Integer) this.f1353g.get(childAt)).intValue();
                            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        }
                    } else {
                        hashMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                        i = 4;
                    }
                    childAt.setImportantForAccessibility(i);
                }
            }
            if (!z) {
                this.f1353g = null;
            }
        }
        super.mo910s(view, view2, z, z2);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: y */
    public final FabTransformationBehavior.C0350b mo909y(Context context, boolean z) {
        int i = z ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C0350b c0350b = new FabTransformationBehavior.C0350b();
        c0350b.f1347a = C0922g.m99a(context, i);
        c0350b.f1348b = new C0736h();
        return c0350b;
    }
}
