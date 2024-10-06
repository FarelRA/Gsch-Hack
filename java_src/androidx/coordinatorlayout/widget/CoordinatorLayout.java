package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p009c0.AbstractC0317a;
import p039k.C0666h;
import p044m.C0696a;
import p044m.C0697b;
import p046m1.C0736h;
import p052p.C0819a;
import p061s.C0863a;
import p073x.C0928b;
import p073x.C0929c;
import p076y.C0950i;
import p076y.C0954m;
import p076y.C0960q;
import p076y.C0963t;
import p076y.InterfaceC0948g;
import p076y.InterfaceC0951j;
import p076y.View$OnApplyWindowInsetsListenerC0953l;
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0948g {

    /* renamed from: t */
    public static final String f580t;

    /* renamed from: u */
    public static final Class<?>[] f581u;

    /* renamed from: v */
    public static final ThreadLocal<Map<String, Constructor<AbstractC0138c>>> f582v;

    /* renamed from: w */
    public static final C0145i f583w;

    /* renamed from: x */
    public static final C0929c f584x;

    /* renamed from: b */
    public final ArrayList f585b;

    /* renamed from: c */
    public final C0696a f586c;

    /* renamed from: d */
    public final ArrayList f587d;

    /* renamed from: e */
    public final ArrayList f588e;

    /* renamed from: f */
    public final int[] f589f;

    /* renamed from: g */
    public boolean f590g;

    /* renamed from: h */
    public boolean f591h;

    /* renamed from: i */
    public final int[] f592i;

    /* renamed from: j */
    public View f593j;

    /* renamed from: k */
    public View f594k;

    /* renamed from: l */
    public ViewTreeObserver$OnPreDrawListenerC0142g f595l;

    /* renamed from: m */
    public boolean f596m;

    /* renamed from: n */
    public C0963t f597n;

    /* renamed from: o */
    public boolean f598o;

    /* renamed from: p */
    public Drawable f599p;

    /* renamed from: q */
    public ViewGroup.OnHierarchyChangeListener f600q;

    /* renamed from: r */
    public C0136a f601r;

    /* renamed from: s */
    public final C0950i f602s;

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes.dex */
    public class C0136a implements InterfaceC0951j {
        public C0136a() {
        }

        @Override // p076y.InterfaceC0951j
        /* renamed from: a */
        public final C0963t mo41a(View view, C0963t c0963t) {
            boolean z;
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            if (!Objects.equals(coordinatorLayout.f597n, c0963t)) {
                coordinatorLayout.f597n = c0963t;
                Object obj = c0963t.f2947a;
                boolean z2 = true;
                if (((WindowInsets) obj).getSystemWindowInsetTop() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                coordinatorLayout.f598o = z;
                coordinatorLayout.setWillNotDraw((z || coordinatorLayout.getBackground() != null) ? false : false);
                if (!((WindowInsets) obj).isConsumed()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = coordinatorLayout.getChildAt(i);
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        if (childAt.getFitsSystemWindows() && ((C0141f) childAt.getLayoutParams()).f605a != null && ((WindowInsets) obj).isConsumed()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return c0963t;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0137b {
        AbstractC0138c getBehavior();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0138c<V extends View> {
        public AbstractC0138c() {
        }

        public AbstractC0138c(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public boolean mo943a(View view) {
            return false;
        }

        /* renamed from: b */
        public boolean mo912b(View view, View view2) {
            return false;
        }

        /* renamed from: c */
        public void mo917c(C0141f c0141f) {
        }

        /* renamed from: d */
        public boolean mo918d(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: e */
        public boolean mo89e(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: f */
        public boolean mo77f(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: g */
        public boolean mo81g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return false;
        }

        /* renamed from: h */
        public boolean mo966h(View view) {
            return false;
        }

        /* renamed from: i */
        public void mo965i(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int[] iArr, int i2) {
        }

        @Deprecated
        /* renamed from: j */
        public void mo974j(View view, int i) {
        }

        /* renamed from: k */
        public void mo976k(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                mo974j(v, i2);
            }
        }

        /* renamed from: l */
        public boolean mo975l(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: m */
        public void mo964m(View view, Parcelable parcelable) {
        }

        /* renamed from: n */
        public Parcelable mo963n(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: o */
        public boolean mo973o(int i) {
            return false;
        }

        /* renamed from: p */
        public boolean mo962p(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return mo973o(i);
            }
            return false;
        }

        /* renamed from: q */
        public void mo961q(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        }

        /* renamed from: r */
        public boolean mo88r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes.dex */
    public @interface InterfaceC0139d {
        Class<? extends AbstractC0138c> value();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes.dex */
    public class ViewGroup$OnHierarchyChangeListenerC0140e implements ViewGroup.OnHierarchyChangeListener {
        public ViewGroup$OnHierarchyChangeListenerC0140e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f600q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            coordinatorLayout.m1254p(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.f600q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes.dex */
    public static class C0141f extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public AbstractC0138c f605a;

        /* renamed from: b */
        public boolean f606b;

        /* renamed from: c */
        public final int f607c;

        /* renamed from: d */
        public int f608d;

        /* renamed from: e */
        public final int f609e;

        /* renamed from: f */
        public final int f610f;

        /* renamed from: g */
        public final int f611g;

        /* renamed from: h */
        public int f612h;

        /* renamed from: i */
        public int f613i;

        /* renamed from: j */
        public int f614j;

        /* renamed from: k */
        public View f615k;

        /* renamed from: l */
        public View f616l;

        /* renamed from: m */
        public boolean f617m;

        /* renamed from: n */
        public boolean f618n;

        /* renamed from: o */
        public boolean f619o;

        /* renamed from: p */
        public boolean f620p;

        /* renamed from: q */
        public final Rect f621q;

        public C0141f() {
            super(-2, -2);
            this.f606b = false;
            this.f607c = 0;
            this.f608d = 0;
            this.f609e = -1;
            this.f610f = -1;
            this.f611g = 0;
            this.f612h = 0;
            this.f621q = new Rect();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C0141f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            AbstractC0138c abstractC0138c;
            this.f606b = false;
            this.f607c = 0;
            this.f608d = 0;
            this.f609e = -1;
            this.f610f = -1;
            this.f611g = 0;
            this.f612h = 0;
            this.f621q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2542O);
            this.f607c = obtainStyledAttributes.getInteger(0, 0);
            this.f610f = obtainStyledAttributes.getResourceId(1, -1);
            this.f608d = obtainStyledAttributes.getInteger(2, 0);
            this.f609e = obtainStyledAttributes.getInteger(6, -1);
            this.f611g = obtainStyledAttributes.getInt(5, 0);
            this.f612h = obtainStyledAttributes.getInt(4, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(3);
            this.f606b = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(3);
                String str = CoordinatorLayout.f580t;
                if (TextUtils.isEmpty(string)) {
                    abstractC0138c = null;
                } else {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.f580t;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal<Map<String, Constructor<AbstractC0138c>>> threadLocal = CoordinatorLayout.f582v;
                        Map map = (Map) threadLocal.get();
                        if (map == null) {
                            map = new HashMap();
                            threadLocal.set(map);
                        }
                        Constructor<?> constructor = (Constructor) map.get(string);
                        if (constructor == null) {
                            constructor = context.getClassLoader().loadClass(string).getConstructor(CoordinatorLayout.f581u);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        abstractC0138c = (AbstractC0138c) constructor.newInstance(context, attributeSet);
                    } catch (Exception e) {
                        throw new RuntimeException("Could not inflate Behavior subclass " + string, e);
                    }
                }
                this.f605a = abstractC0138c;
            }
            obtainStyledAttributes.recycle();
            AbstractC0138c abstractC0138c2 = this.f605a;
            if (abstractC0138c2 != null) {
                abstractC0138c2.mo917c(this);
            }
        }

        public C0141f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f606b = false;
            this.f607c = 0;
            this.f608d = 0;
            this.f609e = -1;
            this.f610f = -1;
            this.f611g = 0;
            this.f612h = 0;
            this.f621q = new Rect();
        }

        public C0141f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f606b = false;
            this.f607c = 0;
            this.f608d = 0;
            this.f609e = -1;
            this.f610f = -1;
            this.f611g = 0;
            this.f612h = 0;
            this.f621q = new Rect();
        }

        public C0141f(C0141f c0141f) {
            super((ViewGroup.MarginLayoutParams) c0141f);
            this.f606b = false;
            this.f607c = 0;
            this.f608d = 0;
            this.f609e = -1;
            this.f610f = -1;
            this.f611g = 0;
            this.f612h = 0;
            this.f621q = new Rect();
        }

        /* renamed from: a */
        public final boolean m1245a(int i) {
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                return this.f619o;
            }
            return this.f618n;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnPreDrawListenerC0142g implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC0142g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.m1254p(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h */
    /* loaded from: classes.dex */
    public static class C0143h extends AbstractC0317a {
        public static final Parcelable.Creator<C0143h> CREATOR = new C0144a();

        /* renamed from: c */
        public SparseArray<Parcelable> f623c;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h$a */
        /* loaded from: classes.dex */
        public static class C0144a implements Parcelable.ClassLoaderCreator<C0143h> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0143h(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0143h[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0143h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0143h(parcel, classLoader);
            }
        }

        public C0143h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f623c = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f623c.append(iArr[i], readParcelableArray[i]);
            }
        }

        public C0143h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int i2;
            parcel.writeParcelable(this.f1144a, i);
            SparseArray<Parcelable> sparseArray = this.f623c;
            if (sparseArray != null) {
                i2 = sparseArray.size();
            } else {
                i2 = 0;
            }
            parcel.writeInt(i2);
            int[] iArr = new int[i2];
            Parcelable[] parcelableArr = new Parcelable[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = this.f623c.keyAt(i3);
                parcelableArr[i3] = this.f623c.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$i */
    /* loaded from: classes.dex */
    public static class C0145i implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            float z = view.getZ();
            float z2 = view2.getZ();
            if (z > z2) {
                return -1;
            }
            if (z < z2) {
                return 1;
            }
            return 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f580t = r0 != null ? r0.getName() : null;
        f583w = new C0145i();
        f581u = new Class[]{Context.class, AttributeSet.class};
        f582v = new ThreadLocal<>();
        f584x = new C0929c();
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f585b = new ArrayList();
        this.f586c = new C0696a(0);
        this.f587d = new ArrayList();
        this.f588e = new ArrayList();
        this.f589f = new int[2];
        this.f602s = new C0950i();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2541N, R.attr.coordinatorLayoutStyle, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f592i = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i = 0; i < length; i++) {
                int[] iArr = this.f592i;
                iArr[i] = (int) (iArr[i] * f);
            }
        }
        this.f599p = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        m1246x();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0140e());
    }

    /* renamed from: g */
    public static Rect m1263g() {
        Rect rect = (Rect) f584x.mo92a();
        return rect == null ? new Rect() : rect;
    }

    /* renamed from: l */
    public static void m1258l(int i, Rect rect, Rect rect2, C0141f c0141f, int i2, int i3) {
        int width;
        int height;
        int i4 = c0141f.f607c;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = c0141f.f608d;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        if (i8 != 1) {
            if (i8 != 5) {
                width = rect.left;
            } else {
                width = rect.right;
            }
        } else {
            width = rect.left + (rect.width() / 2);
        }
        if (i9 != 16) {
            if (i9 != 80) {
                height = rect.top;
            } else {
                height = rect.bottom;
            }
        } else {
            height = rect.top + (rect.height() / 2);
        }
        if (i6 != 1) {
            if (i6 != 5) {
                width -= i2;
            }
        } else {
            width -= i2 / 2;
        }
        if (i7 != 16) {
            if (i7 != 80) {
                height -= i3;
            }
        } else {
            height -= i3 / 2;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    /* renamed from: n */
    public static C0141f m1256n(View view) {
        C0141f c0141f = (C0141f) view.getLayoutParams();
        if (!c0141f.f606b) {
            if (view instanceof InterfaceC0137b) {
                AbstractC0138c behavior = ((InterfaceC0137b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                if (c0141f.f605a != behavior) {
                    c0141f.f605a = behavior;
                    c0141f.f606b = true;
                    if (behavior != null) {
                        behavior.mo917c(c0141f);
                    }
                }
            } else {
                InterfaceC0139d interfaceC0139d = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    interfaceC0139d = (InterfaceC0139d) cls.getAnnotation(InterfaceC0139d.class);
                    if (interfaceC0139d != null) {
                        break;
                    }
                }
                if (interfaceC0139d != null) {
                    try {
                        AbstractC0138c newInstance = interfaceC0139d.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        if (c0141f.f605a != newInstance) {
                            c0141f.f605a = newInstance;
                            c0141f.f606b = true;
                            if (newInstance != null) {
                                newInstance.mo917c(c0141f);
                            }
                        }
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + interfaceC0139d.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
            }
            c0141f.f606b = true;
        }
        return c0141f;
    }

    /* renamed from: v */
    public static void m1248v(View view, int i) {
        C0141f c0141f = (C0141f) view.getLayoutParams();
        int i2 = c0141f.f613i;
        if (i2 != i) {
            C0954m.m32d(view, i - i2);
            c0141f.f613i = i;
        }
    }

    /* renamed from: w */
    public static void m1247w(View view, int i) {
        C0141f c0141f = (C0141f) view.getLayoutParams();
        int i2 = c0141f.f614j;
        if (i2 != i) {
            C0954m.m31e(view, i - i2);
            c0141f.f614j = i;
        }
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: a */
    public final void mo47a(View view, View view2, int i, int i2) {
        C0950i c0950i = this.f602s;
        if (i2 == 1) {
            c0950i.f2932b = i;
        } else {
            c0950i.f2931a = i;
        }
        this.f594k = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((C0141f) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: b */
    public final void mo46b(View view, int i) {
        C0950i c0950i = this.f602s;
        if (i == 1) {
            c0950i.f2932b = 0;
        } else {
            c0950i.f2931a = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0141f c0141f = (C0141f) childAt.getLayoutParams();
            if (c0141f.m1245a(i)) {
                AbstractC0138c abstractC0138c = c0141f.f605a;
                if (abstractC0138c != null) {
                    abstractC0138c.mo961q(this, childAt, view, i);
                }
                if (i != 0) {
                    if (i == 1) {
                        c0141f.f619o = false;
                    }
                } else {
                    c0141f.f618n = false;
                }
                c0141f.f620p = false;
            }
        }
        this.f594k = null;
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: c */
    public final void mo45c(View view, int i, int i2, int[] iArr, int i3) {
        AbstractC0138c abstractC0138c;
        int min;
        int min2;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0141f c0141f = (C0141f) childAt.getLayoutParams();
                if (c0141f.m1245a(i3) && (abstractC0138c = c0141f.f605a) != null) {
                    int[] iArr2 = this.f589f;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    abstractC0138c.mo965i(this, childAt, view, i2, iArr2, i3);
                    if (i > 0) {
                        min = Math.max(i4, iArr2[0]);
                    } else {
                        min = Math.min(i4, iArr2[0]);
                    }
                    i4 = min;
                    if (i2 > 0) {
                        min2 = Math.max(i5, iArr2[1]);
                    } else {
                        min2 = Math.min(i5, iArr2[1]);
                    }
                    i5 = min2;
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m1254p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0141f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        AbstractC0138c abstractC0138c = ((C0141f) view.getLayoutParams()).f605a;
        if (abstractC0138c != null) {
            abstractC0138c.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f599p;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: e */
    public final void mo44e(View view, int i, int i2, int i3, int i4, int i5) {
        AbstractC0138c abstractC0138c;
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0141f c0141f = (C0141f) childAt.getLayoutParams();
                if (c0141f.m1245a(i5) && (abstractC0138c = c0141f.f605a) != null) {
                    abstractC0138c.mo976k(this, childAt, view, i, i2, i3, i4, i5);
                    z = true;
                }
            }
        }
        if (z) {
            m1254p(1);
        }
    }

    @Override // p076y.InterfaceC0948g
    /* renamed from: f */
    public final boolean mo43f(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0141f c0141f = (C0141f) childAt.getLayoutParams();
                AbstractC0138c abstractC0138c = c0141f.f605a;
                if (abstractC0138c != null) {
                    boolean mo962p = abstractC0138c.mo962p(this, childAt, view, view2, i, i2);
                    z |= mo962p;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            c0141f.f619o = mo962p;
                        }
                    } else {
                        c0141f.f618n = mo962p;
                    }
                } else if (i2 != 0) {
                    if (i2 == 1) {
                        c0141f.f619o = false;
                    }
                } else {
                    c0141f.f618n = false;
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0141f();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0141f(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        m1250t();
        return Collections.unmodifiableList(this.f585b);
    }

    public final C0963t getLastWindowInsets() {
        return this.f597n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0950i c0950i = this.f602s;
        return c0950i.f2932b | c0950i.f2931a;
    }

    public Drawable getStatusBarBackground() {
        return this.f599p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    /* renamed from: h */
    public final void m1262h(C0141f c0141f, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0141f).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) c0141f).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0141f).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) c0141f).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: i */
    public final void m1261i(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m1259k(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: j */
    public final ArrayList m1260j(View view) {
        C0696a c0696a = this.f586c;
        int i = ((C0666h) c0696a.f2440b).f2306c;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) ((C0666h) c0696a.f2440b).m397j(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(((C0666h) c0696a.f2440b).m399h(i2));
            }
        }
        ArrayList arrayList3 = this.f588e;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    /* renamed from: k */
    public final void m1259k(View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = C0697b.f2443a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal<Matrix> threadLocal2 = C0697b.f2443a;
        Matrix matrix = threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        C0697b.m345a(this, view, matrix);
        ThreadLocal<RectF> threadLocal3 = C0697b.f2444b;
        RectF rectF = threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    /* renamed from: m */
    public final int m1257m(int i) {
        StringBuilder sb;
        int[] iArr = this.f592i;
        if (iArr == null) {
            sb = new StringBuilder("No keylines defined for ");
            sb.append(this);
            sb.append(" - attempted index lookup ");
            sb.append(i);
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            sb = new StringBuilder("Keyline index ");
            sb.append(i);
            sb.append(" out of range for ");
            sb.append(this);
        }
        Log.e("CoordinatorLayout", sb.toString());
        return 0;
    }

    /* renamed from: o */
    public final boolean m1255o(View view, int i, int i2) {
        C0929c c0929c = f584x;
        Rect m1263g = m1263g();
        m1259k(view, m1263g);
        try {
            return m1263g.contains(i, i2);
        } finally {
            m1263g.setEmpty();
            c0929c.mo91b(m1263g);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1249u(false);
        if (this.f596m) {
            if (this.f595l == null) {
                this.f595l = new ViewTreeObserver$OnPreDrawListenerC0142g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f595l);
        }
        if (this.f597n == null) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (getFitsSystemWindows()) {
                requestApplyInsets();
            }
        }
        this.f591h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1249u(false);
        if (this.f596m && this.f595l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f595l);
        }
        View view = this.f594k;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f591h = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (this.f598o && this.f599p != null) {
            C0963t c0963t = this.f597n;
            if (c0963t != null) {
                i = ((WindowInsets) c0963t.f2947a).getSystemWindowInsetTop();
            } else {
                i = 0;
            }
            if (i > 0) {
                this.f599p.setBounds(0, 0, getWidth(), i);
                this.f599p.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m1249u(true);
        }
        boolean m1251s = m1251s(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m1249u(true);
        }
        return m1251s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0138c abstractC0138c;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f585b;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((abstractC0138c = ((C0141f) view.getLayoutParams()).f605a) == null || !abstractC0138c.mo77f(this, view, layoutDirection))) {
                m1253q(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a7, code lost:
        if (r0.mo81g(r32, r19, r25, r20, r26) == false) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        AbstractC0138c abstractC0138c;
        int i8;
        ArrayList arrayList;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z4;
        m1250t();
        int childCount = getChildCount();
        int i16 = 0;
        while (true) {
            if (i16 < childCount) {
                View childAt = getChildAt(i16);
                C0696a c0696a = this.f586c;
                int i17 = ((C0666h) c0696a.f2440b).f2306c;
                int i18 = 0;
                while (true) {
                    if (i18 < i17) {
                        ArrayList arrayList2 = (ArrayList) ((C0666h) c0696a.f2440b).m397j(i18);
                        if (arrayList2 != null && arrayList2.contains(childAt)) {
                            z4 = true;
                            break;
                        }
                        i18++;
                    } else {
                        z4 = false;
                        break;
                    }
                }
                if (z4) {
                    z = true;
                    break;
                }
                i16++;
            } else {
                z = false;
                break;
            }
        }
        if (z != this.f596m) {
            if (z) {
                if (this.f591h) {
                    if (this.f595l == null) {
                        this.f595l = new ViewTreeObserver$OnPreDrawListenerC0142g();
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f595l);
                }
                this.f596m = true;
            } else {
                if (this.f591h && this.f595l != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f595l);
                }
                this.f596m = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int layoutDirection = getLayoutDirection();
        if (layoutDirection == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i19 = paddingLeft + paddingRight;
        int i20 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (this.f597n != null && getFitsSystemWindows()) {
            z3 = true;
        } else {
            z3 = false;
        }
        ArrayList arrayList3 = this.f585b;
        int size3 = arrayList3.size();
        int i21 = suggestedMinimumWidth;
        int i22 = suggestedMinimumHeight;
        int i23 = 0;
        int i24 = 0;
        while (i24 < size3) {
            View view = (View) arrayList3.get(i24);
            int i25 = i23;
            if (view.getVisibility() == 8) {
                i8 = size3;
                arrayList = arrayList3;
                i11 = paddingLeft;
                i14 = paddingRight;
                i9 = layoutDirection;
                i23 = i25;
                i13 = i24;
            } else {
                C0141f c0141f = (C0141f) view.getLayoutParams();
                int i26 = c0141f.f609e;
                if (i26 >= 0 && mode != 0) {
                    int m1257m = m1257m(i26);
                    i3 = i24;
                    int i27 = c0141f.f607c;
                    if (i27 == 0) {
                        i27 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i27, layoutDirection) & 7;
                    i4 = i22;
                    if ((absoluteGravity == 3 && !z2) || (absoluteGravity == 5 && z2)) {
                        i5 = Math.max(0, (size - paddingRight) - m1257m);
                    } else if ((absoluteGravity == 5 && !z2) || (absoluteGravity == 3 && z2)) {
                        i5 = Math.max(0, m1257m - paddingLeft);
                    }
                    if (!z3 && !view.getFitsSystemWindows()) {
                        int systemWindowInsetRight = ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetRight() + ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetLeft();
                        int systemWindowInsetBottom = ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetBottom() + ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetTop();
                        i6 = View.MeasureSpec.makeMeasureSpec(size - systemWindowInsetRight, mode);
                        i7 = View.MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetBottom, mode2);
                    } else {
                        i6 = i;
                        i7 = i2;
                    }
                    abstractC0138c = c0141f.f605a;
                    if (abstractC0138c == null) {
                        i13 = i3;
                        i11 = paddingLeft;
                        i12 = i25;
                        int i28 = i4;
                        i14 = paddingRight;
                        i15 = i28;
                        i9 = layoutDirection;
                        i10 = i21;
                        i8 = size3;
                        arrayList = arrayList3;
                    } else {
                        i8 = size3;
                        arrayList = arrayList3;
                        i9 = layoutDirection;
                        i10 = i21;
                        int i29 = i3;
                        i11 = paddingLeft;
                        i12 = i25;
                        i13 = i29;
                        int i30 = i4;
                        i14 = paddingRight;
                        i15 = i30;
                    }
                    measureChildWithMargins(view, i6, i5, i7, 0);
                    int max = Math.max(i10, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) c0141f).leftMargin + ((ViewGroup.MarginLayoutParams) c0141f).rightMargin);
                    int max2 = Math.max(i15, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) c0141f).topMargin + ((ViewGroup.MarginLayoutParams) c0141f).bottomMargin);
                    i21 = max;
                    i23 = View.combineMeasuredStates(i12, view.getMeasuredState());
                    i22 = max2;
                } else {
                    i3 = i24;
                    i4 = i22;
                }
                i5 = 0;
                if (!z3) {
                }
                i6 = i;
                i7 = i2;
                abstractC0138c = c0141f.f605a;
                if (abstractC0138c == null) {
                }
                measureChildWithMargins(view, i6, i5, i7, 0);
                int max3 = Math.max(i10, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) c0141f).leftMargin + ((ViewGroup.MarginLayoutParams) c0141f).rightMargin);
                int max22 = Math.max(i15, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) c0141f).topMargin + ((ViewGroup.MarginLayoutParams) c0141f).bottomMargin);
                i21 = max3;
                i23 = View.combineMeasuredStates(i12, view.getMeasuredState());
                i22 = max22;
            }
            i24 = i13 + 1;
            paddingLeft = i11;
            paddingRight = i14;
            layoutDirection = i9;
            size3 = i8;
            arrayList3 = arrayList;
        }
        int i31 = i23;
        setMeasuredDimension(View.resolveSizeAndState(i21, i, (-16777216) & i31), View.resolveSizeAndState(i22, i2, i31 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0141f c0141f = (C0141f) childAt.getLayoutParams();
                if (c0141f.m1245a(0)) {
                    AbstractC0138c abstractC0138c = c0141f.f605a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        AbstractC0138c abstractC0138c;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0141f c0141f = (C0141f) childAt.getLayoutParams();
                if (c0141f.m1245a(0) && (abstractC0138c = c0141f.f605a) != null) {
                    z |= abstractC0138c.mo966h(view);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo45c(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo44e(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo47a(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0143h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0143h c0143h = (C0143h) parcelable;
        super.onRestoreInstanceState(c0143h.f1144a);
        SparseArray<Parcelable> sparseArray = c0143h.f623c;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0138c abstractC0138c = m1256n(childAt).f605a;
            if (id != -1 && abstractC0138c != null && (parcelable2 = sparseArray.get(id)) != null) {
                abstractC0138c.mo964m(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable mo963n;
        C0143h c0143h = new C0143h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0138c abstractC0138c = ((C0141f) childAt.getLayoutParams()).f605a;
            if (id != -1 && abstractC0138c != null && (mo963n = abstractC0138c.mo963n(childAt)) != null) {
                sparseArray.append(id, mo963n);
            }
        }
        c0143h.f623c = sparseArray;
        return c0143h;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo43f(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo46b(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r3 != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean mo88r;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f593j == null) {
            z = m1251s(motionEvent, 1);
        } else {
            z = false;
        }
        AbstractC0138c abstractC0138c = ((C0141f) this.f593j.getLayoutParams()).f605a;
        if (abstractC0138c != null) {
            mo88r = abstractC0138c.mo88r(this, this.f593j, motionEvent);
            motionEvent2 = null;
            if (this.f593j != null) {
                mo88r |= super.onTouchEvent(motionEvent);
            } else if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                m1249u(false);
            }
            return mo88r;
        }
        mo88r = false;
        motionEvent2 = null;
        if (this.f593j != null) {
        }
        if (motionEvent2 != null) {
        }
        if (actionMasked != 1) {
        }
        m1249u(false);
        return mo88r;
    }

    /* renamed from: p */
    public final void m1254p(int i) {
        int i2;
        Rect rect;
        int i3;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        boolean z3;
        int width;
        int i4;
        int i5;
        int i6;
        int height;
        int i7;
        int i8;
        int i9;
        int i10;
        C0141f c0141f;
        ArrayList arrayList2;
        int i11;
        Rect rect2;
        int i12;
        View view;
        C0929c c0929c;
        C0141f c0141f2;
        int i13;
        boolean z4;
        AbstractC0138c abstractC0138c;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.f585b;
        int size = arrayList3.size();
        Rect m1263g = m1263g();
        Rect m1263g2 = m1263g();
        Rect m1263g3 = m1263g();
        int i14 = i;
        int i15 = 0;
        while (true) {
            C0929c c0929c2 = f584x;
            if (i15 >= size) {
                Rect rect3 = m1263g3;
                m1263g.setEmpty();
                c0929c2.mo91b(m1263g);
                m1263g2.setEmpty();
                c0929c2.mo91b(m1263g2);
                rect3.setEmpty();
                c0929c2.mo91b(rect3);
                return;
            }
            View view2 = (View) arrayList3.get(i15);
            C0141f c0141f3 = (C0141f) view2.getLayoutParams();
            if (i14 == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i3 = size;
                rect = m1263g3;
                i2 = i15;
            } else {
                int i16 = 0;
                while (i16 < i15) {
                    if (c0141f3.f616l == ((View) arrayList3.get(i16))) {
                        C0141f c0141f4 = (C0141f) view2.getLayoutParams();
                        if (c0141f4.f615k != null) {
                            Rect m1263g4 = m1263g();
                            Rect m1263g5 = m1263g();
                            arrayList2 = arrayList3;
                            Rect m1263g6 = m1263g();
                            i10 = i16;
                            m1259k(c0141f4.f615k, m1263g4);
                            m1261i(view2, m1263g5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            i11 = size;
                            int measuredHeight = view2.getMeasuredHeight();
                            i12 = i15;
                            c0141f = c0141f3;
                            view = view2;
                            rect2 = m1263g3;
                            c0929c = c0929c2;
                            m1258l(layoutDirection, m1263g4, m1263g6, c0141f4, measuredWidth, measuredHeight);
                            if (m1263g6.left == m1263g5.left && m1263g6.top == m1263g5.top) {
                                c0141f2 = c0141f4;
                                i13 = measuredWidth;
                                z4 = false;
                            } else {
                                c0141f2 = c0141f4;
                                i13 = measuredWidth;
                                z4 = true;
                            }
                            m1262h(c0141f2, m1263g6, i13, measuredHeight);
                            int i17 = m1263g6.left - m1263g5.left;
                            int i18 = m1263g6.top - m1263g5.top;
                            if (i17 != 0) {
                                C0954m.m32d(view, i17);
                            }
                            if (i18 != 0) {
                                C0954m.m31e(view, i18);
                            }
                            if (z4 && (abstractC0138c = c0141f2.f605a) != null) {
                                abstractC0138c.mo918d(this, view, c0141f2.f615k);
                            }
                            m1263g4.setEmpty();
                            c0929c.mo91b(m1263g4);
                            m1263g5.setEmpty();
                            c0929c.mo91b(m1263g5);
                            m1263g6.setEmpty();
                            c0929c.mo91b(m1263g6);
                            i16 = i10 + 1;
                            c0929c2 = c0929c;
                            view2 = view;
                            arrayList3 = arrayList2;
                            size = i11;
                            i15 = i12;
                            c0141f3 = c0141f;
                            m1263g3 = rect2;
                        }
                    }
                    i10 = i16;
                    c0141f = c0141f3;
                    arrayList2 = arrayList3;
                    i11 = size;
                    rect2 = m1263g3;
                    i12 = i15;
                    view = view2;
                    c0929c = c0929c2;
                    i16 = i10 + 1;
                    c0929c2 = c0929c;
                    view2 = view;
                    arrayList3 = arrayList2;
                    size = i11;
                    i15 = i12;
                    c0141f3 = c0141f;
                    m1263g3 = rect2;
                }
                C0141f c0141f5 = c0141f3;
                ArrayList arrayList4 = arrayList3;
                int i19 = size;
                Rect rect4 = m1263g3;
                i2 = i15;
                View view3 = view2;
                C0929c c0929c3 = c0929c2;
                m1261i(view3, m1263g2, true);
                if (c0141f5.f611g != 0 && !m1263g2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(c0141f5.f611g, layoutDirection);
                    int i20 = absoluteGravity & 112;
                    if (i20 == 48) {
                        m1263g.top = Math.max(m1263g.top, m1263g2.bottom);
                    } else if (i20 == 80) {
                        m1263g.bottom = Math.max(m1263g.bottom, getHeight() - m1263g2.top);
                    }
                    int i21 = absoluteGravity & 7;
                    if (i21 == 3) {
                        m1263g.left = Math.max(m1263g.left, m1263g2.right);
                    } else if (i21 == 5) {
                        m1263g.right = Math.max(m1263g.right, getWidth() - m1263g2.left);
                    }
                }
                if (c0141f5.f612h != 0 && view3.getVisibility() == 0) {
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    if (view3.isLaidOut() && view3.getWidth() > 0 && view3.getHeight() > 0) {
                        C0141f c0141f6 = (C0141f) view3.getLayoutParams();
                        AbstractC0138c abstractC0138c2 = c0141f6.f605a;
                        Rect m1263g7 = m1263g();
                        Rect m1263g8 = m1263g();
                        m1263g8.set(view3.getLeft(), view3.getTop(), view3.getRight(), view3.getBottom());
                        if (abstractC0138c2 == null || !abstractC0138c2.mo943a(view3)) {
                            m1263g7.set(m1263g8);
                        } else if (!m1263g8.contains(m1263g7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m1263g7.toShortString() + " | Bounds:" + m1263g8.toShortString());
                        }
                        m1263g8.setEmpty();
                        c0929c3.mo91b(m1263g8);
                        if (!m1263g7.isEmpty()) {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(c0141f6.f612h, layoutDirection);
                            if ((absoluteGravity2 & 48) != 48 || (i8 = (m1263g7.top - ((ViewGroup.MarginLayoutParams) c0141f6).topMargin) - c0141f6.f614j) >= (i9 = m1263g.top)) {
                                z = false;
                            } else {
                                m1247w(view3, i9 - i8);
                                z = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - m1263g7.bottom) - ((ViewGroup.MarginLayoutParams) c0141f6).bottomMargin) + c0141f6.f614j) < (i7 = m1263g.bottom)) {
                                m1247w(view3, height - i7);
                                z = true;
                            }
                            if (!z) {
                                m1247w(view3, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i5 = (m1263g7.left - ((ViewGroup.MarginLayoutParams) c0141f6).leftMargin) - c0141f6.f613i) >= (i6 = m1263g.left)) {
                                z2 = false;
                            } else {
                                m1248v(view3, i6 - i5);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 5) != 5 || (width = ((getWidth() - m1263g7.right) - ((ViewGroup.MarginLayoutParams) c0141f6).rightMargin) + c0141f6.f613i) >= (i4 = m1263g.right)) {
                                z3 = z2;
                            } else {
                                m1248v(view3, width - i4);
                                z3 = true;
                            }
                            if (!z3) {
                                m1248v(view3, 0);
                            }
                        }
                        m1263g7.setEmpty();
                        c0929c3.mo91b(m1263g7);
                    }
                }
                if (i != 2) {
                    rect = rect4;
                    rect.set(((C0141f) view3.getLayoutParams()).f621q);
                    if (rect.equals(m1263g2)) {
                        arrayList = arrayList4;
                        i3 = i19;
                        i14 = i;
                    } else {
                        ((C0141f) view3.getLayoutParams()).f621q.set(m1263g2);
                    }
                } else {
                    rect = rect4;
                }
                int i22 = i2 + 1;
                i3 = i19;
                while (true) {
                    arrayList = arrayList4;
                    if (i22 >= i3) {
                        break;
                    }
                    View view4 = (View) arrayList.get(i22);
                    C0141f c0141f7 = (C0141f) view4.getLayoutParams();
                    AbstractC0138c abstractC0138c3 = c0141f7.f605a;
                    if (abstractC0138c3 != null && abstractC0138c3.mo912b(view4, view3)) {
                        if (i == 0 && c0141f7.f620p) {
                            c0141f7.f620p = false;
                        } else {
                            boolean mo918d = i != 2 ? abstractC0138c3.mo918d(this, view4, view3) : true;
                            if (i == 1) {
                                c0141f7.f620p = mo918d;
                            }
                        }
                    }
                    i22++;
                    arrayList4 = arrayList;
                }
                i14 = i;
            }
            i15 = i2 + 1;
            m1263g3 = rect;
            size = i3;
            arrayList3 = arrayList;
        }
    }

    /* renamed from: q */
    public final void m1253q(View view, int i) {
        boolean z;
        Rect m1263g;
        Rect m1263g2;
        C0141f c0141f = (C0141f) view.getLayoutParams();
        View view2 = c0141f.f615k;
        int i2 = 0;
        if (view2 == null && c0141f.f610f != -1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            C0929c c0929c = f584x;
            if (view2 != null) {
                m1263g = m1263g();
                m1263g2 = m1263g();
                try {
                    m1259k(view2, m1263g);
                    C0141f c0141f2 = (C0141f) view.getLayoutParams();
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    m1258l(i, m1263g, m1263g2, c0141f2, measuredWidth, measuredHeight);
                    m1262h(c0141f2, m1263g2, measuredWidth, measuredHeight);
                    view.layout(m1263g2.left, m1263g2.top, m1263g2.right, m1263g2.bottom);
                    return;
                } finally {
                    m1263g.setEmpty();
                    c0929c.mo91b(m1263g);
                    m1263g2.setEmpty();
                    c0929c.mo91b(m1263g2);
                }
            }
            int i3 = c0141f.f609e;
            if (i3 >= 0) {
                C0141f c0141f3 = (C0141f) view.getLayoutParams();
                int i4 = c0141f3.f607c;
                if (i4 == 0) {
                    i4 = 8388661;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
                int i5 = absoluteGravity & 7;
                int i6 = absoluteGravity & 112;
                int width = getWidth();
                int height = getHeight();
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                if (i == 1) {
                    i3 = width - i3;
                }
                int m1257m = m1257m(i3) - measuredWidth2;
                if (i5 != 1) {
                    if (i5 == 5) {
                        m1257m += measuredWidth2;
                    }
                } else {
                    m1257m += measuredWidth2 / 2;
                }
                if (i6 != 16) {
                    if (i6 == 80) {
                        i2 = measuredHeight2 + 0;
                    }
                } else {
                    i2 = 0 + (measuredHeight2 / 2);
                }
                int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0141f3).leftMargin, Math.min(m1257m, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) c0141f3).rightMargin));
                int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0141f3).topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) c0141f3).bottomMargin));
                view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
                return;
            }
            C0141f c0141f4 = (C0141f) view.getLayoutParams();
            m1263g = m1263g();
            m1263g.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0141f4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0141f4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0141f4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0141f4).bottomMargin);
            if (this.f597n != null) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    m1263g.left = ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetLeft() + m1263g.left;
                    m1263g.top = ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetTop() + m1263g.top;
                    m1263g.right -= ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetRight();
                    m1263g.bottom -= ((WindowInsets) this.f597n.f2947a).getSystemWindowInsetBottom();
                }
            }
            m1263g2 = m1263g();
            int i7 = c0141f4.f607c;
            if ((i7 & 7) == 0) {
                i7 |= 8388611;
            }
            if ((i7 & 112) == 0) {
                i7 |= 48;
            }
            Gravity.apply(i7, view.getMeasuredWidth(), view.getMeasuredHeight(), m1263g, m1263g2, i);
            view.layout(m1263g2.left, m1263g2.top, m1263g2.right, m1263g2.bottom);
            return;
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    /* renamed from: r */
    public final void m1252r(View view, int i, int i2, int i3) {
        measureChildWithMargins(view, i, i2, i3, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0138c abstractC0138c = ((C0141f) view.getLayoutParams()).f605a;
        if (abstractC0138c != null && abstractC0138c.mo975l(this, view, rect, z)) {
            return true;
        }
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f590g) {
            return;
        }
        m1249u(false);
        this.f590g = true;
    }

    /* renamed from: s */
    public final boolean m1251s(MotionEvent motionEvent, int i) {
        boolean z;
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f587d;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            if (isChildrenDrawingOrderEnabled) {
                i2 = getChildDrawingOrder(childCount, i3);
            } else {
                i2 = i3;
            }
            arrayList.add(getChildAt(i2));
        }
        C0145i c0145i = f583w;
        if (c0145i != null) {
            Collections.sort(arrayList, c0145i);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            C0141f c0141f = (C0141f) view.getLayoutParams();
            AbstractC0138c abstractC0138c = c0141f.f605a;
            if ((z2 || z3) && actionMasked != 0) {
                if (abstractC0138c != null) {
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i != 0) {
                        if (i == 1) {
                            abstractC0138c.mo88r(this, view, motionEvent2);
                        }
                    } else {
                        abstractC0138c.mo89e(this, view, motionEvent2);
                    }
                }
            } else {
                if (!z2 && abstractC0138c != null) {
                    if (i != 0) {
                        if (i == 1) {
                            z2 = abstractC0138c.mo88r(this, view, motionEvent);
                        }
                    } else {
                        z2 = abstractC0138c.mo89e(this, view, motionEvent);
                    }
                    if (z2) {
                        this.f593j = view;
                    }
                }
                if (c0141f.f605a == null) {
                    c0141f.f617m = false;
                }
                boolean z4 = c0141f.f617m;
                if (z4) {
                    z = true;
                } else {
                    z = z4 | false;
                    c0141f.f617m = z;
                }
                if (z && !z4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z && !z3) {
                    break;
                }
            }
        }
        arrayList.clear();
        return z2;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m1246x();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f600q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        boolean z;
        Drawable drawable2 = this.f599p;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f599p = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f599p.setState(getDrawableState());
                }
                Drawable drawable4 = this.f599p;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                C0863a.m142b(drawable4, getLayoutDirection());
                Drawable drawable5 = this.f599p;
                if (getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                drawable5.setVisible(z, false);
                this.f599p.setCallback(this);
            }
            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            Context context = getContext();
            Object obj = C0819a.f2712a;
            drawable = context.getDrawable(i);
        } else {
            drawable = null;
        }
        setStatusBarBackground(drawable);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f599p;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f599p.setVisible(z, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
        if (r10 != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0119  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1250t() {
        Object obj;
        boolean z;
        boolean z2;
        AbstractC0138c abstractC0138c;
        ArrayList arrayList = this.f585b;
        arrayList.clear();
        C0696a c0696a = this.f586c;
        int i = ((C0666h) c0696a.f2440b).f2306c;
        int i2 = 0;
        while (true) {
            obj = c0696a.f2439a;
            if (i2 >= i) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) ((C0666h) c0696a.f2440b).m397j(i2);
            if (arrayList2 != null) {
                arrayList2.clear();
                ((C0928b) obj).mo91b(arrayList2);
            }
            i2++;
        }
        ((C0666h) c0696a.f2440b).clear();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0141f m1256n = m1256n(childAt);
            int i4 = m1256n.f610f;
            if (i4 == -1) {
                m1256n.f616l = null;
                m1256n.f615k = null;
            } else {
                View view = m1256n.f615k;
                if (view != null) {
                    if (view.getId() == i4) {
                        View view2 = m1256n.f615k;
                        for (ViewParent parent = view2.getParent(); parent != this; parent = parent.getParent()) {
                            if (parent == null || parent == childAt) {
                                m1256n.f616l = null;
                                m1256n.f615k = null;
                            } else {
                                if (parent instanceof View) {
                                    view2 = (View) parent;
                                }
                            }
                        }
                        m1256n.f616l = view2;
                        z = true;
                    }
                    z = false;
                    break;
                }
                View findViewById = findViewById(i4);
                m1256n.f615k = findViewById;
                if (findViewById != null) {
                    if (findViewById != this) {
                        for (ViewParent parent2 = findViewById.getParent(); parent2 != this && parent2 != null; parent2 = parent2.getParent()) {
                            if (parent2 != childAt) {
                                if (parent2 instanceof View) {
                                    findViewById = (View) parent2;
                                }
                            } else if (!isInEditMode()) {
                                throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                            }
                        }
                        m1256n.f616l = findViewById;
                    } else if (!isInEditMode()) {
                        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                    }
                } else if (!isInEditMode()) {
                    throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i4) + " to anchor view " + childAt);
                }
                m1256n.f616l = null;
                m1256n.f615k = null;
            }
            if (!((C0666h) c0696a.f2440b).containsKey(childAt)) {
                ((C0666h) c0696a.f2440b).put(childAt, null);
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (i5 != i3) {
                    View childAt2 = getChildAt(i5);
                    if (childAt2 != m1256n.f616l) {
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        int layoutDirection = getLayoutDirection();
                        int absoluteGravity = Gravity.getAbsoluteGravity(((C0141f) childAt2.getLayoutParams()).f611g, layoutDirection);
                        if (!(absoluteGravity != 0 && (Gravity.getAbsoluteGravity(m1256n.f612h, layoutDirection) & absoluteGravity) == absoluteGravity) && ((abstractC0138c = m1256n.f605a) == null || !abstractC0138c.mo912b(childAt, childAt2))) {
                            z2 = false;
                            if (z2) {
                                if (!((C0666h) c0696a.f2440b).containsKey(childAt2) && !((C0666h) c0696a.f2440b).containsKey(childAt2)) {
                                    ((C0666h) c0696a.f2440b).put(childAt2, null);
                                }
                                if (!((C0666h) c0696a.f2440b).containsKey(childAt2) || !((C0666h) c0696a.f2440b).containsKey(childAt)) {
                                    throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
                                }
                                ArrayList arrayList3 = (ArrayList) ((C0666h) c0696a.f2440b).getOrDefault(childAt2, null);
                                if (arrayList3 == null) {
                                    arrayList3 = (ArrayList) ((C0928b) obj).mo92a();
                                    if (arrayList3 == null) {
                                        arrayList3 = new ArrayList();
                                    }
                                    ((C0666h) c0696a.f2440b).put(childAt2, arrayList3);
                                }
                                arrayList3.add(childAt);
                            } else {
                                continue;
                            }
                        }
                    }
                    z2 = true;
                    if (z2) {
                    }
                }
            }
        }
        ((ArrayList) c0696a.f2441c).clear();
        ((HashSet) c0696a.f2442d).clear();
        int i6 = ((C0666h) c0696a.f2440b).f2306c;
        for (int i7 = 0; i7 < i6; i7++) {
            c0696a.m347a(((C0666h) c0696a.f2440b).m399h(i7), (ArrayList) c0696a.f2441c, (HashSet) c0696a.f2442d);
        }
        arrayList.addAll((ArrayList) c0696a.f2441c);
        Collections.reverse(arrayList);
    }

    /* renamed from: u */
    public final void m1249u(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0138c abstractC0138c = ((C0141f) childAt.getLayoutParams()).f605a;
            if (abstractC0138c != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    abstractC0138c.mo89e(this, childAt, obtain);
                } else {
                    abstractC0138c.mo88r(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0141f) getChildAt(i2).getLayoutParams()).f617m = false;
        }
        this.f593j = null;
        this.f590g = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f599p;
    }

    /* renamed from: x */
    public final void m1246x() {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        View$OnApplyWindowInsetsListenerC0953l view$OnApplyWindowInsetsListenerC0953l = null;
        if (getFitsSystemWindows()) {
            if (this.f601r == null) {
                this.f601r = new C0136a();
            }
            C0136a c0136a = this.f601r;
            if (c0136a != null) {
                view$OnApplyWindowInsetsListenerC0953l = new View$OnApplyWindowInsetsListenerC0953l(c0136a);
            }
            setOnApplyWindowInsetsListener(view$OnApplyWindowInsetsListenerC0953l);
            setSystemUiVisibility(1280);
            return;
        }
        setOnApplyWindowInsetsListener(null);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0141f ? new C0141f((C0141f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0141f((ViewGroup.MarginLayoutParams) layoutParams) : new C0141f(layoutParams);
    }
}
