package p039k;

import java.util.ConcurrentModificationException;
import java.util.Map;
import p046m1.C0736h;
/* renamed from: k.h */
/* loaded from: classes.dex */
public class C0666h<K, V> {

    /* renamed from: d */
    public static Object[] f2300d;

    /* renamed from: e */
    public static int f2301e;

    /* renamed from: f */
    public static Object[] f2302f;

    /* renamed from: g */
    public static int f2303g;

    /* renamed from: a */
    public int[] f2304a;

    /* renamed from: b */
    public Object[] f2305b;

    /* renamed from: c */
    public int f2306c;

    public C0666h() {
        this.f2304a = C0736h.f2539L;
        this.f2305b = C0736h.f2540M;
        this.f2306c = 0;
    }

    public C0666h(int i) {
        if (i == 0) {
            this.f2304a = C0736h.f2539L;
            this.f2305b = C0736h.f2540M;
        } else {
            m406a(i);
        }
        this.f2306c = 0;
    }

    /* renamed from: a */
    private void m406a(int i) {
        if (i == 8) {
            synchronized (C0666h.class) {
                Object[] objArr = f2302f;
                if (objArr != null) {
                    this.f2305b = objArr;
                    f2302f = (Object[]) objArr[0];
                    this.f2304a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2303g--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C0666h.class) {
                Object[] objArr2 = f2300d;
                if (objArr2 != null) {
                    this.f2305b = objArr2;
                    f2300d = (Object[]) objArr2[0];
                    this.f2304a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2301e--;
                    return;
                }
            }
        }
        this.f2304a = new int[i];
        this.f2305b = new Object[i << 1];
    }

    /* renamed from: c */
    public static void m404c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0666h.class) {
                if (f2303g < 10) {
                    objArr[0] = f2302f;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f2302f = objArr;
                    f2303g++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0666h.class) {
                if (f2301e < 10) {
                    objArr[0] = f2300d;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2300d = objArr;
                    f2301e++;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m405b(int i) {
        int i2 = this.f2306c;
        int[] iArr = this.f2304a;
        if (iArr.length < i) {
            Object[] objArr = this.f2305b;
            m406a(i);
            if (this.f2306c > 0) {
                System.arraycopy(iArr, 0, this.f2304a, 0, i2);
                System.arraycopy(objArr, 0, this.f2305b, 0, i2 << 1);
            }
            m404c(iArr, objArr, i2);
        }
        if (this.f2306c != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        int i = this.f2306c;
        if (i > 0) {
            int[] iArr = this.f2304a;
            Object[] objArr = this.f2305b;
            this.f2304a = C0736h.f2539L;
            this.f2305b = C0736h.f2540M;
            this.f2306c = 0;
            m404c(iArr, objArr, i);
        }
        if (this.f2306c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return m402e(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return m400g(obj) >= 0;
    }

    /* renamed from: d */
    public final int m403d(int i, Object obj) {
        int i2 = this.f2306c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int m294f = C0736h.m294f(i2, i, this.f2304a);
            if (m294f < 0) {
                return m294f;
            }
            if (obj.equals(this.f2305b[m294f << 1])) {
                return m294f;
            }
            int i3 = m294f + 1;
            while (i3 < i2 && this.f2304a[i3] == i) {
                if (obj.equals(this.f2305b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m294f - 1; i4 >= 0 && this.f2304a[i4] == i; i4--) {
                if (obj.equals(this.f2305b[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: e */
    public final int m402e(Object obj) {
        return obj == null ? m401f() : m403d(obj.hashCode(), obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0666h) {
            C0666h c0666h = (C0666h) obj;
            if (this.f2306c != c0666h.f2306c) {
                return false;
            }
            for (int i = 0; i < this.f2306c; i++) {
                try {
                    K m399h = m399h(i);
                    V m397j = m397j(i);
                    Object orDefault = c0666h.getOrDefault(m399h, null);
                    if (m397j == null) {
                        if (orDefault != null || !c0666h.containsKey(m399h)) {
                            return false;
                        }
                    } else if (!m397j.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f2306c != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2306c; i2++) {
                try {
                    K m399h2 = m399h(i2);
                    V m397j2 = m397j(i2);
                    Object obj2 = map.get(m399h2);
                    if (m397j2 == null) {
                        if (obj2 != null || !map.containsKey(m399h2)) {
                            return false;
                        }
                    } else if (!m397j2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final int m401f() {
        int i = this.f2306c;
        if (i == 0) {
            return -1;
        }
        try {
            int m294f = C0736h.m294f(i, 0, this.f2304a);
            if (m294f < 0) {
                return m294f;
            }
            if (this.f2305b[m294f << 1] == null) {
                return m294f;
            }
            int i2 = m294f + 1;
            while (i2 < i && this.f2304a[i2] == 0) {
                if (this.f2305b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m294f - 1; i3 >= 0 && this.f2304a[i3] == 0; i3--) {
                if (this.f2305b[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: g */
    public final int m400g(Object obj) {
        int i = this.f2306c * 2;
        Object[] objArr = this.f2305b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final V getOrDefault(Object obj, V v) {
        int m402e = m402e(obj);
        return m402e >= 0 ? (V) this.f2305b[(m402e << 1) + 1] : v;
    }

    /* renamed from: h */
    public final K m399h(int i) {
        return (K) this.f2305b[i << 1];
    }

    public final int hashCode() {
        int[] iArr = this.f2304a;
        Object[] objArr = this.f2305b;
        int i = this.f2306c;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    /* renamed from: i */
    public final V m398i(int i) {
        Object[] objArr = this.f2305b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f2306c;
        int i4 = 0;
        if (i3 <= 1) {
            m404c(this.f2304a, objArr, i3);
            this.f2304a = C0736h.f2539L;
            this.f2305b = C0736h.f2540M;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f2304a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, iArr, i, i7);
                    Object[] objArr2 = this.f2305b;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.f2305b;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                m406a(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.f2306c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f2304a, 0, i);
                    System.arraycopy(objArr, 0, this.f2305b, 0, i2);
                }
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, this.f2304a, i, i10);
                    System.arraycopy(objArr, i9 << 1, this.f2305b, i2, i10 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 == this.f2306c) {
            this.f2306c = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public final boolean isEmpty() {
        return this.f2306c <= 0;
    }

    /* renamed from: j */
    public final V m397j(int i) {
        return (V) this.f2305b[(i << 1) + 1];
    }

    public final V put(K k, V v) {
        int i;
        int m403d;
        int i2 = this.f2306c;
        if (k == null) {
            m403d = m401f();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            m403d = m403d(hashCode, k);
        }
        if (m403d >= 0) {
            int i3 = (m403d << 1) + 1;
            Object[] objArr = this.f2305b;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~m403d;
        int[] iArr = this.f2304a;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.f2305b;
            m406a(i5);
            if (i2 != this.f2306c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f2304a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f2305b, 0, objArr2.length);
            }
            m404c(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f2304a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f2305b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f2306c - i4) << 1);
        }
        int i7 = this.f2306c;
        if (i2 == i7) {
            int[] iArr4 = this.f2304a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f2305b;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f2306c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final V putIfAbsent(K k, V v) {
        V orDefault = getOrDefault(k, null);
        if (orDefault == null) {
            return put(k, v);
        }
        return orDefault;
    }

    public final V remove(Object obj) {
        int m402e = m402e(obj);
        if (m402e >= 0) {
            return m398i(m402e);
        }
        return null;
    }

    public final boolean remove(Object obj, Object obj2) {
        int m402e = m402e(obj);
        if (m402e >= 0) {
            V m397j = m397j(m402e);
            if (obj2 == m397j || (obj2 != null && obj2.equals(m397j))) {
                m398i(m402e);
                return true;
            }
            return false;
        }
        return false;
    }

    public final V replace(K k, V v) {
        int m402e = m402e(k);
        if (m402e >= 0) {
            int i = (m402e << 1) + 1;
            Object[] objArr = this.f2305b;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
        return null;
    }

    public final int size() {
        return this.f2306c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2306c * 28);
        sb.append('{');
        for (int i = 0; i < this.f2306c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m399h = m399h(i);
            if (m399h != this) {
                sb.append(m399h);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m397j = m397j(i);
            if (m397j != this) {
                sb.append(m397j);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final boolean replace(K k, V v, V v2) {
        int m402e = m402e(k);
        if (m402e >= 0) {
            V m397j = m397j(m402e);
            if (m397j == v || (v != null && v.equals(m397j))) {
                int i = (m402e << 1) + 1;
                Object[] objArr = this.f2305b;
                Object obj = objArr[i];
                objArr[i] = v2;
                return true;
            }
            return false;
        }
        return false;
    }
}
