package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.view.menu.SubMenuC0083m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p004b.AbstractC0254a;
import p008c.C0315a;
import p009c0.AbstractC0317a;
import p016e.C0400f;
import p016e.InterfaceC0395b;
import p024g.C0526k;
import p024g.C0527k0;
import p024g.C0531m;
import p024g.C0542r0;
import p024g.C0561x;
import p024g.C0564y0;
import p024g.InterfaceC0492a0;
import p024g.View$OnClickListenerC0544s0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    public int f465A;

    /* renamed from: B */
    public int f466B;

    /* renamed from: C */
    public boolean f467C;

    /* renamed from: D */
    public boolean f468D;

    /* renamed from: E */
    public final ArrayList<View> f469E;

    /* renamed from: F */
    public final ArrayList<View> f470F;

    /* renamed from: G */
    public final int[] f471G;

    /* renamed from: H */
    public InterfaceC0118e f472H;

    /* renamed from: I */
    public final C0114a f473I;

    /* renamed from: J */
    public C0134d f474J;

    /* renamed from: K */
    public C0122a f475K;

    /* renamed from: L */
    public C0116c f476L;

    /* renamed from: M */
    public InterfaceC0076j.InterfaceC0077a f477M;

    /* renamed from: N */
    public C0068f.InterfaceC0069a f478N;

    /* renamed from: O */
    public boolean f479O;

    /* renamed from: P */
    public final RunnableC0115b f480P;

    /* renamed from: b */
    public ActionMenuView f481b;

    /* renamed from: c */
    public C0561x f482c;

    /* renamed from: d */
    public C0561x f483d;

    /* renamed from: e */
    public C0526k f484e;

    /* renamed from: f */
    public C0531m f485f;

    /* renamed from: g */
    public final Drawable f486g;

    /* renamed from: h */
    public final CharSequence f487h;

    /* renamed from: i */
    public C0526k f488i;

    /* renamed from: j */
    public View f489j;

    /* renamed from: k */
    public Context f490k;

    /* renamed from: l */
    public int f491l;

    /* renamed from: m */
    public int f492m;

    /* renamed from: n */
    public int f493n;

    /* renamed from: o */
    public final int f494o;

    /* renamed from: p */
    public final int f495p;

    /* renamed from: q */
    public int f496q;

    /* renamed from: r */
    public int f497r;

    /* renamed from: s */
    public int f498s;

    /* renamed from: t */
    public int f499t;

    /* renamed from: u */
    public C0527k0 f500u;

    /* renamed from: v */
    public int f501v;

    /* renamed from: w */
    public int f502w;

    /* renamed from: x */
    public final int f503x;

    /* renamed from: y */
    public CharSequence f504y;

    /* renamed from: z */
    public CharSequence f505z;

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes.dex */
    public class C0114a implements ActionMenuView.InterfaceC0094e {
        public C0114a() {
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes.dex */
    public class RunnableC0115b implements Runnable {
        public RunnableC0115b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0122a c0122a;
            ActionMenuView actionMenuView = Toolbar.this.f481b;
            if (actionMenuView != null && (c0122a = actionMenuView.f375u) != null) {
                c0122a.m1274l();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes.dex */
    public class C0116c implements InterfaceC0076j {

        /* renamed from: b */
        public C0068f f508b;

        /* renamed from: c */
        public C0072h f509c;

        public C0116c() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: a */
        public final void mo1281a(C0068f c0068f, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: b */
        public final boolean mo694b(C0072h c0072h) {
            Toolbar toolbar = Toolbar.this;
            View view = toolbar.f489j;
            if (view instanceof InterfaceC0395b) {
                ((InterfaceC0395b) view).onActionViewCollapsed();
            }
            toolbar.removeView(toolbar.f489j);
            toolbar.removeView(toolbar.f488i);
            toolbar.f489j = null;
            ArrayList<View> arrayList = toolbar.f470F;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    toolbar.addView(arrayList.get(size));
                } else {
                    arrayList.clear();
                    this.f509c = null;
                    toolbar.requestLayout();
                    c0072h.f251C = false;
                    c0072h.f265n.m1346p(false);
                    return true;
                }
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: d */
        public final boolean mo1279d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: e */
        public final void mo693e(Context context, C0068f c0068f) {
            C0072h c0072h;
            C0068f c0068f2 = this.f508b;
            if (c0068f2 != null && (c0072h = this.f509c) != null) {
                c0068f2.mo1330d(c0072h);
            }
            this.f508b = c0068f;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: f */
        public final void mo1278f() {
            if (this.f509c != null) {
                C0068f c0068f = this.f508b;
                boolean z = false;
                if (c0068f != null) {
                    int size = c0068f.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.f508b.getItem(i) == this.f509c) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (z) {
                    return;
                }
                mo694b(this.f509c);
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: j */
        public final boolean mo692j(C0072h c0072h) {
            Toolbar toolbar = Toolbar.this;
            C0526k c0526k = toolbar.f488i;
            int i = toolbar.f494o;
            if (c0526k == null) {
                C0526k c0526k2 = new C0526k(toolbar.getContext(), null, R.attr.toolbarNavigationButtonStyle);
                toolbar.f488i = c0526k2;
                c0526k2.setImageDrawable(toolbar.f486g);
                toolbar.f488i.setContentDescription(toolbar.f487h);
                C0117d c0117d = new C0117d();
                c0117d.f958a = (i & 112) | 8388611;
                c0117d.f511b = 2;
                toolbar.f488i.setLayoutParams(c0117d);
                toolbar.f488i.setOnClickListener(new View$OnClickListenerC0544s0(toolbar));
            }
            ViewParent parent = toolbar.f488i.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f488i);
                }
                toolbar.addView(toolbar.f488i);
            }
            View actionView = c0072h.getActionView();
            toolbar.f489j = actionView;
            this.f509c = c0072h;
            ViewParent parent2 = actionView.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.f489j);
                }
                C0117d c0117d2 = new C0117d();
                c0117d2.f958a = (i & 112) | 8388611;
                c0117d2.f511b = 2;
                toolbar.f489j.setLayoutParams(c0117d2);
                toolbar.addView(toolbar.f489j);
            }
            int childCount = toolbar.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = toolbar.getChildAt(childCount);
                if (((C0117d) childAt.getLayoutParams()).f511b != 2 && childAt != toolbar.f481b) {
                    toolbar.removeViewAt(childCount);
                    toolbar.f470F.add(childAt);
                }
            }
            toolbar.requestLayout();
            c0072h.f251C = true;
            c0072h.f265n.m1346p(false);
            View view = toolbar.f489j;
            if (view instanceof InterfaceC0395b) {
                ((InterfaceC0395b) view).onActionViewExpanded();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j
        /* renamed from: k */
        public final boolean mo1275k(SubMenuC0083m subMenuC0083m) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes.dex */
    public static class C0117d extends AbstractC0254a.C0255a {

        /* renamed from: b */
        public int f511b;

        public C0117d() {
            this.f511b = 0;
            this.f958a = 8388627;
        }

        public C0117d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f511b = 0;
        }

        public C0117d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f511b = 0;
        }

        public C0117d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f511b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public C0117d(C0117d c0117d) {
            super((AbstractC0254a.C0255a) c0117d);
            this.f511b = 0;
            this.f511b = c0117d.f511b;
        }

        public C0117d(AbstractC0254a.C0255a c0255a) {
            super(c0255a);
            this.f511b = 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes.dex */
    public interface InterfaceC0118e {
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes.dex */
    public static class C0119f extends AbstractC0317a {
        public static final Parcelable.Creator<C0119f> CREATOR = new C0120a();

        /* renamed from: c */
        public int f512c;

        /* renamed from: d */
        public boolean f513d;

        /* renamed from: androidx.appcompat.widget.Toolbar$f$a */
        /* loaded from: classes.dex */
        public static class C0120a implements Parcelable.ClassLoaderCreator<C0119f> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0119f(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0119f[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0119f createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0119f(parcel, classLoader);
            }
        }

        public C0119f(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f512c = parcel.readInt();
            this.f513d = parcel.readInt() != 0;
        }

        public C0119f(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            parcel.writeInt(this.f512c);
            parcel.writeInt(this.f513d ? 1 : 0);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f503x = 8388627;
        this.f469E = new ArrayList<>();
        this.f470F = new ArrayList<>();
        this.f471G = new int[2];
        this.f473I = new C0114a();
        this.f480P = new RunnableC0115b();
        C0542r0 m569l = C0542r0.m569l(getContext(), attributeSet, C0736h.f2531D, R.attr.toolbarStyle);
        this.f492m = m569l.m572i(27, 0);
        this.f493n = m569l.m572i(18, 0);
        TypedArray typedArray = m569l.f2039b;
        this.f503x = typedArray.getInteger(0, 8388627);
        this.f494o = typedArray.getInteger(2, 48);
        int m578c = m569l.m578c(21, 0);
        m578c = m569l.m570k(26) ? m569l.m578c(26, m578c) : m578c;
        this.f499t = m578c;
        this.f498s = m578c;
        this.f497r = m578c;
        this.f496q = m578c;
        int m578c2 = m569l.m578c(24, -1);
        if (m578c2 >= 0) {
            this.f496q = m578c2;
        }
        int m578c3 = m569l.m578c(23, -1);
        if (m578c3 >= 0) {
            this.f497r = m578c3;
        }
        int m578c4 = m569l.m578c(25, -1);
        if (m578c4 >= 0) {
            this.f498s = m578c4;
        }
        int m578c5 = m569l.m578c(22, -1);
        if (m578c5 >= 0) {
            this.f499t = m578c5;
        }
        this.f495p = m569l.m577d(13, -1);
        int m578c6 = m569l.m578c(9, Integer.MIN_VALUE);
        int m578c7 = m569l.m578c(5, Integer.MIN_VALUE);
        int m577d = m569l.m577d(7, 0);
        int m577d2 = m569l.m577d(8, 0);
        if (this.f500u == null) {
            this.f500u = new C0527k0();
        }
        C0527k0 c0527k0 = this.f500u;
        c0527k0.f1993h = false;
        if (m577d != Integer.MIN_VALUE) {
            c0527k0.f1990e = m577d;
            c0527k0.f1986a = m577d;
        }
        if (m577d2 != Integer.MIN_VALUE) {
            c0527k0.f1991f = m577d2;
            c0527k0.f1987b = m577d2;
        }
        if (m578c6 != Integer.MIN_VALUE || m578c7 != Integer.MIN_VALUE) {
            c0527k0.m597a(m578c6, m578c7);
        }
        this.f501v = m569l.m578c(10, Integer.MIN_VALUE);
        this.f502w = m569l.m578c(6, Integer.MIN_VALUE);
        this.f486g = m569l.m576e(4);
        this.f487h = m569l.m571j(3);
        CharSequence m571j = m569l.m571j(20);
        if (!TextUtils.isEmpty(m571j)) {
            setTitle(m571j);
        }
        CharSequence m571j2 = m569l.m571j(17);
        if (!TextUtils.isEmpty(m571j2)) {
            setSubtitle(m571j2);
        }
        this.f490k = getContext();
        setPopupTheme(m569l.m572i(16, 0));
        Drawable m576e = m569l.m576e(15);
        if (m576e != null) {
            setNavigationIcon(m576e);
        }
        CharSequence m571j3 = m569l.m571j(14);
        if (!TextUtils.isEmpty(m571j3)) {
            setNavigationContentDescription(m571j3);
        }
        Drawable m576e2 = m569l.m576e(11);
        if (m576e2 != null) {
            setLogo(m576e2);
        }
        CharSequence m571j4 = m569l.m571j(12);
        if (!TextUtils.isEmpty(m571j4)) {
            setLogoDescription(m571j4);
        }
        if (m569l.m570k(28)) {
            setTitleTextColor(typedArray.getColor(28, -1));
        }
        if (m569l.m570k(19)) {
            setSubtitleTextColor(typedArray.getColor(19, -1));
        }
        m569l.m568m();
    }

    /* renamed from: f */
    public static C0117d m1292f(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0117d ? new C0117d((C0117d) layoutParams) : layoutParams instanceof AbstractC0254a.C0255a ? new C0117d((AbstractC0254a.C0255a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0117d((ViewGroup.MarginLayoutParams) layoutParams) : new C0117d(layoutParams);
    }

    private MenuInflater getMenuInflater() {
        return new C0400f(getContext());
    }

    /* renamed from: h */
    public static int m1290h(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    /* renamed from: i */
    public static int m1289i(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: a */
    public final void m1297a(int i, ArrayList arrayList) {
        boolean z;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                C0117d c0117d = (C0117d) childAt.getLayoutParams();
                if (c0117d.f511b == 0 && m1283o(childAt)) {
                    int i3 = c0117d.f958a;
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            C0117d c0117d2 = (C0117d) childAt2.getLayoutParams();
            if (c0117d2.f511b == 0 && m1283o(childAt2)) {
                int i5 = c0117d2.f958a;
                WeakHashMap<View, C0960q> weakHashMap3 = C0954m.f2934a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m1296b(View view, boolean z) {
        C0117d c0117d;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            c0117d = new C0117d();
        } else if (!checkLayoutParams(layoutParams)) {
            c0117d = m1292f(layoutParams);
        } else {
            c0117d = (C0117d) layoutParams;
        }
        c0117d.f511b = 1;
        if (z && this.f489j != null) {
            view.setLayoutParams(c0117d);
            this.f470F.add(view);
            return;
        }
        addView(view, c0117d);
    }

    /* renamed from: c */
    public final void m1295c() {
        m1294d();
        ActionMenuView actionMenuView = this.f481b;
        if (actionMenuView.f371q == null) {
            C0068f c0068f = (C0068f) actionMenuView.getMenu();
            if (this.f476L == null) {
                this.f476L = new C0116c();
            }
            this.f481b.setExpandedActionViewsExclusive(true);
            c0068f.m1352b(this.f476L, this.f490k);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0117d);
    }

    /* renamed from: d */
    public final void m1294d() {
        if (this.f481b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f481b = actionMenuView;
            actionMenuView.setPopupTheme(this.f491l);
            this.f481b.setOnMenuItemClickListener(this.f473I);
            ActionMenuView actionMenuView2 = this.f481b;
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f477M;
            C0068f.InterfaceC0069a interfaceC0069a = this.f478N;
            actionMenuView2.f376v = interfaceC0077a;
            actionMenuView2.f377w = interfaceC0069a;
            C0117d c0117d = new C0117d();
            c0117d.f958a = (this.f494o & 112) | 8388613;
            this.f481b.setLayoutParams(c0117d);
            m1296b(this.f481b, false);
        }
    }

    /* renamed from: e */
    public final void m1293e() {
        if (this.f484e == null) {
            this.f484e = new C0526k(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            C0117d c0117d = new C0117d();
            c0117d.f958a = (this.f494o & 112) | 8388611;
            this.f484e.setLayoutParams(c0117d);
        }
    }

    /* renamed from: g */
    public final int m1291g(View view, int i) {
        int i2;
        C0117d c0117d = (C0117d) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int i3 = c0117d.f958a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.f503x & 112;
        }
        if (i3 != 48) {
            if (i3 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i5 = ((ViewGroup.MarginLayoutParams) c0117d).topMargin;
                if (i4 < i5) {
                    i4 = i5;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    int i7 = ((ViewGroup.MarginLayoutParams) c0117d).bottomMargin;
                    if (i6 < i7) {
                        i4 = Math.max(0, i4 - (i7 - i6));
                    }
                }
                return paddingTop + i4;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0117d).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0117d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0117d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m1292f(layoutParams);
    }

    public int getContentInsetEnd() {
        C0527k0 c0527k0 = this.f500u;
        if (c0527k0 != null) {
            if (c0527k0.f1992g) {
                return c0527k0.f1986a;
            }
            return c0527k0.f1987b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f502w;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        C0527k0 c0527k0 = this.f500u;
        if (c0527k0 != null) {
            return c0527k0.f1986a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        C0527k0 c0527k0 = this.f500u;
        if (c0527k0 != null) {
            return c0527k0.f1987b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        C0527k0 c0527k0 = this.f500u;
        if (c0527k0 != null) {
            if (c0527k0.f1992g) {
                return c0527k0.f1987b;
            }
            return c0527k0.f1986a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f501v;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        boolean z;
        C0068f c0068f;
        ActionMenuView actionMenuView = this.f481b;
        if (actionMenuView != null && (c0068f = actionMenuView.f371q) != null && c0068f.hasVisibleItems()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return Math.max(getContentInsetEnd(), Math.max(this.f502w, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f501v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        C0531m c0531m = this.f485f;
        if (c0531m != null) {
            return c0531m.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        C0531m c0531m = this.f485f;
        if (c0531m != null) {
            return c0531m.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        m1295c();
        return this.f481b.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        C0526k c0526k = this.f484e;
        if (c0526k != null) {
            return c0526k.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C0526k c0526k = this.f484e;
        if (c0526k != null) {
            return c0526k.getDrawable();
        }
        return null;
    }

    public C0122a getOuterActionMenuPresenter() {
        return this.f475K;
    }

    public Drawable getOverflowIcon() {
        m1295c();
        return this.f481b.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f490k;
    }

    public int getPopupTheme() {
        return this.f491l;
    }

    public CharSequence getSubtitle() {
        return this.f505z;
    }

    public CharSequence getTitle() {
        return this.f504y;
    }

    public int getTitleMarginBottom() {
        return this.f499t;
    }

    public int getTitleMarginEnd() {
        return this.f497r;
    }

    public int getTitleMarginStart() {
        return this.f496q;
    }

    public int getTitleMarginTop() {
        return this.f498s;
    }

    public InterfaceC0492a0 getWrapper() {
        if (this.f474J == null) {
            this.f474J = new C0134d(this, true);
        }
        return this.f474J;
    }

    /* renamed from: j */
    public final boolean m1288j(View view) {
        return view.getParent() == this || this.f470F.contains(view);
    }

    /* renamed from: k */
    public final int m1287k(View view, int i, int i2, int[] iArr) {
        C0117d c0117d = (C0117d) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0117d).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m1291g = m1291g(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m1291g, max + measuredWidth, view.getMeasuredHeight() + m1291g);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c0117d).rightMargin + max;
    }

    /* renamed from: l */
    public final int m1286l(View view, int i, int i2, int[] iArr) {
        C0117d c0117d = (C0117d) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0117d).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m1291g = m1291g(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m1291g, max, view.getMeasuredHeight() + m1291g);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0117d).leftMargin);
    }

    /* renamed from: m */
    public final int m1285m(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: n */
    public final void m1284n(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: o */
    public final boolean m1283o(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f480P);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f468D = false;
        }
        if (!this.f468D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f468D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f468D = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0288 A[LOOP:0: B:107:0x0286->B:108:0x0288, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02a4 A[LOOP:1: B:110:0x02a2->B:111:0x02a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02c3 A[LOOP:2: B:113:0x02c1->B:114:0x02c3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0311 A[LOOP:3: B:122:0x030f->B:123:0x0311, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0213  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        int i6;
        int i7;
        boolean m1283o;
        boolean m1283o2;
        int i8;
        int i9;
        int i10;
        C0561x c0561x;
        C0561x c0561x2;
        boolean z3;
        int i11;
        int i12;
        int i13;
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int size;
        int i20;
        int i21;
        int size2;
        int i22;
        int size3;
        int i23;
        int i24;
        int i25;
        int size4;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getLayoutDirection() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i26 = width - paddingRight;
        int[] iArr = this.f471G;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight >= 0) {
            i5 = Math.min(minimumHeight, i4 - i2);
        } else {
            i5 = 0;
        }
        if (m1283o(this.f484e)) {
            C0526k c0526k = this.f484e;
            if (z2) {
                i7 = m1286l(c0526k, i26, i5, iArr);
                i6 = paddingLeft;
                if (m1283o(this.f488i)) {
                    C0526k c0526k2 = this.f488i;
                    if (z2) {
                        i7 = m1286l(c0526k2, i7, i5, iArr);
                    } else {
                        i6 = m1287k(c0526k2, i6, i5, iArr);
                    }
                }
                if (m1283o(this.f481b)) {
                    ActionMenuView actionMenuView = this.f481b;
                    if (z2) {
                        i6 = m1287k(actionMenuView, i6, i5, iArr);
                    } else {
                        i7 = m1286l(actionMenuView, i7, i5, iArr);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - i6);
                iArr[1] = Math.max(0, currentContentInsetRight - (i26 - i7));
                int max = Math.max(i6, currentContentInsetLeft);
                int min = Math.min(i7, i26 - currentContentInsetRight);
                if (m1283o(this.f489j)) {
                    View view = this.f489j;
                    if (z2) {
                        min = m1286l(view, min, i5, iArr);
                    } else {
                        max = m1287k(view, max, i5, iArr);
                    }
                }
                if (m1283o(this.f485f)) {
                    C0531m c0531m = this.f485f;
                    if (z2) {
                        min = m1286l(c0531m, min, i5, iArr);
                    } else {
                        max = m1287k(c0531m, max, i5, iArr);
                    }
                }
                m1283o = m1283o(this.f482c);
                m1283o2 = m1283o(this.f483d);
                if (!m1283o) {
                    C0117d c0117d = (C0117d) this.f482c.getLayoutParams();
                    i8 = paddingRight;
                    i9 = this.f482c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0117d).topMargin + ((ViewGroup.MarginLayoutParams) c0117d).bottomMargin + 0;
                } else {
                    i8 = paddingRight;
                    i9 = 0;
                }
                if (!m1283o2) {
                    C0117d c0117d2 = (C0117d) this.f483d.getLayoutParams();
                    i10 = width;
                    i9 += this.f483d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0117d2).topMargin + ((ViewGroup.MarginLayoutParams) c0117d2).bottomMargin;
                } else {
                    i10 = width;
                }
                if (m1283o && !m1283o2) {
                    i12 = paddingLeft;
                    i13 = i5;
                } else {
                    if (!m1283o) {
                        c0561x = this.f482c;
                    } else {
                        c0561x = this.f483d;
                    }
                    if (!m1283o2) {
                        c0561x2 = this.f483d;
                    } else {
                        c0561x2 = this.f482c;
                    }
                    C0117d c0117d3 = (C0117d) c0561x.getLayoutParams();
                    C0117d c0117d4 = (C0117d) c0561x2.getLayoutParams();
                    if ((!m1283o && this.f482c.getMeasuredWidth() > 0) || (m1283o2 && this.f483d.getMeasuredWidth() > 0)) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    i11 = this.f503x & 112;
                    i12 = paddingLeft;
                    if (i11 == 48) {
                        if (i11 != 80) {
                            int i27 = (((height - paddingTop2) - paddingBottom) - i9) / 2;
                            i13 = i5;
                            int i28 = ((ViewGroup.MarginLayoutParams) c0117d3).topMargin + this.f498s;
                            if (i27 < i28) {
                                i27 = i28;
                            } else {
                                int i29 = (((height - paddingBottom) - i9) - i27) - paddingTop2;
                                int i30 = ((ViewGroup.MarginLayoutParams) c0117d3).bottomMargin;
                                int i31 = this.f499t;
                                if (i29 < i30 + i31) {
                                    i27 = Math.max(0, i27 - ((((ViewGroup.MarginLayoutParams) c0117d4).bottomMargin + i31) - i29));
                                }
                            }
                            paddingTop = paddingTop2 + i27;
                        } else {
                            i13 = i5;
                            paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) c0117d4).bottomMargin) - this.f499t) - i9;
                        }
                    } else {
                        i13 = i5;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0117d3).topMargin + this.f498s;
                    }
                    if (!z2) {
                        if (z3) {
                            i17 = this.f496q;
                        } else {
                            i17 = 0;
                        }
                        int i32 = i17 - iArr[1];
                        min -= Math.max(0, i32);
                        iArr[1] = Math.max(0, -i32);
                        if (m1283o) {
                            int measuredWidth = min - this.f482c.getMeasuredWidth();
                            int measuredHeight = this.f482c.getMeasuredHeight() + paddingTop;
                            this.f482c.layout(measuredWidth, paddingTop, min, measuredHeight);
                            i18 = measuredWidth - this.f497r;
                            paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) ((C0117d) this.f482c.getLayoutParams())).bottomMargin;
                        } else {
                            i18 = min;
                        }
                        if (m1283o2) {
                            int i33 = paddingTop + ((ViewGroup.MarginLayoutParams) ((C0117d) this.f483d.getLayoutParams())).topMargin;
                            this.f483d.layout(min - this.f483d.getMeasuredWidth(), i33, min, this.f483d.getMeasuredHeight() + i33);
                            i19 = min - this.f497r;
                        } else {
                            i19 = min;
                        }
                        if (z3) {
                            min = Math.min(i18, i19);
                        }
                    } else {
                        if (z3) {
                            i14 = this.f496q;
                        } else {
                            i14 = 0;
                        }
                        int i34 = i14 - iArr[0];
                        max += Math.max(0, i34);
                        iArr[0] = Math.max(0, -i34);
                        if (m1283o) {
                            int measuredWidth2 = this.f482c.getMeasuredWidth() + max;
                            int measuredHeight2 = this.f482c.getMeasuredHeight() + paddingTop;
                            this.f482c.layout(max, paddingTop, measuredWidth2, measuredHeight2);
                            i15 = measuredWidth2 + this.f497r;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) ((C0117d) this.f482c.getLayoutParams())).bottomMargin;
                        } else {
                            i15 = max;
                        }
                        if (m1283o2) {
                            int i35 = paddingTop + ((ViewGroup.MarginLayoutParams) ((C0117d) this.f483d.getLayoutParams())).topMargin;
                            int measuredWidth3 = this.f483d.getMeasuredWidth() + max;
                            this.f483d.layout(max, i35, measuredWidth3, this.f483d.getMeasuredHeight() + i35);
                            i16 = measuredWidth3 + this.f497r;
                        } else {
                            i16 = max;
                        }
                        if (z3) {
                            max = Math.max(i15, i16);
                        }
                    }
                }
                ArrayList<View> arrayList = this.f469E;
                m1297a(3, arrayList);
                size = arrayList.size();
                i20 = max;
                for (i21 = 0; i21 < size; i21++) {
                    i20 = m1287k(arrayList.get(i21), i20, i13, iArr);
                }
                int i36 = i13;
                m1297a(5, arrayList);
                size2 = arrayList.size();
                for (i22 = 0; i22 < size2; i22++) {
                    min = m1286l(arrayList.get(i22), min, i36, iArr);
                }
                m1297a(1, arrayList);
                int i37 = iArr[0];
                int i38 = iArr[1];
                size3 = arrayList.size();
                int i39 = i37;
                i23 = 0;
                int i40 = 0;
                while (i23 < size3) {
                    View view2 = arrayList.get(i23);
                    C0117d c0117d5 = (C0117d) view2.getLayoutParams();
                    int i41 = ((ViewGroup.MarginLayoutParams) c0117d5).leftMargin - i39;
                    int i42 = ((ViewGroup.MarginLayoutParams) c0117d5).rightMargin - i38;
                    int max2 = Math.max(0, i41);
                    int max3 = Math.max(0, i42);
                    int max4 = Math.max(0, -i41);
                    int max5 = Math.max(0, -i42);
                    i40 += view2.getMeasuredWidth() + max2 + max3;
                    i23++;
                    i38 = max5;
                    i39 = max4;
                }
                i25 = ((((i10 - i12) - i8) / 2) + i12) - (i40 / 2);
                int i43 = i40 + i25;
                if (i25 >= i20) {
                    if (i43 > min) {
                        i20 = i25 - (i43 - min);
                    } else {
                        i20 = i25;
                    }
                }
                size4 = arrayList.size();
                for (i24 = 0; i24 < size4; i24++) {
                    i20 = m1287k(arrayList.get(i24), i20, i36, iArr);
                }
                arrayList.clear();
            }
            i6 = m1287k(c0526k, paddingLeft, i5, iArr);
        } else {
            i6 = paddingLeft;
        }
        i7 = i26;
        if (m1283o(this.f488i)) {
        }
        if (m1283o(this.f481b)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i6);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i26 - i7));
        int max6 = Math.max(i6, currentContentInsetLeft2);
        int min2 = Math.min(i7, i26 - currentContentInsetRight2);
        if (m1283o(this.f489j)) {
        }
        if (m1283o(this.f485f)) {
        }
        m1283o = m1283o(this.f482c);
        m1283o2 = m1283o(this.f483d);
        if (!m1283o) {
        }
        if (!m1283o2) {
        }
        if (m1283o) {
        }
        if (!m1283o) {
        }
        if (!m1283o2) {
        }
        C0117d c0117d32 = (C0117d) c0561x.getLayoutParams();
        C0117d c0117d42 = (C0117d) c0561x2.getLayoutParams();
        if (!m1283o) {
        }
        z3 = false;
        i11 = this.f503x & 112;
        i12 = paddingLeft;
        if (i11 == 48) {
        }
        if (!z2) {
        }
        ArrayList<View> arrayList2 = this.f469E;
        m1297a(3, arrayList2);
        size = arrayList2.size();
        i20 = max6;
        while (i21 < size) {
        }
        int i362 = i13;
        m1297a(5, arrayList2);
        size2 = arrayList2.size();
        while (i22 < size2) {
        }
        m1297a(1, arrayList2);
        int i372 = iArr[0];
        int i382 = iArr[1];
        size3 = arrayList2.size();
        int i392 = i372;
        i23 = 0;
        int i402 = 0;
        while (i23 < size3) {
        }
        i25 = ((((i10 - i12) - i8) / 2) + i12) - (i402 / 2);
        int i432 = i402 + i25;
        if (i25 >= i20) {
        }
        size4 = arrayList2.size();
        while (i24 < size4) {
        }
        arrayList2.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0284  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        boolean m534a = C0564y0.m534a(this);
        int i10 = !m534a ? 1 : 0;
        int i11 = 0;
        if (m1283o(this.f484e)) {
            m1284n(this.f484e, i, 0, i2, this.f495p);
            i3 = m1290h(this.f484e) + this.f484e.getMeasuredWidth();
            i4 = Math.max(0, m1289i(this.f484e) + this.f484e.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.f484e.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (m1283o(this.f488i)) {
            m1284n(this.f488i, i, 0, i2, this.f495p);
            i3 = m1290h(this.f488i) + this.f488i.getMeasuredWidth();
            i4 = Math.max(i4, m1289i(this.f488i) + this.f488i.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f488i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3) + 0;
        int max2 = Math.max(0, currentContentInsetStart - i3);
        int[] iArr = this.f471G;
        iArr[m534a ? 1 : 0] = max2;
        if (m1283o(this.f481b)) {
            m1284n(this.f481b, i, max, i2, this.f495p);
            i6 = m1290h(this.f481b) + this.f481b.getMeasuredWidth();
            i4 = Math.max(i4, m1289i(this.f481b) + this.f481b.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f481b.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[i10] = Math.max(0, currentContentInsetEnd - i6);
        if (m1283o(this.f489j)) {
            max3 += m1285m(this.f489j, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m1289i(this.f489j) + this.f489j.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f489j.getMeasuredState());
        }
        if (m1283o(this.f485f)) {
            max3 += m1285m(this.f485f, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m1289i(this.f485f) + this.f485f.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f485f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((C0117d) childAt.getLayoutParams()).f511b == 0 && m1283o(childAt)) {
                max3 += m1285m(childAt, i, max3, i2, 0, iArr);
                i4 = Math.max(i4, m1289i(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i13 = this.f498s + this.f499t;
        int i14 = this.f496q + this.f497r;
        if (m1283o(this.f482c)) {
            m1285m(this.f482c, i, max3 + i14, i2, i13, iArr);
            int m1290h = m1290h(this.f482c) + this.f482c.getMeasuredWidth();
            i9 = m1289i(this.f482c) + this.f482c.getMeasuredHeight();
            i7 = View.combineMeasuredStates(i5, this.f482c.getMeasuredState());
            i8 = m1290h;
        } else {
            i7 = i5;
            i8 = 0;
            i9 = 0;
        }
        if (m1283o(this.f483d)) {
            i8 = Math.max(i8, m1285m(this.f483d, i, max3 + i14, i2, i9 + i13, iArr));
            i9 += m1289i(this.f483d) + this.f483d.getMeasuredHeight();
            i7 = View.combineMeasuredStates(i7, this.f483d.getMeasuredState());
        }
        int max4 = Math.max(i4, i9);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max4;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + max3 + i8, getSuggestedMinimumWidth()), i, (-16777216) & i7);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i7 << 16);
        if (this.f479O) {
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!m1283o(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            z = true;
            if (!z) {
                i11 = resolveSizeAndState2;
            }
            setMeasuredDimension(resolveSizeAndState, i11);
        }
        z = false;
        if (!z) {
        }
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        C0068f c0068f;
        MenuItem findItem;
        if (!(parcelable instanceof C0119f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0119f c0119f = (C0119f) parcelable;
        super.onRestoreInstanceState(c0119f.f1144a);
        ActionMenuView actionMenuView = this.f481b;
        if (actionMenuView != null) {
            c0068f = actionMenuView.f371q;
        } else {
            c0068f = null;
        }
        int i = c0119f.f512c;
        if (i != 0 && this.f476L != null && c0068f != null && (findItem = c0068f.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (c0119f.f513d) {
            RunnableC0115b runnableC0115b = this.f480P;
            removeCallbacks(runnableC0115b);
            post(runnableC0115b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002f, code lost:
        if (r1 != Integer.MIN_VALUE) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003d, code lost:
        if (r1 != Integer.MIN_VALUE) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onRtlPropertiesChanged(int i) {
        int i2;
        super.onRtlPropertiesChanged(i);
        if (this.f500u == null) {
            this.f500u = new C0527k0();
        }
        C0527k0 c0527k0 = this.f500u;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != c0527k0.f1992g) {
            c0527k0.f1992g = z;
            if (c0527k0.f1993h) {
                if (z) {
                    int i3 = c0527k0.f1989d;
                    if (i3 == Integer.MIN_VALUE) {
                        i3 = c0527k0.f1990e;
                    }
                    c0527k0.f1986a = i3;
                    i2 = c0527k0.f1988c;
                } else {
                    int i4 = c0527k0.f1988c;
                    if (i4 == Integer.MIN_VALUE) {
                        i4 = c0527k0.f1990e;
                    }
                    c0527k0.f1986a = i4;
                    i2 = c0527k0.f1989d;
                }
            } else {
                c0527k0.f1986a = c0527k0.f1990e;
            }
            i2 = c0527k0.f1991f;
            c0527k0.f1987b = i2;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        boolean z;
        C0072h c0072h;
        C0119f c0119f = new C0119f(super.onSaveInstanceState());
        C0116c c0116c = this.f476L;
        if (c0116c != null && (c0072h = c0116c.f509c) != null) {
            c0119f.f512c = c0072h.f252a;
        }
        ActionMenuView actionMenuView = this.f481b;
        boolean z2 = false;
        if (actionMenuView != null) {
            C0122a c0122a = actionMenuView.f375u;
            if (c0122a != null && c0122a.m1276h()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                z2 = true;
            }
        }
        c0119f.f513d = z2;
        return c0119f;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f467C = false;
        }
        if (!this.f467C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f467C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f467C = false;
        }
        return true;
    }

    public void setCollapsible(boolean z) {
        this.f479O = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f502w) {
            this.f502w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f501v) {
            this.f501v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(C0315a.m994c(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f485f == null) {
                this.f485f = new C0531m(getContext());
            }
            if (!m1288j(this.f485f)) {
                m1296b(this.f485f, true);
            }
        } else {
            C0531m c0531m = this.f485f;
            if (c0531m != null && m1288j(c0531m)) {
                removeView(this.f485f);
                this.f470F.remove(this.f485f);
            }
        }
        C0531m c0531m2 = this.f485f;
        if (c0531m2 != null) {
            c0531m2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f485f == null) {
            this.f485f = new C0531m(getContext());
        }
        C0531m c0531m = this.f485f;
        if (c0531m != null) {
            c0531m.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m1293e();
        }
        C0526k c0526k = this.f484e;
        if (c0526k != null) {
            c0526k.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0315a.m994c(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m1293e();
            if (!m1288j(this.f484e)) {
                m1296b(this.f484e, true);
            }
        } else {
            C0526k c0526k = this.f484e;
            if (c0526k != null && m1288j(c0526k)) {
                removeView(this.f484e);
                this.f470F.remove(this.f484e);
            }
        }
        C0526k c0526k2 = this.f484e;
        if (c0526k2 != null) {
            c0526k2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m1293e();
        this.f484e.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(InterfaceC0118e interfaceC0118e) {
        this.f472H = interfaceC0118e;
    }

    public void setOverflowIcon(Drawable drawable) {
        m1295c();
        this.f481b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f491l != i) {
            this.f491l = i;
            if (i == 0) {
                this.f490k = getContext();
            } else {
                this.f490k = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f483d == null) {
                Context context = getContext();
                C0561x c0561x = new C0561x(context, null);
                this.f483d = c0561x;
                c0561x.setSingleLine();
                this.f483d.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f493n;
                if (i != 0) {
                    this.f483d.setTextAppearance(context, i);
                }
                int i2 = this.f466B;
                if (i2 != 0) {
                    this.f483d.setTextColor(i2);
                }
            }
            if (!m1288j(this.f483d)) {
                m1296b(this.f483d, true);
            }
        } else {
            C0561x c0561x2 = this.f483d;
            if (c0561x2 != null && m1288j(c0561x2)) {
                removeView(this.f483d);
                this.f470F.remove(this.f483d);
            }
        }
        C0561x c0561x3 = this.f483d;
        if (c0561x3 != null) {
            c0561x3.setText(charSequence);
        }
        this.f505z = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        this.f466B = i;
        C0561x c0561x = this.f483d;
        if (c0561x != null) {
            c0561x.setTextColor(i);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f482c == null) {
                Context context = getContext();
                C0561x c0561x = new C0561x(context, null);
                this.f482c = c0561x;
                c0561x.setSingleLine();
                this.f482c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f492m;
                if (i != 0) {
                    this.f482c.setTextAppearance(context, i);
                }
                int i2 = this.f465A;
                if (i2 != 0) {
                    this.f482c.setTextColor(i2);
                }
            }
            if (!m1288j(this.f482c)) {
                m1296b(this.f482c, true);
            }
        } else {
            C0561x c0561x2 = this.f482c;
            if (c0561x2 != null && m1288j(c0561x2)) {
                removeView(this.f482c);
                this.f470F.remove(this.f482c);
            }
        }
        C0561x c0561x3 = this.f482c;
        if (c0561x3 != null) {
            c0561x3.setText(charSequence);
        }
        this.f504y = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f499t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f497r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f496q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f498s = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        this.f465A = i;
        C0561x c0561x = this.f482c;
        if (c0561x != null) {
            c0561x.setTextColor(i);
        }
    }
}
