package p039k;

import p046m1.C0736h;
/* renamed from: k.i */
/* loaded from: classes.dex */
public final class C0667i<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f2307e = new Object();

    /* renamed from: a */
    public boolean f2308a;

    /* renamed from: b */
    public int[] f2309b;

    /* renamed from: c */
    public Object[] f2310c;

    /* renamed from: d */
    public int f2311d;

    public C0667i() {
        this(10);
    }

    public C0667i(int i) {
        this.f2308a = false;
        if (i == 0) {
            this.f2309b = C0736h.f2539L;
            this.f2310c = C0736h.f2540M;
            return;
        }
        int i2 = i * 4;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.f2309b = new int[i5];
        this.f2310c = new Object[i5];
    }

    /* renamed from: a */
    public final void m396a(int i, E e) {
        int i2 = this.f2311d;
        if (i2 != 0 && i <= this.f2309b[i2 - 1]) {
            m392e(i, e);
            return;
        }
        if (this.f2308a && i2 >= this.f2309b.length) {
            m394c();
        }
        int i3 = this.f2311d;
        if (i3 >= this.f2309b.length) {
            int i4 = (i3 + 1) * 4;
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
            int i7 = i4 / 4;
            int[] iArr = new int[i7];
            Object[] objArr = new Object[i7];
            int[] iArr2 = this.f2309b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f2310c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2309b = iArr;
            this.f2310c = objArr;
        }
        this.f2309b[i3] = i;
        this.f2310c[i3] = e;
        this.f2311d = i3 + 1;
    }

    /* renamed from: b */
    public final C0667i<E> clone() {
        try {
            C0667i<E> c0667i = (C0667i) super.clone();
            c0667i.f2309b = (int[]) this.f2309b.clone();
            c0667i.f2310c = (Object[]) this.f2310c.clone();
            return c0667i;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: c */
    public final void m394c() {
        int i = this.f2311d;
        int[] iArr = this.f2309b;
        Object[] objArr = this.f2310c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f2307e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2308a = false;
        this.f2311d = i2;
    }

    /* renamed from: d */
    public final Object m393d(int i, Integer num) {
        Object obj;
        int m294f = C0736h.m294f(this.f2311d, i, this.f2309b);
        return (m294f < 0 || (obj = this.f2310c[m294f]) == f2307e) ? num : obj;
    }

    /* renamed from: e */
    public final void m392e(int i, E e) {
        int m294f = C0736h.m294f(this.f2311d, i, this.f2309b);
        if (m294f >= 0) {
            this.f2310c[m294f] = e;
            return;
        }
        int i2 = ~m294f;
        int i3 = this.f2311d;
        if (i2 < i3) {
            Object[] objArr = this.f2310c;
            if (objArr[i2] == f2307e) {
                this.f2309b[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (this.f2308a && i3 >= this.f2309b.length) {
            m394c();
            i2 = ~C0736h.m294f(this.f2311d, i, this.f2309b);
        }
        int i4 = this.f2311d;
        if (i4 >= this.f2309b.length) {
            int i5 = (i4 + 1) * 4;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 4;
            int[] iArr = new int[i8];
            Object[] objArr2 = new Object[i8];
            int[] iArr2 = this.f2309b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f2310c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2309b = iArr;
            this.f2310c = objArr2;
        }
        int i9 = this.f2311d - i2;
        if (i9 != 0) {
            int[] iArr3 = this.f2309b;
            int i10 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i10, i9);
            Object[] objArr4 = this.f2310c;
            System.arraycopy(objArr4, i2, objArr4, i10, this.f2311d - i2);
        }
        this.f2309b[i2] = i;
        this.f2310c[i2] = e;
        this.f2311d++;
    }

    /* renamed from: f */
    public final int m391f() {
        if (this.f2308a) {
            m394c();
        }
        return this.f2311d;
    }

    /* renamed from: g */
    public final E m390g(int i) {
        if (this.f2308a) {
            m394c();
        }
        return (E) this.f2310c[i];
    }

    public final String toString() {
        if (m391f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2311d * 28);
        sb.append('{');
        for (int i = 0; i < this.f2311d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.f2308a) {
                m394c();
            }
            sb.append(this.f2309b[i]);
            sb.append('=');
            E m390g = m390g(i);
            if (m390g != this) {
                sb.append(m390g);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
