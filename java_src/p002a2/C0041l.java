package p002a2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p002a2.C0027d;
import p019e2.C0456a;
import p020f.C0460c;
import p023f2.C0486a;
import p027g2.C0569a;
import p046m1.C0736h;
import p066u0.C0879c;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
/* renamed from: a2.l */
/* loaded from: classes.dex */
public class C0041l extends AbstractC0989f implements InterfaceC0040k {

    /* renamed from: g */
    public static final byte[] f85g = {0};

    /* renamed from: d */
    public final C0027d f86d;

    /* renamed from: e */
    public final C0928b f87e;

    /* renamed from: f */
    public final C0460c f88f;

    /* renamed from: a2.l$a */
    /* loaded from: classes.dex */
    public static class C0042a extends C0041l {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0042a() {
            super("PBES2-HS256+A128KW", "HmacSHA256", r0);
            C0027d.C0028a c0028a = new C0027d.C0028a();
            c0028a.f91f = false;
        }
    }

    /* renamed from: a2.l$b */
    /* loaded from: classes.dex */
    public static class C0043b extends C0041l {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0043b() {
            super("PBES2-HS384+A192KW", "HmacSHA384", r0);
            C0027d.C0029b c0029b = new C0027d.C0029b();
            c0029b.f91f = false;
        }
    }

    /* renamed from: a2.l$c */
    /* loaded from: classes.dex */
    public static class C0044c extends C0041l {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0044c() {
            super("PBES2-HS512+A256KW", "HmacSHA512", r0);
            C0027d.C0030c c0030c = new C0027d.C0030c();
            c0030c.f91f = false;
        }
    }

    public C0041l(String str, String str2, C0027d c0027d) {
        this.f3007b = str;
        this.f3008c = "n/a";
        this.f88f = new C0460c(9, str2);
        this.f86d = c0027d;
        this.f87e = new C0928b(c0027d.f72g, 2, "AES");
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        Long l;
        byte[] bytes;
        byte[] doFinal;
        int i;
        Object obj = c0456a.f1765b.get("p2c");
        if (obj != null) {
            l = Long.valueOf(((Number) obj).longValue());
        } else {
            l = null;
        }
        byte[] m699f = new C0460c(8).m699f(c0456a.m708b("p2s"));
        byte[][] bArr2 = new byte[3];
        String str = this.f3007b;
        if (str == null) {
            bytes = null;
        } else {
            try {
                bytes = str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
            }
        }
        char c = 0;
        bArr2[0] = bytes;
        int i2 = 1;
        bArr2[1] = f85g;
        int i3 = 2;
        bArr2[2] = m699f;
        byte[] m284p = C0736h.m284p(bArr2);
        C0928b c0928b2 = this.f87e;
        int i4 = c0928b2.f2893b;
        c0907a.f2861a.getClass();
        C0460c c0460c = this.f88f;
        byte[] encoded = key.getEncoded();
        int intValue = l.intValue();
        Mac m276x = C0736h.m276x((String) c0460c.f1797a, new C0486a(1, encoded));
        int macLength = m276x.getMacLength();
        if (i4 <= 4294967295L) {
            int ceil = (int) Math.ceil(i4 / macLength);
            int i5 = ceil - 1;
            int i6 = i4 - (macLength * i5);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i7 = 0;
            while (i7 < ceil) {
                int i8 = i7 + 1;
                int i9 = 1;
                byte[] bArr3 = null;
                byte[] bArr4 = null;
                while (i9 <= intValue) {
                    if (i9 == i2) {
                        byte[][] bArr5 = new byte[i3];
                        bArr5[c] = m284p;
                        bArr5[1] = C0736h.m280t(i8);
                        bArr3 = m276x.doFinal(C0736h.m284p(bArr5));
                        i = intValue;
                        doFinal = bArr3;
                    } else {
                        doFinal = m276x.doFinal(bArr4);
                        int i10 = 0;
                        while (i10 < doFinal.length) {
                            int i11 = intValue;
                            byte[] bArr6 = bArr3;
                            bArr6[i10] = (byte) (doFinal[i10] ^ bArr6[i10]);
                            i10++;
                            bArr3 = bArr6;
                            intValue = i11;
                        }
                        i = intValue;
                    }
                    i9++;
                    bArr4 = doFinal;
                    intValue = i;
                    i3 = 2;
                    c = 0;
                    i2 = 1;
                }
                int i12 = intValue;
                byte[] bArr7 = bArr3;
                if (i7 == i5) {
                    bArr7 = C0736h.m304I(bArr7, 0, i6);
                }
                byteArrayOutputStream.write(bArr7, 0, bArr7.length);
                i7 = i8;
                intValue = i12;
                i3 = 2;
                c = 0;
                i2 = 1;
            }
            return this.f86d.mo1365b(c0928b, new SecretKeySpec(byteArrayOutputStream.toByteArray(), (String) c0928b2.f2894c), c0907a, c0456a, bArr);
        }
        throw new C0879c("derived key too long " + i4);
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return this.f86d.mo6f();
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        if (key == null) {
            throw new C0569a("The key must not be null.");
        }
    }
}
