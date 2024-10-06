package p015d2;

import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import p046m1.C0736h;
/* renamed from: d2.g */
/* loaded from: classes.dex */
public class C0386g extends AbstractC0374a {

    /* renamed from: d2.g$a */
    /* loaded from: classes.dex */
    public static class C0387a extends C0386g {
        public C0387a() {
            super("PS256", "SHA256withRSAandMGF1");
            MGF1ParameterSpec mGF1ParameterSpec = MGF1ParameterSpec.SHA256;
            this.f1448d = new PSSParameterSpec(mGF1ParameterSpec.getDigestAlgorithm(), "MGF1", mGF1ParameterSpec, 32, 1);
        }
    }

    /* renamed from: d2.g$b */
    /* loaded from: classes.dex */
    public static class C0388b extends C0386g {
        public C0388b() {
            super("PS384", "SHA384withRSAandMGF1");
            MGF1ParameterSpec mGF1ParameterSpec = MGF1ParameterSpec.SHA384;
            this.f1448d = new PSSParameterSpec(mGF1ParameterSpec.getDigestAlgorithm(), "MGF1", mGF1ParameterSpec, 48, 1);
        }
    }

    /* renamed from: d2.g$c */
    /* loaded from: classes.dex */
    public static class C0389c extends C0386g {
        public C0389c() {
            super("PS512", "SHA512withRSAandMGF1");
            MGF1ParameterSpec mGF1ParameterSpec = MGF1ParameterSpec.SHA512;
            this.f1448d = new PSSParameterSpec(mGF1ParameterSpec.getDigestAlgorithm(), "MGF1", mGF1ParameterSpec, 64, 1);
        }
    }

    /* renamed from: d2.g$d */
    /* loaded from: classes.dex */
    public static class C0390d extends C0386g {
        public C0390d() {
            super("RS256", "SHA256withRSA");
        }
    }

    /* renamed from: d2.g$e */
    /* loaded from: classes.dex */
    public static class C0391e extends C0386g {
        public C0391e() {
            super("RS384", "SHA384withRSA");
        }
    }

    /* renamed from: d2.g$f */
    /* loaded from: classes.dex */
    public static class C0392f extends C0386g {
        public C0392f() {
            super("RS512", "SHA512withRSA");
        }
    }

    public C0386g(String str, String str2) {
        super(str, str2);
    }

    @Override // p015d2.AbstractC0374a
    /* renamed from: l */
    public final void mo855l(PublicKey publicKey) {
        C0736h.m289k((RSAPublicKey) publicKey);
    }
}
