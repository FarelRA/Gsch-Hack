package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p014d1.InterfaceC0373a;
import p018e1.C0446a;
import p018e1.C0447b;
import p018e1.C0449d;
import p018e1.C0455e;
import p018e1.ViewTreeObserver$OnPreDrawListenerC0448c;
import p022f1.C0478c;
import p022f1.C0485h;
import p024g.C0516i;
import p030h1.InterfaceC0581b;
import p037j1.C0649a;
import p039k.C0666h;
import p046m1.C0736h;
import p061s.C0863a;
import p071w0.C0922g;
import p076y.C0954m;
import p076y.C0960q;
@CoordinatorLayout.InterfaceC0139d(Behavior.class)
/* loaded from: classes.dex */
public final class FloatingActionButton extends C0485h implements InterfaceC0373a {

    /* renamed from: c */
    public ColorStateList f1241c;

    /* renamed from: d */
    public PorterDuff.Mode f1242d;

    /* renamed from: e */
    public ColorStateList f1243e;

    /* renamed from: f */
    public PorterDuff.Mode f1244f;

    /* renamed from: g */
    public ColorStateList f1245g;

    /* renamed from: h */
    public int f1246h;

    /* renamed from: i */
    public int f1247i;

    /* renamed from: j */
    public boolean f1248j;

    /* renamed from: k */
    public C0455e f1249k;

    /* loaded from: classes.dex */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.AbstractC0138c<T> {

        /* renamed from: a */
        public Rect f1250a;

        /* renamed from: b */
        public final boolean f1251b;

        public BaseBehavior() {
            this.f1251b = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2555a0);
            this.f1251b = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: a */
        public final boolean mo943a(View view) {
            ((FloatingActionButton) view).getLeft();
            throw null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: c */
        public final void mo917c(CoordinatorLayout.C0141f c0141f) {
            if (c0141f.f612h == 0) {
                c0141f.f612h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: d */
        public final boolean mo918d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean z;
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m941t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.C0141f) {
                    z = ((CoordinatorLayout.C0141f) layoutParams).f605a instanceof BottomSheetBehavior;
                } else {
                    z = false;
                }
                if (z) {
                    m940u(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: f */
        public final boolean mo77f(CoordinatorLayout coordinatorLayout, View view, int i) {
            boolean z;
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            ArrayList m1260j = coordinatorLayout.m1260j(floatingActionButton);
            int size = m1260j.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = (View) m1260j.get(i2);
                if (view2 instanceof AppBarLayout) {
                    if (m941t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.C0141f) {
                        z = ((CoordinatorLayout.C0141f) layoutParams).f605a instanceof BottomSheetBehavior;
                    } else {
                        z = false;
                    }
                    if (z && m940u(view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m1253q(floatingActionButton, i);
            return true;
        }

        /* renamed from: s */
        public final boolean m942s(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.C0141f c0141f = (CoordinatorLayout.C0141f) floatingActionButton.getLayoutParams();
            if (!this.f1251b || c0141f.f610f != view.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            return true;
        }

        /* renamed from: t */
        public final boolean m941t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (m942s(appBarLayout, floatingActionButton)) {
                if (this.f1250a == null) {
                    this.f1250a = new Rect();
                }
                Rect rect = this.f1250a;
                C0478c.m671a(coordinatorLayout, appBarLayout, rect);
                if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                    floatingActionButton.m949h();
                    return true;
                }
                floatingActionButton.m944m();
                return true;
            }
            return false;
        }

        /* renamed from: u */
        public final boolean m940u(View view, FloatingActionButton floatingActionButton) {
            if (m942s(view, floatingActionButton)) {
                if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0141f) floatingActionButton.getLayoutParams())).topMargin) {
                    floatingActionButton.m949h();
                    return true;
                }
                floatingActionButton.m944m();
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes.dex */
    public class C0340a implements InterfaceC0581b {
        public C0340a() {
        }
    }

    private C0449d getImpl() {
        if (this.f1249k == null) {
            this.f1249k = new C0455e(this, new C0340a());
        }
        return this.f1249k;
    }

    @Override // p014d1.InterfaceC0373a
    /* renamed from: a */
    public final boolean mo863a() {
        throw null;
    }

    /* renamed from: d */
    public final void m953d() {
        C0449d impl = getImpl();
        if (impl.f1757m == null) {
            impl.f1757m = new ArrayList<>();
        }
        impl.f1757m.add(null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo714g(getDrawableState());
    }

    /* renamed from: e */
    public final void m952e() {
        C0449d impl = getImpl();
        if (impl.f1756l == null) {
            impl.f1756l = new ArrayList<>();
        }
        impl.f1756l.add(null);
    }

    @Deprecated
    /* renamed from: f */
    public final void m951f(Rect rect) {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (!isLaidOut()) {
            return;
        }
        rect.set(0, 0, getWidth(), getHeight());
        throw null;
    }

    /* renamed from: g */
    public final int m950g(int i) {
        int i2 = this.f1247i;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return resources.getDimensionPixelSize(i != 1 ? R.dimen.design_fab_size_normal : R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m950g(1) : m950g(0);
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f1241c;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f1242d;
    }

    public float getCompatElevation() {
        return getImpl().mo718c();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f1753i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f1754j;
    }

    public Drawable getContentBackground() {
        getImpl().getClass();
        return null;
    }

    public int getCustomSize() {
        return this.f1247i;
    }

    public int getExpandedComponentIdHint() {
        throw null;
    }

    public C0922g getHideMotionSpec() {
        return getImpl().f1748d;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f1245g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f1245g;
    }

    public C0922g getShowMotionSpec() {
        return getImpl().f1747c;
    }

    public int getSize() {
        return this.f1246h;
    }

    public int getSizeDimension() {
        return m950g(this.f1246h);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f1243e;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f1244f;
    }

    public boolean getUseCompatPadding() {
        return this.f1248j;
    }

    /* renamed from: h */
    public final void m949h() {
        boolean z;
        C0449d impl = getImpl();
        C0485h c0485h = impl.f1758n;
        boolean z2 = true;
        if (c0485h.getVisibility() != 0 ? impl.f1745a != 2 : impl.f1745a == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Animator animator = impl.f1746b;
            if (animator != null) {
                animator.cancel();
            }
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            C0485h c0485h2 = impl.f1758n;
            if ((!c0485h2.isLaidOut() || c0485h2.isInEditMode()) ? false : false) {
                C0922g c0922g = impl.f1748d;
                if (c0922g == null) {
                    if (impl.f1750f == null) {
                        impl.f1750f = C0922g.m99a(c0485h.getContext(), R.animator.design_fab_hide_motion_spec);
                    }
                    c0922g = impl.f1750f;
                }
                AnimatorSet m721a = impl.m721a(c0922g, 0.0f, 0.0f, 0.0f);
                m721a.addListener(new C0446a(impl));
                ArrayList<Animator.AnimatorListener> arrayList = impl.f1757m;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        m721a.addListener(it.next());
                    }
                }
                m721a.start();
                return;
            }
            c0485h.m667b(4, false);
        }
    }

    /* renamed from: i */
    public final boolean m948i() {
        C0449d impl = getImpl();
        int visibility = impl.f1758n.getVisibility();
        int i = impl.f1745a;
        if (visibility != 0) {
            if (i == 2) {
                return true;
            }
        } else if (i != 1) {
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public final void m947j() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f1243e;
        if (colorStateList == null) {
            C0863a.m143a(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f1244f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0516i.m606k(colorForState, mode));
    }

    @Override // android.widget.ImageView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo716e();
    }

    /* renamed from: k */
    public final void m946k() {
        ArrayList<Animator.AnimatorListener> arrayList = getImpl().f1757m;
        if (arrayList != null) {
            arrayList.remove((Object) null);
        }
    }

    /* renamed from: l */
    public final void m945l() {
        ArrayList<Animator.AnimatorListener> arrayList = getImpl().f1756l;
        if (arrayList != null) {
            arrayList.remove((Object) null);
        }
    }

    /* renamed from: m */
    public final void m944m() {
        boolean z;
        C0449d impl = getImpl();
        boolean z2 = true;
        if (impl.f1758n.getVisibility() == 0 ? impl.f1745a != 1 : impl.f1745a == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Animator animator = impl.f1746b;
            if (animator != null) {
                animator.cancel();
            }
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            C0485h c0485h = impl.f1758n;
            z2 = (!c0485h.isLaidOut() || c0485h.isInEditMode()) ? false : false;
            Matrix matrix = impl.f1761q;
            if (z2) {
                if (c0485h.getVisibility() != 0) {
                    c0485h.setAlpha(0.0f);
                    c0485h.setScaleY(0.0f);
                    c0485h.setScaleX(0.0f);
                    impl.f1755k = 0.0f;
                    matrix.reset();
                    c0485h.getDrawable();
                    c0485h.setImageMatrix(matrix);
                }
                C0922g c0922g = impl.f1747c;
                if (c0922g == null) {
                    if (impl.f1749e == null) {
                        impl.f1749e = C0922g.m99a(c0485h.getContext(), R.animator.design_fab_show_motion_spec);
                    }
                    c0922g = impl.f1749e;
                }
                AnimatorSet m721a = impl.m721a(c0922g, 1.0f, 1.0f, 1.0f);
                m721a.addListener(new C0447b(impl));
                ArrayList<Animator.AnimatorListener> arrayList = impl.f1756l;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        m721a.addListener(it.next());
                    }
                }
                m721a.start();
                return;
            }
            c0485h.m667b(0, false);
            c0485h.setAlpha(1.0f);
            c0485h.setScaleY(1.0f);
            c0485h.setScaleX(1.0f);
            impl.f1755k = 1.0f;
            matrix.reset();
            c0485h.getDrawable();
            c0485h.setImageMatrix(matrix);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0449d impl = getImpl();
        impl.getClass();
        if (!(impl instanceof C0455e)) {
            if (impl.f1762r == null) {
                impl.f1762r = new ViewTreeObserver$OnPreDrawListenerC0448c(impl);
            }
            impl.f1758n.getViewTreeObserver().addOnPreDrawListener(impl.f1762r);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0449d impl = getImpl();
        if (impl.f1762r != null) {
            impl.f1758n.getViewTreeObserver().removeOnPreDrawListener(impl.f1762r);
            impl.f1762r = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        int sizeDimension = (getSizeDimension() + 0) / 2;
        getImpl().m719k();
        throw null;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0649a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0649a c0649a = (C0649a) parcelable;
        super.onRestoreInstanceState(c0649a.f1144a);
        c0649a.f2258c.getOrDefault("expandableWidgetHelper", null);
        throw null;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        if (super.onSaveInstanceState() != null) {
            new C0666h();
            throw null;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            m951f(null);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f1241c != colorStateList) {
            this.f1241c = colorStateList;
            getImpl().getClass();
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f1242d != mode) {
            this.f1242d = mode;
            getImpl().getClass();
        }
    }

    public void setCompatElevation(float f) {
        C0449d impl = getImpl();
        if (impl.f1752h != f) {
            impl.f1752h = f;
            impl.mo713h(f, impl.f1753i, impl.f1754j);
        }
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        C0449d impl = getImpl();
        if (impl.f1753i != f) {
            impl.f1753i = f;
            impl.mo713h(impl.f1752h, f, impl.f1754j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        C0449d impl = getImpl();
        if (impl.f1754j != f) {
            impl.f1754j = f;
            impl.mo713h(impl.f1752h, impl.f1753i, f);
        }
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        this.f1247i = i;
    }

    public void setExpandedComponentIdHint(int i) {
        throw null;
    }

    public void setHideMotionSpec(C0922g c0922g) {
        getImpl().f1748d = c0922g;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C0922g.m99a(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0449d impl = getImpl();
        impl.f1755k = impl.f1755k;
        Matrix matrix = impl.f1761q;
        matrix.reset();
        C0485h c0485h = impl.f1758n;
        c0485h.getDrawable();
        c0485h.setImageMatrix(matrix);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        throw null;
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f1245g != colorStateList) {
            this.f1245g = colorStateList;
            getImpl().mo711j();
        }
    }

    public void setShowMotionSpec(C0922g c0922g) {
        getImpl().f1747c = c0922g;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C0922g.m99a(getContext(), i));
    }

    public void setSize(int i) {
        this.f1247i = 0;
        if (i != this.f1246h) {
            this.f1246h = i;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f1243e != colorStateList) {
            this.f1243e = colorStateList;
            m947j();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f1244f != mode) {
            this.f1244f = mode;
            m947j();
        }
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1248j != z) {
            this.f1248j = z;
            getImpl().mo715f();
        }
    }
}
