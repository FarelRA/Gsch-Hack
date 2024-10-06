package p011c2;

import java.io.Serializable;
import java.security.Key;
import java.util.LinkedHashMap;
import java.util.Map;
import p027g2.C0570b;
import p057q1.C0844h;
import p072w1.C0924a;
/* renamed from: c2.b */
/* loaded from: classes.dex */
public abstract class AbstractC0322b implements Serializable {

    /* renamed from: a */
    public String f1146a;

    /* renamed from: b */
    public String f1147b;

    /* renamed from: c */
    public String f1148c;

    /* renamed from: d */
    public Key f1149d;

    /* renamed from: c2.b$a */
    /* loaded from: classes.dex */
    public static class C0323a {
        /* renamed from: a */
        public static AbstractC0322b m989a() {
            char c;
            C0924a.C0926b m94a = C0924a.m94a("{\"kty\":\"RSA\",\"n\":\"sXchDaQebHnPiGvyDOAT4saGEUetSyo9MKLOoWFsueri23bOdgWp4Dy1WlUzewbgBHod5pcM9H95GQRV3JDXboIRROSBigeC5yjU1hGzHHyXss8UDprecbAYxknTcQkhslANGRUZmdTOQ5qTRsLAt6BTYuyvVRdhS8exSZEy_c4gs_7svlJJQ4H9_NxsiIoLwAEk7-Q3UXERGYw_75IDrGA84-lA_-Ct4eTlXHBIY2EaV7t7LjJaynVJCpkv4LKjTTAumiGUIuQhrNhZLuF_RJLqHpM2kgWFLU7-VTdL1VbC2tejvcI2BlMkEpk1BzBZI0KQB0GaDWFLN-aEAw3vRw\",\"e\":\"AQAB\"}");
            String m991c = AbstractC0322b.m991c(m94a, "kty", true);
            m991c.getClass();
            int hashCode = m991c.hashCode();
            if (hashCode != 2206) {
                if (hashCode != 81440) {
                    if (hashCode == 109856 && m991c.equals("oct")) {
                        c = 2;
                    }
                    c = 65535;
                } else {
                    if (m991c.equals("RSA")) {
                        c = 1;
                    }
                    c = 65535;
                }
            } else {
                if (m991c.equals("EC")) {
                    c = 0;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c == 2) {
                        return new C0325c(m94a);
                    }
                    throw new C0570b(C0844h.m187a("Unknown key type algorithm: '", m991c, "'"));
                }
                return new C0327e(m94a);
            }
            return new C0321a(m94a);
        }
    }

    /* renamed from: c2.b$b */
    /* loaded from: classes.dex */
    public enum EnumC0324b {
        /* JADX INFO: Fake field, exist only in values array */
        EF0,
        f1150a,
        f1151b;

        EnumC0324b() {
        }
    }

    public AbstractC0322b(Map<String, Object> map) {
        this.f1146a = (String) map.get("use");
        this.f1147b = (String) map.get("kid");
        this.f1148c = (String) map.get("alg");
    }

    /* renamed from: c */
    public static String m991c(Map<String, Object> map, String str, boolean z) {
        String str2 = (String) map.get(str);
        if (str2 == null && z) {
            throw new C0570b(C0844h.m187a("Missing required '", str, "' parameter."));
        }
        return str2;
    }

    /* renamed from: d */
    public static void m990d(String str, String str2, LinkedHashMap linkedHashMap) {
        if (str2 != null) {
            linkedHashMap.put(str, str2);
        }
    }

    /* renamed from: a */
    public abstract void mo988a(LinkedHashMap linkedHashMap);

    /* renamed from: b */
    public abstract String mo983b();

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("kty", mo983b());
        m990d("kid", this.f1147b, linkedHashMap);
        m990d("use", this.f1146a, linkedHashMap);
        m990d("alg", this.f1148c, linkedHashMap);
        mo988a(linkedHashMap);
        sb.append(linkedHashMap);
        return sb.toString();
    }
}
