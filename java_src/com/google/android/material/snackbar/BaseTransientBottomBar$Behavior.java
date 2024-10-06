package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p033i1.C0593c;
import p033i1.C0595d;
import p046m1.C0736h;
/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: h */
    public final C0736h f1268h = new C0736h(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: e */
    public final boolean mo89e(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f1268h.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (C0595d.f2141b == null) {
                    C0595d.f2141b = new C0595d();
                }
                synchronized (C0595d.f2141b.f2142a) {
                }
            }
        } else if (coordinatorLayout.m1255o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (C0595d.f2141b == null) {
                C0595d.f2141b = new C0595d();
            }
            C0595d.f2141b.m512a();
        }
        return super.mo89e(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* renamed from: s */
    public final boolean mo937s(View view) {
        this.f1268h.getClass();
        return view instanceof C0593c;
    }
}
