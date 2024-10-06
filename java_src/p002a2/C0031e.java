package p002a2;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import p034i2.C0599b;
import p034i2.InterfaceC0598a;
/* renamed from: a2.e */
/* loaded from: classes.dex */
public final class C0031e {

    /* renamed from: a */
    public static final InterfaceC0598a f73a;

    static {
        int i = C0599b.f2144a;
        f73a = C0599b.m507e(C0031e.class.getName());
    }

    /* renamed from: a */
    public static boolean m1370a(int i, String str) {
        InterfaceC0598a interfaceC0598a = f73a;
        int i2 = i * 8;
        try {
            int maxAllowedKeyLength = Cipher.getMaxAllowedKeyLength(str);
            boolean z = i2 <= maxAllowedKeyLength;
            if (!z) {
                interfaceC0598a.mo435e(str, Integer.valueOf(maxAllowedKeyLength), "max allowed key length for {} is {}");
            }
            return z;
        } catch (NoSuchAlgorithmException e) {
            interfaceC0598a.mo435e(str, e, "Unknown/unsupported algorithm, {} {}");
            return false;
        }
    }
}
