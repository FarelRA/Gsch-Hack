package p002a2;

import java.security.Key;
import p002a2.C0027d;
import p019e2.C0456a;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
/* renamed from: a2.i */
/* loaded from: classes.dex */
public class C0035i extends AbstractC0989f implements InterfaceC0040k {

    /* renamed from: d */
    public final C0027d f75d;

    /* renamed from: e */
    public final C0928b f76e;

    /* renamed from: f */
    public final C0034h f77f;

    /* renamed from: a2.i$a */
    /* loaded from: classes.dex */
    public static class C0036a extends C0035i {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0036a() {
            super("ECDH-ES+A128KW", r0);
            C0027d.C0028a c0028a = new C0027d.C0028a();
            c0028a.f91f = false;
        }
    }

    /* renamed from: a2.i$b */
    /* loaded from: classes.dex */
    public static class C0037b extends C0035i {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0037b() {
            super("ECDH-ES+A192KW", r0);
            C0027d.C0029b c0029b = new C0027d.C0029b();
            c0029b.f91f = false;
        }
    }

    /* renamed from: a2.i$c */
    /* loaded from: classes.dex */
    public static class C0038c extends C0035i {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0038c() {
            super("ECDH-ES+A256KW", r0);
            C0027d.C0030c c0030c = new C0027d.C0030c();
            c0030c.f91f = false;
        }
    }

    public C0035i(String str, C0027d c0027d) {
        this.f3007b = str;
        this.f3008c = "N/A";
        this.f75d = c0027d;
        this.f77f = new C0034h(0);
        this.f76e = new C0928b(c0027d.f72g, 2, "AES");
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        return this.f75d.mo1365b(c0928b, this.f77f.mo1365b(this.f76e, key, c0907a, c0456a, C0736h.f2537J), c0907a, c0456a, bArr);
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return this.f77f.mo6f() && this.f75d.mo6f();
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        this.f77f.mo1366i(key, interfaceC0032f);
    }
}
