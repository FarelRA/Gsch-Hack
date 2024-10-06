package com.google.android.material.appbar;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p009c0.AbstractC0317a;
import p039k.C0666h;
import p046m1.C0736h;
import p071w0.C0916a;
import p074x0.AbstractC0930a;
import p074x0.AbstractC0932b;
import p074x0.C0934d;
import p076y.C0954m;
import p076y.C0960q;
import p076y.InterfaceC0945d;
import p076y.InterfaceC0946e;
@CoordinatorLayout.InterfaceC0139d(Behavior.class)
/* loaded from: classes.dex */
public final class AppBarLayout extends LinearLayout {

    /* renamed from: b */
    public int f1163b;

    /* renamed from: c */
    public int f1164c;

    /* renamed from: d */
    public int f1165d;

    /* renamed from: e */
    public boolean f1166e;

    /* renamed from: f */
    public int f1167f;

    /* renamed from: g */
    public boolean f1168g;

    /* renamed from: h */
    public boolean f1169h;

    /* renamed from: i */
    public boolean f1170i;

    /* renamed from: j */
    public int[] f1171j;

    /* loaded from: classes.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends AbstractC0930a<T> {

        /* renamed from: j */
        public int f1172j;

        /* renamed from: k */
        public int f1173k;

        /* renamed from: l */
        public ValueAnimator f1174l;

        /* renamed from: m */
        public int f1175m;

        /* renamed from: n */
        public boolean f1176n;

        /* renamed from: o */
        public float f1177o;

        /* renamed from: p */
        public WeakReference<View> f1178p;

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes.dex */
        public static class C0328a extends AbstractC0317a {
            public static final Parcelable.Creator<C0328a> CREATOR = new C0329a();

            /* renamed from: c */
            public int f1179c;

            /* renamed from: d */
            public float f1180d;

            /* renamed from: e */
            public boolean f1181e;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a$a */
            /* loaded from: classes.dex */
            public static class C0329a implements Parcelable.ClassLoaderCreator<C0328a> {
                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return new C0328a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i) {
                    return new C0328a[i];
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public final C0328a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new C0328a(parcel, classLoader);
                }
            }

            public C0328a(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f1179c = parcel.readInt();
                this.f1180d = parcel.readFloat();
                this.f1181e = parcel.readByte() != 0;
            }

            public C0328a(AbsSavedState absSavedState) {
                super(absSavedState);
            }

            @Override // p009c0.AbstractC0317a, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeParcelable(this.f1144a, i);
                parcel.writeInt(this.f1179c);
                parcel.writeFloat(this.f1180d);
                parcel.writeByte(this.f1181e ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
            this.f1175m = -1;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1175m = -1;
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0090  */
        /* renamed from: E */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static void m977E(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, boolean z) {
            View view;
            boolean z2;
            boolean z3;
            View view2;
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            boolean z4 = false;
            int i3 = 0;
            while (true) {
                if (i3 < childCount) {
                    view = appBarLayout.getChildAt(i3);
                    if (abs >= view.getTop() && abs <= view.getBottom()) {
                        break;
                    }
                    i3++;
                } else {
                    view = null;
                    break;
                }
            }
            if (view != null) {
                int i4 = ((C0330a) view.getLayoutParams()).f1182a;
                if ((i4 & 1) != 0) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    int minimumHeight = view.getMinimumHeight();
                    if (i2 <= 0 || (i4 & 12) == 0 ? !((i4 & 2) == 0 || (-i) < (view.getBottom() - minimumHeight) - appBarLayout.getTopInset()) : (-i) >= (view.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        z2 = true;
                        if (appBarLayout.f1170i) {
                            int childCount2 = coordinatorLayout.getChildCount();
                            int i5 = 0;
                            while (true) {
                                if (i5 < childCount2) {
                                    view2 = coordinatorLayout.getChildAt(i5);
                                    if (view2 instanceof InterfaceC0946e) {
                                        break;
                                    }
                                    i5++;
                                } else {
                                    view2 = null;
                                    break;
                                }
                            }
                            if (view2 != null) {
                                if (view2.getScrollY() > 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            }
                        }
                        if (appBarLayout.f1169h == z2) {
                            appBarLayout.f1169h = z2;
                            appBarLayout.refreshDrawableState();
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!z) {
                            if (z3) {
                                List list = (List) ((C0666h) coordinatorLayout.f586c.f2440b).getOrDefault(appBarLayout, null);
                                ArrayList arrayList = coordinatorLayout.f588e;
                                arrayList.clear();
                                if (list != null) {
                                    arrayList.addAll(list);
                                }
                                int size = arrayList.size();
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= size) {
                                        break;
                                    }
                                    CoordinatorLayout.AbstractC0138c abstractC0138c = ((CoordinatorLayout.C0141f) ((View) arrayList.get(i6)).getLayoutParams()).f605a;
                                    if (abstractC0138c instanceof ScrollingViewBehavior) {
                                        if (((ScrollingViewBehavior) abstractC0138c).f2909f != 0) {
                                            z4 = true;
                                        }
                                    } else {
                                        i6++;
                                    }
                                }
                                if (!z4) {
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                        appBarLayout.jumpDrawablesToCurrentState();
                    }
                }
                z2 = false;
                if (appBarLayout.f1170i) {
                }
                if (appBarLayout.f1169h == z2) {
                }
                if (!z) {
                }
                appBarLayout.jumpDrawablesToCurrentState();
            }
        }

        /* renamed from: B */
        public final void m980B(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int height;
            int abs = Math.abs(mo84x() - i);
            float abs2 = Math.abs(0.0f);
            float f = abs;
            if (abs2 > 0.0f) {
                height = Math.round((f / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((f / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            }
            int mo84x = mo84x();
            if (mo84x == i) {
                ValueAnimator valueAnimator = this.f1174l;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f1174l.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.f1174l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f1174l = valueAnimator3;
                valueAnimator3.setInterpolator(C0916a.f2876e);
                this.f1174l.addUpdateListener(new C0331a(this, coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f1174l.setDuration(Math.min(height, 600));
            this.f1174l.setIntValues(mo84x, i);
            this.f1174l.start();
        }

        /* renamed from: C */
        public final void m979C(CoordinatorLayout coordinatorLayout, T t) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            int mo84x = mo84x();
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                z = true;
                if (i < childCount) {
                    View childAt = t.getChildAt(i);
                    int top = childAt.getTop();
                    int bottom = childAt.getBottom();
                    C0330a c0330a = (C0330a) childAt.getLayoutParams();
                    if ((c0330a.f1182a & 32) == 32) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        top -= ((LinearLayout.LayoutParams) c0330a).topMargin;
                        bottom += ((LinearLayout.LayoutParams) c0330a).bottomMargin;
                    }
                    int i2 = -mo84x;
                    if (top <= i2 && bottom >= i2) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                View childAt2 = t.getChildAt(i);
                C0330a c0330a2 = (C0330a) childAt2.getLayoutParams();
                int i3 = c0330a2.f1182a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int i5 = -childAt2.getBottom();
                    if (i == t.getChildCount() - 1) {
                        i5 += t.getTopInset();
                    }
                    if ((i3 & 2) == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        i5 += childAt2.getMinimumHeight();
                    } else {
                        if ((i3 & 5) == 5) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                            int minimumHeight = childAt2.getMinimumHeight() + i5;
                            if (mo84x < minimumHeight) {
                                i4 = minimumHeight;
                            } else {
                                i5 = minimumHeight;
                            }
                        }
                    }
                    if ((i3 & 32) != 32) {
                        z = false;
                    }
                    if (z) {
                        i4 += ((LinearLayout.LayoutParams) c0330a2).topMargin;
                        i5 -= ((LinearLayout.LayoutParams) c0330a2).bottomMargin;
                    }
                    if (mo84x < (i5 + i4) / 2) {
                        i4 = i5;
                    }
                    m980B(coordinatorLayout, t, C0736h.m285o(i4, -t.getTotalScrollRange(), 0));
                }
            }
        }

        /* renamed from: D */
        public final void m978D(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int mo84x = mo84x();
                if ((i < 0 && mo84x == 0) || (i > 0 && mo84x == (-t.getDownNestedScrollRange()))) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    if (view instanceof InterfaceC0945d) {
                        ((InterfaceC0945d) view).mo55g(1);
                    }
                }
            }
        }

        @Override // p074x0.C0933c, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: f */
        public final boolean mo77f(CoordinatorLayout coordinatorLayout, View view, int i) {
            boolean z;
            int round;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.mo77f(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            int i2 = this.f1175m;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = appBarLayout.getChildAt(i2);
                int i3 = -childAt.getBottom();
                if (this.f1176n) {
                    round = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i3;
                } else {
                    round = Math.round(childAt.getHeight() * this.f1177o) + i3;
                }
                m90A(coordinatorLayout, appBarLayout, round);
            } else if (pendingAction != 0) {
                if ((pendingAction & 4) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if ((pendingAction & 2) != 0) {
                    int i4 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        m980B(coordinatorLayout, appBarLayout, i4);
                    } else {
                        m90A(coordinatorLayout, appBarLayout, i4);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m980B(coordinatorLayout, appBarLayout, 0);
                    } else {
                        m90A(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.f1167f = 0;
            this.f1175m = -1;
            int m285o = C0736h.m285o(m76s(), -appBarLayout.getTotalScrollRange(), 0);
            C0934d c0934d = this.f2910a;
            if (c0934d != null) {
                if (c0934d.f2915d != m285o) {
                    c0934d.f2915d = m285o;
                    c0934d.m74a();
                }
            } else {
                this.f2911b = m285o;
            }
            m977E(coordinatorLayout, appBarLayout, m76s(), 0, true);
            m76s();
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: g */
        public final boolean mo81g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0141f) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.m1252r(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0));
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: i */
        public final void mo965i(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int[] iArr, int i2) {
            int i3;
            int i4;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i != 0) {
                if (i < 0) {
                    int i5 = -appBarLayout.getTotalScrollRange();
                    i3 = i5;
                    i4 = appBarLayout.getDownNestedPreScrollRange() + i5;
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    i4 = 0;
                }
                if (i3 != i4) {
                    iArr[1] = mo82z(coordinatorLayout, appBarLayout, mo84x() - i, i3, i4);
                    m978D(i, appBarLayout, view2, i2);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: k */
        public final void mo976k(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i4 < 0) {
                mo82z(coordinatorLayout, appBarLayout, mo84x() - i4, -appBarLayout.getDownNestedScrollRange(), 0);
                m978D(i4, appBarLayout, view2, i5);
            }
            if (appBarLayout.f1170i) {
                boolean z = view2.getScrollY() > 0;
                if (appBarLayout.f1169h != z) {
                    appBarLayout.f1169h = z;
                    appBarLayout.refreshDrawableState();
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: m */
        public final void mo964m(View view, Parcelable parcelable) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (parcelable instanceof C0328a) {
                C0328a c0328a = (C0328a) parcelable;
                this.f1175m = c0328a.f1179c;
                this.f1177o = c0328a.f1180d;
                this.f1176n = c0328a.f1181e;
                return;
            }
            this.f1175m = -1;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: n */
        public final Parcelable mo963n(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            int m76s = m76s();
            int childCount = appBarLayout.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + m76s;
                if (childAt.getTop() + m76s <= 0 && bottom >= 0) {
                    C0328a c0328a = new C0328a(absSavedState);
                    c0328a.f1179c = i;
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    if (bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight()) {
                        z = true;
                    }
                    c0328a.f1181e = z;
                    c0328a.f1180d = bottom / childAt.getHeight();
                    return c0328a;
                }
            }
            return absSavedState;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
            if (r2 != false) goto L15;
         */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean mo962p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z;
            boolean z2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int i3 = i & 2;
            boolean z3 = false;
            if (i3 != 0) {
                if (!appBarLayout.f1170i) {
                    if (appBarLayout.getTotalScrollRange() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                z3 = true;
            }
            if (z3 && (valueAnimator = this.f1174l) != null) {
                valueAnimator.cancel();
            }
            this.f1178p = null;
            this.f1173k = i2;
            return z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: q */
        public final void mo961q(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f1173k == 0 || i == 1) {
                m979C(coordinatorLayout, appBarLayout);
            }
            this.f1178p = new WeakReference<>(view2);
        }

        @Override // p074x0.AbstractC0930a
        /* renamed from: u */
        public final boolean mo87u(View view) {
            View view2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            WeakReference<View> weakReference = this.f1178p;
            if (weakReference != null && ((view2 = weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1))) {
                return false;
            }
            return true;
        }

        @Override // p074x0.AbstractC0930a
        /* renamed from: v */
        public final int mo86v(View view) {
            return -((AppBarLayout) view).getDownNestedScrollRange();
        }

        @Override // p074x0.AbstractC0930a
        /* renamed from: w */
        public final int mo85w(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // p074x0.AbstractC0930a
        /* renamed from: x */
        public final int mo84x() {
            return m76s() + this.f1172j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p074x0.AbstractC0930a
        /* renamed from: y */
        public final void mo83y(View view, CoordinatorLayout coordinatorLayout) {
            m979C(coordinatorLayout, (AppBarLayout) view);
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e3  */
        @Override // p074x0.AbstractC0930a
        /* renamed from: z */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int mo82z(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            int i4;
            boolean z;
            List list;
            int i5;
            int i6;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int mo84x = mo84x();
            if (i2 != 0 && mo84x >= i2 && mo84x <= i3) {
                int m285o = C0736h.m285o(i, i2, i3);
                if (mo84x == m285o) {
                    return 0;
                }
                if (appBarLayout.f1166e) {
                    int abs = Math.abs(m285o);
                    int childCount = appBarLayout.getChildCount();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= childCount) {
                            break;
                        }
                        View childAt = appBarLayout.getChildAt(i7);
                        C0330a c0330a = (C0330a) childAt.getLayoutParams();
                        Interpolator interpolator = c0330a.f1183b;
                        if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                            if (interpolator != null) {
                                int i8 = c0330a.f1182a;
                                if ((i8 & 1) != 0) {
                                    i6 = childAt.getHeight() + ((LinearLayout.LayoutParams) c0330a).topMargin + ((LinearLayout.LayoutParams) c0330a).bottomMargin + 0;
                                    if ((i8 & 2) != 0) {
                                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                                        i6 -= childAt.getMinimumHeight();
                                    }
                                } else {
                                    i6 = 0;
                                }
                                WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                                if (childAt.getFitsSystemWindows()) {
                                    i6 -= appBarLayout.getTopInset();
                                }
                                if (i6 > 0) {
                                    float f = i6;
                                    i4 = (childAt.getTop() + Math.round(interpolator.getInterpolation((abs - childAt.getTop()) / f) * f)) * Integer.signum(m285o);
                                }
                            }
                        } else {
                            i7++;
                        }
                    }
                }
                i4 = m285o;
                C0934d c0934d = this.f2910a;
                int i9 = 1;
                if (c0934d != null) {
                    if (c0934d.f2915d != i4) {
                        c0934d.f2915d = i4;
                        c0934d.m74a();
                        z = true;
                        int i10 = mo84x - m285o;
                        this.f1172j = m285o - i4;
                        if (!z && appBarLayout.f1166e && (list = (List) ((C0666h) coordinatorLayout.f586c.f2440b).getOrDefault(appBarLayout, null)) != null && !list.isEmpty()) {
                            for (i5 = 0; i5 < list.size(); i5++) {
                                View view2 = (View) list.get(i5);
                                CoordinatorLayout.AbstractC0138c abstractC0138c = ((CoordinatorLayout.C0141f) view2.getLayoutParams()).f605a;
                                if (abstractC0138c != null) {
                                    abstractC0138c.mo918d(coordinatorLayout, view2, appBarLayout);
                                }
                            }
                        }
                        m76s();
                        if (m285o < mo84x) {
                            i9 = -1;
                        }
                        m977E(coordinatorLayout, appBarLayout, m285o, i9, false);
                        return i10;
                    }
                } else {
                    this.f2911b = i4;
                }
                z = false;
                int i102 = mo84x - m285o;
                this.f1172j = m285o - i4;
                if (!z) {
                    while (i5 < list.size()) {
                    }
                }
                m76s();
                if (m285o < mo84x) {
                }
                m977E(coordinatorLayout, appBarLayout, m285o, i9, false);
                return i102;
            }
            this.f1172j = 0;
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes.dex */
    public static class ScrollingViewBehavior extends AbstractC0932b {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2561d0);
            this.f2909f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: b */
        public final boolean mo912b(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: d */
        public final boolean mo918d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean z;
            int m285o;
            CoordinatorLayout.AbstractC0138c abstractC0138c = ((CoordinatorLayout.C0141f) view2.getLayoutParams()).f605a;
            if (abstractC0138c instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) abstractC0138c).f1172j + this.f2908e;
                if (this.f2909f == 0) {
                    m285o = 0;
                } else {
                    float mo79v = mo79v(view2);
                    int i = this.f2909f;
                    m285o = C0736h.m285o((int) (mo79v * i), 0, i);
                }
                C0954m.m31e(view, bottom - m285o);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.f1170i) {
                    if (view.getScrollY() > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (appBarLayout.f1169h != z) {
                        appBarLayout.f1169h = z;
                        appBarLayout.refreshDrawableState();
                    }
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
        /* renamed from: l */
        public final boolean mo975l(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayout;
            ArrayList m1260j = coordinatorLayout.m1260j(view);
            int size = m1260j.size();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    View view2 = (View) m1260j.get(i2);
                    if (view2 instanceof AppBarLayout) {
                        appBarLayout = (AppBarLayout) view2;
                        break;
                    }
                    i2++;
                } else {
                    appBarLayout = null;
                    break;
                }
            }
            if (appBarLayout != null) {
                rect.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect2 = this.f2906c;
                rect2.set(0, 0, width, height);
                if (!rect2.contains(rect)) {
                    if (!z) {
                        i = 4;
                    }
                    appBarLayout.f1167f = 2 | i | 8;
                    appBarLayout.requestLayout();
                    return true;
                }
            }
            return false;
        }

        @Override // p074x0.AbstractC0932b
        /* renamed from: u */
        public final AppBarLayout mo80u(ArrayList arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // p074x0.AbstractC0932b
        /* renamed from: v */
        public final float mo79v(View view) {
            int i;
            int i2;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.AbstractC0138c abstractC0138c = ((CoordinatorLayout.C0141f) appBarLayout.getLayoutParams()).f605a;
                if (abstractC0138c instanceof BaseBehavior) {
                    i = ((BaseBehavior) abstractC0138c).mo84x();
                } else {
                    i = 0;
                }
                if ((downNestedPreScrollRange == 0 || totalScrollRange + i > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (i / i2) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // p074x0.AbstractC0932b
        /* renamed from: w */
        public final int mo78w(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return view.getMeasuredHeight();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes.dex */
    public static class C0330a extends LinearLayout.LayoutParams {

        /* renamed from: a */
        public final int f1182a;

        /* renamed from: b */
        public final Interpolator f1183b;

        public C0330a() {
            super(-1, -2);
            this.f1182a = 1;
        }

        public C0330a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1182a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2552Y);
            this.f1182a = obtainStyledAttributes.getInt(0, 0);
            if (obtainStyledAttributes.hasValue(1)) {
                this.f1183b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(1, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public C0330a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1182a = 1;
        }

        public C0330a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1182a = 1;
        }

        public C0330a(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1182a = 1;
        }
    }

    /* renamed from: a */
    public static C0330a m981a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new C0330a((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0330a((ViewGroup.MarginLayoutParams) layoutParams) : new C0330a(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0330a;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0330a();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0330a(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m981a(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m981a(layoutParams);
    }

    public int getDownNestedPreScrollRange() {
        int topInset;
        int i = this.f1164c;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            C0330a c0330a = (C0330a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = c0330a.f1182a;
            if ((i3 & 5) == 5) {
                int i4 = ((LinearLayout.LayoutParams) c0330a).topMargin + ((LinearLayout.LayoutParams) c0330a).bottomMargin + i2;
                if ((i3 & 8) != 0) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    i2 = childAt.getMinimumHeight() + i4;
                } else {
                    if ((i3 & 2) != 0) {
                        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                        topInset = childAt.getMinimumHeight();
                    } else {
                        topInset = getTopInset();
                    }
                    i2 = (measuredHeight - topInset) + i4;
                }
            } else if (i2 > 0) {
                break;
            }
        }
        int max = Math.max(0, i2);
        this.f1164c = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i = this.f1165d;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            C0330a c0330a = (C0330a) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) c0330a).topMargin + ((LinearLayout.LayoutParams) c0330a).bottomMargin + childAt.getMeasuredHeight();
            int i4 = c0330a.f1182a;
            if ((i4 & 1) == 0) {
                break;
            }
            i3 += measuredHeight;
            if ((i4 & 2) != 0) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                i3 -= getTopInset() + childAt.getMinimumHeight();
                break;
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f1165d = max;
        return max;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            if (childCount >= 1) {
                minimumHeight = getChildAt(childCount - 1).getMinimumHeight();
            } else {
                minimumHeight = 0;
            }
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f1167f;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f1163b;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            C0330a c0330a = (C0330a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = c0330a.f1182a;
            if ((i4 & 1) == 0) {
                break;
            }
            i3 += measuredHeight + ((LinearLayout.LayoutParams) c0330a).topMargin + ((LinearLayout.LayoutParams) c0330a).bottomMargin;
            if ((i4 & 2) != 0) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                i3 -= childAt.getMinimumHeight();
                break;
            }
            i2++;
        }
        int max = Math.max(0, i3 - getTopInset());
        this.f1163b = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.f1171j == null) {
            this.f1171j = new int[4];
        }
        int[] iArr = this.f1171j;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f1168g;
        iArr[0] = z ? R.attr.state_liftable : -2130903460;
        iArr[1] = (z && this.f1169h) ? R.attr.state_lifted : -2130903461;
        iArr[2] = z ? R.attr.state_collapsible : -2130903459;
        iArr[3] = (z && this.f1169h) ? R.attr.state_collapsed : -2130903458;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        if (r3 != false) goto L32;
     */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        super.onLayout(z, i, i2, i3, i4);
        this.f1163b = -1;
        this.f1164c = -1;
        this.f1165d = -1;
        boolean z4 = false;
        this.f1166e = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            } else if (((C0330a) getChildAt(i5).getLayoutParams()).f1183b != null) {
                this.f1166e = true;
                break;
            } else {
                i5++;
            }
        }
        if (!this.f1170i) {
            int childCount2 = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 < childCount2) {
                    int i7 = ((C0330a) getChildAt(i6).getLayoutParams()).f1182a;
                    if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        z2 = true;
                        break;
                    }
                    i6++;
                } else {
                    z2 = false;
                    break;
                }
            }
        }
        z4 = true;
        if (this.f1168g != z4) {
            this.f1168g = z4;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f1163b = -1;
        this.f1164c = -1;
        this.f1165d = -1;
    }

    public void setExpanded(boolean z) {
        int i;
        int i2;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        boolean isLaidOut = isLaidOut();
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        if (isLaidOut) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        this.f1167f = i | i2 | 8;
        requestLayout();
    }

    public void setLiftOnScroll(boolean z) {
        this.f1170i = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Deprecated
    public void setTargetElevation(float f) {
        int integer = getResources().getInteger(R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842766, R.attr.state_liftable, -2130903461}, ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(this, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(0L));
        setStateListAnimator(stateListAnimator);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new C0330a();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0330a(getContext(), attributeSet);
    }
}
