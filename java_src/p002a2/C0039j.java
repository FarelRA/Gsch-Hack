package p002a2;

import java.io.UnsupportedEncodingException;
import java.security.Key;
import p019e2.AbstractC0457b;
import p019e2.C0456a;
import p020f.C0460c;
import p027g2.C0569a;
import p027g2.C0570b;
import p031h2.InterfaceC0582a;
import p073x.C0928b;
import p081z1.C0986c;
import p081z1.C0987d;
import p081z1.C0988e;
/* renamed from: a2.j */
/* loaded from: classes.dex */
public final class C0039j extends AbstractC0457b {

    /* renamed from: m */
    public byte[] f80m;

    /* renamed from: n */
    public byte[] f81n;

    /* renamed from: o */
    public byte[] f82o;

    /* renamed from: p */
    public byte[] f83p;

    /* renamed from: k */
    public final C0460c f78k = new C0460c(8);

    /* renamed from: l */
    public final String f79l = "UTF-8";

    /* renamed from: q */
    public final C0986c f84q = C0986c.f2993c;

    @Override // p019e2.AbstractC0457b
    /* renamed from: d */
    public final void mo704d(String[] strArr) {
        if (strArr.length == 5) {
            m703e(strArr[0]);
            C0460c c0460c = this.f78k;
            this.f81n = c0460c.m699f(strArr[1]);
            this.f82o = c0460c.m699f(strArr[2]);
            String str = strArr[3];
            AbstractC0457b.m706b(str, "Encoded JWE Ciphertext");
            this.f83p = c0460c.m699f(str);
            String str2 = strArr[4];
            AbstractC0457b.m706b(str2, "Encoded JWE Authentication Tag");
            this.f1771c = c0460c.m699f(str2);
            return;
        }
        throw new C0570b("A JWE Compact Serialization must have exactly 5 parts separated by period ('.') characters");
    }

    /* renamed from: f */
    public final String m1367f() {
        byte[] bytes;
        byte[] bytes2;
        if (this.f80m == null) {
            C0456a c0456a = this.f1770b;
            String m708b = c0456a.m708b("alg");
            if (m708b != null) {
                this.f1775g.m4a(m708b);
                C0988e c0988e = C0988e.f3001f;
                InterfaceC0040k interfaceC0040k = (InterfaceC0040k) c0988e.f3003b.m3a(m708b);
                String m708b2 = c0456a.m708b("enc");
                if (m708b2 != null) {
                    this.f84q.m4a(m708b2);
                    InterfaceC0032f interfaceC0032f = (InterfaceC0032f) c0988e.f3004c.m3a(m708b2);
                    C0928b mo1368h = interfaceC0032f.mo1368h();
                    if (this.f1773e) {
                        interfaceC0040k.mo1366i(this.f1772d, interfaceC0032f);
                    }
                    m707a();
                    Key mo1365b = interfaceC0040k.mo1365b(mo1368h, this.f1772d, this.f1777i, this.f1770b, this.f81n);
                    C0987d c0987d = new C0987d(this.f82o, this.f83p, this.f1771c);
                    if (c0456a.f1767d == null) {
                        String m709a = c0456a.m709a();
                        C0460c c0460c = c0456a.f1764a;
                        c0460c.getClass();
                        if (m709a == null) {
                            bytes2 = null;
                        } else {
                            try {
                                bytes2 = m709a.getBytes("UTF-8");
                            } catch (UnsupportedEncodingException unused) {
                                throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
                            }
                        }
                        c0456a.f1767d = c0460c.m698g(bytes2);
                    }
                    String str = c0456a.f1767d;
                    if (str == null) {
                        bytes = null;
                    } else {
                        try {
                            bytes = str.getBytes("US-ASCII");
                        } catch (UnsupportedEncodingException unused2) {
                            throw new IllegalStateException("Unknown or unsupported character set name: US-ASCII");
                        }
                    }
                    byte[] mo1369a = interfaceC0032f.mo1369a(c0987d, bytes, mo1365b.getEncoded(), this.f1770b, this.f1777i);
                    String m708b3 = c0456a.m708b("zip");
                    if (m708b3 != null) {
                        mo1369a = ((InterfaceC0582a) c0988e.f3005d.m3a(m708b3)).mo515e(mo1369a);
                    }
                    this.f80m = mo1369a;
                } else {
                    throw new C0569a("Content encryption header (enc) not set.");
                }
            } else {
                throw new C0569a("Encryption key management algorithm header (alg) not set.");
            }
        }
        byte[] bArr = this.f80m;
        String str2 = this.f79l;
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, str2);
        } catch (UnsupportedEncodingException unused3) {
            throw new IllegalStateException("Unknown or unsupported character set name: " + str2);
        }
    }
}
