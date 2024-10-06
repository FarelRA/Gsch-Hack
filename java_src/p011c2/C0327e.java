package p011c2;

import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.LinkedHashMap;
import java.util.Map;
import p023f2.C0487b;
import p027g2.C0570b;
/* renamed from: c2.e */
/* loaded from: classes.dex */
public final class C0327e extends AbstractC0326d {
    public C0327e(Map map) {
        super(map);
        BigInteger m986g = AbstractC0326d.m986g(map, "n", true);
        BigInteger m986g2 = AbstractC0326d.m986g(map, "e", true);
        C0487b c0487b = new C0487b(1);
        try {
            this.f1149d = (RSAPublicKey) c0487b.m665a().generatePublic(new RSAPublicKeySpec(m986g, m986g2));
            m987e();
            if (map.containsKey("d")) {
                BigInteger m986g3 = AbstractC0326d.m986g(map, "d", false);
                if (map.containsKey("p")) {
                    c0487b.m666b(new RSAPrivateCrtKeySpec(m986g, m986g2, m986g3, AbstractC0326d.m986g(map, "p", false), AbstractC0326d.m986g(map, "q", false), AbstractC0326d.m986g(map, "dp", false), AbstractC0326d.m986g(map, "dq", false), AbstractC0326d.m986g(map, "qi", false)));
                } else {
                    c0487b.m666b(new RSAPrivateKeySpec(m986g, m986g3));
                }
            }
        } catch (InvalidKeySpecException e) {
            throw new C0570b("Invalid key spec: " + e, e);
        }
    }

    @Override // p011c2.AbstractC0322b
    /* renamed from: b */
    public final String mo983b() {
        return "RSA";
    }

    @Override // p011c2.AbstractC0326d
    /* renamed from: f */
    public final void mo982f(LinkedHashMap linkedHashMap) {
        RSAPublicKey rSAPublicKey = (RSAPublicKey) this.f1149d;
        AbstractC0326d.m985h(linkedHashMap, "n", rSAPublicKey.getModulus());
        AbstractC0326d.m985h(linkedHashMap, "e", rSAPublicKey.getPublicExponent());
    }
}
