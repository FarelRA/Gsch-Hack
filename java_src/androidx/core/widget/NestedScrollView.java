package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p076y.C0939a;
import p076y.C0947f;
import p076y.C0950i;
import p076y.C0954m;
import p076y.C0960q;
import p076y.InterfaceC0945d;
import p076y.InterfaceC0949h;
import p079z.C0971d;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0949h, InterfaceC0945d {

    /* renamed from: A */
    public static final C0149a f646A = new C0149a();

    /* renamed from: B */
    public static final int[] f647B = {16843130};

    /* renamed from: b */
    public long f648b;

    /* renamed from: c */
    public final Rect f649c;

    /* renamed from: d */
    public OverScroller f650d;

    /* renamed from: e */
    public EdgeEffect f651e;

    /* renamed from: f */
    public EdgeEffect f652f;

    /* renamed from: g */
    public int f653g;

    /* renamed from: h */
    public boolean f654h;

    /* renamed from: i */
    public boolean f655i;

    /* renamed from: j */
    public View f656j;

    /* renamed from: k */
    public boolean f657k;

    /* renamed from: l */
    public VelocityTracker f658l;

    /* renamed from: m */
    public boolean f659m;

    /* renamed from: n */
    public boolean f660n;

    /* renamed from: o */
    public int f661o;

    /* renamed from: p */
    public int f662p;

    /* renamed from: q */
    public int f663q;

    /* renamed from: r */
    public int f664r;

    /* renamed from: s */
    public final int[] f665s;

    /* renamed from: t */
    public final int[] f666t;

    /* renamed from: u */
    public int f667u;

    /* renamed from: v */
    public int f668v;

    /* renamed from: w */
    public C0151c f669w;

    /* renamed from: x */
    public final C0950i f670x;

    /* renamed from: y */
    public final C0947f f671y;

    /* renamed from: z */
    public float f672z;

    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes.dex */
    public static class C0149a extends C0939a {
        @Override // p076y.C0939a
        /* renamed from: a */
        public final void mo69a(View view, AccessibilityEvent accessibilityEvent) {
            boolean z;
            super.mo69a(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            if (nestedScrollView.getScrollRange() > 0) {
                z = true;
            } else {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
        }

        @Override // p076y.C0939a
        /* renamed from: b */
        public final void mo68b(View view, C0971d c0971d) {
            int scrollRange;
            View.AccessibilityDelegate accessibilityDelegate = this.f2918a;
            AccessibilityNodeInfo accessibilityNodeInfo = c0971d.f2978a;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfo.setClassName(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                accessibilityNodeInfo.setScrollable(true);
                if (nestedScrollView.getScrollY() > 0) {
                    accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) C0971d.C0972a.f2980c.f2983a);
                    accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) C0971d.C0972a.f2981d.f2983a);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) C0971d.C0972a.f2979b.f2983a);
                    accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) C0971d.C0972a.f2982e.f2983a);
                }
            }
        }

        @Override // p076y.C0939a
        /* renamed from: d */
        public final boolean mo66d(View view, int i, Bundle bundle) {
            if (super.mo66d(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i != 4096) {
                if (i != 8192 && i != 16908344) {
                    if (i != 16908346) {
                        return false;
                    }
                } else {
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m1224v(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), true);
                    return true;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m1224v(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), true);
            return true;
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0150b {
    }

    /* renamed from: androidx.core.widget.NestedScrollView$c */
    /* loaded from: classes.dex */
    public static class C0151c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0151c> CREATOR = new C0152a();

        /* renamed from: a */
        public int f673a;

        /* renamed from: androidx.core.widget.NestedScrollView$c$a */
        /* loaded from: classes.dex */
        public static class C0152a implements Parcelable.Creator<C0151c> {
            @Override // android.os.Parcelable.Creator
            public final C0151c createFromParcel(Parcel parcel) {
                return new C0151c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final C0151c[] newArray(int i) {
                return new C0151c[i];
            }
        }

        public C0151c(Parcel parcel) {
            super(parcel);
            this.f673a = parcel.readInt();
        }

        public C0151c(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f673a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f673a);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f649c = new Rect();
        this.f654h = true;
        this.f655i = false;
        this.f656j = null;
        this.f657k = false;
        this.f660n = true;
        this.f664r = -1;
        this.f665s = new int[2];
        this.f666t = new int[2];
        this.f650d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f661o = viewConfiguration.getScaledTouchSlop();
        this.f662p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f663q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f647B, 0, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f670x = new C0950i();
        this.f671y = new C0947f(this);
        setNestedScrollingEnabled(true);
        C0954m.m30f(this, f646A);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f672z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f672z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f672z;
    }

    /* renamed from: p */
    public static boolean m1230p(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && m1230p((View) parent, view2);
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: a */
    public final void mo47a(View view, View view2, int i, int i2) {
        C0950i c0950i = this.f670x;
        if (i2 == 1) {
            c0950i.f2932b = i;
        } else {
            c0950i.f2931a = i;
        }
        m1223w(2, i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: b */
    public final void mo46b(View view, int i) {
        C0950i c0950i = this.f670x;
        if (i == 1) {
            c0950i.f2932b = 0;
        } else {
            c0950i.f2931a = 0;
        }
        mo55g(i);
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: c */
    public final void mo45c(View view, int i, int i2, int[] iArr, int i3) {
        this.f671y.m52c(i, i2, iArr, null, i3);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public final void computeScroll() {
        EdgeEffect edgeEffect;
        if (this.f650d.isFinished()) {
            return;
        }
        this.f650d.computeScrollOffset();
        int currY = this.f650d.getCurrY();
        int i = currY - this.f668v;
        this.f668v = currY;
        int[] iArr = this.f666t;
        boolean z = false;
        iArr[1] = 0;
        this.f671y.m52c(0, i, iArr, null, 1);
        int i2 = i - iArr[1];
        int scrollRange = getScrollRange();
        if (i2 != 0) {
            int scrollY = getScrollY();
            m1226t(i2, getScrollX(), scrollY, scrollRange);
            int scrollY2 = getScrollY() - scrollY;
            int i3 = i2 - scrollY2;
            iArr[1] = 0;
            this.f671y.m51d(0, scrollY2, 0, i3, this.f665s, 1, iArr);
            i2 = i3 - iArr[1];
        }
        if (i2 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z = true;
            }
            if (z) {
                m1234l();
                if (i2 < 0) {
                    if (this.f651e.isFinished()) {
                        edgeEffect = this.f651e;
                        edgeEffect.onAbsorb((int) this.f650d.getCurrVelocity());
                    }
                } else if (this.f652f.isFinished()) {
                    edgeEffect = this.f652f;
                    edgeEffect.onAbsorb((int) this.f650d.getCurrVelocity());
                }
            }
            this.f650d.abortAnimation();
            mo55g(1);
        }
        if (!this.f650d.isFinished()) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
            return;
        }
        mo55g(1);
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    @Override // p076y.InterfaceC0949h
    /* renamed from: d */
    public final void mo42d(int i, int i2, int[] iArr) {
        m1228r(i, i2, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m1233m(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f671y.m54a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.f671y.m53b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f671y.m52c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f671y.m51d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f651e != null) {
            int scrollY = getScrollY();
            int i2 = 0;
            if (!this.f651e.isFinished()) {
                int save = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int min = Math.min(0, scrollY);
                if (getClipToPadding()) {
                    width -= getPaddingRight() + getPaddingLeft();
                    i = getPaddingLeft() + 0;
                } else {
                    i = 0;
                }
                if (getClipToPadding()) {
                    height -= getPaddingBottom() + getPaddingTop();
                    min += getPaddingTop();
                }
                canvas.translate(i, min);
                this.f651e.setSize(width, height);
                if (this.f651e.draw(canvas)) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(save);
            }
            if (!this.f652f.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int max = Math.max(getScrollRange(), scrollY) + height2;
                if (getClipToPadding()) {
                    width2 -= getPaddingRight() + getPaddingLeft();
                    i2 = 0 + getPaddingLeft();
                }
                if (getClipToPadding()) {
                    height2 -= getPaddingBottom() + getPaddingTop();
                    max -= getPaddingBottom();
                }
                canvas.translate(i2 - width2, max);
                canvas.rotate(180.0f, width2, 0.0f);
                this.f652f.setSize(width2, height2);
                if (this.f652f.draw(canvas)) {
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: e */
    public final void mo44e(View view, int i, int i2, int i3, int i4, int i5) {
        m1228r(i4, i5, null);
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: f */
    public final boolean mo43f(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // p076y.InterfaceC0945d
    /* renamed from: g */
    public final void mo55g(int i) {
        this.f671y.m48g(i);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0950i c0950i = this.f670x;
        return c0950i.f2932b | c0950i.f2931a;
    }

    public int getScrollRange() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return 0;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    /* renamed from: h */
    public final boolean m1238h(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && m1229q(findNextFocus, maxScrollAmount, getHeight())) {
            Rect rect = this.f649c;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            m1236j(m1237i(rect));
            findNextFocus.requestFocus(i);
        } else {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m1236j(maxScrollAmount);
        }
        if (findFocus != null && findFocus.isFocused() && (!m1229q(findFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f671y.m50e(0) != null;
    }

    /* renamed from: i */
    public final int m1237i(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        int i3 = rect.bottom;
        if (i3 > i2 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        } else if (rect.top >= scrollY || i3 >= i2) {
            return 0;
        } else {
            return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f671y.f2929d;
    }

    /* renamed from: j */
    public final void m1236j(int i) {
        if (i != 0) {
            if (this.f660n) {
                m1224v(0, i, false);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* renamed from: k */
    public final void m1235k() {
        this.f657k = false;
        VelocityTracker velocityTracker = this.f658l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f658l = null;
        }
        mo55g(0);
        EdgeEffect edgeEffect = this.f651e;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f652f.onRelease();
        }
    }

    /* renamed from: l */
    public final void m1234l() {
        if (getOverScrollMode() == 2) {
            this.f651e = null;
            this.f652f = null;
        } else if (this.f651e == null) {
            Context context = getContext();
            this.f651e = new EdgeEffect(context);
            this.f652f = new EdgeEffect(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m1233m(KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        Rect rect = this.f649c;
        rect.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                z = true;
                if (z) {
                    if (!isFocused() || keyEvent.getKeyCode() == 4) {
                        return false;
                    }
                    View findFocus = findFocus();
                    if (findFocus == this) {
                        findFocus = null;
                    }
                    View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
                    if (findNextFocus != null && findNextFocus != this && findNextFocus.requestFocus(130)) {
                        return true;
                    }
                    return false;
                } else if (keyEvent.getAction() != 0) {
                    return false;
                } else {
                    int keyCode = keyEvent.getKeyCode();
                    int i = 33;
                    if (keyCode != 19) {
                        if (keyCode != 20) {
                            if (keyCode != 62) {
                                return false;
                            }
                            if (!keyEvent.isShiftPressed()) {
                                i = 130;
                            }
                            if (i == 130) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            int height = getHeight();
                            if (z2) {
                                rect.top = getScrollY() + height;
                                int childCount = getChildCount();
                                if (childCount > 0) {
                                    View childAt2 = getChildAt(childCount - 1);
                                    int paddingBottom = getPaddingBottom() + childAt2.getBottom() + ((FrameLayout.LayoutParams) childAt2.getLayoutParams()).bottomMargin;
                                    if (rect.top + height > paddingBottom) {
                                        rect.top = paddingBottom - height;
                                    }
                                }
                            } else {
                                int scrollY = getScrollY() - height;
                                rect.top = scrollY;
                                if (scrollY < 0) {
                                    rect.top = 0;
                                }
                            }
                            int i2 = rect.top;
                            int i3 = height + i2;
                            rect.bottom = i3;
                            m1225u(i, i2, i3);
                            return false;
                        } else if (!keyEvent.isAltPressed()) {
                            return m1238h(130);
                        } else {
                            return m1231o(130);
                        }
                    } else if (!keyEvent.isAltPressed()) {
                        return m1238h(33);
                    } else {
                        return m1231o(33);
                    }
                }
            }
        }
        z = false;
        if (z) {
        }
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    /* renamed from: n */
    public final void m1232n(int i) {
        if (getChildCount() > 0) {
            this.f650d.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            m1223w(2, 1);
            this.f668v = getScrollY();
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: o */
    public final boolean m1231o(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f649c;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            rect.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.top = rect.bottom - height;
        }
        return m1225u(i, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f655i = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.f657k) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int verticalScrollFactorCompat = scrollY - ((int) (axisValue * getVerticalScrollFactorCompat()));
                if (verticalScrollFactorCompat < 0) {
                    scrollRange = 0;
                } else if (verticalScrollFactorCompat <= scrollRange) {
                    scrollRange = verticalScrollFactorCompat;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f4  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        if (action == 2 && this.f657k) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6) {
                            m1227s(motionEvent);
                        }
                    }
                } else {
                    int i2 = this.f664r;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f653g) > this.f661o && (2 & getNestedScrollAxes()) == 0) {
                                this.f657k = true;
                                this.f653g = y;
                                if (this.f658l == null) {
                                    this.f658l = VelocityTracker.obtain();
                                }
                                this.f658l.addMovement(motionEvent);
                                this.f667u = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                }
            }
            this.f657k = false;
            this.f664r = -1;
            VelocityTracker velocityTracker = this.f658l;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f658l = null;
            }
            if (this.f650d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                postInvalidateOnAnimation();
            }
            mo55g(0);
        } else {
            int y2 = (int) motionEvent.getY();
            int x = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 >= childAt.getTop() - scrollY && y2 < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight()) {
                    z = true;
                    if (z) {
                        this.f657k = false;
                        VelocityTracker velocityTracker2 = this.f658l;
                        if (velocityTracker2 != null) {
                            velocityTracker2.recycle();
                            this.f658l = null;
                        }
                    } else {
                        this.f653g = y2;
                        this.f664r = motionEvent.getPointerId(0);
                        VelocityTracker velocityTracker3 = this.f658l;
                        if (velocityTracker3 == null) {
                            this.f658l = VelocityTracker.obtain();
                        } else {
                            velocityTracker3.clear();
                        }
                        this.f658l.addMovement(motionEvent);
                        this.f650d.computeScrollOffset();
                        this.f657k = !this.f650d.isFinished();
                        m1223w(2, 0);
                    }
                }
            }
            z = false;
            if (z) {
            }
        }
        return this.f657k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = 0;
        this.f654h = false;
        View view = this.f656j;
        if (view != null && m1230p(view, this)) {
            View view2 = this.f656j;
            Rect rect = this.f649c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m1237i = m1237i(rect);
            if (m1237i != 0) {
                scrollBy(0, m1237i);
            }
        }
        this.f656j = null;
        if (!this.f655i) {
            if (this.f669w != null) {
                scrollTo(getScrollX(), this.f669w.f673a);
                this.f669w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i5 = 0;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i5 && scrollY >= 0) {
                i6 = paddingTop + scrollY > i5 ? i5 - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f655i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f659m && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m1232n((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo45c(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m1228r(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo47a(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        View findNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (rect == null) {
            findNextFocusFromRect = focusFinder.findNextFocus(this, null, i);
        } else {
            findNextFocusFromRect = focusFinder.findNextFocusFromRect(this, rect, i);
        }
        if (findNextFocusFromRect == null || (true ^ m1229q(findNextFocusFromRect, 0, getHeight()))) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0151c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0151c c0151c = (C0151c) parcelable;
        super.onRestoreInstanceState(c0151c.getSuperState());
        this.f669w = c0151c;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0151c c0151c = new C0151c(super.onSaveInstanceState());
        c0151c.f673a = getScrollY();
        return c0151c;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m1229q(findFocus, 0, i4)) {
            return;
        }
        Rect rect = this.f649c;
        findFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(findFocus, rect);
        m1236j(m1237i(rect));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo43f(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo46b(view, 0);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        EdgeEffect edgeEffect;
        EdgeEffect edgeEffect2;
        if (this.f658l == null) {
            this.f658l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f667u = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f667u);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f658l;
                velocityTracker.computeCurrentVelocity(1000, this.f663q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f664r);
                if (Math.abs(yVelocity) >= this.f662p) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(0.0f, f)) {
                        dispatchNestedFling(0.0f, f, true);
                        m1232n(i);
                    }
                } else if (this.f650d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    postInvalidateOnAnimation();
                }
                this.f664r = -1;
                m1235k();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f664r);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f664r + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f653g - y;
                    if (!this.f657k && Math.abs(i2) > this.f661o) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f657k = true;
                        int i3 = this.f661o;
                        i2 = i2 > 0 ? i2 - i3 : i2 + i3;
                    }
                    if (this.f657k) {
                        boolean m52c = this.f671y.m52c(0, i2, this.f666t, this.f665s, 0);
                        int[] iArr = this.f666t;
                        int[] iArr2 = this.f665s;
                        if (m52c) {
                            i2 -= iArr[1];
                            this.f667u += iArr2[1];
                        }
                        this.f653g = y - iArr2[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m1226t(i2, 0, getScrollY(), scrollRange)) {
                            if (!(this.f671y.m50e(0) != null)) {
                                this.f658l.clear();
                            }
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        iArr[1] = 0;
                        this.f671y.m51d(0, scrollY2, 0, i2 - scrollY2, this.f665s, 0, iArr);
                        int i4 = this.f653g;
                        int i5 = iArr2[1];
                        this.f653g = i4 - i5;
                        this.f667u += i5;
                        if (z) {
                            int i6 = i2 - iArr[1];
                            m1234l();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                this.f651e.onPull(i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f652f.isFinished()) {
                                    edgeEffect = this.f652f;
                                    edgeEffect.onRelease();
                                }
                                edgeEffect2 = this.f651e;
                                if (edgeEffect2 != null && (!edgeEffect2.isFinished() || !this.f652f.isFinished())) {
                                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                                    postInvalidateOnAnimation();
                                }
                            } else {
                                if (i7 > scrollRange) {
                                    this.f652f.onPull(i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                    if (!this.f651e.isFinished()) {
                                        edgeEffect = this.f651e;
                                        edgeEffect.onRelease();
                                    }
                                }
                                edgeEffect2 = this.f651e;
                                if (edgeEffect2 != null) {
                                    WeakHashMap<View, C0960q> weakHashMap22 = C0954m.f2934a;
                                    postInvalidateOnAnimation();
                                }
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f657k && getChildCount() > 0 && this.f650d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap<View, C0960q> weakHashMap3 = C0954m.f2934a;
                    postInvalidateOnAnimation();
                }
                this.f664r = -1;
                m1235k();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f653g = (int) motionEvent.getY(actionIndex);
                this.f664r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m1227s(motionEvent);
                this.f653g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f664r));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f650d.isFinished();
            this.f657k = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f650d.isFinished()) {
                this.f650d.abortAnimation();
                mo55g(1);
            }
            this.f653g = (int) motionEvent.getY();
            this.f664r = motionEvent.getPointerId(0);
            m1223w(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f658l;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* renamed from: q */
    public final boolean m1229q(View view, int i, int i2) {
        Rect rect = this.f649c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i >= getScrollY() && rect.top - i <= getScrollY() + i2;
    }

    /* renamed from: r */
    public final void m1228r(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f671y.m51d(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.f654h) {
            Rect rect = this.f649c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m1237i = m1237i(rect);
            if (m1237i != 0) {
                scrollBy(0, m1237i);
            }
        } else {
            this.f656j = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        boolean z2;
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int m1237i = m1237i(rect);
        if (m1237i != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (z) {
                scrollBy(0, m1237i);
            } else {
                m1224v(0, m1237i, false);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.f658l) != null) {
            velocityTracker.recycle();
            this.f658l = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f654h = true;
        super.requestLayout();
    }

    /* renamed from: s */
    public final void m1227s(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f664r) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f653g = (int) motionEvent.getY(i);
            this.f664r = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f658l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i < 0) {
                i = 0;
            } else if (width + i > width2) {
                i = width2 - width;
            }
            if (height >= height2 || i2 < 0) {
                i2 = 0;
            } else if (height + i2 > height2) {
                i2 = height2 - height;
            }
            if (i == getScrollX() && i2 == getScrollY()) {
                return;
            }
            super.scrollTo(i, i2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f659m) {
            this.f659m = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C0947f c0947f = this.f671y;
        if (c0947f.f2929d) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            c0947f.f2928c.stopNestedScroll();
        }
        c0947f.f2929d = z;
    }

    public void setOnScrollChangeListener(InterfaceC0150b interfaceC0150b) {
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f660n = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return m1223w(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        mo55g(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m1226t(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        boolean z3;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i5 = i2 + 0;
        int i6 = i3 + i;
        int i7 = i4 + 0;
        if (i5 > 0 || i5 < 0) {
            z = true;
            i5 = 0;
        } else {
            z = false;
        }
        if (i6 > i7) {
            i6 = i7;
        } else if (i6 < 0) {
            i6 = 0;
        } else {
            z2 = false;
            if (z2) {
                if (this.f671y.m50e(1) != null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3) {
                    this.f650d.springBack(i5, i6, 0, 0, 0, getScrollRange());
                }
            }
            onOverScrolled(i5, i6, z, z2);
            if (z && !z2) {
                return false;
            }
        }
        z2 = true;
        if (z2) {
        }
        onOverScrolled(i5, i6, z, z2);
        return z ? true : true;
    }

    /* renamed from: u */
    public final boolean m1225u(int i, int i2, int i3) {
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        if (i == 33) {
            z = true;
        } else {
            z = false;
        }
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z5 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = focusables.get(i6);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                if (i2 < top && bottom < i3) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (view == null) {
                    view = view2;
                    z5 = z3;
                } else {
                    if ((z && top < view.getTop()) || (!z && bottom > view.getBottom())) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z5) {
                        if (z3) {
                            if (!z4) {
                            }
                            view = view2;
                        }
                    } else if (z3) {
                        view = view2;
                        z5 = true;
                    } else {
                        if (!z4) {
                        }
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i2 >= scrollY && i3 <= i5) {
            z2 = false;
        } else {
            if (z) {
                i4 = i2 - scrollY;
            } else {
                i4 = i3 - i5;
            }
            m1236j(i4);
            z2 = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z2;
    }

    /* renamed from: v */
    public final void m1224v(int i, int i2, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f648b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            OverScroller overScroller = this.f650d;
            int scrollX = getScrollX();
            overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY);
            if (z) {
                m1223w(2, 1);
            } else {
                mo55g(1);
            }
            this.f668v = getScrollY();
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
        } else {
            if (!this.f650d.isFinished()) {
                this.f650d.abortAnimation();
                mo55g(1);
            }
            scrollBy(i, i2);
        }
        this.f648b = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: w */
    public final boolean m1223w(int i, int i2) {
        return this.f671y.m49f(i, i2);
    }
}
