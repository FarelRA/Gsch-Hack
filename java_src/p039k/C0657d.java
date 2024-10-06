package p039k;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p039k.AbstractC0660g;
import p046m1.C0736h;
/* renamed from: k.d */
/* loaded from: classes.dex */
public final class C0657d<E> implements Collection<E>, Set<E> {

    /* renamed from: e */
    public static final int[] f2265e = new int[0];

    /* renamed from: f */
    public static final Object[] f2266f = new Object[0];

    /* renamed from: g */
    public static Object[] f2267g;

    /* renamed from: h */
    public static int f2268h;

    /* renamed from: i */
    public static Object[] f2269i;

    /* renamed from: j */
    public static int f2270j;

    /* renamed from: a */
    public int[] f2271a = f2265e;

    /* renamed from: b */
    public Object[] f2272b = f2266f;

    /* renamed from: c */
    public int f2273c = 0;

    /* renamed from: d */
    public C0656c f2274d;

    /* renamed from: b */
    public static void m432b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0657d.class) {
                if (f2270j < 10) {
                    objArr[0] = f2269i;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f2269i = objArr;
                    f2270j++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0657d.class) {
                if (f2268h < 10) {
                    objArr[0] = f2267g;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2267g = objArr;
                    f2268h++;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m433a(int i) {
        if (i == 8) {
            synchronized (C0657d.class) {
                Object[] objArr = f2269i;
                if (objArr != null) {
                    this.f2272b = objArr;
                    f2269i = (Object[]) objArr[0];
                    this.f2271a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2270j--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C0657d.class) {
                Object[] objArr2 = f2267g;
                if (objArr2 != null) {
                    this.f2272b = objArr2;
                    f2267g = (Object[]) objArr2[0];
                    this.f2271a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2268h--;
                    return;
                }
            }
        }
        this.f2271a = new int[i];
        this.f2272b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e) {
        int i;
        int m431c;
        if (e == null) {
            m431c = m430d();
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            m431c = m431c(hashCode, e);
        }
        if (m431c >= 0) {
            return false;
        }
        int i2 = ~m431c;
        int i3 = this.f2273c;
        int[] iArr = this.f2271a;
        if (i3 >= iArr.length) {
            int i4 = 8;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f2272b;
            m433a(i4);
            int[] iArr2 = this.f2271a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2272b, 0, objArr.length);
            }
            m432b(iArr, objArr, this.f2273c);
        }
        int i5 = this.f2273c;
        if (i2 < i5) {
            int[] iArr3 = this.f2271a;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f2272b;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f2273c - i2);
        }
        this.f2271a[i2] = i;
        this.f2272b[i2] = e;
        this.f2273c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.f2273c;
        int[] iArr = this.f2271a;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f2272b;
            m433a(size);
            int i = this.f2273c;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f2271a, 0, i);
                System.arraycopy(objArr, 0, this.f2272b, 0, this.f2273c);
            }
            m432b(iArr, objArr, this.f2273c);
        }
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    /* renamed from: c */
    public final int m431c(int i, Object obj) {
        int i2 = this.f2273c;
        if (i2 == 0) {
            return -1;
        }
        int m294f = C0736h.m294f(i2, i, this.f2271a);
        if (m294f >= 0 && !obj.equals(this.f2272b[m294f])) {
            int i3 = m294f + 1;
            while (i3 < i2 && this.f2271a[i3] == i) {
                if (obj.equals(this.f2272b[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m294f - 1; i4 >= 0 && this.f2271a[i4] == i; i4--) {
                if (obj.equals(this.f2272b[i4])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return m294f;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f2273c;
        if (i != 0) {
            m432b(this.f2271a, this.f2272b, i);
            this.f2271a = f2265e;
            this.f2272b = f2266f;
            this.f2273c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public final int m430d() {
        int i = this.f2273c;
        if (i == 0) {
            return -1;
        }
        int m294f = C0736h.m294f(i, 0, this.f2271a);
        if (m294f >= 0 && this.f2272b[m294f] != null) {
            int i2 = m294f + 1;
            while (i2 < i && this.f2271a[i2] == 0) {
                if (this.f2272b[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m294f - 1; i3 >= 0 && this.f2271a[i3] == 0; i3--) {
                if (this.f2272b[i3] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return m294f;
    }

    /* renamed from: e */
    public final void m429e(int i) {
        Object[] objArr = this.f2272b;
        Object obj = objArr[i];
        int i2 = this.f2273c;
        if (i2 <= 1) {
            m432b(this.f2271a, objArr, i2);
            this.f2271a = f2265e;
            this.f2272b = f2266f;
            this.f2273c = 0;
            return;
        }
        int[] iArr = this.f2271a;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            int i3 = i2 - 1;
            this.f2273c = i3;
            if (i < i3) {
                int i4 = i + 1;
                System.arraycopy(iArr, i4, iArr, i, i3 - i);
                Object[] objArr2 = this.f2272b;
                System.arraycopy(objArr2, i4, objArr2, i, this.f2273c - i);
            }
            this.f2272b[this.f2273c] = null;
            return;
        }
        m433a(i2 > 8 ? i2 + (i2 >> 1) : 8);
        this.f2273c--;
        if (i > 0) {
            System.arraycopy(iArr, 0, this.f2271a, 0, i);
            System.arraycopy(objArr, 0, this.f2272b, 0, i);
        }
        int i5 = this.f2273c;
        if (i < i5) {
            int i6 = i + 1;
            System.arraycopy(iArr, i6, this.f2271a, i, i5 - i);
            System.arraycopy(objArr, i6, this.f2272b, i, this.f2273c - i);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f2273c != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f2273c; i++) {
                try {
                    if (!set.contains(this.f2272b[i])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f2271a;
        int i = this.f2273c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public final int indexOf(Object obj) {
        return obj == null ? m430d() : m431c(obj.hashCode(), obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f2273c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.f2274d == null) {
            this.f2274d = new C0656c(this);
        }
        C0656c c0656c = this.f2274d;
        if (c0656c.f2286b == null) {
            c0656c.f2286b = new AbstractC0660g.C0663c();
        }
        return (Iterator<E>) c0656c.f2286b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m429e(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f2273c - 1; i >= 0; i--) {
            if (!collection.contains(this.f2272b[i])) {
                m429e(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f2273c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f2273c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f2272b, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f2273c) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2273c));
        }
        System.arraycopy(this.f2272b, 0, tArr, 0, this.f2273c);
        int length = tArr.length;
        int i = this.f2273c;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2273c * 14);
        sb.append('{');
        for (int i = 0; i < this.f2273c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f2272b[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
