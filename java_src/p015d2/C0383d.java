package p015d2;

import java.io.UnsupportedEncodingException;
import java.security.Key;
import p019e2.AbstractC0457b;
import p019e2.C0456a;
import p020f.C0460c;
import p027g2.C0569a;
import p027g2.C0570b;
import p081z1.C0986c;
import p081z1.C0988e;
/* renamed from: d2.d */
/* loaded from: classes.dex */
public final class C0383d extends AbstractC0457b {

    /* renamed from: k */
    public String f1451k;

    /* renamed from: l */
    public final String f1452l = "UTF-8";

    /* renamed from: m */
    public String f1453m;

    /* renamed from: n */
    public Boolean f1454n;

    public C0383d() {
        if (!Boolean.getBoolean("org.jose4j.jws.default-allow-none")) {
            this.f1775g = C0986c.f2994d;
        }
    }

    @Override // p019e2.AbstractC0457b
    /* renamed from: d */
    public final void mo704d(String[] strArr) {
        String str;
        if (strArr.length == 3) {
            m703e(strArr[0]);
            String str2 = strArr[1];
            this.f1453m = str2;
            C0460c c0460c = this.f1769a;
            String str3 = this.f1452l;
            byte[] m699f = c0460c.m699f(str2);
            if (m699f == null) {
                str = null;
            } else {
                try {
                    str = new String(m699f, str3);
                } catch (UnsupportedEncodingException unused) {
                    throw new IllegalStateException("Unknown or unsupported character set name: " + str3);
                }
            }
            this.f1451k = str;
            this.f1771c = c0460c.m699f(strArr[2]);
            return;
        }
        throw new C0570b("A JWS Compact Serialization must have exactly 3 parts separated by period ('.') characters");
    }

    /* renamed from: f */
    public final String m859f() {
        byte[] bytes;
        byte[] bytes2;
        if (!Boolean.getBoolean("org.jose4j.jws.getPayload-skip-verify")) {
            C0456a c0456a = this.f1770b;
            String m708b = c0456a.m708b("alg");
            if (m708b != null) {
                this.f1775g.m4a(m708b);
                InterfaceC0384e interfaceC0384e = (InterfaceC0384e) C0988e.f3001f.f3002a.m3a(m708b);
                Key key = this.f1772d;
                if (this.f1773e) {
                    interfaceC0384e.mo856g(key);
                }
                if (this.f1454n == null) {
                    m707a();
                    byte[] bArr = this.f1771c;
                    String[] strArr = new String[2];
                    byte[] bArr2 = null;
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
                    strArr[0] = c0456a.f1767d;
                    String str = this.f1453m;
                    if (str == null) {
                        C0460c c0460c2 = this.f1769a;
                        String str2 = this.f1451k;
                        String str3 = this.f1452l;
                        c0460c2.getClass();
                        if (str2 == null) {
                            bytes = null;
                        } else {
                            try {
                                bytes = str2.getBytes(str3);
                            } catch (UnsupportedEncodingException unused2) {
                                throw new IllegalStateException("Unknown or unsupported character set name: " + str3);
                            }
                        }
                        str = c0460c2.m698g(bytes);
                    }
                    strArr[1] = str;
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < 2; i++) {
                        String str4 = strArr[i];
                        if (str4 == null) {
                            str4 = "";
                        }
                        sb.append(str4);
                        if (i != 1) {
                            sb.append(".");
                        }
                    }
                    String sb2 = sb.toString();
                    if (sb2 != null) {
                        try {
                            bArr2 = sb2.getBytes("US-ASCII");
                        } catch (UnsupportedEncodingException unused3) {
                            throw new IllegalStateException("Unknown or unsupported character set name: US-ASCII");
                        }
                    }
                    this.f1454n = Boolean.valueOf(interfaceC0384e.mo857d(bArr, key, bArr2, this.f1777i));
                }
                if (!this.f1454n.booleanValue()) {
                    throw new C0569a("JWS signature is invalid.");
                }
            } else {
                throw new C0569a("Signature algorithm header (alg) not set.");
            }
        }
        return this.f1451k;
    }

    /* renamed from: g */
    public final void m858g() {
        this.f1454n = null;
    }
}
