package p039k;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p039k.AbstractC0660g;
/* renamed from: k.b */
/* loaded from: classes.dex */
public final class C0655b<K, V> extends C0666h<K, V> implements Map<K, V> {

    /* renamed from: h */
    public C0654a f2263h;

    public C0655b() {
    }

    public C0655b(C0655b c0655b) {
        if (c0655b != null) {
            int i = c0655b.f2306c;
            m405b(this.f2306c + i);
            if (this.f2306c != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(c0655b.m399h(i2), c0655b.m397j(i2));
                }
            } else if (i > 0) {
                System.arraycopy(c0655b.f2304a, 0, this.f2304a, 0, i);
                System.arraycopy(c0655b.f2305b, 0, this.f2305b, 0, i << 1);
                this.f2306c = i;
            }
        }
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f2263h == null) {
            this.f2263h = new C0654a(this);
        }
        C0654a c0654a = this.f2263h;
        if (c0654a.f2285a == null) {
            c0654a.f2285a = new AbstractC0660g.C0662b();
        }
        return c0654a.f2285a;
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        if (this.f2263h == null) {
            this.f2263h = new C0654a(this);
        }
        C0654a c0654a = this.f2263h;
        if (c0654a.f2286b == null) {
            c0654a.f2286b = new AbstractC0660g.C0663c();
        }
        return c0654a.f2286b;
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m405b(map.size() + this.f2306c);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        if (this.f2263h == null) {
            this.f2263h = new C0654a(this);
        }
        C0654a c0654a = this.f2263h;
        if (c0654a.f2287c == null) {
            c0654a.f2287c = new AbstractC0660g.C0665e();
        }
        return c0654a.f2287c;
    }
}
