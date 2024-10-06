package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.WeakHashMap;
import p008c.C0315a;
import p024g.C0564y0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes.dex */
public class C0130b extends ViewGroup {

    /* renamed from: b */
    public boolean f542b;

    /* renamed from: c */
    public int f543c;

    /* renamed from: d */
    public int f544d;

    /* renamed from: e */
    public int f545e;

    /* renamed from: f */
    public int f546f;

    /* renamed from: g */
    public int f547g;

    /* renamed from: h */
    public float f548h;

    /* renamed from: i */
    public boolean f549i;

    /* renamed from: j */
    public int[] f550j;

    /* renamed from: k */
    public int[] f551k;

    /* renamed from: l */
    public Drawable f552l;

    /* renamed from: m */
    public int f553m;

    /* renamed from: n */
    public int f554n;

    /* renamed from: o */
    public int f555o;

    /* renamed from: p */
    public int f556p;

    /* renamed from: androidx.appcompat.widget.b$a */
    /* loaded from: classes.dex */
    public static class C0131a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f557a;

        /* renamed from: b */
        public int f558b;

        public C0131a(int i, int i2) {
            super(i, i2);
            this.f558b = -1;
            this.f557a = 0.0f;
        }

        public C0131a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f558b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2580t);
            this.f557a = obtainStyledAttributes.getFloat(3, 0.0f);
            this.f558b = obtainStyledAttributes.getInt(0, -1);
            obtainStyledAttributes.recycle();
        }

        public C0131a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f558b = -1;
        }
    }

    public C0130b(Context context) {
        this(context, null);
    }

    public C0130b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0130b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        int resourceId;
        this.f542b = true;
        this.f543c = -1;
        this.f544d = 0;
        this.f546f = 8388659;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2579s, i, 0);
        int i2 = obtainStyledAttributes.getInt(1, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f548h = obtainStyledAttributes.getFloat(4, -1.0f);
        this.f543c = obtainStyledAttributes.getInt(3, -1);
        this.f549i = obtainStyledAttributes.getBoolean(7, false);
        if (obtainStyledAttributes.hasValue(5) && (resourceId = obtainStyledAttributes.getResourceId(5, 0)) != 0) {
            drawable = C0315a.m994c(context, resourceId);
        } else {
            drawable = obtainStyledAttributes.getDrawable(5);
        }
        setDividerDrawable(drawable);
        this.f555o = obtainStyledAttributes.getInt(8, 0);
        this.f556p = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0131a;
    }

    /* renamed from: d */
    public final void m1270d(Canvas canvas, int i) {
        this.f552l.setBounds(getPaddingLeft() + this.f556p, i, (getWidth() - getPaddingRight()) - this.f556p, this.f554n + i);
        this.f552l.draw(canvas);
    }

    /* renamed from: e */
    public final void m1269e(Canvas canvas, int i) {
        this.f552l.setBounds(i, getPaddingTop() + this.f556p, this.f553m + i, (getHeight() - getPaddingBottom()) - this.f556p);
        this.f552l.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* renamed from: f */
    public C0131a generateDefaultLayoutParams() {
        int i = this.f545e;
        if (i == 0) {
            return new C0131a(-2, -2);
        }
        if (i == 1) {
            return new C0131a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: g */
    public C0131a generateLayoutParams(AttributeSet attributeSet) {
        return new C0131a(getContext(), attributeSet);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f543c < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f543c;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f543c == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i3 = this.f544d;
            if (this.f545e == 1 && (i = this.f546f & 112) != 48) {
                if (i == 16) {
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f547g) / 2;
                } else if (i == 80) {
                    i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f547g;
                }
            }
            return i3 + ((ViewGroup.MarginLayoutParams) ((C0131a) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.f543c;
    }

    public Drawable getDividerDrawable() {
        return this.f552l;
    }

    public int getDividerPadding() {
        return this.f556p;
    }

    public int getDividerWidth() {
        return this.f553m;
    }

    public int getGravity() {
        return this.f546f;
    }

    public int getOrientation() {
        return this.f545e;
    }

    public int getShowDividers() {
        return this.f555o;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f548h;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h */
    public C0131a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0131a(layoutParams);
    }

    /* renamed from: i */
    public final boolean m1265i(int i) {
        if (i == 0) {
            return (this.f555o & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.f555o & 4) != 0;
        } else if ((this.f555o & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        int left2;
        int bottom;
        if (this.f552l == null) {
            return;
        }
        int i2 = 0;
        if (this.f545e == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i2 < virtualChildCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && m1265i(i2)) {
                    m1270d(canvas, (childAt.getTop() - ((ViewGroup.MarginLayoutParams) ((C0131a) childAt.getLayoutParams())).topMargin) - this.f554n);
                }
                i2++;
            }
            if (m1265i(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                if (childAt2 == null) {
                    bottom = (getHeight() - getPaddingBottom()) - this.f554n;
                } else {
                    bottom = childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((C0131a) childAt2.getLayoutParams())).bottomMargin;
                }
                m1270d(canvas, bottom);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean m534a = C0564y0.m534a(this);
        while (i2 < virtualChildCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m1265i(i2)) {
                C0131a c0131a = (C0131a) childAt3.getLayoutParams();
                if (m534a) {
                    left2 = childAt3.getRight() + ((ViewGroup.MarginLayoutParams) c0131a).rightMargin;
                } else {
                    left2 = (childAt3.getLeft() - ((ViewGroup.MarginLayoutParams) c0131a).leftMargin) - this.f553m;
                }
                m1269e(canvas, left2);
            }
            i2++;
        }
        if (m1265i(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 == null) {
                if (m534a) {
                    right = getPaddingLeft();
                } else {
                    left = getWidth();
                    i = getPaddingRight();
                    right = (left - i) - this.f553m;
                }
            } else {
                C0131a c0131a2 = (C0131a) childAt4.getLayoutParams();
                if (m534a) {
                    left = childAt4.getLeft();
                    i = ((ViewGroup.MarginLayoutParams) c0131a2).leftMargin;
                    right = (left - i) - this.f553m;
                } else {
                    right = childAt4.getRight() + ((ViewGroup.MarginLayoutParams) c0131a2).rightMargin;
                }
            }
            m1269e(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(C0130b.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(C0130b.class.getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a7  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int paddingTop;
        int i14;
        int i15;
        int i16 = 8;
        int i17 = 5;
        if (this.f545e == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i18 = i3 - i;
            int paddingRight = i18 - getPaddingRight();
            int paddingRight2 = (i18 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i19 = this.f546f;
            int i20 = i19 & 112;
            int i21 = 8388615 & i19;
            if (i20 != 16) {
                if (i20 != 80) {
                    paddingTop = getPaddingTop();
                } else {
                    paddingTop = ((getPaddingTop() + i4) - i2) - this.f547g;
                }
            } else {
                paddingTop = getPaddingTop() + (((i4 - i2) - this.f547g) / 2);
            }
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View childAt = getChildAt(i22);
                if (childAt == null) {
                    paddingTop += 0;
                } else if (childAt.getVisibility() != i16) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    C0131a c0131a = (C0131a) childAt.getLayoutParams();
                    int i23 = c0131a.f558b;
                    if (i23 < 0) {
                        i23 = i21;
                    }
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i23, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != i17) {
                            i15 = ((ViewGroup.MarginLayoutParams) c0131a).leftMargin + paddingLeft2;
                            if (m1265i(i22)) {
                                paddingTop += this.f554n;
                            }
                            int i24 = paddingTop + ((ViewGroup.MarginLayoutParams) c0131a).topMargin;
                            int i25 = i24 + 0;
                            childAt.layout(i15, i25, measuredWidth + i15, measuredHeight + i25);
                            i22 += 0;
                            paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin + 0 + i24;
                        } else {
                            i14 = paddingRight - measuredWidth;
                        }
                    } else {
                        i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((ViewGroup.MarginLayoutParams) c0131a).leftMargin;
                    }
                    i15 = i14 - ((ViewGroup.MarginLayoutParams) c0131a).rightMargin;
                    if (m1265i(i22)) {
                    }
                    int i242 = paddingTop + ((ViewGroup.MarginLayoutParams) c0131a).topMargin;
                    int i252 = i242 + 0;
                    childAt.layout(i15, i252, measuredWidth + i15, measuredHeight + i252);
                    i22 += 0;
                    paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin + 0 + i242;
                }
                i22++;
                i16 = 8;
                i17 = 5;
            }
            return;
        }
        boolean m534a = C0564y0.m534a(this);
        int paddingTop2 = getPaddingTop();
        int i26 = i4 - i2;
        int paddingBottom = i26 - getPaddingBottom();
        int paddingBottom2 = (i26 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i27 = this.f546f;
        int i28 = 8388615 & i27;
        int i29 = i27 & 112;
        boolean z2 = this.f542b;
        int[] iArr = this.f550j;
        int[] iArr2 = this.f551k;
        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i28, getLayoutDirection());
        if (absoluteGravity2 != 1) {
            if (absoluteGravity2 != 5) {
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.f547g;
            }
        } else {
            paddingLeft = getPaddingLeft() + (((i3 - i) - this.f547g) / 2);
        }
        if (m534a) {
            i5 = virtualChildCount2 - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i30 = paddingLeft;
        int i31 = 0;
        while (i31 < virtualChildCount2) {
            int i32 = (i6 * i31) + i5;
            View childAt2 = getChildAt(i32);
            if (childAt2 == null) {
                i30 += 0;
            } else if (childAt2.getVisibility() != 8) {
                int measuredWidth2 = childAt2.getMeasuredWidth();
                int measuredHeight2 = childAt2.getMeasuredHeight();
                C0131a c0131a2 = (C0131a) childAt2.getLayoutParams();
                i7 = i5;
                if (z2) {
                    i8 = virtualChildCount2;
                    if (((ViewGroup.MarginLayoutParams) c0131a2).height != -1) {
                        i9 = childAt2.getBaseline();
                        i10 = c0131a2.f558b;
                        if (i10 < 0) {
                            i10 = i29;
                        }
                        i11 = i10 & 112;
                        i12 = i29;
                        if (i11 == 16) {
                            if (i11 != 48) {
                                if (i11 != 80) {
                                    i13 = paddingTop2;
                                } else {
                                    i13 = (paddingBottom - measuredHeight2) - ((ViewGroup.MarginLayoutParams) c0131a2).bottomMargin;
                                    if (i9 != -1) {
                                        i13 -= iArr2[2] - (childAt2.getMeasuredHeight() - i9);
                                    }
                                }
                            } else {
                                i13 = ((ViewGroup.MarginLayoutParams) c0131a2).topMargin + paddingTop2;
                                if (i9 != -1) {
                                    i13 = (iArr[1] - i9) + i13;
                                }
                            }
                        } else {
                            i13 = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop2) + ((ViewGroup.MarginLayoutParams) c0131a2).topMargin) - ((ViewGroup.MarginLayoutParams) c0131a2).bottomMargin;
                        }
                        if (m1265i(i32)) {
                            i30 += this.f553m;
                        }
                        int i33 = i30 + ((ViewGroup.MarginLayoutParams) c0131a2).leftMargin;
                        int i34 = i33 + 0;
                        childAt2.layout(i34, i13, measuredWidth2 + i34, measuredHeight2 + i13);
                        i30 = measuredWidth2 + ((ViewGroup.MarginLayoutParams) c0131a2).rightMargin + 0 + i33;
                        i31 += 0;
                        i31++;
                        i5 = i7;
                        virtualChildCount2 = i8;
                        i29 = i12;
                    }
                } else {
                    i8 = virtualChildCount2;
                }
                i9 = -1;
                i10 = c0131a2.f558b;
                if (i10 < 0) {
                }
                i11 = i10 & 112;
                i12 = i29;
                if (i11 == 16) {
                }
                if (m1265i(i32)) {
                }
                int i332 = i30 + ((ViewGroup.MarginLayoutParams) c0131a2).leftMargin;
                int i342 = i332 + 0;
                childAt2.layout(i342, i13, measuredWidth2 + i342, measuredHeight2 + i13);
                i30 = measuredWidth2 + ((ViewGroup.MarginLayoutParams) c0131a2).rightMargin + 0 + i332;
                i31 += 0;
                i31++;
                i5 = i7;
                virtualChildCount2 = i8;
                i29 = i12;
            }
            i7 = i5;
            i8 = virtualChildCount2;
            i12 = i29;
            i31++;
            i5 = i7;
            virtualChildCount2 = i8;
            i29 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x02af, code lost:
        if (r13 < 0) goto L164;
     */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x085b  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0883  */
    /* JADX WARN: Removed duplicated region for block: B:439:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        char c;
        int i3;
        int max;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        char c2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f2;
        int i15;
        boolean z;
        int baseline;
        int i16;
        int i17;
        int i18;
        float f3;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z2;
        boolean z3;
        C0131a c0131a;
        boolean z4;
        int i24;
        boolean z5;
        int combineMeasuredStates;
        int i25;
        int baseline2;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z6;
        int measuredHeight;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        C0131a c0131a2;
        boolean z7;
        int i35;
        boolean z8;
        int combineMeasuredStates2;
        int i36 = -2;
        int i37 = Integer.MIN_VALUE;
        int i38 = 8;
        float f4 = 0.0f;
        int i39 = 1073741824;
        int i40 = 0;
        if (this.f545e == 1) {
            this.f547g = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int i41 = this.f543c;
            boolean z9 = this.f549i;
            int i42 = 0;
            int i43 = 0;
            int i44 = 0;
            int i45 = 0;
            int i46 = 0;
            int i47 = 0;
            float f5 = 0.0f;
            boolean z10 = false;
            boolean z11 = true;
            boolean z12 = false;
            while (i42 < virtualChildCount) {
                View childAt = getChildAt(i42);
                if (childAt == null) {
                    this.f547g += i40;
                } else if (childAt.getVisibility() == i38) {
                    i42 += 0;
                } else {
                    if (m1265i(i42)) {
                        this.f547g += this.f554n;
                    }
                    C0131a c0131a3 = (C0131a) childAt.getLayoutParams();
                    float f6 = c0131a3.f557a;
                    f5 += f6;
                    if (mode2 == i39 && ((ViewGroup.MarginLayoutParams) c0131a3).height == 0 && f6 > f4) {
                        int i48 = this.f547g;
                        this.f547g = Math.max(i48, ((ViewGroup.MarginLayoutParams) c0131a3).topMargin + i48 + ((ViewGroup.MarginLayoutParams) c0131a3).bottomMargin);
                        i31 = i41;
                        i32 = mode2;
                        i33 = mode;
                        i34 = virtualChildCount;
                        c0131a2 = c0131a3;
                        z7 = true;
                    } else {
                        if (((ViewGroup.MarginLayoutParams) c0131a3).height != 0 || f6 <= f4) {
                            i30 = Integer.MIN_VALUE;
                        } else {
                            ((ViewGroup.MarginLayoutParams) c0131a3).height = i36;
                            i30 = 0;
                        }
                        int i49 = f5 == f4 ? this.f547g : 0;
                        i31 = i41;
                        i32 = mode2;
                        i33 = mode;
                        i34 = virtualChildCount;
                        c0131a2 = c0131a3;
                        measureChildWithMargins(childAt, i, 0, i2, i49);
                        if (i30 != i37) {
                            ((ViewGroup.MarginLayoutParams) c0131a2).height = i30;
                        }
                        int measuredHeight2 = childAt.getMeasuredHeight();
                        int i50 = this.f547g;
                        this.f547g = Math.max(i50, i50 + measuredHeight2 + ((ViewGroup.MarginLayoutParams) c0131a2).topMargin + ((ViewGroup.MarginLayoutParams) c0131a2).bottomMargin + 0);
                        int i51 = i45;
                        if (z9) {
                            i45 = Math.max(measuredHeight2, i51);
                        }
                        z7 = z10;
                    }
                    if (i31 >= 0 && i31 == i42 + 1) {
                        this.f544d = this.f547g;
                    }
                    if (i42 < i31 && c0131a2.f557a > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    i35 = i33;
                    if (i35 == 1073741824 || ((ViewGroup.MarginLayoutParams) c0131a2).width != -1) {
                        z8 = false;
                    } else {
                        z8 = true;
                        z12 = true;
                    }
                    int i52 = ((ViewGroup.MarginLayoutParams) c0131a2).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a2).rightMargin;
                    int measuredWidth = childAt.getMeasuredWidth() + i52;
                    int max2 = Math.max(i47, measuredWidth);
                    combineMeasuredStates2 = View.combineMeasuredStates(i44, childAt.getMeasuredState());
                    boolean z13 = z11 && ((ViewGroup.MarginLayoutParams) c0131a2).width == -1;
                    if (c0131a2.f557a > 0.0f) {
                        if (!z8) {
                            i52 = measuredWidth;
                        }
                        i46 = Math.max(i46, i52);
                    } else {
                        int i53 = i46;
                        if (!z8) {
                            i52 = measuredWidth;
                        }
                        i43 = Math.max(i43, i52);
                        i46 = i53;
                    }
                    i42 += 0;
                    i47 = max2;
                    z10 = z7;
                    z11 = z13;
                    i42++;
                    mode = i35;
                    i41 = i31;
                    i44 = combineMeasuredStates2;
                    mode2 = i32;
                    virtualChildCount = i34;
                    i40 = 0;
                    i36 = -2;
                    i37 = Integer.MIN_VALUE;
                    i38 = 8;
                    f4 = 0.0f;
                    i39 = 1073741824;
                }
                i31 = i41;
                i32 = mode2;
                i35 = mode;
                i34 = virtualChildCount;
                combineMeasuredStates2 = i44;
                i42++;
                mode = i35;
                i41 = i31;
                i44 = combineMeasuredStates2;
                mode2 = i32;
                virtualChildCount = i34;
                i40 = 0;
                i36 = -2;
                i37 = Integer.MIN_VALUE;
                i38 = 8;
                f4 = 0.0f;
                i39 = 1073741824;
            }
            int i54 = mode2;
            int i55 = mode;
            int i56 = virtualChildCount;
            int i57 = i43;
            int i58 = i44;
            int i59 = i45;
            int i60 = i46;
            int i61 = i47;
            if (this.f547g > 0 && m1265i(i56)) {
                this.f547g += this.f554n;
            }
            int i62 = i54;
            if (z9 && (i62 == Integer.MIN_VALUE || i62 == 0)) {
                int i63 = 0;
                this.f547g = 0;
                int i64 = 0;
                while (i64 < i56) {
                    View childAt2 = getChildAt(i64);
                    if (childAt2 == null) {
                        this.f547g += i63;
                    } else if (childAt2.getVisibility() == 8) {
                        i64 += 0;
                    } else {
                        C0131a c0131a4 = (C0131a) childAt2.getLayoutParams();
                        int i65 = this.f547g;
                        this.f547g = Math.max(i65, i65 + i59 + ((ViewGroup.MarginLayoutParams) c0131a4).topMargin + ((ViewGroup.MarginLayoutParams) c0131a4).bottomMargin + 0);
                    }
                    i64++;
                    i63 = 0;
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f547g;
            this.f547g = paddingBottom;
            int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, 0);
            int i66 = (16777215 & resolveSizeAndState) - this.f547g;
            if (z10 || (i66 != 0 && f5 > 0.0f)) {
                float f7 = this.f548h;
                if (f7 > 0.0f) {
                    f5 = f7;
                }
                this.f547g = 0;
                int i67 = 0;
                while (i67 < i56) {
                    View childAt3 = getChildAt(i67);
                    if (childAt3.getVisibility() == 8) {
                        i27 = i62;
                    } else {
                        C0131a c0131a5 = (C0131a) childAt3.getLayoutParams();
                        float f8 = c0131a5.f557a;
                        if (f8 > 0.0f) {
                            int i68 = (int) ((i66 * f8) / f5);
                            f5 -= f8;
                            int i69 = i66 - i68;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0131a5).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a5).rightMargin, ((ViewGroup.MarginLayoutParams) c0131a5).width);
                            if (((ViewGroup.MarginLayoutParams) c0131a5).height == 0 && i62 == 1073741824) {
                                if (i68 > 0) {
                                    measuredHeight = i68;
                                    childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
                                    i58 = View.combineMeasuredStates(i58, childAt3.getMeasuredState() & (-256));
                                    i66 = i69;
                                }
                                measuredHeight = 0;
                                childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
                                i58 = View.combineMeasuredStates(i58, childAt3.getMeasuredState() & (-256));
                                i66 = i69;
                            } else {
                                measuredHeight = childAt3.getMeasuredHeight() + i68;
                            }
                        }
                        int i70 = ((ViewGroup.MarginLayoutParams) c0131a5).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a5).rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i70;
                        int max3 = Math.max(i61, measuredWidth2);
                        i27 = i62;
                        if (i55 != 1073741824) {
                            i28 = max3;
                            i29 = -1;
                            if (((ViewGroup.MarginLayoutParams) c0131a5).width == -1) {
                                z6 = true;
                                if (!z6) {
                                    i70 = measuredWidth2;
                                }
                                int max4 = Math.max(i57, i70);
                                boolean z14 = !z11 && ((ViewGroup.MarginLayoutParams) c0131a5).width == i29;
                                int i71 = this.f547g;
                                this.f547g = Math.max(i71, childAt3.getMeasuredHeight() + i71 + ((ViewGroup.MarginLayoutParams) c0131a5).topMargin + ((ViewGroup.MarginLayoutParams) c0131a5).bottomMargin + 0);
                                z11 = z14;
                                i61 = i28;
                                i57 = max4;
                            }
                        } else {
                            i28 = max3;
                            i29 = -1;
                        }
                        z6 = false;
                        if (!z6) {
                        }
                        int max42 = Math.max(i57, i70);
                        if (z11) {
                        }
                        int i712 = this.f547g;
                        this.f547g = Math.max(i712, childAt3.getMeasuredHeight() + i712 + ((ViewGroup.MarginLayoutParams) c0131a5).topMargin + ((ViewGroup.MarginLayoutParams) c0131a5).bottomMargin + 0);
                        z11 = z14;
                        i61 = i28;
                        i57 = max42;
                    }
                    i67++;
                    i62 = i27;
                }
                this.f547g = getPaddingBottom() + getPaddingTop() + this.f547g;
            } else {
                i57 = Math.max(i57, i60);
                if (z9 && i62 != 1073741824) {
                    for (int i72 = 0; i72 < i56; i72++) {
                        View childAt4 = getChildAt(i72);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((C0131a) childAt4.getLayoutParams()).f557a > 0.0f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i59, 1073741824));
                        }
                    }
                }
            }
            int i73 = i61;
            if (z11 || i55 == 1073741824) {
                i57 = i73;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + i57, getSuggestedMinimumWidth()), i, i58), resolveSizeAndState);
            if (z12) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i74 = 0; i74 < i56; i74++) {
                    View childAt5 = getChildAt(i74);
                    if (childAt5.getVisibility() != 8) {
                        C0131a c0131a6 = (C0131a) childAt5.getLayoutParams();
                        if (((ViewGroup.MarginLayoutParams) c0131a6).width == -1) {
                            int i75 = ((ViewGroup.MarginLayoutParams) c0131a6).height;
                            ((ViewGroup.MarginLayoutParams) c0131a6).height = childAt5.getMeasuredHeight();
                            measureChildWithMargins(childAt5, makeMeasureSpec, 0, i2, 0);
                            ((ViewGroup.MarginLayoutParams) c0131a6).height = i75;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f547g = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i);
        int mode4 = View.MeasureSpec.getMode(i2);
        if (this.f550j == null || this.f551k == null) {
            this.f550j = new int[4];
            this.f551k = new int[4];
        }
        int[] iArr = this.f550j;
        int[] iArr2 = this.f551k;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z15 = this.f542b;
        boolean z16 = this.f549i;
        boolean z17 = mode3 == 1073741824;
        int i76 = 0;
        float f9 = 0.0f;
        int i77 = 0;
        int i78 = 0;
        int i79 = 0;
        int i80 = 0;
        boolean z18 = true;
        boolean z19 = false;
        boolean z20 = false;
        int i81 = 0;
        while (i78 < virtualChildCount2) {
            View childAt6 = getChildAt(i78);
            if (childAt6 == null) {
                this.f547g += 0;
                i17 = i76;
                i18 = i77;
            } else {
                i17 = i76;
                i18 = i77;
                if (childAt6.getVisibility() == 8) {
                    i78 += 0;
                } else {
                    if (m1265i(i78)) {
                        this.f547g += this.f553m;
                    }
                    C0131a c0131a7 = (C0131a) childAt6.getLayoutParams();
                    float f10 = c0131a7.f557a;
                    float f11 = f9 + f10;
                    if (mode3 == 1073741824 && ((ViewGroup.MarginLayoutParams) c0131a7).width == 0 && f10 > 0.0f) {
                        if (z17) {
                            i26 = i78;
                            this.f547g = ((ViewGroup.MarginLayoutParams) c0131a7).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a7).rightMargin + this.f547g;
                        } else {
                            i26 = i78;
                            int i82 = this.f547g;
                            this.f547g = Math.max(i82, ((ViewGroup.MarginLayoutParams) c0131a7).leftMargin + i82 + ((ViewGroup.MarginLayoutParams) c0131a7).rightMargin);
                        }
                        if (z15) {
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(makeMeasureSpec2, makeMeasureSpec2);
                            c0131a = c0131a7;
                            i20 = i17;
                            i21 = i18;
                            i23 = i26;
                            z2 = z16;
                            z3 = z15;
                        } else {
                            c0131a = c0131a7;
                            i20 = i17;
                            i21 = i18;
                            i23 = i26;
                            i24 = 1073741824;
                            z2 = z16;
                            z3 = z15;
                            z4 = true;
                            if (mode4 == i24 && ((ViewGroup.MarginLayoutParams) c0131a).height == -1) {
                                z5 = true;
                                z20 = true;
                            } else {
                                z5 = false;
                            }
                            int i83 = ((ViewGroup.MarginLayoutParams) c0131a).topMargin + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin;
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i83;
                            combineMeasuredStates = View.combineMeasuredStates(i20, childAt6.getMeasuredState());
                            if (z3 || (baseline2 = childAt6.getBaseline()) == -1) {
                                i25 = combineMeasuredStates;
                            } else {
                                int i84 = c0131a.f558b;
                                if (i84 < 0) {
                                    i84 = this.f546f;
                                }
                                int i85 = (((i84 & 112) >> 4) & (-2)) >> 1;
                                i25 = combineMeasuredStates;
                                iArr[i85] = Math.max(iArr[i85], baseline2);
                                iArr2[i85] = Math.max(iArr2[i85], measuredHeight3 - baseline2);
                            }
                            int max5 = Math.max(i81, measuredHeight3);
                            boolean z21 = !z18 && ((ViewGroup.MarginLayoutParams) c0131a).height == -1;
                            if (c0131a.f557a <= 0.0f) {
                                if (z5) {
                                    measuredHeight3 = i83;
                                }
                                i77 = Math.max(i21, measuredHeight3);
                            } else {
                                int i86 = i21;
                                if (z5) {
                                    measuredHeight3 = i83;
                                }
                                i80 = Math.max(i80, measuredHeight3);
                                i77 = i86;
                            }
                            i81 = max5;
                            z18 = z21;
                            z19 = z4;
                            i76 = i25;
                            i78 = i23 + 0;
                            f9 = f11;
                            i78++;
                            z16 = z2;
                            z15 = z3;
                        }
                    } else {
                        int i87 = i78;
                        if (((ViewGroup.MarginLayoutParams) c0131a7).width == 0) {
                            f3 = 0.0f;
                            if (f10 > 0.0f) {
                                ((ViewGroup.MarginLayoutParams) c0131a7).width = -2;
                                i19 = 0;
                                i20 = i17;
                                i21 = i18;
                                i22 = i19;
                                i23 = i87;
                                z2 = z16;
                                z3 = z15;
                                measureChildWithMargins(childAt6, i, f11 != f3 ? this.f547g : 0, i2, 0);
                                if (i22 == Integer.MIN_VALUE) {
                                    c0131a = c0131a7;
                                    ((ViewGroup.MarginLayoutParams) c0131a).width = i22;
                                } else {
                                    c0131a = c0131a7;
                                }
                                int measuredWidth3 = childAt6.getMeasuredWidth();
                                if (z17) {
                                    int i88 = this.f547g;
                                    this.f547g = Math.max(i88, i88 + measuredWidth3 + ((ViewGroup.MarginLayoutParams) c0131a).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a).rightMargin + 0);
                                } else {
                                    this.f547g = ((ViewGroup.MarginLayoutParams) c0131a).leftMargin + measuredWidth3 + ((ViewGroup.MarginLayoutParams) c0131a).rightMargin + 0 + this.f547g;
                                }
                                if (z2) {
                                    i79 = Math.max(measuredWidth3, i79);
                                }
                            }
                        } else {
                            f3 = 0.0f;
                        }
                        i19 = Integer.MIN_VALUE;
                        i20 = i17;
                        i21 = i18;
                        i22 = i19;
                        i23 = i87;
                        z2 = z16;
                        z3 = z15;
                        measureChildWithMargins(childAt6, i, f11 != f3 ? this.f547g : 0, i2, 0);
                        if (i22 == Integer.MIN_VALUE) {
                        }
                        int measuredWidth32 = childAt6.getMeasuredWidth();
                        if (z17) {
                        }
                        if (z2) {
                        }
                    }
                    z4 = z19;
                    i24 = 1073741824;
                    if (mode4 == i24) {
                    }
                    z5 = false;
                    int i832 = ((ViewGroup.MarginLayoutParams) c0131a).topMargin + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin;
                    int measuredHeight32 = childAt6.getMeasuredHeight() + i832;
                    combineMeasuredStates = View.combineMeasuredStates(i20, childAt6.getMeasuredState());
                    if (z3) {
                    }
                    i25 = combineMeasuredStates;
                    int max52 = Math.max(i81, measuredHeight32);
                    if (z18) {
                    }
                    if (c0131a.f557a <= 0.0f) {
                    }
                    i81 = max52;
                    z18 = z21;
                    z19 = z4;
                    i76 = i25;
                    i78 = i23 + 0;
                    f9 = f11;
                    i78++;
                    z16 = z2;
                    z15 = z3;
                }
            }
            z3 = z15;
            i76 = i17;
            i77 = i18;
            z2 = z16;
            i78++;
            z16 = z2;
            z15 = z3;
        }
        int i89 = i77;
        boolean z22 = z16;
        boolean z23 = z15;
        int i90 = i81;
        if (this.f547g > 0 && m1265i(virtualChildCount2)) {
            this.f547g += this.f553m;
        }
        int i91 = iArr[1];
        int i92 = i76;
        if (i91 == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c = 3;
            if (iArr[3] == -1) {
                max = i90;
                i3 = mode4;
                if (z22 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                    int i93 = 0;
                    this.f547g = 0;
                    i16 = 0;
                    while (i16 < virtualChildCount2) {
                        View childAt7 = getChildAt(i16);
                        if (childAt7 == null) {
                            this.f547g += i93;
                        } else if (childAt7.getVisibility() == 8) {
                            i16 += 0;
                        } else {
                            C0131a c0131a8 = (C0131a) childAt7.getLayoutParams();
                            if (z17) {
                                this.f547g = ((ViewGroup.MarginLayoutParams) c0131a8).leftMargin + i79 + ((ViewGroup.MarginLayoutParams) c0131a8).rightMargin + 0 + this.f547g;
                            } else {
                                int i94 = this.f547g;
                                this.f547g = Math.max(i94, i94 + i79 + ((ViewGroup.MarginLayoutParams) c0131a8).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a8).rightMargin + 0);
                            }
                        }
                        i16++;
                        i93 = 0;
                    }
                }
                int paddingRight = getPaddingRight() + getPaddingLeft() + this.f547g;
                this.f547g = paddingRight;
                int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, 0);
                i4 = (16777215 & resolveSizeAndState2) - this.f547g;
                if (!z19 || (i4 != 0 && f9 > 0.0f)) {
                    f = this.f548h;
                    if (f > 0.0f) {
                        f9 = f;
                    }
                    iArr[3] = -1;
                    iArr[2] = -1;
                    iArr[1] = -1;
                    iArr[0] = -1;
                    iArr2[3] = -1;
                    iArr2[2] = -1;
                    iArr2[1] = -1;
                    iArr2[0] = -1;
                    this.f547g = 0;
                    int i95 = i4;
                    int i96 = -1;
                    i5 = 0;
                    float f12 = f9;
                    i6 = i92;
                    while (i5 < virtualChildCount2) {
                        View childAt8 = getChildAt(i5);
                        if (childAt8 == null || childAt8.getVisibility() == 8) {
                            i11 = i95;
                            i12 = i3;
                        } else {
                            C0131a c0131a9 = (C0131a) childAt8.getLayoutParams();
                            float f13 = c0131a9.f557a;
                            if (f13 > 0.0f) {
                                int i97 = (int) ((i95 * f13) / f12);
                                float f14 = f12 - f13;
                                int i98 = i95 - i97;
                                int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0131a9).topMargin + ((ViewGroup.MarginLayoutParams) c0131a9).bottomMargin, ((ViewGroup.MarginLayoutParams) c0131a9).height);
                                if (((ViewGroup.MarginLayoutParams) c0131a9).width != 0 || mode3 != 1073741824 ? (i97 = i97 + childAt8.getMeasuredWidth()) < 0 : i97 <= 0) {
                                    i97 = 0;
                                }
                                childAt8.measure(View.MeasureSpec.makeMeasureSpec(i97, 1073741824), childMeasureSpec2);
                                i6 = View.combineMeasuredStates(i6, childAt8.getMeasuredState() & (-16777216));
                                f12 = f14;
                                i13 = i98;
                            } else {
                                i13 = i95;
                            }
                            if (z17) {
                                i14 = i6;
                                this.f547g = childAt8.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0131a9).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a9).rightMargin + 0 + this.f547g;
                                f2 = f12;
                            } else {
                                i14 = i6;
                                int i99 = this.f547g;
                                f2 = f12;
                                this.f547g = Math.max(i99, childAt8.getMeasuredWidth() + i99 + ((ViewGroup.MarginLayoutParams) c0131a9).leftMargin + ((ViewGroup.MarginLayoutParams) c0131a9).rightMargin + 0);
                            }
                            i12 = i3;
                            boolean z24 = i12 != 1073741824 && ((ViewGroup.MarginLayoutParams) c0131a9).height == -1;
                            int i100 = i13;
                            int i101 = ((ViewGroup.MarginLayoutParams) c0131a9).topMargin + ((ViewGroup.MarginLayoutParams) c0131a9).bottomMargin;
                            int measuredHeight4 = childAt8.getMeasuredHeight() + i101;
                            i96 = Math.max(i96, measuredHeight4);
                            if (!z24) {
                                i101 = measuredHeight4;
                            }
                            int max6 = Math.max(i80, i101);
                            if (z18) {
                                i15 = -1;
                                if (((ViewGroup.MarginLayoutParams) c0131a9).height == -1) {
                                    z = true;
                                    if (!z23 && (baseline = childAt8.getBaseline()) != i15) {
                                        int i102 = c0131a9.f558b;
                                        if (i102 < 0) {
                                            i102 = this.f546f;
                                        }
                                        int i103 = (((i102 & 112) >> 4) & (-2)) >> 1;
                                        iArr[i103] = Math.max(iArr[i103], baseline);
                                        iArr2[i103] = Math.max(iArr2[i103], measuredHeight4 - baseline);
                                    }
                                    i80 = max6;
                                    z18 = z;
                                    i11 = i100;
                                    i6 = i14;
                                    f12 = f2;
                                }
                            } else {
                                i15 = -1;
                            }
                            z = false;
                            if (!z23) {
                            }
                            i80 = max6;
                            z18 = z;
                            i11 = i100;
                            i6 = i14;
                            f12 = f2;
                        }
                        i5++;
                        i95 = i11;
                        i3 = i12;
                    }
                    i7 = i2;
                    i8 = i3;
                    this.f547g = getPaddingRight() + getPaddingLeft() + this.f547g;
                    i9 = iArr[1];
                    if (i9 != -1 && iArr[0] == -1 && iArr[2] == -1) {
                        c2 = 3;
                        if (iArr[3] == -1) {
                            max = i96;
                        }
                    } else {
                        c2 = 3;
                    }
                    i10 = 0;
                    max = Math.max(i96, Math.max(iArr2[c2], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c2], Math.max(iArr[0], Math.max(i9, iArr[2]))));
                    if (!z18 || i8 == 1073741824) {
                        i80 = max;
                    }
                    setMeasuredDimension(resolveSizeAndState2 | ((-16777216) & i6), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + i80, getSuggestedMinimumHeight()), i7, i6 << 16));
                    if (z20) {
                        int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                        while (i10 < virtualChildCount2) {
                            View childAt9 = getChildAt(i10);
                            if (childAt9.getVisibility() != 8) {
                                C0131a c0131a10 = (C0131a) childAt9.getLayoutParams();
                                if (((ViewGroup.MarginLayoutParams) c0131a10).height == -1) {
                                    int i104 = ((ViewGroup.MarginLayoutParams) c0131a10).width;
                                    ((ViewGroup.MarginLayoutParams) c0131a10).width = childAt9.getMeasuredWidth();
                                    measureChildWithMargins(childAt9, i, 0, makeMeasureSpec3, 0);
                                    ((ViewGroup.MarginLayoutParams) c0131a10).width = i104;
                                }
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                int max7 = Math.max(i80, i89);
                if (z22 && mode3 != 1073741824) {
                    for (int i105 = 0; i105 < virtualChildCount2; i105++) {
                        View childAt10 = getChildAt(i105);
                        if (childAt10 != null && childAt10.getVisibility() != 8 && ((C0131a) childAt10.getLayoutParams()).f557a > 0.0f) {
                            childAt10.measure(View.MeasureSpec.makeMeasureSpec(i79, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt10.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i7 = i2;
                i80 = max7;
                i6 = i92;
                i8 = i3;
                i10 = 0;
                if (!z18) {
                }
                i80 = max;
                setMeasuredDimension(resolveSizeAndState2 | ((-16777216) & i6), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + i80, getSuggestedMinimumHeight()), i7, i6 << 16));
                if (z20) {
                }
            }
        } else {
            c = 3;
        }
        i3 = mode4;
        max = Math.max(i90, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c], Math.max(iArr[0], Math.max(i91, iArr[2]))));
        if (z22) {
            int i932 = 0;
            this.f547g = 0;
            i16 = 0;
            while (i16 < virtualChildCount2) {
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f547g;
        this.f547g = paddingRight2;
        int resolveSizeAndState22 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i, 0);
        i4 = (16777215 & resolveSizeAndState22) - this.f547g;
        if (z19) {
        }
        f = this.f548h;
        if (f > 0.0f) {
        }
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        this.f547g = 0;
        int i952 = i4;
        int i962 = -1;
        i5 = 0;
        float f122 = f9;
        i6 = i92;
        while (i5 < virtualChildCount2) {
        }
        i7 = i2;
        i8 = i3;
        this.f547g = getPaddingRight() + getPaddingLeft() + this.f547g;
        i9 = iArr[1];
        if (i9 != -1) {
        }
        c2 = 3;
        i10 = 0;
        max = Math.max(i962, Math.max(iArr2[c2], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c2], Math.max(iArr[0], Math.max(i9, iArr[2]))));
        if (!z18) {
        }
        i80 = max;
        setMeasuredDimension(resolveSizeAndState22 | ((-16777216) & i6), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + i80, getSuggestedMinimumHeight()), i7, i6 << 16));
        if (z20) {
        }
    }

    public void setBaselineAligned(boolean z) {
        this.f542b = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f543c = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f552l) {
            return;
        }
        this.f552l = drawable;
        if (drawable != null) {
            this.f553m = drawable.getIntrinsicWidth();
            this.f554n = drawable.getIntrinsicHeight();
        } else {
            this.f553m = 0;
            this.f554n = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f556p = i;
    }

    public void setGravity(int i) {
        if (this.f546f != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f546f = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f546f;
        if ((8388615 & i3) != i2) {
            this.f546f = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f549i = z;
    }

    public void setOrientation(int i) {
        if (this.f545e != i) {
            this.f545e = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f555o) {
            requestLayout();
        }
        this.f555o = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f546f;
        if ((i3 & 112) != i2) {
            this.f546f = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f548h = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
