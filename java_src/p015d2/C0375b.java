package p015d2;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import p023f2.C0488c;
import p027g2.C0569a;
import p027g2.C0570b;
import p069v1.C0907a;
/* renamed from: d2.b */
/* loaded from: classes.dex */
public class C0375b extends AbstractC0374a {

    /* renamed from: e */
    public final String f1449e;

    /* renamed from: d2.b$a */
    /* loaded from: classes.dex */
    public static class C0376a extends C0375b {
        public C0376a() {
            super("ES256", "SHA256withECDSA", "P-256");
        }
    }

    /* renamed from: d2.b$b */
    /* loaded from: classes.dex */
    public static class C0377b extends C0375b {
        public C0377b() {
            super("ES384", "SHA384withECDSA", "P-384");
        }
    }

    /* renamed from: d2.b$c */
    /* loaded from: classes.dex */
    public static class C0378c extends C0375b {
        public C0378c() {
            super("ES512", "SHA512withECDSA", "P-521");
        }
    }

    public C0375b(String str, String str2, String str3) {
        super(str, str2);
        this.f1449e = str3;
    }

    /* renamed from: m */
    public static byte[] m860m(byte[] bArr) {
        byte[] bArr2;
        int length = bArr.length / 2;
        int i = length;
        while (i > 0 && bArr[length - i] == 0) {
            i--;
        }
        int i2 = length - i;
        int i3 = bArr[i2] < 0 ? i + 1 : i;
        int i4 = length;
        while (i4 > 0 && bArr[(length * 2) - i4] == 0) {
            i4--;
        }
        int i5 = (length * 2) - i4;
        int i6 = bArr[i5] < 0 ? i4 + 1 : i4;
        int i7 = i3 + 2 + 2 + i6;
        if (i7 <= 255) {
            int i8 = 1;
            if (i7 < 128) {
                bArr2 = new byte[i3 + 4 + 2 + i6];
            } else {
                bArr2 = new byte[i3 + 5 + 2 + i6];
                bArr2[1] = -127;
                i8 = 2;
            }
            bArr2[0] = 48;
            int i9 = i8 + 1;
            bArr2[i8] = (byte) i7;
            int i10 = i9 + 1;
            bArr2[i9] = 2;
            bArr2[i10] = (byte) i3;
            int i11 = i10 + 1 + i3;
            System.arraycopy(bArr, i2, bArr2, i11 - i, i);
            int i12 = i11 + 1;
            bArr2[i11] = 2;
            bArr2[i12] = (byte) i6;
            System.arraycopy(bArr, i5, bArr2, ((i12 + 1) + i6) - i4, i4);
            return bArr2;
        }
        throw new IOException("Invalid format of ECDSA signature");
    }

    @Override // p015d2.AbstractC0374a, p015d2.InterfaceC0384e
    /* renamed from: d */
    public final boolean mo857d(byte[] bArr, Key key, byte[] bArr2, C0907a c0907a) {
        try {
            return super.mo857d(m860m(bArr), key, bArr2, c0907a);
        } catch (IOException e) {
            throw new C0570b("Unable to convert R and S as a concatenated byte array to DER encoding.", e);
        }
    }

    @Override // p015d2.AbstractC0374a
    /* renamed from: l */
    public final void mo855l(PublicKey publicKey) {
        String str = (String) C0488c.f1867b.get(((ECPublicKey) publicKey).getParams().getCurve());
        String str2 = this.f1449e;
        if (str2.equals(str)) {
            return;
        }
        throw new C0569a(this.f3007b + "/" + this.f3008c + " expects a key using " + str2 + " but was " + str);
    }
}
