package p007b2;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import p034i2.C0599b;
import p066u0.C0879c;
/* renamed from: b2.a */
/* loaded from: classes.dex */
public final class C0314a {

    /* renamed from: a */
    public int f1136a;

    /* renamed from: b */
    public final MessageDigest f1137b;

    static {
        int i = C0599b.f2144a;
        C0599b.m507e(C0314a.class.getName());
    }

    public C0314a() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f1137b = messageDigest;
            this.f1136a = messageDigest.getDigestLength() * 8;
        } catch (NoSuchAlgorithmException unused) {
            throw new C0879c("Unable to get MessageDigest instance with SHA-256");
        } catch (NoSuchProviderException e) {
            throw new C0879c("Unable to get a MessageDigest implementation of algorithm name: SHA-256 using provider null", e);
        }
    }
}
