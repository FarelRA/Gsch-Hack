package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.C0212k;
/* loaded from: classes.dex */
public class LinearLayoutManager extends C0212k.AbstractC0224j {

    /* renamed from: i */
    public C0177b f707i;

    /* renamed from: j */
    public AbstractC0211j f708j;

    /* renamed from: k */
    public boolean f709k;

    /* renamed from: h */
    public int f706h = 1;

    /* renamed from: l */
    public boolean f710l = false;

    /* renamed from: m */
    public boolean f711m = false;

    /* renamed from: n */
    public final boolean f712n = true;

    /* renamed from: o */
    public C0178c f713o = null;

    /* renamed from: p */
    public final C0176a f714p = new C0176a();

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes.dex */
    public static class C0176a {

        /* renamed from: a */
        public int f715a;

        /* renamed from: b */
        public int f716b;

        /* renamed from: c */
        public boolean f717c;

        /* renamed from: d */
        public boolean f718d;

        public C0176a() {
            m1189a();
        }

        /* renamed from: a */
        public final void m1189a() {
            this.f715a = -1;
            this.f716b = Integer.MIN_VALUE;
            this.f717c = false;
            this.f718d = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.f715a + ", mCoordinate=" + this.f716b + ", mLayoutFromEnd=" + this.f717c + ", mValid=" + this.f718d + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes.dex */
    public static class C0177b {
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes.dex */
    public static class C0178c implements Parcelable {
        public static final Parcelable.Creator<C0178c> CREATOR = new C0179a();

        /* renamed from: a */
        public int f719a;

        /* renamed from: b */
        public int f720b;

        /* renamed from: c */
        public boolean f721c;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c$a */
        /* loaded from: classes.dex */
        public static class C0179a implements Parcelable.Creator<C0178c> {
            @Override // android.os.Parcelable.Creator
            public final C0178c createFromParcel(Parcel parcel) {
                return new C0178c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final C0178c[] newArray(int i) {
                return new C0178c[i];
            }
        }

        public C0178c() {
        }

        public C0178c(Parcel parcel) {
            this.f719a = parcel.readInt();
            this.f720b = parcel.readInt();
            this.f721c = parcel.readInt() == 1;
        }

        public C0178c(C0178c c0178c) {
            this.f719a = c0178c.f719a;
            this.f720b = c0178c.f720b;
            this.f721c = c0178c.f721c;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f719a);
            parcel.writeInt(this.f720b);
            parcel.writeInt(this.f721c ? 1 : 0);
        }
    }

    public LinearLayoutManager() {
        this.f709k = false;
        m1191R(1);
        mo1105a(null);
        if (this.f709k) {
            this.f709k = false;
            m1107I();
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: A */
    public final void mo1115A(C0212k c0212k) {
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: B */
    public final void mo1114B(AccessibilityEvent accessibilityEvent) {
        super.mo1114B(accessibilityEvent);
        if (m1090p() > 0) {
            View m1192Q = m1192Q(0, m1090p(), false);
            if (m1192Q == null) {
                accessibilityEvent.setFromIndex(-1);
                View m1192Q2 = m1192Q(m1090p() - 1, -1, false);
                if (m1192Q2 == null) {
                    accessibilityEvent.setToIndex(-1);
                    return;
                } else {
                    C0212k.AbstractC0224j.m1083w(m1192Q2);
                    throw null;
                }
            }
            C0212k.AbstractC0224j.m1083w(m1192Q);
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: C */
    public final void mo1113C(Parcelable parcelable) {
        if (parcelable instanceof C0178c) {
            this.f713o = (C0178c) parcelable;
            m1107I();
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: D */
    public final Parcelable mo1112D() {
        C0178c c0178c = this.f713o;
        if (c0178c != null) {
            return new C0178c(c0178c);
        }
        C0178c c0178c2 = new C0178c();
        if (m1090p() > 0) {
            m1195N();
            boolean z = this.f710l;
            int i = 0;
            boolean z2 = false ^ z;
            c0178c2.f721c = z2;
            if (z2) {
                if (!z) {
                    i = m1090p() - 1;
                }
                View m1091o = m1091o(i);
                c0178c2.f720b = this.f708j.mo1145d() - this.f708j.mo1147b(m1091o);
                C0212k.AbstractC0224j.m1083w(m1091o);
                throw null;
            }
            if (z) {
                i = m1090p() - 1;
            }
            C0212k.AbstractC0224j.m1083w(m1091o(i));
            throw null;
        }
        c0178c2.f719a = -1;
        return c0178c2;
    }

    /* renamed from: K */
    public final int m1198K(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return 0;
        }
        m1195N();
        AbstractC0211j abstractC0211j = this.f708j;
        boolean z = !this.f712n;
        return C0246o.m1057a(c0238s, abstractC0211j, m1193P(z), m1194O(z), this, this.f712n);
    }

    /* renamed from: L */
    public final void m1197L(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return;
        }
        m1195N();
        boolean z = !this.f712n;
        View m1193P = m1193P(z);
        View m1194O = m1194O(z);
        if (m1090p() != 0 && c0238s.m1069a() != 0 && m1193P != null && m1194O != null) {
            C0212k.AbstractC0224j.m1083w(m1193P);
            throw null;
        }
    }

    /* renamed from: M */
    public final int m1196M(C0212k.C0238s c0238s) {
        if (m1090p() == 0) {
            return 0;
        }
        m1195N();
        AbstractC0211j abstractC0211j = this.f708j;
        boolean z = !this.f712n;
        return C0246o.m1056b(c0238s, abstractC0211j, m1193P(z), m1194O(z), this, this.f712n);
    }

    /* renamed from: N */
    public final void m1195N() {
        if (this.f707i == null) {
            this.f707i = new C0177b();
        }
    }

    /* renamed from: O */
    public final View m1194O(boolean z) {
        int m1090p;
        int i;
        if (this.f710l) {
            i = m1090p();
            m1090p = 0;
        } else {
            m1090p = m1090p() - 1;
            i = -1;
        }
        return m1192Q(m1090p, i, z);
    }

    /* renamed from: P */
    public final View m1193P(boolean z) {
        int m1090p;
        int i;
        if (this.f710l) {
            m1090p = -1;
            i = m1090p() - 1;
        } else {
            m1090p = m1090p();
            i = 0;
        }
        return m1192Q(i, m1090p, z);
    }

    /* renamed from: Q */
    public final View m1192Q(int i, int i2, boolean z) {
        m1195N();
        return (this.f706h == 0 ? this.f893c : this.f894d).m1055a(i, i2, z ? 24579 : 320, 320);
    }

    /* renamed from: R */
    public final void m1191R(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        mo1105a(null);
        if (i != this.f706h || this.f708j == null) {
            this.f708j = AbstractC0211j.m1148a(this, i);
            this.f714p.getClass();
            this.f706h = i;
            m1107I();
        }
    }

    /* renamed from: S */
    public void mo1190S(boolean z) {
        mo1105a(null);
        if (this.f711m == z) {
            return;
        }
        this.f711m = z;
        m1107I();
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: a */
    public final void mo1105a(String str) {
        if (this.f713o == null) {
            super.mo1105a(str);
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: b */
    public final boolean mo1104b() {
        return this.f706h == 0;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: c */
    public final boolean mo1103c() {
        return this.f706h == 1;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: f */
    public final int mo1100f(C0212k.C0238s c0238s) {
        return m1198K(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: g */
    public final void mo1099g(C0212k.C0238s c0238s) {
        m1197L(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: h */
    public final int mo1098h(C0212k.C0238s c0238s) {
        return m1196M(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: i */
    public final int mo1097i(C0212k.C0238s c0238s) {
        return m1198K(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: j */
    public final void mo1096j(C0212k.C0238s c0238s) {
        m1197L(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: k */
    public final int mo1095k(C0212k.C0238s c0238s) {
        return m1196M(c0238s);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: l */
    public C0212k.C0228k mo1094l() {
        return new C0212k.C0228k(-2, -2);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: z */
    public final boolean mo1080z() {
        return true;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f709k = false;
        C0212k.AbstractC0224j.C0227c m1082x = C0212k.AbstractC0224j.m1082x(context, attributeSet, i, i2);
        m1191R(m1082x.f900a);
        boolean z = m1082x.f902c;
        mo1105a(null);
        if (z != this.f709k) {
            this.f709k = z;
            m1107I();
        }
        mo1190S(m1082x.f903d);
    }
}
