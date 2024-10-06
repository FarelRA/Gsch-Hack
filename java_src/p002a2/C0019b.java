package p002a2;

import p019e2.C0456a;
import p023f2.C0486a;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
import p081z1.C0987d;
/* renamed from: a2.b */
/* loaded from: classes.dex */
public class C0019b extends AbstractC0989f implements InterfaceC0032f {

    /* renamed from: d */
    public final C0928b f68d;

    /* renamed from: e */
    public final C0736h f69e;

    /* renamed from: a2.b$a */
    /* loaded from: classes.dex */
    public static class C0020a extends C0019b {
        public C0020a() {
            super(128, "A128GCM");
        }
    }

    /* renamed from: a2.b$b */
    /* loaded from: classes.dex */
    public static class C0021b extends C0019b {
        public C0021b() {
            super(192, "A192GCM");
        }
    }

    /* renamed from: a2.b$c */
    /* loaded from: classes.dex */
    public static class C0022c extends C0019b {
        public C0022c() {
            super(256, "A256GCM");
        }
    }

    public C0019b(int i, String str) {
        this.f3007b = str;
        this.f3008c = "AES/GCM/NoPadding";
        this.f68d = new C0928b(i / 8, 2, "AES");
        this.f69e = new C0736h();
    }

    @Override // p002a2.InterfaceC0032f
    /* renamed from: a */
    public final byte[] mo1369a(C0987d c0987d, byte[] bArr, byte[] bArr2, C0456a c0456a, C0907a c0907a) {
        C0907a.C0908a c0908a;
        byte[] bArr3 = (byte[]) c0987d.f2997a;
        boolean z = false;
        C0486a c0486a = new C0486a(0, bArr2);
        byte[] bArr4 = (byte[]) c0987d.f2998b;
        byte[] bArr5 = (byte[]) c0987d.f2999c;
        if (c0456a != null && "dir".equals(c0456a.m708b("alg"))) {
            z = true;
        }
        if (z) {
            c0908a = c0907a.f2861a;
        } else {
            c0908a = c0907a.f2862b;
        }
        c0908a.getClass();
        return this.f69e.m283q(c0486a, bArr3, bArr4, bArr5, bArr);
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return this.f69e.m311B(this.f3006a, this.f68d.f2893b, this.f3007b);
    }

    @Override // p002a2.InterfaceC0032f
    /* renamed from: h */
    public final C0928b mo1368h() {
        return this.f68d;
    }
}
