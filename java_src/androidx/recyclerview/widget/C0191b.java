package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes.dex */
public final class C0191b {

    /* renamed from: a */
    public final InterfaceC0193b f759a;

    /* renamed from: b */
    public final C0192a f760b = new C0192a();

    /* renamed from: c */
    public final ArrayList f761c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes.dex */
    public static class C0192a {

        /* renamed from: a */
        public long f762a = 0;

        /* renamed from: b */
        public C0192a f763b;

        /* renamed from: a */
        public final int m1163a(int i) {
            long j;
            C0192a c0192a = this.f763b;
            if (c0192a == null) {
                if (i >= 64) {
                    j = this.f762a;
                    return Long.bitCount(j);
                }
            } else if (i >= 64) {
                return Long.bitCount(this.f762a) + c0192a.m1163a(i - 64);
            }
            j = this.f762a & ((1 << i) - 1);
            return Long.bitCount(j);
        }

        /* renamed from: b */
        public final void m1162b() {
            if (this.f763b == null) {
                this.f763b = new C0192a();
            }
        }

        /* renamed from: c */
        public final boolean m1161c(int i) {
            if (i < 64) {
                return (this.f762a & (1 << i)) != 0;
            }
            m1162b();
            return this.f763b.m1161c(i - 64);
        }

        /* renamed from: d */
        public final boolean m1160d(int i) {
            if (i >= 64) {
                m1162b();
                return this.f763b.m1160d(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f762a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.f762a = j3;
            long j4 = j - 1;
            this.f762a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            C0192a c0192a = this.f763b;
            if (c0192a != null) {
                if (c0192a.m1161c(0)) {
                    m1158f(63);
                }
                this.f763b.m1160d(0);
            }
            return z;
        }

        /* renamed from: e */
        public final void m1159e() {
            this.f762a = 0L;
            C0192a c0192a = this.f763b;
            if (c0192a != null) {
                c0192a.m1159e();
            }
        }

        /* renamed from: f */
        public final void m1158f(int i) {
            if (i < 64) {
                this.f762a |= 1 << i;
                return;
            }
            m1162b();
            this.f763b.m1158f(i - 64);
        }

        public final String toString() {
            if (this.f763b == null) {
                return Long.toBinaryString(this.f762a);
            }
            return this.f763b.toString() + "xx" + Long.toBinaryString(this.f762a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0193b {
    }

    public C0191b(C0242l c0242l) {
        this.f759a = c0242l;
    }

    /* renamed from: a */
    public final View m1169a(int i) {
        return ((C0242l) this.f759a).f944a.getChildAt(m1167c(i));
    }

    /* renamed from: b */
    public final int m1168b() {
        return ((C0242l) this.f759a).m1059a() - this.f761c.size();
    }

    /* renamed from: c */
    public final int m1167c(int i) {
        if (i < 0) {
            return -1;
        }
        int m1059a = ((C0242l) this.f759a).m1059a();
        int i2 = i;
        while (i2 < m1059a) {
            C0192a c0192a = this.f760b;
            int m1163a = i - (i2 - c0192a.m1163a(i2));
            if (m1163a == 0) {
                while (c0192a.m1161c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += m1163a;
        }
        return -1;
    }

    /* renamed from: d */
    public final View m1166d(int i) {
        return ((C0242l) this.f759a).f944a.getChildAt(i);
    }

    /* renamed from: e */
    public final int m1165e() {
        return ((C0242l) this.f759a).m1059a();
    }

    /* renamed from: f */
    public final void m1164f(View view) {
        if (this.f761c.remove(view)) {
            ((C0242l) this.f759a).getClass();
            C0212k.m1132m(view);
        }
    }

    public final String toString() {
        return this.f760b.toString() + ", hidden list:" + this.f761c.size();
    }
}
