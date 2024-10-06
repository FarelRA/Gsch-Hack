package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0058a;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.C0074i;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.appcompat.view.menu.SubMenuC0083m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import net.geschool.app.secure.R;
import p020f.AbstractC0468f;
import p020f.InterfaceC0470h;
import p024g.AbstractView$OnTouchListenerC0502e0;
import p024g.C0531m;
import p024g.C0548u0;
import p076y.AbstractC0941b;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes.dex */
public final class C0122a extends AbstractC0058a {

    /* renamed from: j */
    public C0126d f518j;

    /* renamed from: k */
    public Drawable f519k;

    /* renamed from: l */
    public boolean f520l;

    /* renamed from: m */
    public boolean f521m;

    /* renamed from: n */
    public boolean f522n;

    /* renamed from: o */
    public int f523o;

    /* renamed from: p */
    public int f524p;

    /* renamed from: q */
    public int f525q;

    /* renamed from: r */
    public boolean f526r;

    /* renamed from: s */
    public final SparseBooleanArray f527s;

    /* renamed from: t */
    public View f528t;

    /* renamed from: u */
    public C0128e f529u;

    /* renamed from: v */
    public C0123a f530v;

    /* renamed from: w */
    public RunnableC0125c f531w;

    /* renamed from: x */
    public C0124b f532x;

    /* renamed from: y */
    public final C0129f f533y;

    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes.dex */
    public class C0123a extends C0074i {
        public C0123a(Context context, SubMenuC0083m subMenuC0083m, View view) {
            super(context, subMenuC0083m, view, false);
            if (!((subMenuC0083m.f314A.f275x & 32) == 32)) {
                View view2 = C0122a.this.f518j;
                this.f284f = view2 == null ? (View) C0122a.this.f170i : view2;
            }
            C0129f c0129f = C0122a.this.f533y;
            this.f287i = c0129f;
            AbstractC0468f abstractC0468f = this.f288j;
            if (abstractC0468f != null) {
                abstractC0468f.mo1331i(c0129f);
            }
        }

        @Override // androidx.appcompat.view.menu.C0074i
        /* renamed from: c */
        public final void mo1271c() {
            C0122a.this.f530v = null;
            super.mo1271c();
        }
    }

    /* renamed from: androidx.appcompat.widget.a$b */
    /* loaded from: classes.dex */
    public class C0124b extends ActionMenuItemView.AbstractC0057b {
        public C0124b() {
        }
    }

    /* renamed from: androidx.appcompat.widget.a$c */
    /* loaded from: classes.dex */
    public class RunnableC0125c implements Runnable {

        /* renamed from: b */
        public final C0128e f536b;

        public RunnableC0125c(C0128e c0128e) {
            this.f536b = c0128e;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0068f.InterfaceC0069a interfaceC0069a;
            C0122a c0122a = C0122a.this;
            C0068f c0068f = c0122a.f165d;
            if (c0068f != null && (interfaceC0069a = c0068f.f226e) != null) {
                interfaceC0069a.mo852b(c0068f);
            }
            View view = (View) c0122a.f170i;
            if (view != null && view.getWindowToken() != null) {
                C0128e c0128e = this.f536b;
                boolean z = true;
                if (!c0128e.m1333b()) {
                    if (c0128e.f284f == null) {
                        z = false;
                    } else {
                        c0128e.m1332d(0, 0, false, false);
                    }
                }
                if (z) {
                    c0122a.f529u = c0128e;
                }
            }
            c0122a.f531w = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.a$d */
    /* loaded from: classes.dex */
    public class C0126d extends C0531m implements ActionMenuView.InterfaceC0090a {

        /* renamed from: androidx.appcompat.widget.a$d$a */
        /* loaded from: classes.dex */
        public class C0127a extends AbstractView$OnTouchListenerC0502e0 {
            public C0127a(View view) {
                super(view);
            }

            @Override // p024g.AbstractView$OnTouchListenerC0502e0
            /* renamed from: b */
            public final InterfaceC0470h mo564b() {
                C0128e c0128e = C0122a.this.f529u;
                if (c0128e == null) {
                    return null;
                }
                return c0128e.m1334a();
            }

            @Override // p024g.AbstractView$OnTouchListenerC0502e0
            /* renamed from: c */
            public final boolean mo563c() {
                C0122a.this.m1274l();
                return true;
            }

            @Override // p024g.AbstractView$OnTouchListenerC0502e0
            /* renamed from: d */
            public final boolean mo622d() {
                C0122a c0122a = C0122a.this;
                if (c0122a.f531w != null) {
                    return false;
                }
                c0122a.m1277g();
                return true;
            }
        }

        public C0126d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0548u0.m562a(this, getContentDescription());
            setOnTouchListener(new C0127a(this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0090a
        /* renamed from: a */
        public final boolean mo1273a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0090a
        /* renamed from: c */
        public final boolean mo1272c() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            C0122a.this.m1274l();
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.a$e */
    /* loaded from: classes.dex */
    public class C0128e extends C0074i {
        public C0128e(Context context, C0068f c0068f, C0126d c0126d) {
            super(context, c0068f, c0126d, true);
            this.f285g = 8388613;
            C0129f c0129f = C0122a.this.f533y;
            this.f287i = c0129f;
            AbstractC0468f abstractC0468f = this.f288j;
            if (abstractC0468f != null) {
                abstractC0468f.mo1331i(c0129f);
            }
        }

        @Override // androidx.appcompat.view.menu.C0074i
        /* renamed from: c */
        public final void mo1271c() {
            C0122a c0122a = C0122a.this;
            C0068f c0068f = c0122a.f165d;
            if (c0068f != null) {
                c0068f.m1351c(true);
            }
            c0122a.f529u = null;
            super.mo1271c();
        }
    }

    /* renamed from: androidx.appcompat.widget.a$f */
    /* loaded from: classes.dex */
    public class C0129f implements InterfaceC0076j.InterfaceC0077a {
        public C0129f() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: a */
        public final void mo1015a(C0068f c0068f, boolean z) {
            if (c0068f instanceof SubMenuC0083m) {
                c0068f.mo1326k().m1351c(false);
            }
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = C0122a.this.f167f;
            if (interfaceC0077a != null) {
                interfaceC0077a.mo1015a(c0068f, z);
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: b */
        public final boolean mo1014b(C0068f c0068f) {
            if (c0068f == null) {
                return false;
            }
            ((SubMenuC0083m) c0068f).f314A.getClass();
            C0122a c0122a = C0122a.this;
            c0122a.getClass();
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = c0122a.f167f;
            if (interfaceC0077a == null) {
                return false;
            }
            return interfaceC0077a.mo1014b(c0068f);
        }
    }

    public C0122a(Context context) {
        super(context);
        this.f527s = new SparseBooleanArray();
        this.f533y = new C0129f();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: a */
    public final void mo1281a(C0068f c0068f, boolean z) {
        m1277g();
        C0123a c0123a = this.f530v;
        if (c0123a != null && c0123a.m1333b()) {
            c0123a.f288j.dismiss();
        }
        InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f167f;
        if (interfaceC0077a != null) {
            interfaceC0077a.mo1015a(c0068f, z);
        }
    }

    /* renamed from: c */
    public final View m1280c(C0072h c0072h, View view, ViewGroup viewGroup) {
        InterfaceC0078k.InterfaceC0079a interfaceC0079a;
        View actionView = c0072h.getActionView();
        int i = 0;
        if (actionView == null || c0072h.m1336c()) {
            if (view instanceof InterfaceC0078k.InterfaceC0079a) {
                interfaceC0079a = (InterfaceC0078k.InterfaceC0079a) view;
            } else {
                interfaceC0079a = (InterfaceC0078k.InterfaceC0079a) this.f166e.inflate(this.f169h, viewGroup, false);
            }
            interfaceC0079a.mo939b(c0072h);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) interfaceC0079a;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f170i);
            if (this.f532x == null) {
                this.f532x = new C0124b();
            }
            actionMenuItemView.setPopupCallback(this.f532x);
            actionView = (View) interfaceC0079a;
        }
        if (c0072h.f251C) {
            i = 8;
        }
        actionView.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m1314j(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: d */
    public final boolean mo1279d() {
        ArrayList<C0072h> arrayList;
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        C0122a c0122a = this;
        C0068f c0068f = c0122a.f165d;
        if (c0068f != null) {
            arrayList = c0068f.m1347l();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i3 = c0122a.f525q;
        int i4 = c0122a.f524p;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) c0122a.f170i;
        int i5 = 0;
        boolean z9 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            C0072h c0072h = arrayList.get(i5);
            int i8 = c0072h.f276y;
            if ((i8 & 2) == 2) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z7) {
                i6++;
            } else {
                if ((i8 & 1) == 1) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (z8) {
                    i7++;
                } else {
                    z9 = true;
                }
            }
            if (c0122a.f526r && c0072h.f251C) {
                i3 = 0;
            }
            i5++;
        }
        if (c0122a.f521m && (z9 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = c0122a.f527s;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            C0072h c0072h2 = arrayList.get(i10);
            int i12 = c0072h2.f276y;
            if ((i12 & 2) == i2) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i13 = c0072h2.f253b;
            if (z2) {
                View m1280c = c0122a.m1280c(c0072h2, c0122a.f528t, viewGroup);
                if (c0122a.f528t == null) {
                    c0122a.f528t = m1280c;
                }
                m1280c.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = m1280c.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                c0072h2.m1335f(z);
            } else {
                if ((i12 & 1) == z) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    boolean z10 = sparseBooleanArray.get(i13);
                    if ((i9 > 0 || z10) && i4 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        View m1280c2 = c0122a.m1280c(c0072h2, c0122a.f528t, viewGroup);
                        if (c0122a.f528t == null) {
                            c0122a.f528t = m1280c2;
                        }
                        m1280c2.measure(makeMeasureSpec, makeMeasureSpec);
                        int measuredWidth2 = m1280c2.getMeasuredWidth();
                        i4 -= measuredWidth2;
                        if (i11 == 0) {
                            i11 = measuredWidth2;
                        }
                        if (i4 + i11 > 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z4 &= z6;
                    }
                    if (z4 && i13 != 0) {
                        sparseBooleanArray.put(i13, true);
                    } else if (z10) {
                        sparseBooleanArray.put(i13, false);
                        for (int i14 = 0; i14 < i10; i14++) {
                            C0072h c0072h3 = arrayList.get(i14);
                            if (c0072h3.f253b == i13) {
                                if ((c0072h3.f275x & 32) == 32) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z5) {
                                    i9++;
                                }
                                c0072h3.m1335f(false);
                            }
                        }
                    }
                    if (z4) {
                        i9--;
                    }
                    c0072h2.m1335f(z4);
                } else {
                    c0072h2.m1335f(false);
                    i10++;
                    i2 = 2;
                    c0122a = this;
                    z = true;
                }
            }
            i10++;
            i2 = 2;
            c0122a = this;
            z = true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: e */
    public final void mo693e(Context context, C0068f c0068f) {
        this.f164c = context;
        LayoutInflater.from(context);
        this.f165d = c0068f;
        Resources resources = context.getResources();
        if (!this.f522n) {
            this.f521m = true;
        }
        int i = 2;
        this.f523o = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i2 <= 600 && ((i2 <= 960 || i3 <= 720) && (i2 <= 720 || i3 <= 960))) {
            if (i2 < 500 && ((i2 <= 640 || i3 <= 480) && (i2 <= 480 || i3 <= 640))) {
                if (i2 >= 360) {
                    i = 3;
                }
            } else {
                i = 4;
            }
        } else {
            i = 5;
        }
        this.f525q = i;
        int i4 = this.f523o;
        if (this.f521m) {
            if (this.f518j == null) {
                C0126d c0126d = new C0126d(this.f163b);
                this.f518j = c0126d;
                if (this.f520l) {
                    c0126d.setImageDrawable(this.f519k);
                    this.f519k = null;
                    this.f520l = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f518j.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.f518j.getMeasuredWidth();
        } else {
            this.f518j = null;
        }
        this.f524p = i4;
        float f = resources.getDisplayMetrics().density;
        this.f528t = null;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: f */
    public final void mo1278f() {
        int i;
        boolean z;
        boolean z2;
        C0072h c0072h;
        ViewGroup viewGroup = (ViewGroup) this.f170i;
        ArrayList<C0072h> arrayList = null;
        boolean z3 = false;
        if (viewGroup != null) {
            C0068f c0068f = this.f165d;
            if (c0068f != null) {
                c0068f.m1348i();
                ArrayList<C0072h> m1347l = this.f165d.m1347l();
                int size = m1347l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    C0072h c0072h2 = m1347l.get(i2);
                    if ((c0072h2.f275x & 32) == 32) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof InterfaceC0078k.InterfaceC0079a) {
                            c0072h = ((InterfaceC0078k.InterfaceC0079a) childAt).getItemData();
                        } else {
                            c0072h = null;
                        }
                        View m1280c = m1280c(c0072h2, childAt, viewGroup);
                        if (c0072h2 != c0072h) {
                            m1280c.setPressed(false);
                            m1280c.jumpDrawablesToCurrentState();
                        }
                        if (m1280c != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) m1280c.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(m1280c);
                            }
                            ((ViewGroup) this.f170i).addView(m1280c, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.f518j) {
                    z = false;
                } else {
                    viewGroup.removeViewAt(i);
                    z = true;
                }
                if (!z) {
                    i++;
                }
            }
        }
        ((View) this.f170i).requestLayout();
        C0068f c0068f2 = this.f165d;
        if (c0068f2 != null) {
            c0068f2.m1348i();
            ArrayList<C0072h> arrayList2 = c0068f2.f230i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractC0941b abstractC0941b = arrayList2.get(i3).f249A;
            }
        }
        C0068f c0068f3 = this.f165d;
        if (c0068f3 != null) {
            c0068f3.m1348i();
            arrayList = c0068f3.f231j;
        }
        if (this.f521m && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z3 = !arrayList.get(0).f251C;
            } else if (size3 > 0) {
                z3 = true;
            }
        }
        C0126d c0126d = this.f518j;
        if (z3) {
            if (c0126d == null) {
                this.f518j = new C0126d(this.f163b);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f518j.getParent();
            if (viewGroup3 != this.f170i) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f518j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f170i;
                C0126d c0126d2 = this.f518j;
                actionMenuView.getClass();
                ActionMenuView.C0092c c0092c = new ActionMenuView.C0092c();
                c0092c.f558b = 16;
                c0092c.f381c = true;
                actionMenuView.addView(c0126d2, c0092c);
            }
        } else if (c0126d != null) {
            ViewParent parent = c0126d.getParent();
            InterfaceC0078k interfaceC0078k = this.f170i;
            if (parent == interfaceC0078k) {
                ((ViewGroup) interfaceC0078k).removeView(this.f518j);
            }
        }
        ((ActionMenuView) this.f170i).setOverflowReserved(this.f521m);
    }

    /* renamed from: g */
    public final boolean m1277g() {
        InterfaceC0078k interfaceC0078k;
        RunnableC0125c runnableC0125c = this.f531w;
        if (runnableC0125c != null && (interfaceC0078k = this.f170i) != null) {
            ((View) interfaceC0078k).removeCallbacks(runnableC0125c);
            this.f531w = null;
            return true;
        }
        C0128e c0128e = this.f529u;
        if (c0128e != null) {
            if (c0128e.m1333b()) {
                c0128e.f288j.dismiss();
            }
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public final boolean m1276h() {
        C0128e c0128e = this.f529u;
        return c0128e != null && c0128e.m1333b();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008e  */
    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo1275k(SubMenuC0083m subMenuC0083m) {
        View view;
        boolean z;
        boolean z2 = false;
        if (!subMenuC0083m.hasVisibleItems()) {
            return false;
        }
        SubMenuC0083m subMenuC0083m2 = subMenuC0083m;
        while (true) {
            C0068f c0068f = subMenuC0083m2.f315z;
            if (c0068f == this.f165d) {
                break;
            }
            subMenuC0083m2 = (SubMenuC0083m) c0068f;
        }
        ViewGroup viewGroup = (ViewGroup) this.f170i;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                view = viewGroup.getChildAt(i);
                if ((view instanceof InterfaceC0078k.InterfaceC0079a) && ((InterfaceC0078k.InterfaceC0079a) view).getItemData() == subMenuC0083m2.f314A) {
                    break;
                }
            }
        }
        view = null;
        if (view == null) {
            return false;
        }
        subMenuC0083m.f314A.getClass();
        int size = subMenuC0083m.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                MenuItem item = subMenuC0083m.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        C0123a c0123a = new C0123a(this.f164c, subMenuC0083m, view);
        this.f530v = c0123a;
        c0123a.f286h = z;
        AbstractC0468f abstractC0468f = c0123a.f288j;
        if (abstractC0468f != null) {
            abstractC0468f.mo688o(z);
        }
        C0123a c0123a2 = this.f530v;
        if (!c0123a2.m1333b()) {
            if (c0123a2.f284f != null) {
                c0123a2.m1332d(0, 0, false, false);
            }
            if (!z2) {
                InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f167f;
                if (interfaceC0077a != null) {
                    interfaceC0077a.mo1014b(subMenuC0083m);
                }
                return true;
            }
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        z2 = true;
        if (!z2) {
        }
    }

    /* renamed from: l */
    public final boolean m1274l() {
        C0068f c0068f;
        if (this.f521m && !m1276h() && (c0068f = this.f165d) != null && this.f170i != null && this.f531w == null) {
            c0068f.m1348i();
            if (!c0068f.f231j.isEmpty()) {
                RunnableC0125c runnableC0125c = new RunnableC0125c(new C0128e(this.f164c, this.f165d, this.f518j));
                this.f531w = runnableC0125c;
                ((View) this.f170i).post(runnableC0125c);
                InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f167f;
                if (interfaceC0077a != null) {
                    interfaceC0077a.mo1014b(null);
                    return true;
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
