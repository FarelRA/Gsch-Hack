package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.C0068f;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p004b.C0295u;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.C0403g;
import p024g.C0564y0;
import p024g.InterfaceC0492a0;
import p024g.InterfaceC0565z;
import p076y.C0950i;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0565z {

    /* renamed from: C */
    public static final int[] f338C = {R.attr.actionBarSize, 16842841};

    /* renamed from: A */
    public final RunnableC0087c f339A;

    /* renamed from: B */
    public final C0950i f340B;

    /* renamed from: b */
    public int f341b;

    /* renamed from: c */
    public int f342c;

    /* renamed from: d */
    public ContentFrameLayout f343d;

    /* renamed from: e */
    public ActionBarContainer f344e;

    /* renamed from: f */
    public InterfaceC0492a0 f345f;

    /* renamed from: g */
    public Drawable f346g;

    /* renamed from: h */
    public boolean f347h;

    /* renamed from: i */
    public boolean f348i;

    /* renamed from: j */
    public boolean f349j;

    /* renamed from: k */
    public boolean f350k;

    /* renamed from: l */
    public boolean f351l;

    /* renamed from: m */
    public int f352m;

    /* renamed from: n */
    public int f353n;

    /* renamed from: o */
    public final Rect f354o;

    /* renamed from: p */
    public final Rect f355p;

    /* renamed from: q */
    public final Rect f356q;

    /* renamed from: r */
    public final Rect f357r;

    /* renamed from: s */
    public final Rect f358s;

    /* renamed from: t */
    public final Rect f359t;

    /* renamed from: u */
    public final Rect f360u;

    /* renamed from: v */
    public InterfaceC0088d f361v;

    /* renamed from: w */
    public OverScroller f362w;

    /* renamed from: x */
    public ViewPropertyAnimator f363x;

    /* renamed from: y */
    public final C0085a f364y;

    /* renamed from: z */
    public final RunnableC0086b f365z;

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes.dex */
    public class C0085a extends AnimatorListenerAdapter {
        public C0085a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f363x = null;
            actionBarOverlayLayout.f351l = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f363x = null;
            actionBarOverlayLayout.f351l = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes.dex */
    public class RunnableC0086b implements Runnable {
        public RunnableC0086b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.m1318k();
            actionBarOverlayLayout.f363x = actionBarOverlayLayout.f344e.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f364y);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes.dex */
    public class RunnableC0087c implements Runnable {
        public RunnableC0087c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.m1318k();
            actionBarOverlayLayout.f363x = actionBarOverlayLayout.f344e.animate().translationY(-actionBarOverlayLayout.f344e.getHeight()).setListener(actionBarOverlayLayout.f364y);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes.dex */
    public interface InterfaceC0088d {
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$e */
    /* loaded from: classes.dex */
    public static class C0089e extends ViewGroup.MarginLayoutParams {
        public C0089e() {
            super(-1, -1);
        }

        public C0089e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0089e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f342c = 0;
        this.f354o = new Rect();
        this.f355p = new Rect();
        this.f356q = new Rect();
        this.f357r = new Rect();
        this.f358s = new Rect();
        this.f359t = new Rect();
        this.f360u = new Rect();
        this.f364y = new C0085a();
        this.f365z = new RunnableC0086b();
        this.f339A = new RunnableC0087c();
        m1317l(context);
        this.f340B = new C0950i();
    }

    /* renamed from: j */
    public static boolean m1319j(FrameLayout frameLayout, Rect rect, boolean z) {
        boolean z2;
        C0089e c0089e = (C0089e) frameLayout.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) c0089e).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) c0089e).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) c0089e).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) c0089e).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) c0089e).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) c0089e).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) c0089e).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) c0089e).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: a */
    public final boolean mo533a() {
        m1316m();
        return this.f345f.mo659a();
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: b */
    public final void mo532b(C0068f c0068f, LayoutInflater$Factory2C0266j.C0269c c0269c) {
        m1316m();
        this.f345f.mo658b(c0068f, c0269c);
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: c */
    public final boolean mo531c() {
        m1316m();
        return this.f345f.mo657c();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0089e;
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: d */
    public final boolean mo530d() {
        m1316m();
        return this.f345f.mo656d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f346g == null || this.f347h) {
            return;
        }
        if (this.f344e.getVisibility() == 0) {
            i = (int) (this.f344e.getTranslationY() + this.f344e.getBottom() + 0.5f);
        } else {
            i = 0;
        }
        this.f346g.setBounds(0, i, getWidth(), this.f346g.getIntrinsicHeight() + i);
        this.f346g.draw(canvas);
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: e */
    public final boolean mo529e() {
        m1316m();
        return this.f345f.mo655e();
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: f */
    public final void mo528f() {
        m1316m();
        this.f345f.mo654f();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        m1316m();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        getWindowSystemUiVisibility();
        boolean m1319j = m1319j(this.f344e, rect, false);
        Rect rect2 = this.f357r;
        rect2.set(rect);
        Method method = C0564y0.f2121a;
        Rect rect3 = this.f354o;
        if (method != null) {
            try {
                method.invoke(this, rect2, rect3);
            } catch (Exception e) {
                Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
            }
        }
        Rect rect4 = this.f358s;
        if (!rect4.equals(rect2)) {
            rect4.set(rect2);
            m1319j = true;
        }
        Rect rect5 = this.f355p;
        if (!rect5.equals(rect3)) {
            rect5.set(rect3);
            m1319j = true;
        }
        if (m1319j) {
            requestLayout();
        }
        return true;
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: g */
    public final boolean mo527g() {
        m1316m();
        return this.f345f.mo653g();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0089e();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0089e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0089e(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f344e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0950i c0950i = this.f340B;
        return c0950i.f2932b | c0950i.f2931a;
    }

    public CharSequence getTitle() {
        m1316m();
        return this.f345f.getTitle();
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: h */
    public final void mo526h(int i) {
        m1316m();
        if (i == 2) {
            this.f345f.mo642r();
        } else if (i == 5) {
            this.f345f.mo640t();
        } else if (i != 109) {
        } else {
            setOverlayMode(true);
        }
    }

    @Override // p024g.InterfaceC0565z
    /* renamed from: i */
    public final void mo525i() {
        m1316m();
        this.f345f.mo652h();
    }

    /* renamed from: k */
    public final void m1318k() {
        removeCallbacks(this.f365z);
        removeCallbacks(this.f339A);
        ViewPropertyAnimator viewPropertyAnimator = this.f363x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: l */
    public final void m1317l(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f338C);
        this.f341b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f346g = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f347h = context.getApplicationInfo().targetSdkVersion < 19;
        this.f362w = new OverScroller(context);
    }

    /* renamed from: m */
    public final void m1316m() {
        InterfaceC0492a0 wrapper;
        if (this.f343d == null) {
            this.f343d = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f344e = (ActionBarContainer) findViewById(R.id.action_bar_container);
            View findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof InterfaceC0492a0) {
                wrapper = (InterfaceC0492a0) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
            }
            this.f345f = wrapper;
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m1317l(getContext());
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1318k();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0089e c0089e = (C0089e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0089e).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0089e).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int measuredHeight;
        m1316m();
        measureChildWithMargins(this.f344e, i, 0, i2, 0);
        C0089e c0089e = (C0089e) this.f344e.getLayoutParams();
        int max = Math.max(0, this.f344e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0089e).leftMargin + ((ViewGroup.MarginLayoutParams) c0089e).rightMargin);
        int max2 = Math.max(0, this.f344e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0089e).topMargin + ((ViewGroup.MarginLayoutParams) c0089e).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f344e.getMeasuredState());
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if ((getWindowSystemUiVisibility() & 256) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            measuredHeight = this.f341b;
            if (this.f349j && this.f344e.getTabContainer() != null) {
                measuredHeight += this.f341b;
            }
        } else {
            measuredHeight = this.f344e.getVisibility() != 8 ? this.f344e.getMeasuredHeight() : 0;
        }
        Rect rect = this.f354o;
        Rect rect2 = this.f356q;
        rect2.set(rect);
        Rect rect3 = this.f359t;
        rect3.set(this.f357r);
        if (!this.f348i && !z) {
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        } else {
            rect3.top += measuredHeight;
            rect3.bottom += 0;
        }
        m1319j(this.f343d, rect2, true);
        Rect rect4 = this.f360u;
        if (!rect4.equals(rect3)) {
            rect4.set(rect3);
            this.f343d.m1311a(rect3);
        }
        measureChildWithMargins(this.f343d, i, 0, i2, 0);
        C0089e c0089e2 = (C0089e) this.f343d.getLayoutParams();
        int max3 = Math.max(max, this.f343d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0089e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0089e2).rightMargin);
        int max4 = Math.max(max2, this.f343d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0089e2).topMargin + ((ViewGroup.MarginLayoutParams) c0089e2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f343d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = false;
        if (!this.f350k || !z) {
            return false;
        }
        this.f362w.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f362w.getFinalY() > this.f344e.getHeight()) {
            z2 = true;
        }
        if (z2) {
            m1318k();
            this.f339A.run();
        } else {
            m1318k();
            this.f365z.run();
        }
        this.f351l = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f352m + i2;
        this.f352m = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        C0295u c0295u;
        C0403g c0403g;
        this.f340B.f2931a = i;
        this.f352m = getActionBarHideOffset();
        m1318k();
        InterfaceC0088d interfaceC0088d = this.f361v;
        if (interfaceC0088d != null && (c0403g = (c0295u = (C0295u) interfaceC0088d).f1100t) != null) {
            c0403g.m828a();
            c0295u.f1100t = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f344e.getVisibility() != 0) {
            return false;
        }
        return this.f350k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.f350k && !this.f351l) {
            if (this.f352m <= this.f344e.getHeight()) {
                m1318k();
                postDelayed(this.f365z, 600L);
                return;
            }
            m1318k();
            postDelayed(this.f339A, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        boolean z2;
        super.onWindowSystemUiVisibilityChanged(i);
        m1316m();
        int i2 = this.f353n ^ i;
        this.f353n = i;
        if ((i & 4) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 256) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        InterfaceC0088d interfaceC0088d = this.f361v;
        if (interfaceC0088d != null) {
            ((C0295u) interfaceC0088d).f1096p = !z2;
            if (!z && z2) {
                C0295u c0295u = (C0295u) interfaceC0088d;
                if (!c0295u.f1097q) {
                    c0295u.f1097q = true;
                    c0295u.m998s(true);
                }
            } else {
                C0295u c0295u2 = (C0295u) interfaceC0088d;
                if (c0295u2.f1097q) {
                    c0295u2.f1097q = false;
                    c0295u2.m998s(true);
                }
            }
        }
        if ((i2 & 256) != 0 && this.f361v != null) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            requestApplyInsets();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f342c = i;
        InterfaceC0088d interfaceC0088d = this.f361v;
        if (interfaceC0088d != null) {
            ((C0295u) interfaceC0088d).f1095o = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        m1318k();
        this.f344e.setTranslationY(-Math.max(0, Math.min(i, this.f344e.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0088d interfaceC0088d) {
        this.f361v = interfaceC0088d;
        if (getWindowToken() != null) {
            ((C0295u) this.f361v).f1095o = this.f342c;
            int i = this.f353n;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                requestApplyInsets();
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f349j = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f350k) {
            this.f350k = z;
            if (z) {
                return;
            }
            m1318k();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m1316m();
        this.f345f.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        m1316m();
        this.f345f.setIcon(drawable);
    }

    public void setLogo(int i) {
        m1316m();
        this.f345f.mo648l(i);
    }

    public void setOverlayMode(boolean z) {
        this.f348i = z;
        this.f347h = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // p024g.InterfaceC0565z
    public void setWindowCallback(Window.Callback callback) {
        m1316m();
        this.f345f.setWindowCallback(callback);
    }

    @Override // p024g.InterfaceC0565z
    public void setWindowTitle(CharSequence charSequence) {
        m1316m();
        this.f345f.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
