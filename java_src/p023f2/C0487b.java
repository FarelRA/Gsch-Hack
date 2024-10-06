package p023f2;

import java.security.interfaces.RSAPrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPrivateKeySpec;
import p027g2.C0570b;
/* renamed from: f2.b */
/* loaded from: classes.dex */
public final class C0487b extends AbstractC0489d {

    /* renamed from: b */
    public final /* synthetic */ int f1865b;

    /* renamed from: b */
    public final RSAPrivateKey m666b(RSAPrivateKeySpec rSAPrivateKeySpec) {
        try {
            return (RSAPrivateKey) m665a().generatePrivate(rSAPrivateKeySpec);
        } catch (InvalidKeySpecException e) {
            throw new C0570b("Invalid key spec: " + e, e);
        }
    }
}
