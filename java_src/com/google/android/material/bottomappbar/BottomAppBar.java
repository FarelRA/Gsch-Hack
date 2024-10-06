package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import p009c0.AbstractC0317a;
import p039k.C0666h;
import p071w0.C0916a;
import p076y.C0954m;
import p076y.C0960q;
import p080z0.C0981a;
import p080z0.C0982b;
import p080z0.C0983c;
/* loaded from: classes.dex */
public final class BottomAppBar extends Toolbar implements CoordinatorLayout.InterfaceC0137b {

    /* renamed from: V */
    public static final /* synthetic */ int f1202V = 0;

    /* renamed from: Q */
    public Animator f1203Q;

    /* renamed from: R */
    public Animator f1204R;

    /* renamed from: S */
    public int f1205S;

    /* renamed from: T */
    public boolean f1206T;

    /* renamed from: U */
    public boolean f1207U;

    /* loaded from: classes.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: d */
        public final Rect f1208d;

        public Behavior() {
            this.f1208d = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1208d = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: f */
        public final boolean mo77f(CoordinatorLayout coordinatorLayout, View view, int i) {
            Animator animator;
            boolean z;
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            int i2 = BottomAppBar.f1202V;
            FloatingActionButton m969r = bottomAppBar.m969r();
            if (m969r == null) {
                Animator animator2 = bottomAppBar.f1204R;
                if ((animator2 != null && animator2.isRunning()) || ((animator = bottomAppBar.f1203Q) != null && animator.isRunning())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    coordinatorLayout.m1253q(bottomAppBar, i);
                    this.f1187a = bottomAppBar.getMeasuredHeight();
                    return false;
                }
                BottomAppBar.m971p(bottomAppBar);
                throw null;
            }
            ((CoordinatorLayout.C0141f) m969r.getLayoutParams()).f608d = 17;
            m969r.m946k();
            m969r.m945l();
            m969r.m953d();
            m969r.m952e();
            this.f1208d.set(0, 0, m969r.getMeasuredWidth(), m969r.getMeasuredHeight());
            throw null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: p */
        public final boolean mo962p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            if (bottomAppBar.getHideOnScroll() && super.mo962p(coordinatorLayout, bottomAppBar, view2, view3, i, i2)) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: t */
        public final void mo968t(BottomAppBar bottomAppBar) {
            BottomAppBar bottomAppBar2 = bottomAppBar;
            super.mo968t(bottomAppBar2);
            int i = BottomAppBar.f1202V;
            FloatingActionButton m969r = bottomAppBar2.m969r();
            if (m969r != null) {
                Rect rect = this.f1208d;
                m969r.m951f(rect);
                float measuredHeight = m969r.getMeasuredHeight() - rect.height();
                m969r.clearAnimation();
                m969r.animate().translationY((-m969r.getPaddingBottom()) + measuredHeight).setInterpolator(C0916a.f2874c).setDuration(175L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: u */
        public final void mo967u(BottomAppBar bottomAppBar) {
            BottomAppBar bottomAppBar2 = bottomAppBar;
            super.mo967u(bottomAppBar2);
            int i = BottomAppBar.f1202V;
            FloatingActionButton m969r = bottomAppBar2.m969r();
            if (m969r != null) {
                m969r.clearAnimation();
                m969r.animate().translationY(bottomAppBar2.getFabTranslationY()).setInterpolator(C0916a.f2875d).setDuration(225L);
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes.dex */
    public static class C0334a extends AbstractC0317a {
        public static final Parcelable.Creator<C0334a> CREATOR = new C0335a();

        /* renamed from: c */
        public int f1209c;

        /* renamed from: d */
        public boolean f1210d;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a$a */
        /* loaded from: classes.dex */
        public static class C0335a implements Parcelable.ClassLoaderCreator<C0334a> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0334a(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0334a[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0334a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0334a(parcel, classLoader);
            }
        }

        public C0334a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1209c = parcel.readInt();
            this.f1210d = parcel.readInt() != 0;
        }

        public C0334a(Toolbar.C0119f c0119f) {
            super(c0119f);
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            parcel.writeInt(this.f1209c);
            parcel.writeInt(this.f1210d ? 1 : 0);
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        boolean z;
        int i = this.f1205S;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int i2 = 1;
        int i3 = 0;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (i == 1) {
            int measuredWidth = (getMeasuredWidth() / 2) - 0;
            if (z) {
                i2 = -1;
            }
            i3 = measuredWidth * i2;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationY() {
        boolean z = this.f1207U;
        FloatingActionButton m969r = m969r();
        if (m969r == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        m969r.m951f(rect);
        float height = rect.height();
        if (height == 0.0f) {
            height = m969r.getMeasuredHeight();
        }
        float height2 = m969r.getHeight() - rect.height();
        float height3 = (height / 2.0f) + (-getCradleVerticalOffset()) + (m969r.getHeight() - rect.bottom);
        float paddingBottom = height2 - m969r.getPaddingBottom();
        float f = -getMeasuredHeight();
        if (!z) {
            height3 = paddingBottom;
        }
        return f + height3;
    }

    /* renamed from: p */
    public static void m971p(BottomAppBar bottomAppBar) {
        bottomAppBar.getFabTranslationX();
        throw null;
    }

    public ColorStateList getBackgroundTint() {
        throw null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.InterfaceC0137b
    public CoordinatorLayout.AbstractC0138c<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public float getCradleVerticalOffset() {
        throw null;
    }

    public int getFabAlignmentMode() {
        return this.f1205S;
    }

    public float getFabCradleMargin() {
        throw null;
    }

    public float getFabCradleRoundedCornerRadius() {
        throw null;
    }

    public boolean getHideOnScroll() {
        return this.f1206T;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Animator animator = this.f1204R;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f1203Q;
        if (animator2 != null) {
            animator2.cancel();
        }
        getFabTranslationX();
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0334a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0334a c0334a = (C0334a) parcelable;
        super.onRestoreInstanceState(c0334a.f1144a);
        this.f1205S = c0334a.f1209c;
        this.f1207U = c0334a.f1210d;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        C0334a c0334a = new C0334a((Toolbar.C0119f) super.onSaveInstanceState());
        c0334a.f1209c = this.f1205S;
        c0334a.f1210d = this.f1207U;
        return c0334a;
    }

    /* renamed from: r */
    public final FloatingActionButton m969r() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) getParent();
        List list = (List) ((C0666h) coordinatorLayout.f586c.f2440b).getOrDefault(this, null);
        ArrayList arrayList = coordinatorLayout.f588e;
        arrayList.clear();
        if (list != null) {
            arrayList.addAll(list);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        throw null;
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c0, code lost:
        if (r10 != false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setFabAlignmentMode(int i) {
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        if (this.f1205S != i) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (isLaidOut()) {
                Animator animator = this.f1203Q;
                if (animator != null) {
                    animator.cancel();
                }
                ArrayList arrayList = new ArrayList();
                if (!this.f1207U) {
                    FloatingActionButton m969r = m969r();
                    float[] fArr = new float[1];
                    if (getLayoutDirection() == 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (i == 1) {
                        int measuredWidth = (getMeasuredWidth() / 2) - 0;
                        if (z3) {
                            i4 = -1;
                        } else {
                            i4 = 1;
                        }
                        i3 = measuredWidth * i4;
                    } else {
                        i3 = 0;
                    }
                    fArr[0] = i3;
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m969r, "translationX", fArr);
                    ofFloat.setDuration(300L);
                    arrayList.add(ofFloat);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(arrayList);
                    this.f1203Q = animatorSet;
                    animatorSet.addListener(new C0981a(this));
                    this.f1203Q.start();
                } else {
                    throw null;
                }
            }
        }
        boolean z4 = this.f1207U;
        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
        if (isLaidOut()) {
            Animator animator2 = this.f1204R;
            if (animator2 != null) {
                animator2.cancel();
            }
            ArrayList arrayList2 = new ArrayList();
            FloatingActionButton m969r2 = m969r();
            if (m969r2 != null && m969r2.m948i()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                z4 = false;
                i2 = 0;
            } else {
                i2 = i;
            }
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                if (!this.f1207U) {
                    if (z4) {
                        FloatingActionButton m969r3 = m969r();
                        if (m969r3 != null && m969r3.m948i()) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    if (actionMenuView.getAlpha() < 1.0f) {
                        arrayList2.add(ofFloat2);
                    }
                }
                if (this.f1205S == 1 || i2 == 1) {
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    ofFloat3.addListener(new C0983c(this, actionMenuView, i2, z4));
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.setDuration(150L);
                    animatorSet2.playSequentially(ofFloat3, ofFloat2);
                    arrayList2.add(animatorSet2);
                }
                if (actionMenuView.getAlpha() < 1.0f) {
                }
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(arrayList2);
            this.f1204R = animatorSet3;
            animatorSet3.addListener(new C0982b(this));
            this.f1204R.start();
        }
        this.f1205S = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            throw null;
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            throw null;
        }
    }

    public void setFabDiameter(int i) {
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.f1206T = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
