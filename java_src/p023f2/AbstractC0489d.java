package p023f2;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import p027g2.C0570b;
/* renamed from: f2.d */
/* loaded from: classes.dex */
public abstract class AbstractC0489d {

    /* renamed from: a */
    public final String f1868a = null;

    /* renamed from: a */
    public final KeyFactory m665a() {
        String str;
        switch (((C0487b) this).f1865b) {
            case 0:
                str = "EC";
                break;
            default:
                str = "RSA";
                break;
        }
        String str2 = this.f1868a;
        try {
            return str2 == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, str2);
        } catch (NoSuchAlgorithmException e) {
            throw new C0570b("Couldn't find " + str + " KeyFactory! " + e, e);
        } catch (NoSuchProviderException e2) {
            throw new C0570b("Cannot get KeyFactory instance with provider " + str2, e2);
        }
    }
}
