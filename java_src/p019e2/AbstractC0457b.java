package p019e2;

import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p002a2.C0039j;
import p015d2.C0383d;
import p020f.C0460c;
import p027g2.C0570b;
import p057q1.C0844h;
import p069v1.C0907a;
import p072w1.C0924a;
import p081z1.C0986c;
/* renamed from: e2.b */
/* loaded from: classes.dex */
public abstract class AbstractC0457b {

    /* renamed from: j */
    public static final C0907a f1768j = new C0907a();

    /* renamed from: c */
    public byte[] f1771c;

    /* renamed from: d */
    public Key f1772d;

    /* renamed from: f */
    public String f1774f;

    /* renamed from: a */
    public final C0460c f1769a = new C0460c(8);

    /* renamed from: b */
    public final C0456a f1770b = new C0456a();

    /* renamed from: e */
    public final boolean f1773e = true;

    /* renamed from: g */
    public C0986c f1775g = C0986c.f2993c;

    /* renamed from: h */
    public final Set<String> f1776h = Collections.emptySet();

    /* renamed from: i */
    public final C0907a f1777i = f1768j;

    /* renamed from: b */
    public static void m706b(String str, String str2) {
        if (str != null && str.length() != 0) {
            return;
        }
        throw new C0570b(C0844h.m187a("The ", str2, " cannot be empty."));
    }

    /* renamed from: c */
    public static AbstractC0457b m705c(String str) {
        AbstractC0457b c0383d;
        String[] split = str.split("\\.");
        if (str.endsWith(".")) {
            String[] strArr = new String[split.length + 1];
            System.arraycopy(split, 0, strArr, 0, split.length);
            strArr[split.length] = "";
            split = strArr;
        }
        if (split.length == 5) {
            c0383d = new C0039j();
        } else if (split.length == 3) {
            c0383d = new C0383d();
        } else {
            throw new C0570b("Invalid JOSE Compact Serialization. Expecting either 3 or 5 parts for JWS or JWE respectively but was " + split.length + ".");
        }
        c0383d.mo704d(split);
        c0383d.f1774f = str;
        return c0383d;
    }

    /* renamed from: a */
    public final void m707a() {
        Object obj = this.f1770b.f1765b.get("crit");
        if (obj != null) {
            try {
                for (String str : (List) obj) {
                    if (!this.f1776h.contains(str)) {
                        throw new C0570b("Unrecognized header '" + str + "' marked as critical.");
                    }
                }
            } catch (ClassCastException unused) {
                throw new C0570b("crit header value not an array.");
            }
        }
    }

    /* renamed from: d */
    public abstract void mo704d(String[] strArr);

    /* renamed from: e */
    public final void m703e(String str) {
        String str2;
        m706b(str, "Encoded Header");
        C0456a c0456a = this.f1770b;
        c0456a.f1767d = str;
        byte[] m699f = c0456a.f1764a.m699f(str);
        if (m699f == null) {
            str2 = null;
        } else {
            try {
                str2 = new String(m699f, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
            }
        }
        c0456a.f1767d = null;
        c0456a.f1766c = str2;
        c0456a.f1765b = C0924a.m94a(str2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(this.f1770b.m709a());
        if (this.f1774f != null) {
            sb.append("->");
            sb.append(this.f1774f);
        }
        return sb.toString();
    }
}
