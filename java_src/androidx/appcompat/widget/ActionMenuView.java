package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.appcompat.widget.C0122a;
import androidx.appcompat.widget.C0130b;
import androidx.appcompat.widget.Toolbar;
import p004b.C0286r;
import p024g.C0564y0;
/* loaded from: classes.dex */
public class ActionMenuView extends C0130b implements C0068f.InterfaceC0070b, InterfaceC0078k {

    /* renamed from: A */
    public final int f369A;

    /* renamed from: B */
    public InterfaceC0094e f370B;

    /* renamed from: q */
    public C0068f f371q;

    /* renamed from: r */
    public Context f372r;

    /* renamed from: s */
    public int f373s;

    /* renamed from: t */
    public boolean f374t;

    /* renamed from: u */
    public C0122a f375u;

    /* renamed from: v */
    public InterfaceC0076j.InterfaceC0077a f376v;

    /* renamed from: w */
    public C0068f.InterfaceC0069a f377w;

    /* renamed from: x */
    public boolean f378x;

    /* renamed from: y */
    public int f379y;

    /* renamed from: z */
    public final int f380z;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0090a {
        /* renamed from: a */
        boolean mo1273a();

        /* renamed from: c */
        boolean mo1272c();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes.dex */
    public static class C0091b implements InterfaceC0076j.InterfaceC0077a {
        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: a */
        public final void mo1015a(C0068f c0068f, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: b */
        public final boolean mo1014b(C0068f c0068f) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes.dex */
    public static class C0092c extends C0130b.C0131a {
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public boolean f381c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public int f382d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public int f383e;
        @ViewDebug.ExportedProperty

        /* renamed from: f */
        public boolean f384f;
        @ViewDebug.ExportedProperty

        /* renamed from: g */
        public boolean f385g;

        /* renamed from: h */
        public boolean f386h;

        public C0092c() {
            super(-2, -2);
            this.f381c = false;
        }

        public C0092c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0092c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0092c(C0092c c0092c) {
            super(c0092c);
            this.f381c = c0092c.f381c;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes.dex */
    public class C0093d implements C0068f.InterfaceC0069a {
        public C0093d() {
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: a */
        public final boolean mo853a(C0068f c0068f, MenuItem menuItem) {
            boolean z;
            InterfaceC0094e interfaceC0094e = ActionMenuView.this.f370B;
            if (interfaceC0094e == null) {
                return false;
            }
            Toolbar.InterfaceC0118e interfaceC0118e = Toolbar.this.f472H;
            if (interfaceC0118e != null) {
                z = C0286r.this.f1058c.onMenuItemSelected(0, menuItem);
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: b */
        public final void mo852b(C0068f c0068f) {
            C0068f.InterfaceC0069a interfaceC0069a = ActionMenuView.this.f377w;
            if (interfaceC0069a != null) {
                interfaceC0069a.mo852b(c0068f);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes.dex */
    public interface InterfaceC0094e {
    }

    public ActionMenuView() {
        throw null;
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f380z = (int) (56.0f * f);
        this.f369A = (int) (f * 4.0f);
        this.f372r = context;
        this.f373s = 0;
    }

    /* renamed from: j */
    public static C0092c m1314j(ViewGroup.LayoutParams layoutParams) {
        C0092c c0092c;
        if (layoutParams != null) {
            if (layoutParams instanceof C0092c) {
                c0092c = new C0092c((C0092c) layoutParams);
            } else {
                c0092c = new C0092c(layoutParams);
            }
            if (c0092c.f558b <= 0) {
                c0092c.f558b = 16;
            }
            return c0092c;
        }
        C0092c c0092c2 = new C0092c();
        c0092c2.f558b = 16;
        return c0092c2;
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0070b
    /* renamed from: a */
    public final boolean mo1315a(C0072h c0072h) {
        return this.f371q.m1345q(c0072h, null, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k
    /* renamed from: c */
    public final void mo938c(C0068f c0068f) {
        this.f371q = c0068f;
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof C0092c);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.C0130b
    /* renamed from: f */
    public final C0130b.C0131a mo1268f() {
        C0092c c0092c = new C0092c();
        c0092c.f558b = 16;
        return c0092c;
    }

    @Override // androidx.appcompat.widget.C0130b
    /* renamed from: g */
    public final C0130b.C0131a mo1267g(AttributeSet attributeSet) {
        return new C0092c(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        C0092c c0092c = new C0092c();
        c0092c.f558b = 16;
        return c0092c;
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0092c(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m1314j(layoutParams);
    }

    public Menu getMenu() {
        if (this.f371q == null) {
            Context context = getContext();
            C0068f c0068f = new C0068f(context);
            this.f371q = c0068f;
            c0068f.f226e = new C0093d();
            C0122a c0122a = new C0122a(context);
            this.f375u = c0122a;
            c0122a.f521m = true;
            c0122a.f522n = true;
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f376v;
            if (interfaceC0077a == null) {
                interfaceC0077a = new C0091b();
            }
            c0122a.f167f = interfaceC0077a;
            this.f371q.m1352b(c0122a, this.f372r);
            C0122a c0122a2 = this.f375u;
            c0122a2.f170i = this;
            this.f371q = c0122a2.f165d;
        }
        return this.f371q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0122a c0122a = this.f375u;
        C0122a.C0126d c0126d = c0122a.f518j;
        if (c0126d != null) {
            return c0126d.getDrawable();
        }
        if (c0122a.f520l) {
            return c0122a.f519k;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f373s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.C0130b
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C0130b.C0131a mo1266h(ViewGroup.LayoutParams layoutParams) {
        return m1314j(layoutParams);
    }

    /* renamed from: k */
    public final boolean m1313k(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0090a)) {
            z = false | ((InterfaceC0090a) childAt).mo1273a();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC0090a)) ? z : z | ((InterfaceC0090a) childAt2).mo1272c();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0122a c0122a = this.f375u;
        if (c0122a != null) {
            c0122a.mo1278f();
            if (this.f375u.m1276h()) {
                this.f375u.m1277g();
                this.f375u.m1274l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0122a c0122a = this.f375u;
        if (c0122a != null) {
            c0122a.m1277g();
            C0122a.C0123a c0123a = c0122a.f530v;
            if (c0123a != null && c0123a.m1333b()) {
                c0123a.f288j.dismiss();
            }
        }
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.f378x) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i3 - i;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean m534a = C0564y0.m534a(this);
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                C0092c c0092c = (C0092c) childAt.getLayoutParams();
                if (c0092c.f381c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m1313k(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m534a) {
                        i5 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0092c).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0092c).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0092c).leftMargin) + ((ViewGroup.MarginLayoutParams) c0092c).rightMargin;
                    m1313k(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int max = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (m534a) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                C0092c c0092c2 = (C0092c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0092c2.f381c) {
                    int i16 = width2 - ((ViewGroup.MarginLayoutParams) c0092c2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) c0092c2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            C0092c c0092c3 = (C0092c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0092c3.f381c) {
                int i19 = paddingLeft + ((ViewGroup.MarginLayoutParams) c0092c3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft = measuredWidth4 + ((ViewGroup.MarginLayoutParams) c0092c3).rightMargin + max + i19;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // androidx.appcompat.widget.C0130b, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        ?? r4;
        int i8;
        int i9;
        int i10;
        C0068f c0068f;
        boolean z3 = this.f378x;
        boolean z4 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f378x = z4;
        if (z3 != z4) {
            this.f379y = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f378x && (c0068f = this.f371q) != null && size != this.f379y) {
            this.f379y = size;
            c0068f.m1346p(true);
        }
        int childCount = getChildCount();
        if (!this.f378x || childCount <= 0) {
            for (int i11 = 0; i11 < childCount; i11++) {
                C0092c c0092c = (C0092c) getChildAt(i11).getLayoutParams();
                ((ViewGroup.MarginLayoutParams) c0092c).rightMargin = 0;
                ((ViewGroup.MarginLayoutParams) c0092c).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i12 = size2 - paddingRight;
        int i13 = this.f380z;
        int i14 = i12 / i13;
        int i15 = i12 % i13;
        if (i14 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i16 = (i15 / i14) + i13;
        int childCount2 = getChildCount();
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        boolean z5 = false;
        long j = 0;
        int i21 = 0;
        while (true) {
            i3 = this.f369A;
            if (i20 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i20);
            int i22 = size3;
            int i23 = i12;
            if (childAt.getVisibility() == 8) {
                i8 = mode;
                i9 = paddingBottom;
            } else {
                boolean z6 = childAt instanceof ActionMenuItemView;
                int i24 = i18 + 1;
                if (z6) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                C0092c c0092c2 = (C0092c) childAt.getLayoutParams();
                c0092c2.f386h = false;
                c0092c2.f383e = 0;
                c0092c2.f382d = 0;
                c0092c2.f384f = false;
                ((ViewGroup.MarginLayoutParams) c0092c2).leftMargin = 0;
                ((ViewGroup.MarginLayoutParams) c0092c2).rightMargin = 0;
                c0092c2.f385g = z6 && ((ActionMenuItemView) childAt).m1361d();
                int i25 = c0092c2.f381c ? 1 : i14;
                C0092c c0092c3 = (C0092c) childAt.getLayoutParams();
                i8 = mode;
                i9 = paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z6 ? (ActionMenuItemView) childAt : null;
                boolean z7 = actionMenuItemView != null && actionMenuItemView.m1361d();
                if (i25 <= 0 || (z7 && i25 < 2)) {
                    i10 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i25 * i16, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i10 = measuredWidth / i16;
                    if (measuredWidth % i16 != 0) {
                        i10++;
                    }
                    if (z7 && i10 < 2) {
                        i10 = 2;
                    }
                }
                c0092c3.f384f = !c0092c3.f381c && z7;
                c0092c3.f382d = i10;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i16 * i10, 1073741824), makeMeasureSpec);
                i19 = Math.max(i19, i10);
                if (c0092c2.f384f) {
                    i21++;
                }
                if (c0092c2.f381c) {
                    z5 = true;
                }
                i14 -= i10;
                i17 = Math.max(i17, childAt.getMeasuredHeight());
                if (i10 == 1) {
                    j |= 1 << i20;
                }
                i18 = i24;
            }
            i20++;
            size3 = i22;
            i12 = i23;
            paddingBottom = i9;
            mode = i8;
        }
        int i26 = mode;
        int i27 = i12;
        int i28 = size3;
        boolean z8 = z5 && i18 == 2;
        boolean z9 = false;
        while (i21 > 0 && i14 > 0) {
            int i29 = Integer.MAX_VALUE;
            int i30 = 0;
            int i31 = 0;
            long j2 = 0;
            while (i31 < childCount2) {
                C0092c c0092c4 = (C0092c) getChildAt(i31).getLayoutParams();
                boolean z10 = z9;
                if (c0092c4.f384f) {
                    int i32 = c0092c4.f382d;
                    if (i32 < i29) {
                        j2 = 1 << i31;
                        i29 = i32;
                        i30 = 1;
                    } else if (i32 == i29) {
                        j2 |= 1 << i31;
                        i30++;
                    }
                }
                i31++;
                z9 = z10;
            }
            z = z9;
            j |= j2;
            if (i30 > i14) {
                break;
            }
            int i33 = i29 + 1;
            int i34 = 0;
            while (i34 < childCount2) {
                View childAt2 = getChildAt(i34);
                C0092c c0092c5 = (C0092c) childAt2.getLayoutParams();
                int i35 = i17;
                int i36 = childMeasureSpec;
                int i37 = childCount2;
                long j3 = 1 << i34;
                if ((j2 & j3) != 0) {
                    if (z8 && c0092c5.f385g) {
                        r4 = 1;
                        r4 = 1;
                        if (i14 == 1) {
                            childAt2.setPadding(i3 + i16, 0, i3, 0);
                        }
                    } else {
                        r4 = 1;
                    }
                    c0092c5.f382d += r4;
                    c0092c5.f386h = r4;
                    i14--;
                } else if (c0092c5.f382d == i33) {
                    j |= j3;
                }
                i34++;
                childMeasureSpec = i36;
                i17 = i35;
                childCount2 = i37;
            }
            z9 = true;
        }
        z = z9;
        int i38 = i17;
        int i39 = childMeasureSpec;
        int i40 = childCount2;
        boolean z11 = !z5 && i18 == 1;
        if (i14 <= 0 || j == 0 || (i14 >= i18 - 1 && !z11 && i19 <= 1)) {
            i4 = i40;
            z2 = z;
        } else {
            float bitCount = Long.bitCount(j);
            if (!z11) {
                if ((j & 1) != 0 && !((C0092c) getChildAt(0).getLayoutParams()).f385g) {
                    bitCount -= 0.5f;
                }
                int i41 = i40 - 1;
                if ((j & (1 << i41)) != 0 && !((C0092c) getChildAt(i41).getLayoutParams()).f385g) {
                    bitCount -= 0.5f;
                }
            }
            int i42 = bitCount > 0.0f ? (int) ((i14 * i16) / bitCount) : 0;
            boolean z12 = z;
            i4 = i40;
            for (int i43 = 0; i43 < i4; i43++) {
                if ((j & (1 << i43)) != 0) {
                    View childAt3 = getChildAt(i43);
                    C0092c c0092c6 = (C0092c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0092c6.f383e = i42;
                        c0092c6.f386h = true;
                        if (i43 == 0 && !c0092c6.f385g) {
                            ((ViewGroup.MarginLayoutParams) c0092c6).leftMargin = (-i42) / 2;
                        }
                    } else if (c0092c6.f381c) {
                        c0092c6.f383e = i42;
                        c0092c6.f386h = true;
                        ((ViewGroup.MarginLayoutParams) c0092c6).rightMargin = (-i42) / 2;
                    } else {
                        if (i43 != 0) {
                            ((ViewGroup.MarginLayoutParams) c0092c6).leftMargin = i42 / 2;
                        }
                        if (i43 != i4 - 1) {
                            ((ViewGroup.MarginLayoutParams) c0092c6).rightMargin = i42 / 2;
                        }
                    }
                    z12 = true;
                }
            }
            z2 = z12;
        }
        if (z2) {
            int i44 = 0;
            while (i44 < i4) {
                View childAt4 = getChildAt(i44);
                C0092c c0092c7 = (C0092c) childAt4.getLayoutParams();
                if (c0092c7.f386h) {
                    i7 = i39;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0092c7.f382d * i16) + c0092c7.f383e, 1073741824), i7);
                } else {
                    i7 = i39;
                }
                i44++;
                i39 = i7;
            }
        }
        if (i26 != 1073741824) {
            i6 = i27;
            i5 = i38;
        } else {
            i5 = i28;
            i6 = i27;
        }
        setMeasuredDimension(i6, i5);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f375u.f526r = z;
    }

    public void setOnMenuItemClickListener(InterfaceC0094e interfaceC0094e) {
        this.f370B = interfaceC0094e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0122a c0122a = this.f375u;
        C0122a.C0126d c0126d = c0122a.f518j;
        if (c0126d != null) {
            c0126d.setImageDrawable(drawable);
            return;
        }
        c0122a.f520l = true;
        c0122a.f519k = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.f374t = z;
    }

    public void setPopupTheme(int i) {
        if (this.f373s != i) {
            this.f373s = i;
            if (i == 0) {
                this.f372r = getContext();
            } else {
                this.f372r = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0122a c0122a) {
        this.f375u = c0122a;
        c0122a.f170i = this;
        this.f371q = c0122a.f165d;
    }
}
