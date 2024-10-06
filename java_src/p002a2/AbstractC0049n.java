package p002a2;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.SecretKeySpec;
import p019e2.C0456a;
import p027g2.C0570b;
import p034i2.C0599b;
import p034i2.InterfaceC0598a;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
/* renamed from: a2.n */
/* loaded from: classes.dex */
public abstract class AbstractC0049n extends AbstractC0989f implements InterfaceC0040k {

    /* renamed from: e */
    public AlgorithmParameterSpec f90e;

    /* renamed from: d */
    public final InterfaceC0598a f89d = C0599b.m507e(getClass().getName());

    /* renamed from: f */
    public boolean f91f = true;

    public AbstractC0049n(String str, String str2) {
        this.f3008c = str;
        this.f3007b = str2;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        c0907a.f2861a.getClass();
        Cipher m279u = C0736h.m279u(this.f3008c);
        try {
            AlgorithmParameterSpec algorithmParameterSpec = this.f90e;
            if (algorithmParameterSpec == null) {
                m279u.init(4, key);
            } else {
                m279u.init(4, key, algorithmParameterSpec);
            }
            String str = (String) c0928b.f2894c;
            try {
                return m279u.unwrap(bArr, str, 3);
            } catch (Exception e) {
                e = e;
                InterfaceC0598a interfaceC0598a = this.f89d;
                if (interfaceC0598a.mo437c()) {
                    StringBuilder sb = new StringBuilder();
                    boolean z = true;
                    while (e != null) {
                        if (!z) {
                            sb.append("; caused by: ");
                        }
                        sb.append(e);
                        sb.append(" at ");
                        StackTraceElement[] stackTrace = e.getStackTrace();
                        int length = stackTrace.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                StackTraceElement stackTraceElement = stackTrace[i];
                                if (stackTraceElement.getClassName().equals(C0039j.class.getName())) {
                                    sb.append("...omitted...");
                                    break;
                                }
                                sb.append(stackTraceElement);
                                sb.append("; ");
                                i++;
                            }
                        }
                        e = e.getCause();
                        z = false;
                    }
                    interfaceC0598a.mo439a(sb.toString(), "Key unwrap failed. Substituting a randomly generated CEK and proceeding. {}");
                }
                byte[] bArr2 = new byte[c0928b.f2893b];
                new SecureRandom().nextBytes(bArr2);
                return new SecretKeySpec(bArr2, str);
            }
        } catch (InvalidAlgorithmParameterException e2) {
            e = e2;
            throw new C0570b("Unable to initialize cipher for key decryption", e);
        } catch (InvalidKeyException e3) {
            e = e3;
            throw new C0570b("Unable to initialize cipher for key decryption", e);
        }
    }

    /* renamed from: j */
    public final void m1364j(C0928b c0928b, Key key, C0907a c0907a) {
        C0907a.C0908a c0908a;
        byte[] bArr = new byte[c0928b.f2893b];
        new SecureRandom().nextBytes(bArr);
        if (this.f91f) {
            c0908a = c0907a.f2861a;
        } else {
            c0908a = c0907a.f2862b;
        }
        c0908a.getClass();
        Cipher m279u = C0736h.m279u(this.f3008c);
        try {
            AlgorithmParameterSpec algorithmParameterSpec = this.f90e;
            if (algorithmParameterSpec == null) {
                m279u.init(3, key);
            } else {
                m279u.init(3, key, algorithmParameterSpec);
            }
            m279u.wrap(new SecretKeySpec(bArr, (String) c0928b.f2894c));
        } catch (InvalidAlgorithmParameterException e) {
            e = e;
            throw new C0570b("Unable to encrypt the Content Encryption Key: " + e, e);
        } catch (InvalidKeyException e2) {
            e = e2;
            throw new C0570b("Unable to encrypt the Content Encryption Key: " + e, e);
        } catch (IllegalBlockSizeException e3) {
            e = e3;
            throw new C0570b("Unable to encrypt the Content Encryption Key: " + e, e);
        }
    }
}
