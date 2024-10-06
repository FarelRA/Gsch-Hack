package p039k;

import p046m1.C0736h;
/* renamed from: k.e */
/* loaded from: classes.dex */
public final class C0658e<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f2275e = new Object();

    /* renamed from: a */
    public boolean f2276a = false;

    /* renamed from: b */
    public long[] f2277b;

    /* renamed from: c */
    public Object[] f2278c;

    /* renamed from: d */
    public int f2279d;

    public C0658e() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.f2277b = new long[i4];
        this.f2278c = new Object[i4];
    }

    /* renamed from: a */
    public final void m428a(long j, Long l) {
        int i = this.f2279d;
        if (i != 0 && j <= this.f2277b[i - 1]) {
            m423f(j, l);
            return;
        }
        if (this.f2276a && i >= this.f2277b.length) {
            m425d();
        }
        int i2 = this.f2279d;
        if (i2 >= this.f2277b.length) {
            int i3 = (i2 + 1) * 8;
            int i4 = 4;
            while (true) {
                if (i4 >= 32) {
                    break;
                }
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
                i4++;
            }
            int i6 = i3 / 8;
            long[] jArr = new long[i6];
            Object[] objArr = new Object[i6];
            long[] jArr2 = this.f2277b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f2278c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2277b = jArr;
            this.f2278c = objArr;
        }
        this.f2277b[i2] = j;
        this.f2278c[i2] = l;
        this.f2279d = i2 + 1;
    }

    /* renamed from: b */
    public final void m427b() {
        int i = this.f2279d;
        Object[] objArr = this.f2278c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f2279d = 0;
        this.f2276a = false;
    }

    /* renamed from: c */
    public final C0658e<E> clone() {
        try {
            C0658e<E> c0658e = (C0658e) super.clone();
            c0658e.f2277b = (long[]) this.f2277b.clone();
            c0658e.f2278c = (Object[]) this.f2278c.clone();
            return c0658e;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d */
    public final void m425d() {
        int i = this.f2279d;
        long[] jArr = this.f2277b;
        Object[] objArr = this.f2278c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f2275e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2276a = false;
        this.f2279d = i2;
    }

    /* renamed from: e */
    public final Object m424e(long j, Long l) {
        Object obj;
        int m293g = C0736h.m293g(this.f2277b, this.f2279d, j);
        return (m293g < 0 || (obj = this.f2278c[m293g]) == f2275e) ? l : obj;
    }

    /* renamed from: f */
    public final void m423f(long j, E e) {
        int m293g = C0736h.m293g(this.f2277b, this.f2279d, j);
        if (m293g >= 0) {
            this.f2278c[m293g] = e;
            return;
        }
        int i = ~m293g;
        int i2 = this.f2279d;
        if (i < i2) {
            Object[] objArr = this.f2278c;
            if (objArr[i] == f2275e) {
                this.f2277b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        if (this.f2276a && i2 >= this.f2277b.length) {
            m425d();
            i = ~C0736h.m293g(this.f2277b, this.f2279d, j);
        }
        int i3 = this.f2279d;
        if (i3 >= this.f2277b.length) {
            int i4 = (i3 + 1) * 8;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 8;
            long[] jArr = new long[i7];
            Object[] objArr2 = new Object[i7];
            long[] jArr2 = this.f2277b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f2278c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2277b = jArr;
            this.f2278c = objArr2;
        }
        int i8 = this.f2279d - i;
        if (i8 != 0) {
            long[] jArr3 = this.f2277b;
            int i9 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i9, i8);
            Object[] objArr4 = this.f2278c;
            System.arraycopy(objArr4, i, objArr4, i9, this.f2279d - i);
        }
        this.f2277b[i] = j;
        this.f2278c[i] = e;
        this.f2279d++;
    }

    /* renamed from: g */
    public final E m422g(int i) {
        if (this.f2276a) {
            m425d();
        }
        return (E) this.f2278c[i];
    }

    public final String toString() {
        if (this.f2276a) {
            m425d();
        }
        int i = this.f2279d;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2279d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.f2276a) {
                m425d();
            }
            sb.append(this.f2277b[i2]);
            sb.append('=');
            E m422g = m422g(i2);
            if (m422g != this) {
                sb.append(m422g);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
