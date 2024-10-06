package p011c2;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import p023f2.C0487b;
import p023f2.C0488c;
import p027g2.C0570b;
/* renamed from: c2.a */
/* loaded from: classes.dex */
public final class C0321a extends AbstractC0326d {

    /* renamed from: i */
    public final String f1145i;

    public C0321a(Map map) {
        super(map);
        String m991c = AbstractC0322b.m991c(map, "crv", true);
        this.f1145i = m991c;
        ECParameterSpec eCParameterSpec = (ECParameterSpec) C0488c.f1866a.get(m991c);
        BigInteger m986g = AbstractC0326d.m986g(map, "x", true);
        BigInteger m986g2 = AbstractC0326d.m986g(map, "y", true);
        C0487b c0487b = new C0487b(0);
        try {
            this.f1149d = (ECPublicKey) c0487b.m665a().generatePublic(new ECPublicKeySpec(new ECPoint(m986g, m986g2), eCParameterSpec));
            m987e();
            if (map.containsKey("d")) {
                try {
                    ECPrivateKey eCPrivateKey = (ECPrivateKey) c0487b.m665a().generatePrivate(new ECPrivateKeySpec(AbstractC0326d.m986g(map, "d", false), eCParameterSpec));
                } catch (InvalidKeySpecException e) {
                    throw new C0570b("Invalid key spec: " + e, e);
                }
            }
        } catch (InvalidKeySpecException e2) {
            throw new C0570b("Invalid key spec: " + e2, e2);
        }
    }

    @Override // p011c2.AbstractC0322b
    /* renamed from: b */
    public final String mo983b() {
        return "EC";
    }

    @Override // p011c2.AbstractC0326d
    /* renamed from: f */
    public final void mo982f(LinkedHashMap linkedHashMap) {
        ECPoint w = ((ECPublicKey) this.f1149d).getW();
        HashMap hashMap = C0488c.f1866a;
        String str = this.f1145i;
        int ceil = (int) Math.ceil(((ECParameterSpec) hashMap.get(str)).getCurve().getField().getFieldSize() / 8.0d);
        AbstractC0326d.m984i(linkedHashMap, "x", w.getAffineX(), ceil);
        AbstractC0326d.m984i(linkedHashMap, "y", w.getAffineY(), ceil);
        linkedHashMap.put("crv", str);
    }
}
