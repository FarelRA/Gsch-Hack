package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.C0212k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends C0212k.AbstractC0224j {

    /* renamed from: h */
    public int f722h;

    /* renamed from: i */
    public C0188f[] f723i;

    /* renamed from: j */
    public AbstractC0211j f724j;

    /* renamed from: k */
    public AbstractC0211j f725k;

    /* renamed from: l */
    public int f726l;

    /* renamed from: m */
    public boolean f727m;

    /* renamed from: n */
    public boolean f728n = false;

    /* renamed from: o */
    public final C0183d f729o;

    /* renamed from: p */
    public final int f730p;

    /* renamed from: q */
    public C0186e f731q;

    /* renamed from: r */
    public final boolean f732r;

    /* renamed from: s */
    public final RunnableC0180a f733s;

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes.dex */
    public class RunnableC0180a implements Runnable {
        public RunnableC0180a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            StaggeredGridLayoutManager.this.m1188K();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes.dex */
    public class C0181b {
        public C0181b(StaggeredGridLayoutManager staggeredGridLayoutManager) {
            m1178a();
        }

        /* renamed from: a */
        public final void m1178a() {
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes.dex */
    public static class C0182c extends C0212k.C0228k {
        public C0182c(int i, int i2) {
            super(i, i2);
        }

        public C0182c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0182c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0182c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d */
    /* loaded from: classes.dex */
    public static class C0183d {

        /* renamed from: a */
        public List<C0184a> f735a;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a */
        /* loaded from: classes.dex */
        public static class C0184a implements Parcelable {
            public static final Parcelable.Creator<C0184a> CREATOR = new C0185a();

            /* renamed from: a */
            public int f736a;

            /* renamed from: b */
            public int f737b;

            /* renamed from: c */
            public int[] f738c;

            /* renamed from: d */
            public boolean f739d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a */
            /* loaded from: classes.dex */
            public static class C0185a implements Parcelable.Creator<C0184a> {
                @Override // android.os.Parcelable.Creator
                public final C0184a createFromParcel(Parcel parcel) {
                    return new C0184a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public final C0184a[] newArray(int i) {
                    return new C0184a[i];
                }
            }

            public C0184a() {
            }

            public C0184a(Parcel parcel) {
                this.f736a = parcel.readInt();
                this.f737b = parcel.readInt();
                this.f739d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f738c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "FullSpanItem{mPosition=" + this.f736a + ", mGapDir=" + this.f737b + ", mHasUnwantedGapAfter=" + this.f739d + ", mGapPerSpan=" + Arrays.toString(this.f738c) + '}';
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f736a);
                parcel.writeInt(this.f737b);
                parcel.writeInt(this.f739d ? 1 : 0);
                int[] iArr = this.f738c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f738c);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e */
    /* loaded from: classes.dex */
    public static class C0186e implements Parcelable {
        public static final Parcelable.Creator<C0186e> CREATOR = new C0187a();

        /* renamed from: a */
        public int f740a;

        /* renamed from: b */
        public int f741b;

        /* renamed from: c */
        public int f742c;

        /* renamed from: d */
        public int[] f743d;

        /* renamed from: e */
        public int f744e;

        /* renamed from: f */
        public int[] f745f;

        /* renamed from: g */
        public List<C0183d.C0184a> f746g;

        /* renamed from: h */
        public boolean f747h;

        /* renamed from: i */
        public boolean f748i;

        /* renamed from: j */
        public boolean f749j;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e$a */
        /* loaded from: classes.dex */
        public static class C0187a implements Parcelable.Creator<C0186e> {
            @Override // android.os.Parcelable.Creator
            public final C0186e createFromParcel(Parcel parcel) {
                return new C0186e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final C0186e[] newArray(int i) {
                return new C0186e[i];
            }
        }

        public C0186e() {
        }

        public C0186e(Parcel parcel) {
            this.f740a = parcel.readInt();
            this.f741b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f742c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f743d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f744e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f745f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f747h = parcel.readInt() == 1;
            this.f748i = parcel.readInt() == 1;
            this.f749j = parcel.readInt() == 1;
            this.f746g = parcel.readArrayList(C0183d.C0184a.class.getClassLoader());
        }

        public C0186e(C0186e c0186e) {
            this.f742c = c0186e.f742c;
            this.f740a = c0186e.f740a;
            this.f741b = c0186e.f741b;
            this.f743d = c0186e.f743d;
            this.f744e = c0186e.f744e;
            this.f745f = c0186e.f745f;
            this.f747h = c0186e.f747h;
            this.f748i = c0186e.f748i;
            this.f749j = c0186e.f749j;
            this.f746g = c0186e.f746g;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f740a);
            parcel.writeInt(this.f741b);
            parcel.writeInt(this.f742c);
            if (this.f742c > 0) {
                parcel.writeIntArray(this.f743d);
            }
            parcel.writeInt(this.f744e);
            if (this.f744e > 0) {
                parcel.writeIntArray(this.f745f);
            }
            parcel.writeInt(this.f747h ? 1 : 0);
            parcel.writeInt(this.f748i ? 1 : 0);
            parcel.writeInt(this.f749j ? 1 : 0);
            parcel.writeList(this.f746g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$f */
    /* loaded from: classes.dex */
    public class C0188f {

        /* renamed from: a */
        public final ArrayList<View> f750a = new ArrayList<>();

        /* renamed from: b */
        public int f751b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f752c = Integer.MIN_VALUE;

        /* renamed from: d */
        public final int f753d;

        public C0188f(int i) {
            this.f753d = i;
        }

        /* renamed from: d */
        public static C0182c m1174d(View view) {
            return (C0182c) view.getLayoutParams();
        }

        /* renamed from: a */
        public final void m1177a() {
            ArrayList<View> arrayList = this.f750a;
            View view = arrayList.get(arrayList.size() - 1);
            C0182c m1174d = m1174d(view);
            this.f752c = StaggeredGridLayoutManager.this.f724j.mo1147b(view);
            m1174d.getClass();
        }

        /* renamed from: b */
        public final void m1176b() {
            this.f750a.clear();
            this.f751b = Integer.MIN_VALUE;
            this.f752c = Integer.MIN_VALUE;
        }

        /* renamed from: c */
        public final int m1175c(int i) {
            int i2 = this.f752c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f750a.size() == 0) {
                return i;
            }
            m1177a();
            return this.f752c;
        }

        /* renamed from: e */
        public final int m1173e(int i) {
            int i2 = this.f751b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            ArrayList<View> arrayList = this.f750a;
            if (arrayList.size() == 0) {
                return i;
            }
            View view = arrayList.get(0);
            C0182c m1174d = m1174d(view);
            this.f751b = StaggeredGridLayoutManager.this.f724j.mo1146c(view);
            m1174d.getClass();
            return this.f751b;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f722h = -1;
        this.f727m = false;
        C0183d c0183d = new C0183d();
        this.f729o = c0183d;
        this.f730p = 2;
        new Rect();
        new C0181b(this);
        this.f732r = true;
        this.f733s = new RunnableC0180a();
        C0212k.AbstractC0224j.C0227c m1082x = C0212k.AbstractC0224j.m1082x(context, attributeSet, i, i2);
        int i3 = m1082x.f900a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        mo1105a(null);
        if (i3 != this.f726l) {
            this.f726l = i3;
            AbstractC0211j abstractC0211j = this.f724j;
            this.f724j = this.f725k;
            this.f725k = abstractC0211j;
            m1107I();
        }
        int i4 = m1082x.f901b;
        mo1105a(null);
        if (i4 != this.f722h) {
            c0183d.f735a = null;
            m1107I();
            this.f722h = i4;
            new BitSet(this.f722h);
            this.f723i = new C0188f[this.f722h];
            for (int i5 = 0; i5 < this.f722h; i5++) {
                this.f723i[i5] = new C0188f(i5);
            }
            m1107I();
        }
        boolean z = m1082x.f902c;
        mo1105a(null);
        C0186e c0186e = this.f731q;
        if (c0186e != null && c0186e.f747h != z) {
            c0186e.f747h = z;
        }
        this.f727m = z;
        m1107I();
        new C0206f();
        this.f724j = AbstractC0211j.m1148a(this, this.f726l);
        this.f725k = AbstractC0211j.m1148a(this, 1 - this.f726l);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: A */
    public final void mo1115A(C0212k c0212k) {
        C0212k c0212k2 = this.f892b;
        if (c0212k2 != null) {
            c0212k2.removeCallbacks(this.f733s);
        }
        for (int i = 0; i < this.f722h; i++) {
            this.f723i[i].m1176b();
        }
        c0212k.requestLayout();
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: B */
    public final void mo1114B(AccessibilityEvent accessibilityEvent) {
        super.mo1114B(accessibilityEvent);
        if (m1090p() > 0) {
            View m1183P = m1183P(false);
            View m1184O = m1184O(false);
            if (m1183P == null || m1184O == null) {
                return;
            }
            C0212k.AbstractC0224j.m1083w(m1183P);
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: C */
    public final void mo1113C(Parcelable parcelable) {
        if (parcelable instanceof C0186e) {
            this.f731q = (C0186e) parcelable;
            m1107I();
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: D */
    public final Parcelable mo1112D() {
        View m1183P;
        C0186e c0186e = this.f731q;
        if (c0186e != null) {
            return new C0186e(c0186e);
        }
        C0186e c0186e2 = new C0186e();
        c0186e2.f747h = this.f727m;
        c0186e2.f748i = false;
        c0186e2.f749j = false;
        C0183d c0183d = this.f729o;
        if (c0183d != null) {
            c0183d.getClass();
        }
        c0186e2.f744e = 0;
        if (m1090p() > 0) {
            m1182Q();
            c0186e2.f740a = 0;
            if (this.f728n) {
                m1183P = m1184O(true);
            } else {
                m1183P = m1183P(true);
            }
            if (m1183P == null) {
                c0186e2.f741b = -1;
                int i = this.f722h;
                c0186e2.f742c = i;
                c0186e2.f743d = new int[i];
                for (int i2 = 0; i2 < this.f722h; i2++) {
                    int m1173e = this.f723i[i2].m1173e(Integer.MIN_VALUE);
                    if (m1173e != Integer.MIN_VALUE) {
                        m1173e -= this.f724j.mo1144e();
                    }
                    c0186e2.f743d[i2] = m1173e;
                }
            } else {
                C0212k.AbstractC0224j.m1083w(m1183P);
                throw null;
            }
        } else {
            c0186e2.f740a = -1;
            c0186e2.f741b = -1;
            c0186e2.f742c = 0;
        }
        return c0186e2;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: E */
    public final void mo1111E(int i) {
        if (i == 0) {
            m1188K();
        }
    }

    /* renamed from: K */
    public final boolean m1188K() {
        if (m1090p() != 0 && this.f730p != 0 && this.f895e) {
            if (this.f728n) {
                m1181R();
                m1182Q();
            } else {
                m1182Q();
                m1181R();
            }
            if (m1180S() != null) {
                C0183d c0183d = this.f729o;
                c0183d.getClass();
                c0183d.f735a = null;
                m1107I();
                return true;
            }
        }
        return false;
    }

    /* renamed from: L */
    public final int m1187L(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return 0;
        }
        AbstractC0211j abstractC0211j = this.f724j;
        boolean z = this.f732r;
        return C0246o.m1057a(c0238s, abstractC0211j, m1183P(!z), m1184O(!z), this, this.f732r);
    }

    /* renamed from: M */
    public final void m1186M(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return;
        }
        boolean z = !this.f732r;
        View m1183P = m1183P(z);
        View m1184O = m1184O(z);
        if (m1090p() != 0 && c0238s.m1069a() != 0 && m1183P != null && m1184O != null) {
            C0212k.AbstractC0224j.m1083w(m1183P);
            throw null;
        }
    }

    /* renamed from: N */
    public final int m1185N(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return 0;
        }
        AbstractC0211j abstractC0211j = this.f724j;
        boolean z = this.f732r;
        return C0246o.m1056b(c0238s, abstractC0211j, m1183P(!z), m1184O(!z), this, this.f732r);
    }

    /* renamed from: O */
    public final View m1184O(boolean z) {
        int mo1144e = this.f724j.mo1144e();
        int mo1145d = this.f724j.mo1145d();
        View view = null;
        for (int m1090p = m1090p() - 1; m1090p >= 0; m1090p--) {
            View m1091o = m1091o(m1090p);
            int mo1146c = this.f724j.mo1146c(m1091o);
            int mo1147b = this.f724j.mo1147b(m1091o);
            if (mo1147b > mo1144e && mo1146c < mo1145d) {
                if (mo1147b <= mo1145d || !z) {
                    return m1091o;
                }
                if (view == null) {
                    view = m1091o;
                }
            }
        }
        return view;
    }

    /* renamed from: P */
    public final View m1183P(boolean z) {
        int mo1144e = this.f724j.mo1144e();
        int mo1145d = this.f724j.mo1145d();
        int m1090p = m1090p();
        View view = null;
        for (int i = 0; i < m1090p; i++) {
            View m1091o = m1091o(i);
            int mo1146c = this.f724j.mo1146c(m1091o);
            if (this.f724j.mo1147b(m1091o) > mo1144e && mo1146c < mo1145d) {
                if (mo1146c >= mo1144e || !z) {
                    return m1091o;
                }
                if (view == null) {
                    view = m1091o;
                }
            }
        }
        return view;
    }

    /* renamed from: Q */
    public final void m1182Q() {
        if (m1090p() == 0) {
            return;
        }
        C0212k.AbstractC0224j.m1083w(m1091o(0));
        throw null;
    }

    /* renamed from: R */
    public final void m1181R() {
        int m1090p = m1090p();
        if (m1090p == 0) {
            return;
        }
        C0212k.AbstractC0224j.m1083w(m1091o(m1090p - 1));
        throw null;
    }

    /* renamed from: S */
    public final View m1180S() {
        int i;
        int m1090p = m1090p() - 1;
        new BitSet(this.f722h).set(0, this.f722h, true);
        if (this.f726l == 1) {
            m1179T();
        }
        if (this.f728n) {
            i = -1;
        } else {
            i = m1090p + 1;
            m1090p = 0;
        }
        if (m1090p == i) {
            return null;
        }
        ((C0182c) m1091o(m1090p).getLayoutParams()).getClass();
        throw null;
    }

    /* renamed from: T */
    public final boolean m1179T() {
        C0212k c0212k = this.f892b;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (c0212k.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: a */
    public final void mo1105a(String str) {
        if (this.f731q == null) {
            super.mo1105a(str);
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: b */
    public final boolean mo1104b() {
        return this.f726l == 0;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: c */
    public final boolean mo1103c() {
        return this.f726l == 1;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: d */
    public final boolean mo1102d(C0212k.C0228k c0228k) {
        return c0228k instanceof C0182c;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: f */
    public final int mo1100f(C0212k.C0238s c0238s) {
        return m1187L(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: g */
    public final void mo1099g(C0212k.C0238s c0238s) {
        m1186M(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: h */
    public final int mo1098h(C0212k.C0238s c0238s) {
        return m1185N(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: i */
    public final int mo1097i(C0212k.C0238s c0238s) {
        return m1187L(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: j */
    public final void mo1096j(C0212k.C0238s c0238s) {
        m1186M(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: k */
    public final int mo1095k(C0212k.C0238s c0238s) {
        return m1185N(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: l */
    public final C0212k.C0228k mo1094l() {
        return this.f726l == 0 ? new C0182c(-2, -1) : new C0182c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: m */
    public final C0212k.C0228k mo1093m(Context context, AttributeSet attributeSet) {
        return new C0182c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: n */
    public final C0212k.C0228k mo1092n(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0182c((ViewGroup.MarginLayoutParams) layoutParams) : new C0182c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: q */
    public final int mo1089q(C0212k.C0234p c0234p, C0212k.C0238s c0238s) {
        if (this.f726l == 1) {
            return this.f722h;
        }
        super.mo1089q(c0234p, c0238s);
        return 1;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: y */
    public final int mo1081y(C0212k.C0234p c0234p, C0212k.C0238s c0238s) {
        if (this.f726l == 0) {
            return this.f722h;
        }
        super.mo1081y(c0234p, c0238s);
        return 1;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: z */
    public final boolean mo1080z() {
        return this.f730p != 0;
    }
}
