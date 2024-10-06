package p046m1;

import android.content.Context;
import p051o1.C0808l;
import p051o1.C0815s;
import p051o1.InterfaceC0797a;
import p051o1.InterfaceC0799c;
import p066u0.C0880d;
import p066u0.C0888l;
import p066u0.InterfaceC0878b;
/* renamed from: m1.o */
/* loaded from: classes.dex */
public final class C0743o implements InterfaceC0797a, InterfaceC0878b {

    /* renamed from: a */
    public final Object f2601a;

    /* renamed from: b */
    public final Object f2602b;

    public /* synthetic */ C0743o(Object obj, Object obj2) {
        this.f2601a = obj;
        this.f2602b = obj2;
    }

    @Override // p051o1.InterfaceC0799c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo207a() {
        return new C0741m((Context) ((InterfaceC0799c) this.f2601a).mo207a(), (C0808l) ((InterfaceC0799c) this.f2602b).mo207a());
    }

    @Override // p066u0.InterfaceC0878b
    /* renamed from: b */
    public final void mo127b(C0888l c0888l) {
        C0815s c0815s = (C0815s) this.f2601a;
        C0880d c0880d = (C0880d) this.f2602b;
        synchronized (c0815s.f2700f) {
            c0815s.f2699e.remove(c0880d);
        }
    }
}
