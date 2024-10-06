package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.recyclerview.widget.C0189a;
import androidx.recyclerview.widget.C0191b;
import androidx.recyclerview.widget.C0194c;
import androidx.recyclerview.widget.C0248q;
import androidx.recyclerview.widget.C0251r;
import androidx.recyclerview.widget.RunnableC0202e;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p009c0.AbstractC0317a;
import p039k.C0658e;
import p046m1.C0736h;
import p065u.C0876a;
import p076y.C0947f;
import p076y.C0954m;
import p076y.C0957n;
import p076y.C0960q;
import p076y.InterfaceC0945d;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes.dex */
public class C0212k extends ViewGroup implements InterfaceC0945d {

    /* renamed from: j0 */
    public static final int[] f823j0 = {16843830};

    /* renamed from: k0 */
    public static final int[] f824k0 = {16842987};

    /* renamed from: l0 */
    public static final boolean f825l0 = true;

    /* renamed from: m0 */
    public static final Class<?>[] f826m0;

    /* renamed from: n0 */
    public static final animationInterpolatorC0214b f827n0;

    /* renamed from: A */
    public C0218f f828A;

    /* renamed from: B */
    public EdgeEffect f829B;

    /* renamed from: C */
    public EdgeEffect f830C;

    /* renamed from: D */
    public EdgeEffect f831D;

    /* renamed from: E */
    public EdgeEffect f832E;

    /* renamed from: F */
    public AbstractC0219g f833F;

    /* renamed from: G */
    public int f834G;

    /* renamed from: H */
    public int f835H;

    /* renamed from: I */
    public VelocityTracker f836I;

    /* renamed from: J */
    public int f837J;

    /* renamed from: K */
    public int f838K;

    /* renamed from: L */
    public int f839L;

    /* renamed from: M */
    public int f840M;

    /* renamed from: N */
    public int f841N;

    /* renamed from: O */
    public final int f842O;

    /* renamed from: P */
    public final int f843P;

    /* renamed from: Q */
    public final float f844Q;

    /* renamed from: R */
    public final float f845R;

    /* renamed from: S */
    public boolean f846S;

    /* renamed from: T */
    public final RunnableC0240u f847T;

    /* renamed from: U */
    public RunnableC0202e f848U;

    /* renamed from: V */
    public final RunnableC0202e.C0204b f849V;

    /* renamed from: W */
    public final C0238s f850W;

    /* renamed from: a0 */
    public ArrayList f851a0;

    /* renamed from: b */
    public final C0234p f852b;

    /* renamed from: b0 */
    public final C0222h f853b0;

    /* renamed from: c */
    public C0236r f854c;

    /* renamed from: c0 */
    public C0244n f855c0;

    /* renamed from: d */
    public C0189a f856d;

    /* renamed from: d0 */
    public C0947f f857d0;

    /* renamed from: e */
    public C0191b f858e;

    /* renamed from: e0 */
    public final int[] f859e0;

    /* renamed from: f */
    public final C0251r f860f;

    /* renamed from: f0 */
    public final int[] f861f0;

    /* renamed from: g */
    public boolean f862g;

    /* renamed from: g0 */
    public final int[] f863g0;

    /* renamed from: h */
    public final Rect f864h;

    /* renamed from: h0 */
    public final ArrayList f865h0;

    /* renamed from: i */
    public final Rect f866i;

    /* renamed from: i0 */
    public final RunnableC0213a f867i0;

    /* renamed from: j */
    public AbstractC0224j f868j;

    /* renamed from: k */
    public final ArrayList<AbstractC0223i> f869k;

    /* renamed from: l */
    public final ArrayList<InterfaceC0230m> f870l;

    /* renamed from: m */
    public InterfaceC0230m f871m;

    /* renamed from: n */
    public boolean f872n;

    /* renamed from: o */
    public boolean f873o;

    /* renamed from: p */
    public boolean f874p;

    /* renamed from: q */
    public int f875q;

    /* renamed from: r */
    public boolean f876r;

    /* renamed from: s */
    public boolean f877s;

    /* renamed from: t */
    public boolean f878t;

    /* renamed from: u */
    public int f879u;

    /* renamed from: v */
    public final AccessibilityManager f880v;

    /* renamed from: w */
    public boolean f881w;

    /* renamed from: x */
    public boolean f882x;

    /* renamed from: y */
    public int f883y;

    /* renamed from: z */
    public int f884z;

    /* renamed from: androidx.recyclerview.widget.k$a */
    /* loaded from: classes.dex */
    public class RunnableC0213a implements Runnable {
        public RunnableC0213a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long j;
            AbstractC0219g abstractC0219g = C0212k.this.f833F;
            if (abstractC0219g != null) {
                C0194c c0194c = (C0194c) abstractC0219g;
                ArrayList<AbstractC0241v> arrayList = c0194c.f764e;
                boolean z = !arrayList.isEmpty();
                ArrayList<C0194c.C0196b> arrayList2 = c0194c.f766g;
                boolean z2 = !arrayList2.isEmpty();
                ArrayList<C0194c.C0195a> arrayList3 = c0194c.f767h;
                boolean z3 = !arrayList3.isEmpty();
                ArrayList<AbstractC0241v> arrayList4 = c0194c.f765f;
                boolean z4 = !arrayList4.isEmpty();
                if (z || z2 || z4 || z3) {
                    Iterator<AbstractC0241v> it = arrayList.iterator();
                    if (!it.hasNext()) {
                        arrayList.clear();
                        if (z2) {
                            ArrayList<C0194c.C0196b> arrayList5 = new ArrayList<>();
                            arrayList5.addAll(arrayList2);
                            ArrayList<ArrayList<C0194c.C0196b>> arrayList6 = c0194c.f769j;
                            arrayList6.add(arrayList5);
                            arrayList2.clear();
                            if (!z) {
                                Iterator<C0194c.C0196b> it2 = arrayList5.iterator();
                                if (!it2.hasNext()) {
                                    arrayList5.clear();
                                    arrayList6.remove(arrayList5);
                                } else {
                                    it2.next().getClass();
                                    throw null;
                                }
                            } else {
                                arrayList5.get(0).getClass();
                                throw null;
                            }
                        }
                        if (z3) {
                            ArrayList<C0194c.C0195a> arrayList7 = new ArrayList<>();
                            arrayList7.addAll(arrayList3);
                            ArrayList<ArrayList<C0194c.C0195a>> arrayList8 = c0194c.f770k;
                            arrayList8.add(arrayList7);
                            arrayList3.clear();
                            if (!z) {
                                Iterator<C0194c.C0195a> it3 = arrayList7.iterator();
                                while (it3.hasNext()) {
                                    AbstractC0241v abstractC0241v = it3.next().f775a;
                                }
                                arrayList7.clear();
                                arrayList8.remove(arrayList7);
                            } else {
                                arrayList7.get(0).f775a.getClass();
                                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                                throw null;
                            }
                        }
                        if (z4) {
                            ArrayList<AbstractC0241v> arrayList9 = new ArrayList<>();
                            arrayList9.addAll(arrayList4);
                            ArrayList<ArrayList<AbstractC0241v>> arrayList10 = c0194c.f768i;
                            arrayList10.add(arrayList9);
                            arrayList4.clear();
                            if (!z && !z2 && !z3) {
                                Iterator<AbstractC0241v> it4 = arrayList9.iterator();
                                if (!it4.hasNext()) {
                                    arrayList9.clear();
                                    arrayList10.remove(arrayList9);
                                    return;
                                }
                                it4.next().getClass();
                                throw null;
                            }
                            long j2 = 0;
                            if (z2) {
                                j = c0194c.f888c;
                            } else {
                                j = 0;
                            }
                            if (z3) {
                                j2 = c0194c.f889d;
                            }
                            Math.max(j, j2);
                            arrayList9.get(0).getClass();
                            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                            throw null;
                        }
                        return;
                    }
                    it.next().getClass();
                    throw null;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$b  reason: invalid class name */
    /* loaded from: classes.dex */
    public static class animationInterpolatorC0214b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$c */
    /* loaded from: classes.dex */
    public class C0215c {
        public C0215c(C0212k c0212k) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$d */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0216d<VH extends AbstractC0241v> {
    }

    /* renamed from: androidx.recyclerview.widget.k$e */
    /* loaded from: classes.dex */
    public interface InterfaceC0217e {
    }

    /* renamed from: androidx.recyclerview.widget.k$f */
    /* loaded from: classes.dex */
    public static class C0218f {
    }

    /* renamed from: androidx.recyclerview.widget.k$g */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0219g {

        /* renamed from: a */
        public InterfaceC0221b f886a = null;

        /* renamed from: b */
        public final ArrayList<InterfaceC0220a> f887b = new ArrayList<>();

        /* renamed from: c */
        public final long f888c = 250;

        /* renamed from: d */
        public final long f889d = 250;

        /* renamed from: androidx.recyclerview.widget.k$g$a */
        /* loaded from: classes.dex */
        public interface InterfaceC0220a {
            /* renamed from: a */
            void m1117a();
        }

        /* renamed from: androidx.recyclerview.widget.k$g$b */
        /* loaded from: classes.dex */
        public interface InterfaceC0221b {
        }

        /* renamed from: a */
        public final void m1120a(AbstractC0241v abstractC0241v) {
            boolean z;
            InterfaceC0221b interfaceC0221b = this.f886a;
            if (interfaceC0221b != null) {
                C0222h c0222h = (C0222h) interfaceC0221b;
                boolean z2 = true;
                abstractC0241v.m1060h(true);
                if (abstractC0241v.f937e != null) {
                    abstractC0241v.f937e = null;
                }
                if ((abstractC0241v.f938f & 16) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    C0212k c0212k = C0212k.this;
                    c0212k.m1122w();
                    C0191b c0191b = c0212k.f858e;
                    C0242l c0242l = (C0242l) c0191b.f759a;
                    int indexOfChild = c0242l.f944a.indexOfChild(null);
                    if (indexOfChild == -1) {
                        c0191b.m1164f(null);
                    } else {
                        C0191b.C0192a c0192a = c0191b.f760b;
                        if (c0192a.m1161c(indexOfChild)) {
                            c0192a.m1160d(indexOfChild);
                            c0191b.m1164f(null);
                            c0242l.m1058b(indexOfChild);
                        } else {
                            z2 = false;
                        }
                    }
                    if (!z2) {
                        c0212k.m1121x(!z2);
                        if (!z2 && abstractC0241v.m1061g()) {
                            c0212k.removeDetachedView(null, false);
                            return;
                        }
                        return;
                    }
                    C0212k.m1132m(null);
                    c0212k.f852b.m1071f(null);
                    throw null;
                }
            }
        }

        /* renamed from: b */
        public abstract void mo1119b();

        /* renamed from: c */
        public abstract boolean mo1118c();
    }

    /* renamed from: androidx.recyclerview.widget.k$h */
    /* loaded from: classes.dex */
    public class C0222h implements AbstractC0219g.InterfaceC0221b {
        public C0222h() {
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$i */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0223i {
        /* renamed from: d */
        public void mo1116d(Canvas canvas) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$j */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0224j {

        /* renamed from: a */
        public C0191b f891a;

        /* renamed from: b */
        public C0212k f892b;

        /* renamed from: c */
        public final C0248q f893c;

        /* renamed from: d */
        public final C0248q f894d;

        /* renamed from: e */
        public boolean f895e;

        /* renamed from: f */
        public int f896f;

        /* renamed from: g */
        public int f897g;

        /* renamed from: androidx.recyclerview.widget.k$j$a */
        /* loaded from: classes.dex */
        public class C0225a implements C0248q.InterfaceC0250b {
            public C0225a() {
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: a */
            public final View mo1053a(int i) {
                return AbstractC0224j.this.m1091o(i);
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: b */
            public final int mo1052b() {
                AbstractC0224j abstractC0224j = AbstractC0224j.this;
                return abstractC0224j.f896f - abstractC0224j.m1085u();
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: c */
            public final int mo1051c() {
                return AbstractC0224j.this.m1086t();
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: d */
            public final int mo1050d(View view) {
                AbstractC0224j.this.getClass();
                return view.getRight() + ((C0228k) view.getLayoutParams()).f904a.right + ((ViewGroup.MarginLayoutParams) ((C0228k) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: e */
            public final int mo1049e(View view) {
                AbstractC0224j.this.getClass();
                return (view.getLeft() - ((C0228k) view.getLayoutParams()).f904a.left) - ((ViewGroup.MarginLayoutParams) ((C0228k) view.getLayoutParams())).leftMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.k$j$b */
        /* loaded from: classes.dex */
        public class C0226b implements C0248q.InterfaceC0250b {
            public C0226b() {
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: a */
            public final View mo1053a(int i) {
                return AbstractC0224j.this.m1091o(i);
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: b */
            public final int mo1052b() {
                AbstractC0224j abstractC0224j = AbstractC0224j.this;
                return abstractC0224j.f897g - abstractC0224j.m1087s();
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: c */
            public final int mo1051c() {
                return AbstractC0224j.this.m1084v();
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: d */
            public final int mo1050d(View view) {
                AbstractC0224j.this.getClass();
                return view.getBottom() + ((C0228k) view.getLayoutParams()).f904a.bottom + ((ViewGroup.MarginLayoutParams) ((C0228k) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.C0248q.InterfaceC0250b
            /* renamed from: e */
            public final int mo1049e(View view) {
                AbstractC0224j.this.getClass();
                return (view.getTop() - ((C0228k) view.getLayoutParams()).f904a.top) - ((ViewGroup.MarginLayoutParams) ((C0228k) view.getLayoutParams())).topMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.k$j$c */
        /* loaded from: classes.dex */
        public static class C0227c {

            /* renamed from: a */
            public int f900a;

            /* renamed from: b */
            public int f901b;

            /* renamed from: c */
            public boolean f902c;

            /* renamed from: d */
            public boolean f903d;
        }

        public AbstractC0224j() {
            C0225a c0225a = new C0225a();
            C0226b c0226b = new C0226b();
            this.f893c = new C0248q(c0225a);
            this.f894d = new C0248q(c0226b);
            this.f895e = false;
        }

        /* renamed from: e */
        public static int m1101e(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* renamed from: r */
        public static void m1088r(View view, Rect rect) {
            int[] iArr = C0212k.f823j0;
            C0228k c0228k = (C0228k) view.getLayoutParams();
            Rect rect2 = c0228k.f904a;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0228k).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0228k).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0228k).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0228k).bottomMargin);
        }

        /* renamed from: w */
        public static void m1083w(View view) {
            ((C0228k) view.getLayoutParams()).getClass();
            throw null;
        }

        /* renamed from: x */
        public static C0227c m1082x(Context context, AttributeSet attributeSet, int i, int i2) {
            C0227c c0227c = new C0227c();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2538K, i, i2);
            c0227c.f900a = obtainStyledAttributes.getInt(0, 1);
            c0227c.f901b = obtainStyledAttributes.getInt(9, 1);
            c0227c.f902c = obtainStyledAttributes.getBoolean(8, false);
            c0227c.f903d = obtainStyledAttributes.getBoolean(10, false);
            obtainStyledAttributes.recycle();
            return c0227c;
        }

        /* renamed from: A */
        public void mo1115A(C0212k c0212k) {
        }

        /* renamed from: B */
        public void mo1114B(AccessibilityEvent accessibilityEvent) {
            C0212k c0212k = this.f892b;
            C0234p c0234p = c0212k.f852b;
            C0238s c0238s = c0212k.f850W;
            if (c0212k != null && accessibilityEvent != null) {
                boolean z = true;
                if (!c0212k.canScrollVertically(1) && !this.f892b.canScrollVertically(-1) && !this.f892b.canScrollHorizontally(-1) && !this.f892b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                this.f892b.getClass();
            }
        }

        /* renamed from: C */
        public void mo1113C(Parcelable parcelable) {
        }

        /* renamed from: D */
        public Parcelable mo1112D() {
            return null;
        }

        /* renamed from: E */
        public void mo1111E(int i) {
        }

        /* renamed from: F */
        public final void m1110F(C0234p c0234p) {
            int m1090p = m1090p() - 1;
            if (m1090p < 0) {
                return;
            }
            C0212k.m1132m(m1091o(m1090p));
            throw null;
        }

        /* renamed from: G */
        public final void m1109G(C0234p c0234p) {
            int size = c0234p.f911a.size();
            int i = size - 1;
            ArrayList<AbstractC0241v> arrayList = c0234p.f911a;
            if (i < 0) {
                arrayList.clear();
                ArrayList<AbstractC0241v> arrayList2 = c0234p.f912b;
                if (arrayList2 != null) {
                    arrayList2.clear();
                }
                if (size > 0) {
                    this.f892b.invalidate();
                    return;
                }
                return;
            }
            arrayList.get(i).getClass();
            C0212k.m1132m(null);
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
            if (r10 == false) goto L20;
         */
        /* renamed from: H */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean m1108H(C0212k c0212k, View view, Rect rect, boolean z, boolean z2) {
            boolean z3;
            int m1086t = m1086t();
            int m1084v = m1084v();
            int m1085u = this.f896f - m1085u();
            int m1087s = this.f897g - m1087s();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i = left - m1086t;
            int min = Math.min(0, i);
            int i2 = top - m1084v;
            int min2 = Math.min(0, i2);
            int i3 = width - m1085u;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height - m1087s);
            C0212k c0212k2 = this.f892b;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (c0212k2.getLayoutDirection() == 1) {
                if (max == 0) {
                    max = Math.max(min, i3);
                }
            } else {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            if (z2) {
                View focusedChild = c0212k.getFocusedChild();
                if (focusedChild != null) {
                    int m1086t2 = m1086t();
                    int m1084v2 = m1084v();
                    int m1085u2 = this.f896f - m1085u();
                    int m1087s2 = this.f897g - m1087s();
                    Rect rect2 = this.f892b.f864h;
                    m1088r(focusedChild, rect2);
                    if (rect2.left - max < m1085u2 && rect2.right - max > m1086t2 && rect2.top - min2 < m1087s2 && rect2.bottom - min2 > m1084v2) {
                        z3 = true;
                    }
                }
                z3 = false;
            }
            if (max != 0 || min2 != 0) {
                if (z) {
                    c0212k.scrollBy(max, min2);
                } else {
                    c0212k.m1123v(max, min2);
                }
                return true;
            }
            return false;
        }

        /* renamed from: I */
        public final void m1107I() {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                c0212k.requestLayout();
            }
        }

        /* renamed from: J */
        public final void m1106J(C0212k c0212k) {
            int height;
            if (c0212k == null) {
                this.f892b = null;
                this.f891a = null;
                height = 0;
                this.f896f = 0;
            } else {
                this.f892b = c0212k;
                this.f891a = c0212k.f858e;
                this.f896f = c0212k.getWidth();
                height = c0212k.getHeight();
            }
            this.f897g = height;
        }

        /* renamed from: a */
        public void mo1105a(String str) {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                c0212k.m1141b(str);
            }
        }

        /* renamed from: b */
        public boolean mo1104b() {
            return false;
        }

        /* renamed from: c */
        public boolean mo1103c() {
            return false;
        }

        /* renamed from: d */
        public boolean mo1102d(C0228k c0228k) {
            return c0228k != null;
        }

        /* renamed from: f */
        public int mo1100f(C0238s c0238s) {
            return 0;
        }

        /* renamed from: g */
        public void mo1099g(C0238s c0238s) {
        }

        /* renamed from: h */
        public int mo1098h(C0238s c0238s) {
            return 0;
        }

        /* renamed from: i */
        public int mo1097i(C0238s c0238s) {
            return 0;
        }

        /* renamed from: j */
        public void mo1096j(C0238s c0238s) {
        }

        /* renamed from: k */
        public int mo1095k(C0238s c0238s) {
            return 0;
        }

        /* renamed from: l */
        public abstract C0228k mo1094l();

        /* renamed from: m */
        public C0228k mo1093m(Context context, AttributeSet attributeSet) {
            return new C0228k(context, attributeSet);
        }

        /* renamed from: n */
        public C0228k mo1092n(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0228k ? new C0228k((C0228k) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0228k((ViewGroup.MarginLayoutParams) layoutParams) : new C0228k(layoutParams);
        }

        /* renamed from: o */
        public final View m1091o(int i) {
            C0191b c0191b = this.f891a;
            if (c0191b != null) {
                return c0191b.m1169a(i);
            }
            return null;
        }

        /* renamed from: p */
        public final int m1090p() {
            C0191b c0191b = this.f891a;
            if (c0191b != null) {
                return c0191b.m1168b();
            }
            return 0;
        }

        /* renamed from: q */
        public int mo1089q(C0234p c0234p, C0238s c0238s) {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                c0212k.getClass();
                return 1;
            }
            return 1;
        }

        /* renamed from: s */
        public final int m1087s() {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                return c0212k.getPaddingBottom();
            }
            return 0;
        }

        /* renamed from: t */
        public final int m1086t() {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                return c0212k.getPaddingLeft();
            }
            return 0;
        }

        /* renamed from: u */
        public final int m1085u() {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                return c0212k.getPaddingRight();
            }
            return 0;
        }

        /* renamed from: v */
        public final int m1084v() {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                return c0212k.getPaddingTop();
            }
            return 0;
        }

        /* renamed from: y */
        public int mo1081y(C0234p c0234p, C0238s c0238s) {
            C0212k c0212k = this.f892b;
            if (c0212k != null) {
                c0212k.getClass();
                return 1;
            }
            return 1;
        }

        /* renamed from: z */
        public boolean mo1080z() {
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$k */
    /* loaded from: classes.dex */
    public static class C0228k extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public final Rect f904a;

        /* renamed from: b */
        public boolean f905b;

        public C0228k(int i, int i2) {
            super(i, i2);
            this.f904a = new Rect();
            this.f905b = true;
        }

        public C0228k(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f904a = new Rect();
            this.f905b = true;
        }

        public C0228k(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f904a = new Rect();
            this.f905b = true;
        }

        public C0228k(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f904a = new Rect();
            this.f905b = true;
        }

        public C0228k(C0228k c0228k) {
            super((ViewGroup.LayoutParams) c0228k);
            this.f904a = new Rect();
            this.f905b = true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$l */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0229l {
    }

    /* renamed from: androidx.recyclerview.widget.k$m */
    /* loaded from: classes.dex */
    public interface InterfaceC0230m {
        /* renamed from: a */
        boolean mo1079a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo1078b();

        /* renamed from: c */
        void mo1077c(MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.k$n */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0231n {
    }

    /* renamed from: androidx.recyclerview.widget.k$o */
    /* loaded from: classes.dex */
    public static class C0232o {

        /* renamed from: a */
        public final SparseArray<C0233a> f906a = new SparseArray<>();

        /* renamed from: b */
        public int f907b = 0;

        /* renamed from: androidx.recyclerview.widget.k$o$a */
        /* loaded from: classes.dex */
        public static class C0233a {

            /* renamed from: a */
            public final ArrayList<AbstractC0241v> f908a = new ArrayList<>();

            /* renamed from: b */
            public final int f909b = 5;

            /* renamed from: c */
            public long f910c = 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$p */
    /* loaded from: classes.dex */
    public final class C0234p {

        /* renamed from: a */
        public final ArrayList<AbstractC0241v> f911a;

        /* renamed from: b */
        public ArrayList<AbstractC0241v> f912b;

        /* renamed from: c */
        public final ArrayList<AbstractC0241v> f913c;

        /* renamed from: d */
        public int f914d;

        /* renamed from: e */
        public int f915e;

        /* renamed from: f */
        public C0232o f916f;

        public C0234p() {
            ArrayList<AbstractC0241v> arrayList = new ArrayList<>();
            this.f911a = arrayList;
            this.f912b = null;
            this.f913c = new ArrayList<>();
            Collections.unmodifiableList(arrayList);
            this.f914d = 2;
            this.f915e = 2;
        }

        /* renamed from: d */
        public static void m1073d(AbstractC0241v abstractC0241v) {
            if (!abstractC0241v.m1062f()) {
                throw null;
            }
            throw null;
        }

        /* renamed from: a */
        public final int m1076a(int i) {
            C0212k c0212k = C0212k.this;
            if (i >= 0 && i < c0212k.f850W.m1069a()) {
                if (!c0212k.f850W.f922d) {
                    return i;
                }
                return c0212k.f856d.m1172a(i, 0);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + c0212k.f850W.m1069a() + c0212k.m1135j());
        }

        /* renamed from: b */
        public final void m1075b() {
            ArrayList<AbstractC0241v> arrayList = this.f913c;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                m1074c(size);
            }
            arrayList.clear();
            if (C0212k.f825l0) {
                RunnableC0202e.C0204b c0204b = C0212k.this.f849V;
                c0204b.getClass();
                c0204b.f814c = 0;
            }
        }

        /* renamed from: c */
        public final void m1074c(int i) {
            boolean z;
            ArrayList<AbstractC0241v> arrayList = this.f913c;
            AbstractC0241v abstractC0241v = arrayList.get(i);
            abstractC0241v.getClass();
            int i2 = abstractC0241v.f938f;
            if ((i2 & 16384) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                abstractC0241v.f938f = (i2 & (-16385)) | 0;
                C0954m.m30f(null, null);
            }
            C0212k c0212k = C0212k.this;
            c0212k.getClass();
            if (c0212k.f850W != null) {
                C0251r c0251r = c0212k.f860f;
                C0658e<AbstractC0241v> c0658e = c0251r.f955b;
                if (c0658e.f2276a) {
                    c0658e.m425d();
                }
                int i3 = c0658e.f2279d - 1;
                while (true) {
                    if (i3 < 0) {
                        break;
                    } else if (abstractC0241v == c0658e.m422g(i3)) {
                        Object[] objArr = c0658e.f2278c;
                        Object obj = objArr[i3];
                        Object obj2 = C0658e.f2275e;
                        if (obj != obj2) {
                            objArr[i3] = obj2;
                            c0658e.f2276a = true;
                        }
                    } else {
                        i3--;
                    }
                }
                C0251r.C0252a remove = c0251r.f954a.remove(abstractC0241v);
                if (remove != null) {
                    C0251r.C0252a.f956a.mo91b(remove);
                }
            }
            abstractC0241v.f943k = null;
            if (this.f916f == null) {
                this.f916f = new C0232o();
            }
            C0232o c0232o = this.f916f;
            c0232o.getClass();
            SparseArray<C0232o.C0233a> sparseArray = c0232o.f906a;
            C0232o.C0233a c0233a = sparseArray.get(0);
            if (c0233a == null) {
                c0233a = new C0232o.C0233a();
                sparseArray.put(0, c0233a);
            }
            ArrayList<AbstractC0241v> arrayList2 = c0233a.f908a;
            if (sparseArray.get(0).f909b > arrayList2.size()) {
                abstractC0241v.f938f = 0;
                abstractC0241v.f933a = -1;
                abstractC0241v.f934b = -1;
                abstractC0241v.f935c = -1L;
                abstractC0241v.f936d = -1;
                abstractC0241v.f940h = 0;
                abstractC0241v.f937e = null;
                ArrayList arrayList3 = abstractC0241v.f939g;
                if (arrayList3 != null) {
                    arrayList3.clear();
                }
                abstractC0241v.f938f &= -1025;
                abstractC0241v.getClass();
                abstractC0241v.getClass();
                int[] iArr = C0212k.f823j0;
                arrayList2.add(abstractC0241v);
            }
            arrayList.remove(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:139:0x01c6, code lost:
            if (r10.m1064d() == false) goto L127;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x01ff, code lost:
            if (r7 == false) goto L127;
         */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0154  */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void m1072e(int i, long j) {
            AbstractC0241v abstractC0241v;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            ArrayList arrayList;
            C0212k c0212k;
            boolean z6;
            int size;
            boolean z7;
            C0212k c0212k2 = C0212k.this;
            if (i >= 0 && i < c0212k2.f850W.m1069a()) {
                C0238s c0238s = c0212k2.f850W;
                boolean z8 = true;
                if (c0238s.f922d) {
                    ArrayList<AbstractC0241v> arrayList2 = this.f912b;
                    if (arrayList2 != null && (size = arrayList2.size()) != 0) {
                        for (int i2 = 0; i2 < size; i2++) {
                            abstractC0241v = this.f912b.get(i2);
                            if ((abstractC0241v.f938f & 32) != 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (!z7 && abstractC0241v.m1065c() == i) {
                                abstractC0241v.m1066b(32);
                            }
                        }
                        throw null;
                    }
                    abstractC0241v = null;
                    if (abstractC0241v != null) {
                        z = true;
                        if (abstractC0241v == null) {
                            ArrayList<AbstractC0241v> arrayList3 = this.f911a;
                            int size2 = arrayList3.size();
                            for (int i3 = 0; i3 < size2; i3++) {
                                AbstractC0241v abstractC0241v2 = arrayList3.get(i3);
                                if ((abstractC0241v2.f938f & 32) != 0) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                if (!z6 && abstractC0241v2.m1065c() == i && !abstractC0241v2.m1064d() && (c0238s.f922d || !abstractC0241v2.m1063e())) {
                                    abstractC0241v2.m1066b(32);
                                    abstractC0241v = abstractC0241v2;
                                    break;
                                }
                            }
                            C0191b c0191b = c0212k2.f858e;
                            ArrayList arrayList4 = c0191b.f761c;
                            if (arrayList4.size() <= 0) {
                                ArrayList<AbstractC0241v> arrayList5 = this.f913c;
                                int size3 = arrayList5.size();
                                int i4 = 0;
                                while (true) {
                                    if (i4 < size3) {
                                        AbstractC0241v abstractC0241v3 = arrayList5.get(i4);
                                        if (!abstractC0241v3.m1064d() && abstractC0241v3.m1065c() == i) {
                                            arrayList5.remove(i4);
                                            abstractC0241v = abstractC0241v3;
                                            break;
                                        }
                                        i4++;
                                    } else {
                                        abstractC0241v = null;
                                        break;
                                    }
                                }
                                if (abstractC0241v != null) {
                                    if (abstractC0241v.m1063e()) {
                                        if (!c0238s.f922d) {
                                            abstractC0241v.m1066b(4);
                                            if (!abstractC0241v.m1062f()) {
                                                int i5 = abstractC0241v.f938f;
                                                if ((i5 & 32) == 0) {
                                                    z8 = false;
                                                }
                                                if (z8) {
                                                    abstractC0241v.f938f = i5 & (-33);
                                                }
                                            } else {
                                                c0212k2.removeDetachedView(null, false);
                                                abstractC0241v.f941i.m1071f(abstractC0241v);
                                            }
                                            m1073d(abstractC0241v);
                                            throw null;
                                        }
                                        z = true;
                                    } else if (abstractC0241v.f933a >= 0) {
                                        throw null;
                                    } else {
                                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0241v + c0212k2.m1135j());
                                    }
                                }
                            } else {
                                ((C0242l) c0191b.f759a).getClass();
                                C0212k.m1132m((View) arrayList4.get(0));
                                throw null;
                            }
                        }
                        if (abstractC0241v != null) {
                            int m1172a = c0212k2.f856d.m1172a(i, 0);
                            if (m1172a >= 0) {
                                throw null;
                            }
                            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + m1172a + ").state:" + c0238s.m1069a() + c0212k2.m1135j());
                        }
                        if (z && !c0238s.f922d) {
                            int i6 = abstractC0241v.f938f;
                            if ((8192 & i6) != 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                int i7 = (i6 & (-8193)) | 0;
                                abstractC0241v.f938f = i7;
                                if (c0238s.f923e) {
                                    int i8 = i7 & 14;
                                    if (!abstractC0241v.m1064d() && (i8 & 4) == 0 && (c0212k = abstractC0241v.f943k) != null) {
                                        c0212k.m1133l(abstractC0241v);
                                    }
                                    AbstractC0219g abstractC0219g = c0212k2.f833F;
                                    if ((abstractC0241v.f938f & 1024) != 0 || (arrayList = abstractC0241v.f939g) == null || arrayList.size() == 0) {
                                        int i9 = AbstractC0241v.f932l;
                                    }
                                    abstractC0219g.getClass();
                                    throw null;
                                }
                            }
                        }
                        if (c0238s.f922d) {
                            if ((abstractC0241v.f938f & 1) != 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                abstractC0241v.f936d = i;
                                throw null;
                            }
                        }
                        int i10 = abstractC0241v.f938f;
                        if ((i10 & 1) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if ((i10 & 2) != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (!z3) {
                            }
                        }
                        c0212k2.f856d.m1172a(i, 0);
                        abstractC0241v.f943k = c0212k2;
                        long nanoTime = c0212k2.getNanoTime();
                        if (j != Long.MAX_VALUE) {
                            SparseArray<C0232o.C0233a> sparseArray = this.f916f.f906a;
                            C0232o.C0233a c0233a = sparseArray.get(0);
                            if (c0233a == null) {
                                c0233a = new C0232o.C0233a();
                                sparseArray.put(0, c0233a);
                            }
                            long j2 = c0233a.f910c;
                            if (j2 != 0 && nanoTime + j2 >= j) {
                                z8 = false;
                            }
                        }
                        throw null;
                    }
                } else {
                    abstractC0241v = null;
                }
                z = false;
                if (abstractC0241v == null) {
                }
                if (abstractC0241v != null) {
                }
            } else {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + c0212k2.f850W.m1069a() + c0212k2.m1135j());
            }
        }

        /* renamed from: f */
        public final void m1071f(AbstractC0241v abstractC0241v) {
            ArrayList<AbstractC0241v> arrayList;
            if (abstractC0241v.f942j) {
                arrayList = this.f912b;
            } else {
                arrayList = this.f911a;
            }
            arrayList.remove(abstractC0241v);
            abstractC0241v.f941i = null;
            abstractC0241v.f942j = false;
            abstractC0241v.f938f &= -33;
        }

        /* renamed from: g */
        public final void m1070g() {
            AbstractC0224j abstractC0224j = C0212k.this.f868j;
            this.f915e = this.f914d + 0;
            ArrayList<AbstractC0241v> arrayList = this.f913c;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0 || arrayList.size() <= this.f915e) {
                    return;
                }
                m1074c(size);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$q */
    /* loaded from: classes.dex */
    public interface InterfaceC0235q {
    }

    /* renamed from: androidx.recyclerview.widget.k$r */
    /* loaded from: classes.dex */
    public static class C0236r extends AbstractC0317a {
        public static final Parcelable.Creator<C0236r> CREATOR = new C0237a();

        /* renamed from: c */
        public Parcelable f918c;

        /* renamed from: androidx.recyclerview.widget.k$r$a */
        /* loaded from: classes.dex */
        public static class C0237a implements Parcelable.ClassLoaderCreator<C0236r> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0236r(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0236r[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0236r createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0236r(parcel, classLoader);
            }
        }

        public C0236r(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f918c = parcel.readParcelable(classLoader == null ? AbstractC0224j.class.getClassLoader() : classLoader);
        }

        public C0236r(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            parcel.writeParcelable(this.f918c, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$s */
    /* loaded from: classes.dex */
    public static class C0238s {

        /* renamed from: a */
        public int f919a = 0;

        /* renamed from: b */
        public int f920b = 0;

        /* renamed from: c */
        public boolean f921c = false;

        /* renamed from: d */
        public boolean f922d = false;

        /* renamed from: e */
        public boolean f923e = false;

        /* renamed from: f */
        public boolean f924f = false;

        /* renamed from: a */
        public final int m1069a() {
            if (this.f922d) {
                return this.f919a - this.f920b;
            }
            return 0;
        }

        public final String toString() {
            return "State{mTargetPosition=-1, mData=null, mItemCount=0, mIsMeasuring=false, mPreviousLayoutItemCount=" + this.f919a + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f920b + ", mStructureChanged=" + this.f921c + ", mInPreLayout=" + this.f922d + ", mRunSimpleAnimations=" + this.f923e + ", mRunPredictiveAnimations=" + this.f924f + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$t */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0239t {
    }

    /* renamed from: androidx.recyclerview.widget.k$u */
    /* loaded from: classes.dex */
    public class RunnableC0240u implements Runnable {

        /* renamed from: b */
        public int f925b;

        /* renamed from: c */
        public int f926c;

        /* renamed from: d */
        public OverScroller f927d;

        /* renamed from: e */
        public Interpolator f928e;

        /* renamed from: f */
        public boolean f929f;

        /* renamed from: g */
        public boolean f930g;

        public RunnableC0240u() {
            animationInterpolatorC0214b animationinterpolatorc0214b = C0212k.f827n0;
            this.f928e = animationinterpolatorc0214b;
            this.f929f = false;
            this.f930g = false;
            this.f927d = new OverScroller(C0212k.this.getContext(), animationinterpolatorc0214b);
        }

        /* renamed from: a */
        public final void m1068a() {
            if (this.f929f) {
                this.f930g = true;
                return;
            }
            C0212k c0212k = C0212k.this;
            c0212k.removeCallbacks(this);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            c0212k.postOnAnimation(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            boolean z2;
            boolean z3;
            C0212k c0212k = C0212k.this;
            if (c0212k.f868j == null) {
                c0212k.removeCallbacks(this);
                this.f927d.abortAnimation();
                return;
            }
            this.f930g = false;
            this.f929f = true;
            c0212k.m1139e();
            OverScroller overScroller = this.f927d;
            c0212k.f868j.getClass();
            if (overScroller.computeScrollOffset()) {
                int[] iArr = c0212k.f861f0;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i = currX - this.f925b;
                int i2 = currY - this.f926c;
                this.f925b = currX;
                this.f926c = currY;
                if (C0212k.this.m1137h(i, i2, iArr, null, 1)) {
                    i -= iArr[0];
                    i2 -= iArr[1];
                }
                if (!c0212k.f869k.isEmpty()) {
                    c0212k.invalidate();
                }
                if (c0212k.getOverScrollMode() != 2) {
                    c0212k.m1140d(i, i2);
                }
                c0212k.m1136i(null, 1);
                if (!c0212k.awakenScrollBars()) {
                    c0212k.invalidate();
                }
                if (i2 != 0 && c0212k.f868j.mo1103c() && i2 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (i != 0 && c0212k.f868j.mo1104b() && i == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i != 0 || i2 != 0) && !z2 && !z) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (!overScroller.isFinished() && (z3 || c0212k.m1131n(1))) {
                    m1068a();
                    RunnableC0202e runnableC0202e = c0212k.f848U;
                    if (runnableC0202e != null) {
                        runnableC0202e.m1150a(c0212k, i, i2);
                    }
                } else {
                    c0212k.setScrollState(0);
                    if (C0212k.f825l0) {
                        RunnableC0202e.C0204b c0204b = c0212k.f849V;
                        c0204b.getClass();
                        c0204b.f814c = 0;
                    }
                    c0212k.mo55g(1);
                }
            }
            this.f929f = false;
            if (this.f930g) {
                m1068a();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$v */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0241v {

        /* renamed from: l */
        public static final /* synthetic */ int f932l = 0;

        /* renamed from: a */
        public int f933a;

        /* renamed from: b */
        public int f934b;

        /* renamed from: c */
        public long f935c;

        /* renamed from: d */
        public int f936d;

        /* renamed from: e */
        public AbstractC0241v f937e;

        /* renamed from: f */
        public int f938f;

        /* renamed from: g */
        public ArrayList f939g;

        /* renamed from: h */
        public int f940h;

        /* renamed from: i */
        public C0234p f941i;

        /* renamed from: j */
        public boolean f942j;

        /* renamed from: k */
        public C0212k f943k;

        static {
            Collections.emptyList();
        }

        /* renamed from: a */
        public final void m1067a(Object obj) {
            if (obj == null) {
                m1066b(1024);
            } else if ((1024 & this.f938f) == 0) {
                if (this.f939g == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f939g = arrayList;
                    Collections.unmodifiableList(arrayList);
                }
                this.f939g.add(obj);
            }
        }

        /* renamed from: b */
        public final void m1066b(int i) {
            this.f938f = i | this.f938f;
        }

        /* renamed from: c */
        public final int m1065c() {
            int i = this.f936d;
            return i == -1 ? this.f933a : i;
        }

        /* renamed from: d */
        public final boolean m1064d() {
            return (this.f938f & 4) != 0;
        }

        /* renamed from: e */
        public final boolean m1063e() {
            return (this.f938f & 8) != 0;
        }

        /* renamed from: f */
        public final boolean m1062f() {
            return this.f941i != null;
        }

        /* renamed from: g */
        public final boolean m1061g() {
            return (this.f938f & 256) != 0;
        }

        /* renamed from: h */
        public final void m1060h(boolean z) {
            int i;
            int i2 = this.f940h;
            int i3 = z ? i2 - 1 : i2 + 1;
            this.f940h = i3;
            if (i3 < 0) {
                this.f940h = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i3 == 1) {
                i = this.f938f | 16;
            } else if (!z || i3 != 0) {
                return;
            } else {
                i = this.f938f & (-17);
            }
            this.f938f = i;
        }

        public final String toString() {
            new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f933a + " id=" + this.f935c + ", oldPos=" + this.f934b + ", pLpos:" + this.f936d);
            m1062f();
            if ((this.f938f & 16) != 0) {
                StringBuilder sb = new StringBuilder(" not recyclable(");
                sb.append(this.f940h);
                sb.append(")");
                if ((this.f938f & 512) == 0) {
                    m1064d();
                }
                throw null;
            }
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            throw null;
        }
    }

    static {
        Class<?> cls = Integer.TYPE;
        f826m0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f827n0 = new animationInterpolatorC0214b();
    }

    public C0212k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(1:44)(9:81|(1:83)|46|47|(1:49)(1:65)|50|51|52|53)|46|47|(0)(0)|50|51|52|53) */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0258, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x025a, code lost:
        r5 = r4.getConstructor(new java.lang.Class[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0260, code lost:
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x026f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0270, code lost:
        r0.initCause(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0290, code lost:
        throw new java.lang.IllegalStateException(r23.getPositionDescription() + ": Error creating LayoutManager " + r3, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0230 A[Catch: ClassCastException -> 0x0291, IllegalAccessException -> 0x02b0, InstantiationException -> 0x02cf, InvocationTargetException -> 0x02ec, ClassNotFoundException -> 0x0309, TryCatch #4 {ClassCastException -> 0x0291, ClassNotFoundException -> 0x0309, IllegalAccessException -> 0x02b0, InstantiationException -> 0x02cf, InvocationTargetException -> 0x02ec, blocks: (B:60:0x022a, B:62:0x0230, B:64:0x023d, B:65:0x0247, B:71:0x0261, B:69:0x025a, B:73:0x0270, B:74:0x0290, B:63:0x0239), top: B:98:0x022a }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0239 A[Catch: ClassCastException -> 0x0291, IllegalAccessException -> 0x02b0, InstantiationException -> 0x02cf, InvocationTargetException -> 0x02ec, ClassNotFoundException -> 0x0309, TryCatch #4 {ClassCastException -> 0x0291, ClassNotFoundException -> 0x0309, IllegalAccessException -> 0x02b0, InstantiationException -> 0x02cf, InvocationTargetException -> 0x02ec, blocks: (B:60:0x022a, B:62:0x0230, B:64:0x023d, B:65:0x0247, B:71:0x0261, B:69:0x025a, B:73:0x0270, B:74:0x0290, B:63:0x0239), top: B:98:0x022a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0212k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        RunnableC0202e.C0204b c0204b;
        float m25a;
        float m25a2;
        boolean z;
        int i2;
        char c;
        char c2;
        StringBuilder sb;
        ClassLoader classLoader;
        this.f852b = new C0234p();
        this.f860f = new C0251r();
        this.f864h = new Rect();
        this.f866i = new Rect();
        new RectF();
        this.f869k = new ArrayList<>();
        this.f870l = new ArrayList<>();
        this.f875q = 0;
        this.f881w = false;
        this.f882x = false;
        this.f883y = 0;
        this.f884z = 0;
        this.f828A = new C0218f();
        this.f833F = new C0194c();
        this.f834G = 0;
        this.f835H = -1;
        this.f844Q = Float.MIN_VALUE;
        this.f845R = Float.MIN_VALUE;
        boolean z2 = true;
        this.f846S = true;
        this.f847T = new RunnableC0240u();
        if (f825l0) {
            c0204b = new RunnableC0202e.C0204b();
        } else {
            c0204b = null;
        }
        this.f849V = c0204b;
        this.f850W = new C0238s();
        C0222h c0222h = new C0222h();
        this.f853b0 = c0222h;
        this.f859e0 = new int[2];
        this.f861f0 = new int[2];
        this.f863g0 = new int[2];
        this.f865h0 = new ArrayList();
        this.f867i0 = new RunnableC0213a();
        new C0215c(this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f824k0, 0, 0);
            this.f862g = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.f862g = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f841N = viewConfiguration.getScaledTouchSlop();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26) {
            Method method = C0957n.f2942a;
            m25a = viewConfiguration.getScaledHorizontalScrollFactor();
        } else {
            m25a = C0957n.m25a(viewConfiguration, context);
        }
        this.f844Q = m25a;
        if (i3 >= 26) {
            m25a2 = viewConfiguration.getScaledVerticalScrollFactor();
        } else {
            m25a2 = C0957n.m25a(viewConfiguration, context);
        }
        this.f845R = m25a2;
        this.f842O = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f843P = viewConfiguration.getScaledMaximumFlingVelocity();
        if (getOverScrollMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        this.f833F.f886a = c0222h;
        this.f856d = new C0189a(new C0243m(this));
        this.f858e = new C0191b(new C0242l(this));
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (i3 >= 26) {
            i2 = getImportantForAutofill();
        } else {
            i2 = 0;
        }
        if (i2 == 0 && i3 >= 26) {
            setImportantForAutofill(8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.f880v = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0244n(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C0736h.f2538K, 0, 0);
            String string = obtainStyledAttributes2.getString(7);
            if (obtainStyledAttributes2.getInt(1, -1) == -1) {
                setDescendantFocusability(262144);
            }
            if (obtainStyledAttributes2.getBoolean(2, false)) {
                StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes2.getDrawable(5);
                Drawable drawable = obtainStyledAttributes2.getDrawable(6);
                StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes2.getDrawable(3);
                Drawable drawable2 = obtainStyledAttributes2.getDrawable(4);
                if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                    Resources resources = getContext().getResources();
                    c2 = 3;
                    c = 2;
                    new C0197d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
                } else {
                    throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m1135j());
                }
            } else {
                c = 2;
                c2 = 3;
            }
            obtainStyledAttributes2.recycle();
            if (string != null) {
                String trim = string.trim();
                if (!trim.isEmpty()) {
                    try {
                        if (trim.charAt(0) == '.') {
                            sb = new StringBuilder();
                            sb.append(context.getPackageName());
                        } else {
                            if (!trim.contains(".")) {
                                sb = new StringBuilder();
                                sb.append(C0212k.class.getPackage().getName());
                                sb.append('.');
                            }
                            if (!isInEditMode()) {
                                classLoader = getClass().getClassLoader();
                            } else {
                                classLoader = context.getClassLoader();
                            }
                            Class<? extends U> asSubclass = classLoader.loadClass(trim).asSubclass(AbstractC0224j.class);
                            Constructor constructor = asSubclass.getConstructor(f826m0);
                            Object[] objArr = new Object[4];
                            objArr[0] = context;
                            objArr[1] = attributeSet;
                            objArr[c] = 0;
                            objArr[c2] = 0;
                            constructor.setAccessible(true);
                            setLayoutManager((AbstractC0224j) constructor.newInstance(objArr));
                        }
                        if (!isInEditMode()) {
                        }
                        Class<? extends U> asSubclass2 = classLoader.loadClass(trim).asSubclass(AbstractC0224j.class);
                        Constructor constructor2 = asSubclass2.getConstructor(f826m0);
                        Object[] objArr2 = new Object[4];
                        objArr2[0] = context;
                        objArr2[1] = attributeSet;
                        objArr2[c] = 0;
                        objArr2[c2] = 0;
                        constructor2.setAccessible(true);
                        setLayoutManager((AbstractC0224j) constructor2.newInstance(objArr2));
                    } catch (ClassCastException e) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + trim, e);
                    } catch (ClassNotFoundException e2) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + trim, e2);
                    } catch (IllegalAccessException e3) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + trim, e3);
                    } catch (InstantiationException e4) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e4);
                    } catch (InvocationTargetException e5) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e5);
                    }
                    sb.append(trim);
                    trim = sb.toString();
                }
            }
            TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f823j0, 0, 0);
            z2 = obtainStyledAttributes3.getBoolean(0, true);
            obtainStyledAttributes3.recycle();
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z2);
    }

    private C0947f getScrollingChildHelper() {
        if (this.f857d0 == null) {
            this.f857d0 = new C0947f(this);
        }
        return this.f857d0;
    }

    /* renamed from: m */
    public static AbstractC0241v m1132m(View view) {
        if (view == null) {
            return null;
        }
        ((C0228k) view.getLayoutParams()).getClass();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            abstractC0224j.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    /* renamed from: b */
    public final void m1141b(String str) {
        boolean z;
        if (this.f883y > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m1135j());
            }
            throw new IllegalStateException(str);
        } else if (this.f884z > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + m1135j()));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0228k) && this.f868j.mo1102d((C0228k) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1104b()) {
            return this.f868j.mo1100f(this.f850W);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1104b()) {
            this.f868j.mo1099g(this.f850W);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1104b()) {
            return this.f868j.mo1098h(this.f850W);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1103c()) {
            return this.f868j.mo1097i(this.f850W);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1103c()) {
            this.f868j.mo1096j(this.f850W);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && abstractC0224j.mo1103c()) {
            return this.f868j.mo1095k(this.f850W);
        }
        return 0;
    }

    /* renamed from: d */
    public final void m1140d(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f829B;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.f829B.onRelease();
            z = this.f829B.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f831D;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.f831D.onRelease();
            z |= this.f831D.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f830C;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.f830C.onRelease();
            z |= this.f830C.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f832E;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f832E.onRelease();
            z |= this.f832E.isFinished();
        }
        if (z) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m54a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m53b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m52c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m51d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        float f;
        float f2;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        super.draw(canvas);
        ArrayList<AbstractC0223i> arrayList = this.f869k;
        int size = arrayList.size();
        boolean z4 = false;
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.get(i3).mo1116d(canvas);
        }
        EdgeEffect edgeEffect = this.f829B;
        boolean z5 = true;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.f862g) {
                i2 = getPaddingBottom();
            } else {
                i2 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i2, 0.0f);
            EdgeEffect edgeEffect2 = this.f829B;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z = true;
            } else {
                z = false;
            }
            canvas.restoreToCount(save);
        } else {
            z = false;
        }
        EdgeEffect edgeEffect3 = this.f830C;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f862g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f830C;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z3 = true;
            } else {
                z3 = false;
            }
            z |= z3;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f831D;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.f862g) {
                i = getPaddingTop();
            } else {
                i = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(-i, -width);
            EdgeEffect edgeEffect6 = this.f831D;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f832E;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f862g) {
                f = getPaddingRight() + (-getWidth());
                f2 = getPaddingBottom() + (-getHeight());
            } else {
                f = -getWidth();
                f2 = -getHeight();
            }
            canvas.translate(f, f2);
            EdgeEffect edgeEffect8 = this.f832E;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z |= z4;
            canvas.restoreToCount(save4);
        }
        if (z || this.f833F == null || arrayList.size() <= 0 || !this.f833F.mo1118c()) {
            z5 = z;
        }
        if (z5) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: e */
    public final void m1139e() {
        boolean z;
        if (this.f874p && !this.f881w) {
            boolean z2 = true;
            if (this.f856d.f756b.size() > 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
            this.f856d.getClass();
            if (this.f856d.f756b.size() <= 0) {
                z2 = false;
            }
            if (z2) {
                int i = C0876a.f2786a;
                Trace.beginSection("RV FullInvalidate");
                Log.e("RecyclerView", "No adapter attached; skipping layout");
                Trace.endSection();
                return;
            }
            return;
        }
        int i2 = C0876a.f2786a;
        Trace.beginSection("RV FullInvalidate");
        Log.e("RecyclerView", "No adapter attached; skipping layout");
        Trace.endSection();
    }

    /* renamed from: f */
    public final void m1138f(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        setMeasuredDimension(AbstractC0224j.m1101e(i, paddingRight, getMinimumWidth()), AbstractC0224j.m1101e(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c3, code lost:
        if (r4 > 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e1, code lost:
        if (r7 > 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e4, code lost:
        if (r4 < 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e7, code lost:
        if (r7 < 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f0, code lost:
        if ((r7 * r3) < 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f9, code lost:
        if ((r7 * r3) > 0) goto L76;
     */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View focusSearch(View view, int i) {
        int i2;
        int i3;
        this.f868j.getClass();
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus != null && !findNextFocus.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i);
            }
            m1126s(findNextFocus, null);
            return view;
        }
        boolean z = false;
        if (findNextFocus != null && findNextFocus != this && m1134k(findNextFocus) != null) {
            if (view != null && m1134k(view) != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                Rect rect = this.f864h;
                rect.set(0, 0, width, height);
                int width2 = findNextFocus.getWidth();
                int height2 = findNextFocus.getHeight();
                Rect rect2 = this.f866i;
                rect2.set(0, 0, width2, height2);
                offsetDescendantRectToMyCoords(view, rect);
                offsetDescendantRectToMyCoords(findNextFocus, rect2);
                C0212k c0212k = this.f868j.f892b;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                char c = 65535;
                if (c0212k.getLayoutDirection() == 1) {
                    i2 = -1;
                } else {
                    i2 = 1;
                }
                int i4 = rect.left;
                int i5 = rect2.left;
                if ((i4 < i5 || rect.right <= i5) && rect.right < rect2.right) {
                    i3 = 1;
                } else {
                    int i6 = rect.right;
                    int i7 = rect2.right;
                    if ((i6 > i7 || i4 >= i7) && i4 > i5) {
                        i3 = -1;
                    } else {
                        i3 = 0;
                    }
                }
                int i8 = rect.top;
                int i9 = rect2.top;
                if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                    c = 1;
                } else {
                    int i10 = rect.bottom;
                    int i11 = rect2.bottom;
                    if ((i10 <= i11 && i8 < i11) || i8 <= i9) {
                        c = 0;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i != 17) {
                            if (i != 33) {
                                if (i != 66) {
                                    if (i != 130) {
                                        throw new IllegalArgumentException("Invalid direction: " + i + m1135j());
                                    }
                                }
                            }
                        }
                    } else if (c <= 0) {
                        if (c == 0) {
                        }
                    }
                } else if (c >= 0) {
                    if (c == 0) {
                    }
                }
            }
            z = true;
        }
        if (!z) {
            return super.focusSearch(view, i);
        }
        return findNextFocus;
    }

    @Override // p076y.InterfaceC0945d
    /* renamed from: g */
    public final void mo55g(int i) {
        getScrollingChildHelper().m48g(i);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            return abstractC0224j.mo1094l();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m1135j());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            return abstractC0224j.mo1093m(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m1135j());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            return abstractC0224j.mo1092n(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m1135j());
    }

    public AbstractC0216d getAdapter() {
        return null;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            abstractC0224j.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f862g;
    }

    public C0244n getCompatAccessibilityDelegate() {
        return this.f855c0;
    }

    public C0218f getEdgeEffectFactory() {
        return this.f828A;
    }

    public AbstractC0219g getItemAnimator() {
        return this.f833F;
    }

    public int getItemDecorationCount() {
        return this.f869k.size();
    }

    public AbstractC0224j getLayoutManager() {
        return this.f868j;
    }

    public int getMaxFlingVelocity() {
        return this.f843P;
    }

    public int getMinFlingVelocity() {
        return this.f842O;
    }

    public long getNanoTime() {
        if (f825l0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0229l getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f846S;
    }

    public C0232o getRecycledViewPool() {
        C0234p c0234p = this.f852b;
        if (c0234p.f916f == null) {
            c0234p.f916f = new C0232o();
        }
        return c0234p.f916f;
    }

    public int getScrollState() {
        return this.f834G;
    }

    /* renamed from: h */
    public final boolean m1137h(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m52c(i, i2, iArr, iArr2, i3);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        if (getScrollingChildHelper().m50e(0) == null) {
            return false;
        }
        return true;
    }

    /* renamed from: i */
    public final boolean m1136i(int[] iArr, int i) {
        return getScrollingChildHelper().m51d(0, 0, 0, 0, iArr, i, null);
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f872n;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f2929d;
    }

    /* renamed from: j */
    public final String m1135j() {
        return " " + super.toString() + ", adapter:null, layout:" + this.f868j + ", context:" + getContext();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
        return r3;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View m1134k(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    /* renamed from: l */
    public final int m1133l(AbstractC0241v abstractC0241v) {
        boolean z;
        boolean z2;
        int i = abstractC0241v.f938f;
        if ((i & 524) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if ((i & 1) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                C0189a c0189a = this.f856d;
                int i2 = abstractC0241v.f933a;
                ArrayList<C0189a.C0190a> arrayList = c0189a.f756b;
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.get(i3).getClass();
                }
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: n */
    public final boolean m1131n(int i) {
        if (getScrollingChildHelper().m50e(1) != null) {
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public final void m1130o() {
        int m1165e = this.f858e.m1165e();
        for (int i = 0; i < m1165e; i++) {
            ((C0228k) this.f858e.m1166d(i).getLayoutParams()).f905b = true;
        }
        ArrayList<AbstractC0241v> arrayList = this.f852b.f913c;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r1 >= 30.0f) goto L18;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onAttachedToWindow() {
        float f;
        super.onAttachedToWindow();
        boolean z = false;
        this.f883y = 0;
        this.f872n = true;
        if (this.f874p && !isLayoutRequested()) {
            z = true;
        }
        this.f874p = z;
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            abstractC0224j.f895e = true;
        }
        if (f825l0) {
            ThreadLocal<RunnableC0202e> threadLocal = RunnableC0202e.f806f;
            RunnableC0202e runnableC0202e = threadLocal.get();
            this.f848U = runnableC0202e;
            if (runnableC0202e == null) {
                this.f848U = new RunnableC0202e();
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                Display display = getDisplay();
                if (!isInEditMode() && display != null) {
                    f = display.getRefreshRate();
                }
                f = 60.0f;
                RunnableC0202e runnableC0202e2 = this.f848U;
                runnableC0202e2.f810d = 1.0E9f / f;
                threadLocal.set(runnableC0202e2);
            }
            this.f848U.f808b.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        RunnableC0202e runnableC0202e;
        super.onDetachedFromWindow();
        AbstractC0219g abstractC0219g = this.f833F;
        if (abstractC0219g != null) {
            abstractC0219g.mo1119b();
        }
        setScrollState(0);
        RunnableC0240u runnableC0240u = this.f847T;
        C0212k.this.removeCallbacks(runnableC0240u);
        runnableC0240u.f927d.abortAnimation();
        this.f872n = false;
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            abstractC0224j.f895e = false;
            abstractC0224j.mo1115A(this);
        }
        this.f865h0.clear();
        removeCallbacks(this.f867i0);
        this.f860f.getClass();
        do {
        } while (C0251r.C0252a.f956a.mo92a() != null);
        if (f825l0 && (runnableC0202e = this.f848U) != null) {
            runnableC0202e.f808b.remove(this);
            this.f848U = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList<AbstractC0223i> arrayList = this.f869k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).getClass();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.f868j != null && !this.f877s && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.f868j.mo1103c() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.f868j.mo1104b()) {
                    axisValue = motionEvent.getAxisValue(10);
                    if (f == 0.0f || axisValue != 0.0f) {
                        m1124u((int) (axisValue * this.f844Q), (int) (f * this.f845R), motionEvent);
                    }
                }
                axisValue = 0.0f;
                if (f == 0.0f) {
                }
                m1124u((int) (axisValue * this.f844Q), (int) (f * this.f845R), motionEvent);
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    axisValue = motionEvent.getAxisValue(26);
                    if (this.f868j.mo1103c()) {
                        f = -axisValue;
                        axisValue = 0.0f;
                        if (f == 0.0f) {
                        }
                        m1124u((int) (axisValue * this.f844Q), (int) (f * this.f845R), motionEvent);
                    } else if (this.f868j.mo1104b()) {
                        f = 0.0f;
                        if (f == 0.0f) {
                        }
                        m1124u((int) (axisValue * this.f844Q), (int) (f * this.f845R), motionEvent);
                    }
                }
                f = 0.0f;
                axisValue = 0.0f;
                if (f == 0.0f) {
                }
                m1124u((int) (axisValue * this.f844Q), (int) (f * this.f845R), motionEvent);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.f877s) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f871m = null;
        }
        ArrayList<InterfaceC0230m> arrayList = this.f870l;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                InterfaceC0230m interfaceC0230m = arrayList.get(i);
                if (interfaceC0230m.mo1079a(motionEvent) && action != 3) {
                    this.f871m = interfaceC0230m;
                    z = true;
                    break;
                }
                i++;
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            m1125t();
            setScrollState(0);
            return true;
        }
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j == null) {
            return false;
        }
        boolean mo1104b = abstractC0224j.mo1104b();
        boolean mo1103c = this.f868j.mo1103c();
        if (this.f836I == null) {
            this.f836I = VelocityTracker.obtain();
        }
        this.f836I.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                m1127r(motionEvent);
                            }
                        } else {
                            this.f835H = motionEvent.getPointerId(actionIndex);
                            int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
                            this.f839L = x;
                            this.f837J = x;
                            int y = (int) (motionEvent.getY(actionIndex) + 0.5f);
                            this.f840M = y;
                            this.f838K = y;
                        }
                    } else {
                        m1125t();
                        setScrollState(0);
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f835H);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f835H + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.f834G != 1) {
                        int i2 = x2 - this.f837J;
                        int i3 = y2 - this.f838K;
                        if (mo1104b && Math.abs(i2) > this.f841N) {
                            this.f839L = x2;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (mo1103c && Math.abs(i3) > this.f841N) {
                            this.f840M = y2;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                }
            } else {
                this.f836I.clear();
                mo55g(0);
            }
        } else {
            if (this.f878t) {
                this.f878t = false;
            }
            this.f835H = motionEvent.getPointerId(0);
            int x3 = (int) (motionEvent.getX() + 0.5f);
            this.f839L = x3;
            this.f837J = x3;
            int y3 = (int) (motionEvent.getY() + 0.5f);
            this.f840M = y3;
            this.f838K = y3;
            if (this.f834G == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.f863g0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i4 = mo1104b;
            if (mo1103c) {
                i4 = (mo1104b ? 1 : 0) | 2;
            }
            getScrollingChildHelper().m49f(i4, 0);
        }
        if (this.f834G != 1) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = C0876a.f2786a;
        Trace.beginSection("RV OnLayout");
        Log.e("RecyclerView", "No adapter attached; skipping layout");
        Trace.endSection();
        this.f874p = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j == null) {
            m1138f(i, i2);
        } else if (abstractC0224j.mo1080z()) {
            View.MeasureSpec.getMode(i);
            View.MeasureSpec.getMode(i2);
            this.f868j.f892b.m1138f(i, i2);
        } else if (this.f873o) {
            this.f868j.f892b.m1138f(i, i2);
        } else {
            C0238s c0238s = this.f850W;
            if (c0238s.f924f) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            c0238s.getClass();
            m1122w();
            this.f868j.f892b.m1138f(i, i2);
            m1121x(false);
            c0238s.f922d = false;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        boolean z;
        if (this.f883y > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0236r)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0236r c0236r = (C0236r) parcelable;
        this.f854c = c0236r;
        super.onRestoreInstanceState(c0236r.f1144a);
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null && (parcelable2 = this.f854c.f918c) != null) {
            abstractC0224j.mo1113C(parcelable2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelable;
        C0236r c0236r = new C0236r(super.onSaveInstanceState());
        C0236r c0236r2 = this.f854c;
        if (c0236r2 != null) {
            c0236r.f918c = c0236r2.f918c;
        } else {
            AbstractC0224j abstractC0224j = this.f868j;
            if (abstractC0224j != null) {
                parcelable = abstractC0224j.mo1112D();
            } else {
                parcelable = null;
            }
            c0236r.f918c = parcelable;
        }
        return c0236r;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            this.f832E = null;
            this.f830C = null;
            this.f831D = null;
            this.f829B = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x023e, code lost:
        if (r0 != false) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0156  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (this.f877s || this.f878t) {
            return false;
        }
        int action = motionEvent.getAction();
        InterfaceC0230m interfaceC0230m = this.f871m;
        if (interfaceC0230m != null) {
            if (action != 0) {
                interfaceC0230m.mo1077c(motionEvent);
                if (action == 3 || action == 1) {
                    this.f871m = null;
                }
                z = true;
                if (!z) {
                    m1125t();
                    setScrollState(0);
                    return true;
                }
                AbstractC0224j abstractC0224j = this.f868j;
                if (abstractC0224j == null) {
                    return false;
                }
                boolean mo1104b = abstractC0224j.mo1104b();
                boolean mo1103c = this.f868j.mo1103c();
                if (this.f836I == null) {
                    this.f836I = VelocityTracker.obtain();
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                int[] iArr = this.f863g0;
                if (actionMasked == 0) {
                    iArr[1] = 0;
                    iArr[0] = 0;
                }
                obtain.offsetLocation(iArr[0], iArr[1]);
                if (actionMasked == 0) {
                    this.f835H = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.f839L = x;
                    this.f837J = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.f840M = y;
                    this.f838K = y;
                    int i = mo1104b;
                    if (mo1103c) {
                        i = (mo1104b ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().m49f(i, 0);
                } else if (actionMasked == 1) {
                    this.f836I.addMovement(obtain);
                    VelocityTracker velocityTracker = this.f836I;
                    int i2 = this.f843P;
                    velocityTracker.computeCurrentVelocity(1000, i2);
                    float f = mo1104b ? -this.f836I.getXVelocity(this.f835H) : 0.0f;
                    float f2 = mo1103c ? -this.f836I.getYVelocity(this.f835H) : 0.0f;
                    if (f != 0.0f || f2 != 0.0f) {
                        int i3 = (int) f;
                        int i4 = (int) f2;
                        AbstractC0224j abstractC0224j2 = this.f868j;
                        if (abstractC0224j2 == null) {
                            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                        } else if (!this.f877s) {
                            boolean mo1104b2 = abstractC0224j2.mo1104b();
                            boolean mo1103c2 = this.f868j.mo1103c();
                            int i5 = this.f842O;
                            i3 = (!mo1104b2 || Math.abs(i3) < i5) ? 0 : 0;
                            i4 = (!mo1103c2 || Math.abs(i4) < i5) ? 0 : 0;
                            if (i3 != 0 || i4 != 0) {
                                float f3 = i3;
                                float f4 = i4;
                                if (!dispatchNestedPreFling(f3, f4)) {
                                    boolean z5 = mo1104b2 || mo1103c2;
                                    dispatchNestedFling(f3, f4, z5);
                                    int i6 = mo1104b2;
                                    if (z5) {
                                        if (mo1103c2) {
                                            i6 = (mo1104b2 ? 1 : 0) | 2;
                                        }
                                        getScrollingChildHelper().m49f(i6, 1);
                                        int i7 = -i2;
                                        int max = Math.max(i7, Math.min(i3, i2));
                                        int max2 = Math.max(i7, Math.min(i4, i2));
                                        RunnableC0240u runnableC0240u = this.f847T;
                                        C0212k.this.setScrollState(2);
                                        runnableC0240u.f926c = 0;
                                        runnableC0240u.f925b = 0;
                                        runnableC0240u.f927d.fling(0, 0, max, max2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                        runnableC0240u.m1068a();
                                        z2 = true;
                                    }
                                }
                            }
                        }
                        z2 = false;
                    }
                    setScrollState(0);
                    m1125t();
                    z4 = true;
                } else if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f835H);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f835H + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    int i8 = this.f839L - x2;
                    int i9 = this.f840M - y2;
                    boolean m1137h = m1137h(i8, i9, this.f861f0, this.f859e0, 0);
                    int[] iArr2 = this.f859e0;
                    if (m1137h) {
                        int[] iArr3 = this.f861f0;
                        i8 -= iArr3[0];
                        i9 -= iArr3[1];
                        obtain.offsetLocation(iArr2[0], iArr2[1]);
                        iArr[0] = iArr[0] + iArr2[0];
                        iArr[1] = iArr[1] + iArr2[1];
                    }
                    if (this.f834G != 1) {
                        if (mo1104b) {
                            int abs = Math.abs(i8);
                            int i10 = this.f841N;
                            if (abs > i10) {
                                i8 = i8 > 0 ? i8 - i10 : i8 + i10;
                                z3 = true;
                                if (mo1103c) {
                                    int abs2 = Math.abs(i9);
                                    int i11 = this.f841N;
                                    if (abs2 > i11) {
                                        i9 = i9 > 0 ? i9 - i11 : i9 + i11;
                                        z3 = true;
                                    }
                                }
                                if (z3) {
                                    setScrollState(1);
                                }
                            }
                        }
                        z3 = false;
                        if (mo1103c) {
                        }
                        if (z3) {
                        }
                    }
                    int i12 = i9;
                    if (this.f834G == 1) {
                        this.f839L = x2 - iArr2[0];
                        this.f840M = y2 - iArr2[1];
                        m1124u(mo1104b ? i8 : 0, mo1103c ? i12 : 0, obtain);
                        RunnableC0202e runnableC0202e = this.f848U;
                        if (runnableC0202e != null && (i8 != 0 || i12 != 0)) {
                            runnableC0202e.m1150a(this, i8, i12);
                        }
                    }
                } else if (actionMasked == 3) {
                    m1125t();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f835H = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f839L = x3;
                    this.f837J = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f840M = y3;
                    this.f838K = y3;
                } else if (actionMasked == 6) {
                    m1127r(motionEvent);
                }
                if (!z4) {
                    this.f836I.addMovement(obtain);
                }
                obtain.recycle();
                return true;
            }
            this.f871m = null;
        }
        if (action != 0) {
            ArrayList<InterfaceC0230m> arrayList = this.f870l;
            int size = arrayList.size();
            for (int i13 = 0; i13 < size; i13++) {
                InterfaceC0230m interfaceC0230m2 = arrayList.get(i13);
                if (interfaceC0230m2.mo1079a(motionEvent)) {
                    this.f871m = interfaceC0230m2;
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!z) {
        }
    }

    /* renamed from: p */
    public final void m1129p() {
        this.f883y++;
    }

    /* renamed from: q */
    public final void m1128q(boolean z) {
        boolean z2 = true;
        int i = this.f883y - 1;
        this.f883y = i;
        if (i < 1) {
            this.f883y = 0;
            if (z) {
                int i2 = this.f879u;
                this.f879u = 0;
                if (i2 != 0) {
                    AccessibilityManager accessibilityManager = this.f880v;
                    if ((accessibilityManager == null || !accessibilityManager.isEnabled()) ? false : false) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain();
                        obtain.setEventType(2048);
                        obtain.setContentChangeTypes(i2);
                        sendAccessibilityEventUnchecked(obtain);
                    }
                }
                ArrayList arrayList = this.f865h0;
                int size = arrayList.size() - 1;
                if (size < 0) {
                    arrayList.clear();
                } else {
                    ((AbstractC0241v) arrayList.get(size)).getClass();
                    throw null;
                }
            }
        }
    }

    /* renamed from: r */
    public final void m1127r(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f835H) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f835H = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f839L = x;
            this.f837J = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f840M = y;
            this.f838K = y;
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        m1132m(view);
        view.clearAnimation();
        m1132m(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        boolean z;
        this.f868j.getClass();
        if (this.f883y > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && view2 != null) {
            m1126s(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f868j.m1108H(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList<InterfaceC0230m> arrayList = this.f870l;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo1078b();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f875q != 0 || this.f877s) {
            this.f876r = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public final void m1126s(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f864h;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0228k) {
            C0228k c0228k = (C0228k) layoutParams;
            if (!c0228k.f905b) {
                int i = rect.left;
                Rect rect2 = c0228k.f904a;
                rect.left = i - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f868j.m1108H(this, view, this.f864h, !this.f874p, view2 == null);
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f877s) {
        } else {
            boolean mo1104b = abstractC0224j.mo1104b();
            boolean mo1103c = this.f868j.mo1103c();
            if (mo1104b || mo1103c) {
                if (!mo1104b) {
                    i = 0;
                }
                if (!mo1103c) {
                    i2 = 0;
                }
                m1124u(i, i2, null);
            }
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        boolean z;
        int i;
        boolean z2 = true;
        int i2 = 0;
        if (this.f883y > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (accessibilityEvent != null) {
                i = accessibilityEvent.getContentChangeTypes();
            } else {
                i = 0;
            }
            if (i != 0) {
                i2 = i;
            }
            this.f879u |= i2;
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C0244n c0244n) {
        this.f855c0 = c0244n;
        C0954m.m30f(this, c0244n);
    }

    public void setAdapter(AbstractC0216d abstractC0216d) {
        setLayoutFrozen(false);
        AbstractC0219g abstractC0219g = this.f833F;
        if (abstractC0219g != null) {
            abstractC0219g.mo1119b();
        }
        AbstractC0224j abstractC0224j = this.f868j;
        C0234p c0234p = this.f852b;
        if (abstractC0224j != null) {
            abstractC0224j.m1110F(c0234p);
            this.f868j.m1109G(c0234p);
        }
        c0234p.f911a.clear();
        c0234p.m1075b();
        C0189a c0189a = this.f856d;
        c0189a.m1170c(c0189a.f756b);
        c0189a.m1170c(c0189a.f757c);
        c0234p.f911a.clear();
        c0234p.m1075b();
        if (c0234p.f916f == null) {
            c0234p.f916f = new C0232o();
        }
        C0232o c0232o = c0234p.f916f;
        if (c0232o.f907b == 0) {
            int i = 0;
            while (true) {
                SparseArray<C0232o.C0233a> sparseArray = c0232o.f906a;
                if (i >= sparseArray.size()) {
                    break;
                }
                sparseArray.valueAt(i).f908a.clear();
                i++;
            }
        }
        this.f850W.f921c = true;
        this.f882x |= false;
        this.f881w = true;
        int m1165e = this.f858e.m1165e();
        for (int i2 = 0; i2 < m1165e; i2++) {
            m1132m(this.f858e.m1166d(i2));
        }
        m1130o();
        ArrayList<AbstractC0241v> arrayList = c0234p.f913c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC0241v abstractC0241v = arrayList.get(i3);
            if (abstractC0241v != null) {
                abstractC0241v.m1066b(6);
                abstractC0241v.m1067a(null);
            }
        }
        C0212k.this.getClass();
        c0234p.m1075b();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC0217e interfaceC0217e) {
        if (interfaceC0217e == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f862g) {
            this.f832E = null;
            this.f830C = null;
            this.f831D = null;
            this.f829B = null;
        }
        this.f862g = z;
        super.setClipToPadding(z);
        if (this.f874p) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0218f c0218f) {
        c0218f.getClass();
        this.f828A = c0218f;
        this.f832E = null;
        this.f830C = null;
        this.f831D = null;
        this.f829B = null;
    }

    public void setHasFixedSize(boolean z) {
        this.f873o = z;
    }

    public void setItemAnimator(AbstractC0219g abstractC0219g) {
        AbstractC0219g abstractC0219g2 = this.f833F;
        if (abstractC0219g2 != null) {
            abstractC0219g2.mo1119b();
            this.f833F.f886a = null;
        }
        this.f833F = abstractC0219g;
        if (abstractC0219g != null) {
            abstractC0219g.f886a = this.f853b0;
        }
    }

    public void setItemViewCacheSize(int i) {
        C0234p c0234p = this.f852b;
        c0234p.f914d = i;
        c0234p.m1070g();
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.f877s) {
            m1141b("Do not setLayoutFrozen in layout or scroll");
            if (!z) {
                this.f877s = false;
                this.f876r = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f877s = true;
            this.f878t = true;
            setScrollState(0);
            RunnableC0240u runnableC0240u = this.f847T;
            C0212k.this.removeCallbacks(runnableC0240u);
            runnableC0240u.f927d.abortAnimation();
        }
    }

    public void setLayoutManager(AbstractC0224j abstractC0224j) {
        C0191b.InterfaceC0193b interfaceC0193b;
        C0212k c0212k;
        if (abstractC0224j == this.f868j) {
            return;
        }
        int i = 0;
        setScrollState(0);
        RunnableC0240u runnableC0240u = this.f847T;
        C0212k.this.removeCallbacks(runnableC0240u);
        runnableC0240u.f927d.abortAnimation();
        AbstractC0224j abstractC0224j2 = this.f868j;
        C0234p c0234p = this.f852b;
        if (abstractC0224j2 != null) {
            AbstractC0219g abstractC0219g = this.f833F;
            if (abstractC0219g != null) {
                abstractC0219g.mo1119b();
            }
            this.f868j.m1110F(c0234p);
            this.f868j.m1109G(c0234p);
            c0234p.f911a.clear();
            c0234p.m1075b();
            if (this.f872n) {
                AbstractC0224j abstractC0224j3 = this.f868j;
                abstractC0224j3.f895e = false;
                abstractC0224j3.mo1115A(this);
            }
            this.f868j.m1106J(null);
            this.f868j = null;
        } else {
            c0234p.f911a.clear();
            c0234p.m1075b();
        }
        C0191b c0191b = this.f858e;
        c0191b.f760b.m1159e();
        ArrayList arrayList = c0191b.f761c;
        int size = arrayList.size();
        while (true) {
            size--;
            interfaceC0193b = c0191b.f759a;
            if (size < 0) {
                break;
            }
            ((C0242l) interfaceC0193b).getClass();
            m1132m((View) arrayList.get(size));
            arrayList.remove(size);
        }
        C0242l c0242l = (C0242l) interfaceC0193b;
        int m1059a = c0242l.m1059a();
        while (true) {
            c0212k = c0242l.f944a;
            if (i >= m1059a) {
                break;
            }
            View childAt = c0212k.getChildAt(i);
            c0212k.getClass();
            m1132m(childAt);
            childAt.clearAnimation();
            i++;
        }
        c0212k.removeAllViews();
        this.f868j = abstractC0224j;
        if (abstractC0224j != null) {
            if (abstractC0224j.f892b == null) {
                abstractC0224j.m1106J(this);
                if (this.f872n) {
                    this.f868j.f895e = true;
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + abstractC0224j + " is already attached to a RecyclerView:" + abstractC0224j.f892b.m1135j());
            }
        }
        c0234p.m1070g();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C0947f scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f2929d) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            scrollingChildHelper.f2928c.stopNestedScroll();
        }
        scrollingChildHelper.f2929d = z;
    }

    public void setOnFlingListener(AbstractC0229l abstractC0229l) {
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0231n abstractC0231n) {
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f846S = z;
    }

    public void setRecycledViewPool(C0232o c0232o) {
        C0232o c0232o2;
        C0234p c0234p = this.f852b;
        if (c0234p.f916f != null) {
            c0232o2.f907b--;
        }
        c0234p.f916f = c0232o;
        if (c0232o != null) {
            C0212k.this.getAdapter();
        }
    }

    public void setRecyclerListener(InterfaceC0235q interfaceC0235q) {
    }

    public void setScrollState(int i) {
        if (i == this.f834G) {
            return;
        }
        this.f834G = i;
        if (i != 2) {
            RunnableC0240u runnableC0240u = this.f847T;
            C0212k.this.removeCallbacks(runnableC0240u);
            runnableC0240u.f927d.abortAnimation();
        }
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j != null) {
            abstractC0224j.mo1111E(i);
        }
        ArrayList arrayList = this.f851a0;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    ((AbstractC0231n) this.f851a0.get(size)).getClass();
                } else {
                    return;
                }
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        int scaledTouchSlop;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                scaledTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                this.f841N = scaledTouchSlop;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.f841N = scaledTouchSlop;
    }

    public void setViewCacheExtension(AbstractC0239t abstractC0239t) {
        this.f852b.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m49f(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().m48g(0);
    }

    /* renamed from: t */
    public final void m1125t() {
        VelocityTracker velocityTracker = this.f836I;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        mo55g(0);
        EdgeEffect edgeEffect = this.f829B;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f829B.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f830C;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.f830C.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f831D;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.f831D.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f832E;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.f832E.isFinished();
        }
        if (z) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0167  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1124u(int i, int i2, MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect;
        float width;
        float height;
        int measuredHeight;
        int measuredWidth;
        int measuredWidth2;
        int measuredHeight2;
        int i3;
        int measuredWidth3;
        int measuredHeight3;
        int measuredHeight4;
        int measuredWidth4;
        m1139e();
        if (!this.f869k.isEmpty()) {
            invalidate();
        }
        int[] iArr = this.f859e0;
        boolean z2 = false;
        boolean z3 = true;
        if (m1136i(iArr, 0)) {
            int i4 = this.f839L;
            int i5 = iArr[0];
            this.f839L = i4 - i5;
            int i6 = this.f840M;
            int i7 = iArr[1];
            this.f840M = i6 - i7;
            if (motionEvent != null) {
                motionEvent.offsetLocation(i5, i7);
            }
            int[] iArr2 = this.f863g0;
            iArr2[0] = iArr2[0] + iArr[0];
            iArr2[1] = iArr2[1] + iArr[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                if ((motionEvent.getSource() & 8194) == 8194) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    float x = motionEvent.getX();
                    float f = 0;
                    float y = motionEvent.getY();
                    int i8 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                    if (i8 < 0) {
                        if (this.f829B == null) {
                            this.f828A.getClass();
                            EdgeEffect edgeEffect2 = new EdgeEffect(getContext());
                            this.f829B = edgeEffect2;
                            if (this.f862g) {
                                measuredHeight4 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                                measuredWidth4 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                            } else {
                                measuredHeight4 = getMeasuredHeight();
                                measuredWidth4 = getMeasuredWidth();
                            }
                            edgeEffect2.setSize(measuredHeight4, measuredWidth4);
                        }
                        edgeEffect = this.f829B;
                        width = (-f) / getWidth();
                        height = 1.0f - (y / getHeight());
                    } else {
                        if (f > 0.0f) {
                            if (this.f831D == null) {
                                this.f828A.getClass();
                                EdgeEffect edgeEffect3 = new EdgeEffect(getContext());
                                this.f831D = edgeEffect3;
                                if (this.f862g) {
                                    measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                                    measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                                } else {
                                    measuredHeight = getMeasuredHeight();
                                    measuredWidth = getMeasuredWidth();
                                }
                                edgeEffect3.setSize(measuredHeight, measuredWidth);
                            }
                            edgeEffect = this.f831D;
                            width = f / getWidth();
                            height = y / getHeight();
                        }
                        if (i8 >= 0) {
                            if (this.f830C == null) {
                                this.f828A.getClass();
                                EdgeEffect edgeEffect4 = new EdgeEffect(getContext());
                                this.f830C = edgeEffect4;
                                if (this.f862g) {
                                    measuredWidth3 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                                    measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                                } else {
                                    measuredWidth3 = getMeasuredWidth();
                                    measuredHeight3 = getMeasuredHeight();
                                }
                                edgeEffect4.setSize(measuredWidth3, measuredHeight3);
                            }
                            this.f830C.onPull((-f) / getHeight(), x / getWidth());
                        } else if (f > 0.0f) {
                            if (this.f832E == null) {
                                this.f828A.getClass();
                                EdgeEffect edgeEffect5 = new EdgeEffect(getContext());
                                this.f832E = edgeEffect5;
                                if (this.f862g) {
                                    measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                                    measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                                } else {
                                    measuredWidth2 = getMeasuredWidth();
                                    measuredHeight2 = getMeasuredHeight();
                                }
                                edgeEffect5.setSize(measuredWidth2, measuredHeight2);
                            }
                            this.f832E.onPull(f / getHeight(), 1.0f - (x / getWidth()));
                        } else {
                            z3 = z2;
                        }
                        if (!z3 || f != 0.0f || i3 != 0) {
                            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                            postInvalidateOnAnimation();
                        }
                    }
                    edgeEffect.onPull(width, height);
                    z2 = true;
                    if (i8 >= 0) {
                    }
                    if (!z3) {
                    }
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    postInvalidateOnAnimation();
                }
            }
            m1140d(i, i2);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
    }

    /* renamed from: v */
    public final void m1123v(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int height;
        int i5;
        AbstractC0224j abstractC0224j = this.f868j;
        if (abstractC0224j == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.f877s) {
            if (!abstractC0224j.mo1104b()) {
                i3 = 0;
            } else {
                i3 = i;
            }
            if (!this.f868j.mo1103c()) {
                i4 = 0;
            } else {
                i4 = i2;
            }
            if (i3 != 0 || i4 != 0) {
                RunnableC0240u runnableC0240u = this.f847T;
                runnableC0240u.getClass();
                int abs = Math.abs(i3);
                int abs2 = Math.abs(i4);
                if (abs > abs2) {
                    z = true;
                } else {
                    z = false;
                }
                int sqrt = (int) Math.sqrt(0);
                int sqrt2 = (int) Math.sqrt((i4 * i4) + (i3 * i3));
                C0212k c0212k = C0212k.this;
                if (z) {
                    height = c0212k.getWidth();
                } else {
                    height = c0212k.getHeight();
                }
                int i6 = height / 2;
                float f = height;
                float f2 = i6;
                float sin = (((float) Math.sin((Math.min(1.0f, (sqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                if (sqrt > 0) {
                    i5 = Math.round(Math.abs(sin / sqrt) * 1000.0f) * 4;
                } else {
                    if (!z) {
                        abs = abs2;
                    }
                    i5 = (int) (((abs / f) + 1.0f) * 300.0f);
                }
                int min = Math.min(i5, 2000);
                Interpolator interpolator = runnableC0240u.f928e;
                animationInterpolatorC0214b animationinterpolatorc0214b = f827n0;
                if (interpolator != animationinterpolatorc0214b) {
                    runnableC0240u.f928e = animationinterpolatorc0214b;
                    runnableC0240u.f927d = new OverScroller(c0212k.getContext(), animationinterpolatorc0214b);
                }
                c0212k.setScrollState(2);
                runnableC0240u.f926c = 0;
                runnableC0240u.f925b = 0;
                runnableC0240u.f927d.startScroll(0, 0, i3, i4, min);
                if (Build.VERSION.SDK_INT < 23) {
                    runnableC0240u.f927d.computeScrollOffset();
                }
                runnableC0240u.m1068a();
            }
        }
    }

    /* renamed from: w */
    public final void m1122w() {
        int i = this.f875q + 1;
        this.f875q = i;
        if (i != 1 || this.f877s) {
            return;
        }
        this.f876r = false;
    }

    /* renamed from: x */
    public final void m1121x(boolean z) {
        if (this.f875q < 1) {
            this.f875q = 1;
        }
        if (!z && !this.f877s) {
            this.f876r = false;
        }
        int i = this.f875q;
        if (i == 1) {
            if (z && this.f876r && !this.f877s) {
                AbstractC0224j abstractC0224j = this.f868j;
            }
            if (!this.f877s) {
                this.f876r = false;
            }
        }
        this.f875q = i - 1;
    }
}
