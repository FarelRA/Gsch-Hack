package p039k;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: k.g */
/* loaded from: classes.dex */
public abstract class AbstractC0660g<K, V> {

    /* renamed from: a */
    public AbstractC0660g<K, V>.C0662b f2285a;

    /* renamed from: b */
    public AbstractC0660g<K, V>.C0663c f2286b;

    /* renamed from: c */
    public AbstractC0660g<K, V>.C0665e f2287c;

    /* renamed from: k.g$a */
    /* loaded from: classes.dex */
    public final class C0661a<T> implements Iterator<T> {

        /* renamed from: a */
        public final int f2288a;

        /* renamed from: b */
        public int f2289b;

        /* renamed from: c */
        public int f2290c;

        /* renamed from: d */
        public boolean f2291d = false;

        public C0661a(int i) {
            this.f2288a = i;
            this.f2289b = AbstractC0660g.this.mo415d();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2290c < this.f2289b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (hasNext()) {
                T t = (T) AbstractC0660g.this.mo417b(this.f2290c, this.f2288a);
                this.f2290c++;
                this.f2291d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f2291d) {
                throw new IllegalStateException();
            }
            int i = this.f2290c - 1;
            this.f2290c = i;
            this.f2289b--;
            this.f2291d = false;
            AbstractC0660g.this.mo411h(i);
        }
    }

    /* renamed from: k.g$b */
    /* loaded from: classes.dex */
    public final class C0662b implements Set<Map.Entry<K, V>> {
        public C0662b() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo415d = abstractC0660g.mo415d();
            for (Map.Entry<K, V> entry : collection) {
                abstractC0660g.mo412g(entry.getKey(), entry.getValue());
            }
            return mo415d != abstractC0660g.mo415d();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC0660g.this.mo418a();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo414e = abstractC0660g.mo414e(key);
            if (mo414e < 0) {
                return false;
            }
            Object mo417b = abstractC0660g.mo417b(mo414e, 1);
            Object value = entry.getValue();
            if (mo417b != value && (mo417b == null || !mo417b.equals(value))) {
                return false;
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC0660g.m409j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int i = 0;
            for (int mo415d = abstractC0660g.mo415d() - 1; mo415d >= 0; mo415d--) {
                Object mo417b = abstractC0660g.mo417b(mo415d, 0);
                Object mo417b2 = abstractC0660g.mo417b(mo415d, 1);
                i += (mo417b == null ? 0 : mo417b.hashCode()) ^ (mo417b2 == null ? 0 : mo417b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0660g.this.mo415d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C0664d();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC0660g.this.mo415d();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: k.g$c */
    /* loaded from: classes.dex */
    public final class C0663c implements Set<K> {
        public C0663c() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC0660g.this.mo418a();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0660g.this.mo414e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> mo416c = AbstractC0660g.this.mo416c();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!mo416c.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC0660g.m409j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int i = 0;
            for (int mo415d = abstractC0660g.mo415d() - 1; mo415d >= 0; mo415d--) {
                Object mo417b = abstractC0660g.mo417b(mo415d, 0);
                i += mo417b == null ? 0 : mo417b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0660g.this.mo415d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new C0661a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo414e = abstractC0660g.mo414e(obj);
            if (mo414e >= 0) {
                abstractC0660g.mo411h(mo414e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> mo416c = AbstractC0660g.this.mo416c();
            int size = mo416c.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                mo416c.remove(it.next());
            }
            if (size != mo416c.size()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return AbstractC0660g.m408k(AbstractC0660g.this.mo416c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC0660g.this.mo415d();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo415d = abstractC0660g.mo415d();
            Object[] objArr = new Object[mo415d];
            for (int i = 0; i < mo415d; i++) {
                objArr[i] = abstractC0660g.mo417b(i, 0);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0660g.this.m407l(0, tArr);
        }
    }

    /* renamed from: k.g$d */
    /* loaded from: classes.dex */
    public final class C0664d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        public int f2295a;

        /* renamed from: c */
        public boolean f2297c = false;

        /* renamed from: b */
        public int f2296b = -1;

        public C0664d() {
            this.f2295a = AbstractC0660g.this.mo415d() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean z;
            boolean z2;
            if (this.f2297c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                int i = this.f2296b;
                AbstractC0660g abstractC0660g = AbstractC0660g.this;
                Object mo417b = abstractC0660g.mo417b(i, 0);
                if (key != mo417b && (key == null || !key.equals(mo417b))) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return false;
                }
                Object value = entry.getValue();
                Object mo417b2 = abstractC0660g.mo417b(this.f2296b, 1);
                if (value != mo417b2 && (value == null || !value.equals(mo417b2))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z2) {
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.f2297c) {
                return (K) AbstractC0660g.this.mo417b(this.f2296b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.f2297c) {
                return (V) AbstractC0660g.this.mo417b(this.f2296b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2296b < this.f2295a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (this.f2297c) {
                int i = this.f2296b;
                AbstractC0660g abstractC0660g = AbstractC0660g.this;
                Object mo417b = abstractC0660g.mo417b(i, 0);
                Object mo417b2 = abstractC0660g.mo417b(this.f2296b, 1);
                return (mo417b == null ? 0 : mo417b.hashCode()) ^ (mo417b2 != null ? mo417b2.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                this.f2296b++;
                this.f2297c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f2297c) {
                throw new IllegalStateException();
            }
            AbstractC0660g.this.mo411h(this.f2296b);
            this.f2296b--;
            this.f2295a--;
            this.f2297c = false;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (this.f2297c) {
                return (V) AbstractC0660g.this.mo410i(this.f2296b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: k.g$e */
    /* loaded from: classes.dex */
    public final class C0665e implements Collection<V> {
        public C0665e() {
        }

        @Override // java.util.Collection
        public final boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            AbstractC0660g.this.mo418a();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0660g.this.mo413f(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0660g.this.mo415d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new C0661a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo413f = abstractC0660g.mo413f(obj);
            if (mo413f >= 0) {
                abstractC0660g.mo411h(mo413f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo415d = abstractC0660g.mo415d();
            int i = 0;
            boolean z = false;
            while (i < mo415d) {
                if (collection.contains(abstractC0660g.mo417b(i, 1))) {
                    abstractC0660g.mo411h(i);
                    i--;
                    mo415d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo415d = abstractC0660g.mo415d();
            int i = 0;
            boolean z = false;
            while (i < mo415d) {
                if (!collection.contains(abstractC0660g.mo417b(i, 1))) {
                    abstractC0660g.mo411h(i);
                    i--;
                    mo415d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return AbstractC0660g.this.mo415d();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            AbstractC0660g abstractC0660g = AbstractC0660g.this;
            int mo415d = abstractC0660g.mo415d();
            Object[] objArr = new Object[mo415d];
            for (int i = 0; i < mo415d; i++) {
                objArr[i] = abstractC0660g.mo417b(i, 1);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0660g.this.m407l(1, tArr);
        }
    }

    /* renamed from: j */
    public static <T> boolean m409j(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: k */
    public static <K, V> boolean m408k(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    public abstract void mo418a();

    /* renamed from: b */
    public abstract Object mo417b(int i, int i2);

    /* renamed from: c */
    public abstract Map<K, V> mo416c();

    /* renamed from: d */
    public abstract int mo415d();

    /* renamed from: e */
    public abstract int mo414e(Object obj);

    /* renamed from: f */
    public abstract int mo413f(Object obj);

    /* renamed from: g */
    public abstract void mo412g(K k, V v);

    /* renamed from: h */
    public abstract void mo411h(int i);

    /* renamed from: i */
    public abstract V mo410i(int i, V v);

    /* renamed from: l */
    public final Object[] m407l(int i, Object[] objArr) {
        int mo415d = mo415d();
        if (objArr.length < mo415d) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), mo415d);
        }
        for (int i2 = 0; i2 < mo415d; i2++) {
            objArr[i2] = mo417b(i2, i);
        }
        if (objArr.length > mo415d) {
            objArr[mo415d] = null;
        }
        return objArr;
    }
}
