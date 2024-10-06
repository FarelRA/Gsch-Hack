package p002a2;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import p019e2.C0456a;
import p020f.C0460c;
import p023f2.C0486a;
import p027g2.C0569a;
import p027g2.C0570b;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
import p081z1.C0987d;
/* renamed from: a2.a */
/* loaded from: classes.dex */
public class C0015a extends AbstractC0989f implements InterfaceC0032f {

    /* renamed from: d */
    public final String f65d;

    /* renamed from: e */
    public final int f66e;

    /* renamed from: f */
    public final C0928b f67f;

    /* renamed from: a2.a$a */
    /* loaded from: classes.dex */
    public static class C0016a extends C0015a {
        public C0016a() {
            super("A128CBC-HS256", 32, "HmacSHA256", 16);
        }
    }

    /* renamed from: a2.a$b */
    /* loaded from: classes.dex */
    public static class C0017b extends C0015a {
        public C0017b() {
            super("A192CBC-HS384", 48, "HmacSHA384", 24);
        }
    }

    /* renamed from: a2.a$c */
    /* loaded from: classes.dex */
    public static class C0018c extends C0015a {
        public C0018c() {
            super("A256CBC-HS512", 64, "HmacSHA512", 32);
        }
    }

    public C0015a(String str, int i, String str2, int i2) {
        this.f3007b = str;
        this.f67f = new C0928b(i, 2, "AES");
        this.f65d = str2;
        this.f66e = i2;
        this.f3008c = "AES/CBC/PKCS5Padding";
    }

    @Override // p002a2.InterfaceC0032f
    /* renamed from: a */
    public final byte[] mo1369a(C0987d c0987d, byte[] bArr, byte[] bArr2, C0456a c0456a, C0907a c0907a) {
        boolean z;
        C0907a.C0908a c0908a;
        boolean z2;
        C0907a.C0908a c0908a2;
        if (c0456a != null && "dir".equals(c0456a.m708b("alg"))) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            c0908a = c0907a.f2861a;
        } else {
            c0908a = c0907a.f2862b;
        }
        c0908a.getClass();
        if (c0456a != null && "dir".equals(c0456a.m708b("alg"))) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            c0908a2 = c0907a.f2861a;
        } else {
            c0908a2 = c0907a.f2862b;
        }
        c0908a2.getClass();
        byte[] bArr3 = (byte[]) c0987d.f2997a;
        byte[] bArr4 = (byte[]) c0987d.f2998b;
        byte[] bArr5 = (byte[]) c0987d.f2999c;
        long length = bArr.length * 8;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putLong(length);
        byte[] m304I = C0736h.m304I(C0736h.m276x(this.f65d, new C0486a(1, C0736h.m304I(bArr2, 0, bArr2.length / 2))).doFinal(C0736h.m284p(bArr, bArr3, bArr4, allocate.array())), 0, this.f66e);
        if (C0736h.m306G(bArr5, m304I)) {
            int length2 = bArr2.length / 2;
            C0486a c0486a = new C0486a(0, C0736h.m304I(bArr2, length2, length2));
            Cipher m279u = C0736h.m279u(this.f3008c);
            try {
                m279u.init(2, c0486a, new IvParameterSpec(bArr3));
                try {
                    return m279u.doFinal(bArr4);
                } catch (BadPaddingException | IllegalBlockSizeException e) {
                    throw new C0570b(e.toString(), e);
                }
            } catch (InvalidAlgorithmParameterException e2) {
                throw new C0570b(e2.toString(), e2);
            } catch (InvalidKeyException e3) {
                throw new C0570b("Invalid key for " + this.f3008c, e3);
            }
        }
        C0460c c0460c = new C0460c(8);
        throw new C0569a("Authentication tag check failed. Message=" + c0460c.m698g(bArr5) + " calculated=" + c0460c.m698g(m304I));
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return C0031e.m1370a(this.f67f.f2893b / 2, this.f3008c);
    }

    @Override // p002a2.InterfaceC0032f
    /* renamed from: h */
    public final C0928b mo1368h() {
        return this.f67f;
    }
}
