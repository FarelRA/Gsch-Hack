package p002a2;

import java.security.Key;
import javax.crypto.spec.SecretKeySpec;
import p019e2.C0456a;
import p020f.C0460c;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
/* renamed from: a2.c */
/* loaded from: classes.dex */
public class C0023c extends AbstractC0989f implements InterfaceC0040k {

    /* renamed from: d */
    public final C0736h f70d;

    /* renamed from: e */
    public final int f71e;

    /* renamed from: a2.c$a */
    /* loaded from: classes.dex */
    public static class C0024a extends C0023c {
        public C0024a() {
            super(16, "A128GCMKW");
        }
    }

    /* renamed from: a2.c$b */
    /* loaded from: classes.dex */
    public static class C0025b extends C0023c {
        public C0025b() {
            super(24, "A192GCMKW");
        }
    }

    /* renamed from: a2.c$c */
    /* loaded from: classes.dex */
    public static class C0026c extends C0023c {
        public C0026c() {
            super(32, "A256GCMKW");
        }
    }

    public C0023c(int i, String str) {
        this.f3007b = str;
        this.f3008c = "AES/GCM/NoPadding";
        this.f70d = new C0736h();
        this.f71e = i;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        C0460c c0460c = new C0460c(8);
        byte[] m699f = c0460c.m699f(c0456a.m708b("iv"));
        byte[] m699f2 = c0460c.m699f(c0456a.m708b("tag"));
        c0907a.f2861a.getClass();
        return new SecretKeySpec(this.f70d.m283q(key, m699f, bArr, m699f2, null), (String) c0928b.f2894c);
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        String str = this.f3007b;
        return this.f70d.m311B(this.f3006a, this.f71e, str);
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        C0736h.m300M(key, this.f3007b, this.f71e);
    }
}
