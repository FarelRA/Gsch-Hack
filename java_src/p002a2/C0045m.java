package p002a2;

import java.security.Key;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import p011c2.AbstractC0322b;
import p027g2.C0570b;
import p046m1.C0736h;
import p069v1.C0907a;
import p073x.C0928b;
/* renamed from: a2.m */
/* loaded from: classes.dex */
public class C0045m extends AbstractC0049n {

    /* renamed from: a2.m$a */
    /* loaded from: classes.dex */
    public static class C0046a extends C0045m {
        public C0046a() {
            super("RSA/ECB/PKCS1Padding", "RSA1_5");
        }
    }

    /* renamed from: a2.m$b */
    /* loaded from: classes.dex */
    public static class C0047b extends C0045m {
        public C0047b() {
            super("RSA/ECB/OAEPWithSHA-256AndMGF1Padding", "RSA-OAEP-256");
            this.f90e = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
        }

        @Override // p002a2.C0045m, p081z1.InterfaceC0984a
        /* renamed from: f */
        public final boolean mo6f() {
            try {
                m1364j(new C0928b(16, 2, "AES"), AbstractC0322b.C0323a.m989a().f1149d, new C0907a());
                return true;
            } catch (C0570b e) {
                this.f89d.mo436d(this.f3007b + " is not available due to " + C0736h.m302K(e));
                return false;
            }
        }
    }

    /* renamed from: a2.m$c */
    /* loaded from: classes.dex */
    public static class C0048c extends C0045m {
        public C0048c() {
            super("RSA/ECB/OAEPWithSHA-1AndMGF1Padding", "RSA-OAEP");
        }
    }

    public C0045m(String str, String str2) {
        super(str, str2);
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public boolean mo6f() {
        if (C0736h.m279u(this.f3008c) != null) {
            return true;
        }
        return false;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        C0736h.m289k((RSAPrivateKey) C0736h.m291i(key, RSAPrivateKey.class));
    }
}
