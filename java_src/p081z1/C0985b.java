package p081z1;

import java.security.Security;
import java.util.Set;
import p034i2.C0599b;
import p034i2.InterfaceC0598a;
/* renamed from: z1.b */
/* loaded from: classes.dex */
public final class C0985b {

    /* renamed from: a */
    public static final InterfaceC0598a f2992a;

    static {
        int i = C0599b.f2144a;
        f2992a = C0599b.m507e(C0985b.class.getName());
    }

    /* renamed from: a */
    public static boolean m5a(String str, String str2) {
        Set<String> algorithms = Security.getAlgorithms(str);
        for (String str3 : algorithms) {
            if (str3.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        f2992a.mo438b("{} is NOT available for {}. Algorithms available from underlying JCE: {}", str2, str, algorithms);
        return false;
    }
}
