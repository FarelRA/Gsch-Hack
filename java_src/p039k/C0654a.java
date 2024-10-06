package p039k;

import java.util.Map;
/* renamed from: k.a */
/* loaded from: classes.dex */
public final class C0654a extends AbstractC0660g<Object, Object> {

    /* renamed from: d */
    public final /* synthetic */ C0655b f2262d;

    public C0654a(C0655b c0655b) {
        this.f2262d = c0655b;
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: a */
    public final void mo418a() {
        this.f2262d.clear();
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: b */
    public final Object mo417b(int i, int i2) {
        return this.f2262d.f2305b[(i << 1) + i2];
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: c */
    public final Map<Object, Object> mo416c() {
        return this.f2262d;
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: d */
    public final int mo415d() {
        return this.f2262d.f2306c;
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: e */
    public final int mo414e(Object obj) {
        return this.f2262d.m402e(obj);
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: f */
    public final int mo413f(Object obj) {
        return this.f2262d.m400g(obj);
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: g */
    public final void mo412g(Object obj, Object obj2) {
        this.f2262d.put(obj, obj2);
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: h */
    public final void mo411h(int i) {
        this.f2262d.m398i(i);
    }

    @Override // p039k.AbstractC0660g
    /* renamed from: i */
    public final Object mo410i(int i, Object obj) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f2262d.f2305b;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }
}
