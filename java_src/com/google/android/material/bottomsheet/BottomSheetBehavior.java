package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p009c0.AbstractC0317a;
import p013d0.C0369a;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0138c<V> {

    /* renamed from: a */
    public boolean f1211a;

    /* renamed from: b */
    public final float f1212b;

    /* renamed from: c */
    public int f1213c;

    /* renamed from: d */
    public boolean f1214d;

    /* renamed from: e */
    public int f1215e;

    /* renamed from: f */
    public int f1216f;

    /* renamed from: g */
    public int f1217g;

    /* renamed from: h */
    public int f1218h;

    /* renamed from: i */
    public int f1219i;

    /* renamed from: j */
    public boolean f1220j;

    /* renamed from: k */
    public boolean f1221k;

    /* renamed from: l */
    public int f1222l;

    /* renamed from: m */
    public C0369a f1223m;

    /* renamed from: n */
    public boolean f1224n;

    /* renamed from: o */
    public int f1225o;

    /* renamed from: p */
    public boolean f1226p;

    /* renamed from: q */
    public int f1227q;

    /* renamed from: r */
    public WeakReference<V> f1228r;

    /* renamed from: s */
    public WeakReference<View> f1229s;

    /* renamed from: t */
    public VelocityTracker f1230t;

    /* renamed from: u */
    public int f1231u;

    /* renamed from: v */
    public int f1232v;

    /* renamed from: w */
    public boolean f1233w;

    /* renamed from: x */
    public HashMap f1234x;

    /* renamed from: y */
    public final C0336a f1235y;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes.dex */
    public class C0336a extends C0369a.AbstractC0372c {
        public C0336a() {
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: a */
        public final int mo872a(View view, int i) {
            return view.getLeft();
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: b */
        public final int mo871b(View view, int i) {
            int i2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int m959t = bottomSheetBehavior.m959t();
            if (bottomSheetBehavior.f1220j) {
                i2 = bottomSheetBehavior.f1227q;
            } else {
                i2 = bottomSheetBehavior.f1219i;
            }
            return C0736h.m285o(i, m959t, i2);
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: d */
        public final int mo869d() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f1220j ? bottomSheetBehavior.f1227q : bottomSheetBehavior.f1219i;
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: f */
        public final void mo867f(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.m957v(1);
            }
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: g */
        public final void mo866g(View view, int i, int i2) {
            BottomSheetBehavior.this.f1228r.get();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x007c, code lost:
            if (r8 < java.lang.Math.abs(r8 - r2.f1219i)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
            if (java.lang.Math.abs(r8 - r9) < java.lang.Math.abs(r8 - r2.f1219i)) goto L43;
         */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00b2  */
        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void mo865h(View view, float f, float f2) {
            int i;
            int i2 = 6;
            int i3 = 3;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (f2 < 0.0f) {
                if (bottomSheetBehavior.f1211a) {
                    i = bottomSheetBehavior.f1217g;
                    if (bottomSheetBehavior.f1223m.m875q(view.getLeft(), i)) {
                        bottomSheetBehavior.m957v(2);
                        RunnableC0339c runnableC0339c = new RunnableC0339c(view, i3);
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        view.postOnAnimation(runnableC0339c);
                        return;
                    }
                    bottomSheetBehavior.m957v(i3);
                    return;
                }
                int top = view.getTop();
                int i4 = bottomSheetBehavior.f1218h;
                if (top > i4) {
                    i = i4;
                }
                i = 0;
                i2 = 3;
            } else {
                if (bottomSheetBehavior.f1220j && bottomSheetBehavior.m956w(view, f2) && (view.getTop() > bottomSheetBehavior.f1219i || Math.abs(f) < Math.abs(f2))) {
                    i = bottomSheetBehavior.f1227q;
                    i3 = 5;
                } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                    i = bottomSheetBehavior.f1219i;
                    i3 = 4;
                } else {
                    int top2 = view.getTop();
                    if (bottomSheetBehavior.f1211a) {
                        if (Math.abs(top2 - bottomSheetBehavior.f1217g) < Math.abs(top2 - bottomSheetBehavior.f1219i)) {
                            i = bottomSheetBehavior.f1217g;
                            i2 = 3;
                        }
                    } else {
                        int i5 = bottomSheetBehavior.f1218h;
                        if (top2 < i5) {
                        }
                        i = bottomSheetBehavior.f1218h;
                    }
                    i = bottomSheetBehavior.f1219i;
                    i2 = 4;
                }
                if (bottomSheetBehavior.f1223m.m875q(view.getLeft(), i)) {
                }
            }
            i3 = i2;
            if (bottomSheetBehavior.f1223m.m875q(view.getLeft(), i)) {
            }
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: i */
        public final boolean mo864i(View view, int i) {
            WeakReference<V> weakReference;
            View view2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f1222l;
            if (i2 == 1 || bottomSheetBehavior.f1233w) {
                return false;
            }
            return ((i2 == 3 && bottomSheetBehavior.f1231u == i && (view2 = bottomSheetBehavior.f1229s.get()) != null && view2.canScrollVertically(-1)) || (weakReference = bottomSheetBehavior.f1228r) == null || weakReference.get() != view) ? false : true;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes.dex */
    public static class C0337b extends AbstractC0317a {
        public static final Parcelable.Creator<C0337b> CREATOR = new C0338a();

        /* renamed from: c */
        public final int f1237c;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b$a */
        /* loaded from: classes.dex */
        public static class C0338a implements Parcelable.ClassLoaderCreator<C0337b> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0337b(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0337b[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0337b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0337b(parcel, classLoader);
            }
        }

        public C0337b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1237c = parcel.readInt();
        }

        public C0337b(AbsSavedState absSavedState, int i) {
            super(absSavedState);
            this.f1237c = i;
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            parcel.writeInt(this.f1237c);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes.dex */
    public class RunnableC0339c implements Runnable {

        /* renamed from: b */
        public final View f1238b;

        /* renamed from: c */
        public final int f1239c;

        public RunnableC0339c(View view, int i) {
            this.f1238b = view;
            this.f1239c = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            C0369a c0369a = bottomSheetBehavior.f1223m;
            if (c0369a != null && c0369a.m885g()) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                this.f1238b.postOnAnimation(this);
                return;
            }
            bottomSheetBehavior.m957v(this.f1239c);
        }
    }

    public BottomSheetBehavior() {
        this.f1211a = true;
        this.f1222l = 4;
        this.f1235y = new C0336a();
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        int i2;
        int i3;
        this.f1211a = true;
        this.f1222l = 4;
        this.f1235y = new C0336a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2553Z);
        TypedValue peekValue = obtainStyledAttributes.peekValue(2);
        if (peekValue != null && (i3 = peekValue.data) == -1) {
            m958u(i3);
        } else {
            m958u(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.f1220j = obtainStyledAttributes.getBoolean(1, false);
        boolean z = obtainStyledAttributes.getBoolean(0, true);
        if (this.f1211a != z) {
            this.f1211a = z;
            if (this.f1228r != null) {
                if (z) {
                    i2 = Math.max(this.f1227q - this.f1216f, this.f1217g);
                } else {
                    i2 = this.f1227q - this.f1216f;
                }
                this.f1219i = i2;
            }
            if (this.f1211a && this.f1222l == 6) {
                i = 3;
            } else {
                i = this.f1222l;
            }
            m957v(i);
        }
        this.f1221k = obtainStyledAttributes.getBoolean(3, false);
        obtainStyledAttributes.recycle();
        this.f1212b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: s */
    public static View m960s(View view) {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View m960s = m960s(viewGroup.getChildAt(i));
                if (m960s != null) {
                    return m960s;
                }
            }
            return null;
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: e */
    public final boolean mo89e(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        View view;
        boolean z;
        C0369a c0369a;
        if (!v.isShown()) {
            this.f1224n = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        View view2 = null;
        if (actionMasked == 0) {
            this.f1231u = -1;
            VelocityTracker velocityTracker = this.f1230t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f1230t = null;
            }
        }
        if (this.f1230t == null) {
            this.f1230t = VelocityTracker.obtain();
        }
        this.f1230t.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.f1233w = false;
                this.f1231u = -1;
                if (this.f1224n) {
                    this.f1224n = false;
                    return false;
                }
            }
        } else {
            int x = (int) motionEvent.getX();
            this.f1232v = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.f1229s;
            if (weakReference != null) {
                view = weakReference.get();
            } else {
                view = null;
            }
            if (view != null && coordinatorLayout.m1255o(view, x, this.f1232v)) {
                this.f1231u = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f1233w = true;
            }
            if (this.f1231u == -1 && !coordinatorLayout.m1255o(v, x, this.f1232v)) {
                z = true;
            } else {
                z = false;
            }
            this.f1224n = z;
        }
        if (!this.f1224n && (c0369a = this.f1223m) != null && c0369a.m874r(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f1229s;
        if (weakReference2 != null) {
            view2 = weakReference2.get();
        }
        if (actionMasked != 2 || view2 == null || this.f1224n || this.f1222l == 1 || coordinatorLayout.m1255o(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f1223m == null || Math.abs(this.f1232v - motionEvent.getY()) <= this.f1223m.f1427b) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo77f(CoordinatorLayout coordinatorLayout, V v, int i) {
        int i2;
        int i3;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (coordinatorLayout.getFitsSystemWindows() && !v.getFitsSystemWindows()) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.m1253q(v, i);
        this.f1227q = coordinatorLayout.getHeight();
        if (this.f1214d) {
            if (this.f1215e == 0) {
                this.f1215e = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            i2 = Math.max(this.f1215e, this.f1227q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            i2 = this.f1213c;
        }
        this.f1216f = i2;
        int max = Math.max(0, this.f1227q - v.getHeight());
        this.f1217g = max;
        int i4 = this.f1227q;
        this.f1218h = i4 / 2;
        if (this.f1211a) {
            i3 = Math.max(i4 - this.f1216f, max);
        } else {
            i3 = i4 - this.f1216f;
        }
        this.f1219i = i3;
        int i5 = this.f1222l;
        if (i5 == 3) {
            i3 = m959t();
        } else if (i5 == 6) {
            i3 = this.f1218h;
        } else if (this.f1220j && i5 == 5) {
            i3 = this.f1227q;
        } else if (i5 != 4) {
            if (i5 == 1 || i5 == 2) {
                C0954m.m31e(v, top - v.getTop());
            }
            if (this.f1223m == null) {
                this.f1223m = new C0369a(coordinatorLayout.getContext(), coordinatorLayout, this.f1235y);
            }
            this.f1228r = new WeakReference<>(v);
            this.f1229s = new WeakReference<>(m960s(v));
            return true;
        }
        C0954m.m31e(v, i3);
        if (this.f1223m == null) {
        }
        this.f1228r = new WeakReference<>(v);
        this.f1229s = new WeakReference<>(m960s(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: h */
    public final boolean mo966h(View view) {
        return view == this.f1229s.get() && this.f1222l != 3;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: i */
    public final void mo965i(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int[] iArr, int i2) {
        int i3;
        if (i2 == 1 || view2 != this.f1229s.get()) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i;
        if (i > 0) {
            if (i4 < m959t()) {
                int m959t = top - m959t();
                iArr[1] = m959t;
                C0954m.m31e(view, -m959t);
                i3 = 3;
                m957v(i3);
            } else {
                iArr[1] = i;
                C0954m.m31e(view, -i);
                m957v(1);
            }
        } else if (i < 0 && !view2.canScrollVertically(-1)) {
            int i5 = this.f1219i;
            if (i4 > i5 && !this.f1220j) {
                int i6 = top - i5;
                iArr[1] = i6;
                C0954m.m31e(view, -i6);
                i3 = 4;
                m957v(i3);
            } else {
                iArr[1] = i;
                C0954m.m31e(view, -i);
                m957v(1);
            }
        }
        view.getTop();
        this.f1228r.get();
        this.f1225o = i;
        this.f1226p = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: m */
    public final void mo964m(View view, Parcelable parcelable) {
        int i = ((C0337b) parcelable).f1237c;
        if (i != 1 && i != 2) {
            this.f1222l = i;
        } else {
            this.f1222l = 4;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: n */
    public final Parcelable mo963n(View view) {
        return new C0337b(View.BaseSavedState.EMPTY_STATE, this.f1222l);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: p */
    public final boolean mo962p(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.f1225o = 0;
        this.f1226p = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0087, code lost:
        if (java.lang.Math.abs(r4 - r7) < java.lang.Math.abs(r4 - r3.f1219i)) goto L46;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void mo961q(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        float yVelocity;
        int i3 = 3;
        if (v.getTop() == m959t()) {
            m957v(3);
        } else if (view == this.f1229s.get() && this.f1226p) {
            if (this.f1225o > 0) {
                i2 = m959t();
            } else {
                if (this.f1220j) {
                    VelocityTracker velocityTracker = this.f1230t;
                    if (velocityTracker == null) {
                        yVelocity = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(1000, this.f1212b);
                        yVelocity = this.f1230t.getYVelocity(this.f1231u);
                    }
                    if (m956w(v, yVelocity)) {
                        i2 = this.f1227q;
                        i3 = 5;
                    }
                }
                if (this.f1225o == 0) {
                    int top = v.getTop();
                    if (this.f1211a) {
                        if (Math.abs(top - this.f1217g) < Math.abs(top - this.f1219i)) {
                            i2 = this.f1217g;
                        }
                    } else {
                        int i4 = this.f1218h;
                        if (top < i4) {
                            if (top < Math.abs(top - this.f1219i)) {
                                i2 = 0;
                            }
                        }
                        i2 = this.f1218h;
                        i3 = 6;
                    }
                }
                i2 = this.f1219i;
                i3 = 4;
            }
            C0369a c0369a = this.f1223m;
            int left = v.getLeft();
            c0369a.f1443r = v;
            c0369a.f1428c = -1;
            boolean m883i = c0369a.m883i(left, i2, 0, 0);
            if (!m883i && c0369a.f1426a == 0 && c0369a.f1443r != null) {
                c0369a.f1443r = null;
            }
            if (m883i) {
                m957v(2);
                RunnableC0339c runnableC0339c = new RunnableC0339c(v, i3);
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                v.postOnAnimation(runnableC0339c);
            } else {
                m957v(i3);
            }
            this.f1226p = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: r */
    public final boolean mo88r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1222l == 1 && actionMasked == 0) {
            return true;
        }
        C0369a c0369a = this.f1223m;
        if (c0369a != null) {
            c0369a.m881k(motionEvent);
        }
        if (actionMasked == 0) {
            this.f1231u = -1;
            VelocityTracker velocityTracker = this.f1230t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f1230t = null;
            }
        }
        if (this.f1230t == null) {
            this.f1230t = VelocityTracker.obtain();
        }
        this.f1230t.addMovement(motionEvent);
        if (actionMasked == 2 && !this.f1224n) {
            float abs = Math.abs(this.f1232v - motionEvent.getY());
            C0369a c0369a2 = this.f1223m;
            if (abs > c0369a2.f1427b) {
                c0369a2.m890b(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f1224n;
    }

    /* renamed from: t */
    public final int m959t() {
        if (this.f1211a) {
            return this.f1217g;
        }
        return 0;
    }

    /* renamed from: u */
    public final void m958u(int i) {
        WeakReference<V> weakReference;
        V v;
        boolean z = true;
        if (i == -1) {
            if (!this.f1214d) {
                this.f1214d = true;
            }
            z = false;
        } else {
            if (this.f1214d || this.f1213c != i) {
                this.f1214d = false;
                this.f1213c = Math.max(0, i);
                this.f1219i = this.f1227q - i;
            }
            z = false;
        }
        if (!z || this.f1222l != 4 || (weakReference = this.f1228r) == null || (v = weakReference.get()) == null) {
            return;
        }
        v.requestLayout();
    }

    /* renamed from: v */
    public final void m957v(int i) {
        boolean z;
        if (this.f1222l == i) {
            return;
        }
        this.f1222l = i;
        if (i != 6 && i != 3) {
            z = (i == 5 || i == 4) ? false : true;
            this.f1228r.get();
        }
        m955x(z);
        this.f1228r.get();
    }

    /* renamed from: w */
    public final boolean m956w(View view, float f) {
        if (this.f1221k) {
            return true;
        }
        if (view.getTop() < this.f1219i) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.f1219i)) / ((float) this.f1213c) > 0.5f;
    }

    /* renamed from: x */
    public final void m955x(boolean z) {
        int i;
        WeakReference<V> weakReference = this.f1228r;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (z) {
            if (this.f1234x == null) {
                this.f1234x = new HashMap(childCount);
            } else {
                return;
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = coordinatorLayout.getChildAt(i2);
            if (childAt != this.f1228r.get()) {
                HashMap hashMap = this.f1234x;
                if (!z) {
                    if (hashMap != null && hashMap.containsKey(childAt)) {
                        i = ((Integer) this.f1234x.get(childAt)).intValue();
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    }
                } else {
                    hashMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    i = 4;
                }
                childAt.setImportantForAccessibility(i);
            }
        }
        if (!z) {
            this.f1234x = null;
        }
    }
}
