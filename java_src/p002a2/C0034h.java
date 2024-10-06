package p002a2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Security;
import java.security.interfaces.ECPrivateKey;
import java.util.Map;
import java.util.Set;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.SecretKeySpec;
import p007b2.C0314a;
import p011c2.AbstractC0322b;
import p011c2.C0321a;
import p011c2.C0327e;
import p019e2.C0456a;
import p020f.C0460c;
import p027g2.C0569a;
import p027g2.C0570b;
import p046m1.C0736h;
import p057q1.C0844h;
import p066u0.C0879c;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
import p081z1.C0985b;
/* renamed from: a2.h */
/* loaded from: classes.dex */
public final class C0034h extends AbstractC0989f implements InterfaceC0040k {

    /* renamed from: d */
    public final String f74d;

    public C0034h() {
        this.f74d = "enc";
        this.f3007b = "ECDH-ES";
        this.f3008c = "ECDH";
    }

    public C0034h(int i) {
        this();
        this.f74d = "alg";
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        AbstractC0322b c0321a;
        byte[] bytes;
        c0907a.f2862b.getClass();
        Map map = (Map) c0456a.f1765b.get("epk");
        String m991c = AbstractC0322b.m991c(map, "kty", true);
        m991c.getClass();
        if (!m991c.equals("EC")) {
            if (m991c.equals("RSA")) {
                c0321a = new C0327e(map);
            } else {
                throw new C0570b(C0844h.m187a("Unknown key type (for public keys): '", m991c, "'"));
            }
        } else {
            c0321a = new C0321a(map);
        }
        PrivateKey privateKey = (PrivateKey) key;
        PublicKey publicKey = (PublicKey) c0321a.f1149d;
        c0907a.f2861a.getClass();
        String str = this.f3008c;
        try {
            KeyAgreement keyAgreement = KeyAgreement.getInstance(str);
            try {
                keyAgreement.init(privateKey);
                keyAgreement.doPhase(publicKey, true);
                byte[] generateSecret = keyAgreement.generateSecret();
                c0907a.f2862b.getClass();
                C0460c c0460c = new C0460c(8);
                C0314a c0314a = new C0314a();
                int i = c0928b.f2893b * 8;
                String m708b = c0456a.m708b(this.f74d);
                String m708b2 = c0456a.m708b("apu");
                String m708b3 = c0456a.m708b("apv");
                if (m708b == null) {
                    bytes = null;
                } else {
                    try {
                        bytes = m708b.getBytes("UTF-8");
                    } catch (UnsupportedEncodingException unused) {
                        throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
                    }
                }
                byte[] bArr2 = C0736h.f2537J;
                if (bytes == null) {
                    bytes = bArr2;
                }
                byte[] m284p = C0736h.m284p(C0736h.m280t(bytes.length), bytes);
                byte[] m699f = c0460c.m699f(m708b2);
                if (m699f == null) {
                    m699f = bArr2;
                }
                byte[] m284p2 = C0736h.m284p(C0736h.m280t(m699f.length), m699f);
                byte[] m699f2 = c0460c.m699f(m708b3);
                if (m699f2 == null) {
                    m699f2 = bArr2;
                }
                byte[] m284p3 = C0736h.m284p(m284p, m284p2, C0736h.m284p(C0736h.m280t(m699f2.length), m699f2), C0736h.m280t(i), bArr2);
                long ceil = (int) Math.ceil(i / c0314a.f1136a);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                for (int i2 = 1; i2 <= ceil; i2++) {
                    byte[] m280t = C0736h.m280t(i2);
                    MessageDigest messageDigest = c0314a.f1137b;
                    messageDigest.update(m280t);
                    messageDigest.update(generateSecret);
                    messageDigest.update(m284p3);
                    byte[] digest = messageDigest.digest();
                    byteArrayOutputStream.write(digest, 0, digest.length);
                }
                int i3 = i / 8;
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray.length != i3) {
                    byteArray = C0736h.m304I(byteArray, 0, i3);
                }
                return new SecretKeySpec(byteArray, (String) c0928b.f2894c);
            } catch (InvalidKeyException e) {
                throw new C0569a("Invalid Key for " + this.f3008c + " key agreement.", e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new C0879c(C0844h.m187a("No ", str, " KeyAgreement available."), e2);
        } catch (NoSuchProviderException e3) {
            throw new C0570b(C0844h.m187a("Cannot get ", str, " KeyAgreement with provider null"), e3);
        }
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        boolean z;
        Set<String> algorithms = Security.getAlgorithms("KeyFactory");
        if (Security.getAlgorithms("KeyPairGenerator").contains("EC") && algorithms.contains("EC")) {
            z = true;
        } else {
            z = false;
        }
        if (z && C0985b.m5a("KeyAgreement", this.f3008c)) {
            return true;
        }
        return false;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        C0736h.m291i(key, ECPrivateKey.class);
    }
}
