package p039k;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: k.f */
/* loaded from: classes.dex */
public class C0659f<K, V> {

    /* renamed from: a */
    public final LinkedHashMap<K, V> f2280a;

    /* renamed from: b */
    public int f2281b;

    /* renamed from: c */
    public final int f2282c;

    /* renamed from: d */
    public int f2283d;

    /* renamed from: e */
    public int f2284e;

    public C0659f(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f2282c = i;
        this.f2280a = new LinkedHashMap<>(0, 0.75f, true);
    }

    /* renamed from: a */
    public final V m421a(K k) {
        if (k != null) {
            synchronized (this) {
                V v = this.f2280a.get(k);
                if (v != null) {
                    this.f2283d++;
                    return v;
                }
                this.f2284e++;
                return null;
            }
        }
        throw new NullPointerException("key == null");
    }

    /* renamed from: b */
    public final V m420b(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f2281b++;
            put = this.f2280a.put(k, v);
            if (put != null) {
                this.f2281b--;
            }
        }
        m419c(this.f2282c);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m419c(int i) {
        while (true) {
            synchronized (this) {
                if (this.f2281b >= 0 && (!this.f2280a.isEmpty() || this.f2281b == 0)) {
                    if (this.f2281b <= i || this.f2280a.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.f2280a.entrySet().iterator().next();
                    K key = next.getKey();
                    next.getValue();
                    this.f2280a.remove(key);
                    this.f2281b--;
                } else {
                    break;
                }
            }
        }
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f2283d;
        i2 = this.f2284e + i;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f2282c), Integer.valueOf(this.f2283d), Integer.valueOf(this.f2284e), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
