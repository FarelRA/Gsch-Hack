package p015d2;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import p027g2.C0569a;
import p027g2.C0570b;
import p046m1.C0736h;
import p057q1.C0844h;
import p069v1.C0907a;
import p081z1.AbstractC0989f;
/* renamed from: d2.a */
/* loaded from: classes.dex */
public abstract class AbstractC0374a extends AbstractC0989f implements InterfaceC0384e {

    /* renamed from: d */
    public AlgorithmParameterSpec f1448d;

    public AbstractC0374a(String str, String str2) {
        this.f3007b = str;
        this.f3008c = str2;
    }

    /* renamed from: j */
    public static String m862j(Key key) {
        String str;
        if (key == null) {
            str = "key is null";
        } else {
            str = "algorithm=" + key.getAlgorithm();
        }
        return C0844h.m187a("The given key (", str, ") is not valid ");
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: d */
    public boolean mo857d(byte[] bArr, Key key, byte[] bArr2, C0907a c0907a) {
        Signature m861k = m861k(c0907a);
        try {
            m861k.initVerify((PublicKey) key);
            try {
                m861k.update(bArr2);
                return m861k.verify(bArr);
            } catch (SignatureException e) {
                throw new C0570b("Problem verifying signature.", e);
            }
        } catch (InvalidKeyException e2) {
            throw new C0569a(m862j(key) + "for " + this.f3008c, e2);
        }
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        try {
            if (m861k(new C0907a()) == null) {
                return false;
            }
            return true;
        } catch (Exception e) {
            this.f3006a.mo436d(this.f3007b + " vai " + this.f3008c + " is NOT available from the underlying JCE (" + C0736h.m302K(e) + ").");
            return false;
        }
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: g */
    public final void mo856g(Key key) {
        if (key != null) {
            try {
                mo855l((PublicKey) key);
                return;
            } catch (ClassCastException e) {
                throw new C0569a(m862j(key) + "(not a public key or is the wrong type of key) for " + this.f3008c + "/" + this.f3007b + " " + e);
            }
        }
        throw new C0569a("Key cannot be null");
    }

    /* renamed from: k */
    public final Signature m861k(C0907a c0907a) {
        c0907a.f2861a.getClass();
        String str = this.f3008c;
        try {
            Signature signature = Signature.getInstance(str);
            AlgorithmParameterSpec algorithmParameterSpec = this.f1448d;
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            return signature;
        } catch (InvalidAlgorithmParameterException e) {
            throw new C0570b("Invalid algorithm parameter (" + this.f1448d + ") for: " + str, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new C0570b("Unable to get an implementation of algorithm name: " + str, e2);
        } catch (NoSuchProviderException e3) {
            throw new C0570b(C0844h.m187a("Unable to get an implementation of ", str, " for provider null"), e3);
        }
    }

    /* renamed from: l */
    public abstract void mo855l(PublicKey publicKey);
}
