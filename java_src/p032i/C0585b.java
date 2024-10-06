package p032i;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: i.b */
/* loaded from: classes.dex */
public class C0585b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public final WeakHashMap<Object, Boolean> f2134a = new WeakHashMap<>();

    /* renamed from: b */
    public int f2135b = 0;

    /* renamed from: i.b$a */
    /* loaded from: classes.dex */
    public static class C0586a<K, V> extends AbstractC0590e<K, V> {
        public C0586a(C0588c<K, V> c0588c, C0588c<K, V> c0588c2) {
            super(c0588c, c0588c2);
        }

        @Override // p032i.C0585b.AbstractC0590e
        /* renamed from: a */
        public final C0588c<K, V> mo514a(C0588c<K, V> c0588c) {
            c0588c.getClass();
            return null;
        }
    }

    /* renamed from: i.b$b */
    /* loaded from: classes.dex */
    public static class C0587b<K, V> extends AbstractC0590e<K, V> {
        public C0587b(C0588c<K, V> c0588c, C0588c<K, V> c0588c2) {
            super(c0588c, c0588c2);
        }

        @Override // p032i.C0585b.AbstractC0590e
        /* renamed from: a */
        public final C0588c<K, V> mo514a(C0588c<K, V> c0588c) {
            c0588c.getClass();
            return null;
        }
    }

    /* renamed from: i.b$c */
    /* loaded from: classes.dex */
    public static class C0588c<K, V> implements Map.Entry<K, V> {
    }

    /* renamed from: i.b$d */
    /* loaded from: classes.dex */
    public class C0589d implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public boolean f2136a = true;

        public C0589d() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f2136a) {
                C0585b.this.getClass();
                return false;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f2136a) {
                this.f2136a = false;
                C0585b.this.getClass();
                return null;
            }
            return null;
        }
    }

    /* renamed from: i.b$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0590e<K, V> implements Iterator<Map.Entry<K, V>> {
        public AbstractC0590e(C0588c<K, V> c0588c, C0588c<K, V> c0588c2) {
        }

        /* renamed from: a */
        public abstract C0588c<K, V> mo514a(C0588c<K, V> c0588c);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r3.hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        if (((p032i.C0585b.AbstractC0590e) r7).hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0585b)) {
            return false;
        }
        C0585b c0585b = (C0585b) obj;
        if (this.f2135b != c0585b.f2135b) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c0585b.iterator();
        while (true) {
            AbstractC0590e abstractC0590e = (AbstractC0590e) it;
            if (!abstractC0590e.hasNext()) {
                break;
            }
            AbstractC0590e abstractC0590e2 = (AbstractC0590e) it2;
            if (!abstractC0590e2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) abstractC0590e.next();
            Object next = abstractC0590e2.next();
            if ((entry != null || next == null) && (entry == null || entry.equals(next))) {
            }
        }
        return false;
    }

    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            AbstractC0590e abstractC0590e = (AbstractC0590e) it;
            if (!abstractC0590e.hasNext()) {
                return i;
            }
            i += ((Map.Entry) abstractC0590e.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        C0586a c0586a = new C0586a(null, null);
        this.f2134a.put(c0586a, Boolean.FALSE);
        return c0586a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            AbstractC0590e abstractC0590e = (AbstractC0590e) it;
            if (!abstractC0590e.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) abstractC0590e.next()).toString());
            if (abstractC0590e.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
