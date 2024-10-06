package p011c2;

import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p020f.C0460c;
import p027g2.C0570b;
import p046m1.C0736h;
import p067u1.C0889a;
/* renamed from: c2.d */
/* loaded from: classes.dex */
public abstract class AbstractC0326d extends AbstractC0322b {

    /* renamed from: e */
    public final ArrayList f1154e;

    /* renamed from: f */
    public final String f1155f;

    /* renamed from: g */
    public final String f1156g;

    /* renamed from: h */
    public final String f1157h;

    public AbstractC0326d(Map map) {
        super(map);
        if (map.containsKey("x5c")) {
            List<String> list = (List) map.get("x5c");
            this.f1154e = new ArrayList(list.size());
            C0460c c0460c = new C0460c(10);
            for (String str : list) {
                try {
                    this.f1154e.add((X509Certificate) ((CertificateFactory) c0460c.f1797a).generateCertificate(new ByteArrayInputStream(new C0889a(0, C0889a.f2804f, false).m114b(str))));
                } catch (CertificateException e) {
                    throw new C0570b("Unable to convert " + str + " value to X509Certificate: " + e, e);
                }
            }
        }
        this.f1155f = (String) map.get("x5t");
        this.f1156g = (String) map.get("x5t#S256");
        this.f1157h = (String) map.get("x5u");
    }

    /* renamed from: g */
    public static BigInteger m986g(Map map, String str, boolean z) {
        return new BigInteger(1, new C0460c(8).m699f(AbstractC0322b.m991c(map, str, z)));
    }

    /* renamed from: h */
    public static void m985h(LinkedHashMap linkedHashMap, String str, BigInteger bigInteger) {
        linkedHashMap.put(str, new C0460c(8).m698g(C0736h.m303J(bigInteger)));
    }

    /* renamed from: i */
    public static void m984i(LinkedHashMap linkedHashMap, String str, BigInteger bigInteger, int i) {
        C0460c c0460c = new C0460c(8);
        byte[] m303J = C0736h.m303J(bigInteger);
        if (i > m303J.length) {
            m303J = C0736h.m284p(new byte[i - m303J.length], m303J);
        }
        linkedHashMap.put(str, c0460c.m698g(m303J));
    }

    @Override // p011c2.AbstractC0322b
    /* renamed from: a */
    public final void mo988a(LinkedHashMap linkedHashMap) {
        mo982f(linkedHashMap);
        ArrayList arrayList = this.f1154e;
        if (arrayList != null) {
            new C0460c(10);
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    arrayList2.add(new C0889a(0, C0889a.f2804f, false).m112d(((X509Certificate) it.next()).getEncoded()));
                } catch (CertificateEncodingException e) {
                    throw new IllegalStateException("Unexpected problem getting encoded certificate.", e);
                }
            }
            linkedHashMap.put("x5c", arrayList2);
        }
        AbstractC0322b.m990d("x5t", this.f1155f, linkedHashMap);
        AbstractC0322b.m990d("x5t#S256", this.f1156g, linkedHashMap);
        AbstractC0322b.m990d("x5u", this.f1157h, linkedHashMap);
    }

    /* renamed from: e */
    public final void m987e() {
        X509Certificate x509Certificate;
        ArrayList arrayList = this.f1154e;
        boolean z = false;
        if (arrayList != null && !arrayList.isEmpty()) {
            x509Certificate = (X509Certificate) arrayList.get(0);
        } else {
            x509Certificate = null;
        }
        if (x509Certificate != null && !x509Certificate.getPublicKey().equals((PublicKey) this.f1149d)) {
            z = true;
        }
        if (!z) {
            return;
        }
        throw new IllegalArgumentException("The key in the first certificate MUST match the bare public key represented by other members of the JWK. Public key = " + ((PublicKey) this.f1149d) + " cert = " + x509Certificate);
    }

    /* renamed from: f */
    public abstract void mo982f(LinkedHashMap linkedHashMap);
}
