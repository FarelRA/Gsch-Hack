package p081z1;

import java.io.Serializable;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p027g2.C0569a;
import p034i2.C0599b;
import p034i2.InterfaceC0598a;
import p046m1.C0736h;
/* renamed from: z1.d */
/* loaded from: classes.dex */
public final class C0987d {

    /* renamed from: a */
    public final Object f2997a;

    /* renamed from: b */
    public final Serializable f2998b;

    /* renamed from: c */
    public final Object f2999c;

    public /* synthetic */ C0987d(Class cls, String str) {
        this.f2999c = new LinkedHashMap();
        this.f2998b = str;
        this.f2997a = C0599b.m507e(C0987d.class + "->" + cls.getSimpleName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C0987d(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f2997a = bArr;
        this.f2998b = bArr2;
        this.f2999c = bArr3;
    }

    /* renamed from: a */
    public final InterfaceC0984a m3a(String str) {
        InterfaceC0984a interfaceC0984a = (InterfaceC0984a) ((Map) this.f2999c).get(str);
        if (interfaceC0984a != null) {
            return interfaceC0984a;
        }
        throw new C0569a(str + " is an unknown, unsupported or unavailable " + ((String) this.f2998b) + " algorithm (not one of " + m2b() + ").");
    }

    /* renamed from: b */
    public final Set m2b() {
        return Collections.unmodifiableSet(((Map) this.f2999c).keySet());
    }

    /* renamed from: c */
    public final void m1c(InterfaceC0984a interfaceC0984a) {
        boolean z;
        Object obj = this.f2997a;
        String mo0c = interfaceC0984a.mo0c();
        try {
            z = interfaceC0984a.mo6f();
        } catch (Throwable th) {
            ((InterfaceC0598a) obj).mo436d("Unexpected problem checking for availability of " + interfaceC0984a.mo0c() + " algorithm: " + C0736h.m302K(th));
            z = false;
        }
        Serializable serializable = this.f2998b;
        if (z) {
            ((Map) this.f2999c).put(mo0c, interfaceC0984a);
            ((InterfaceC0598a) obj).mo438b("{} registered for {} algorithm {}", interfaceC0984a, (String) serializable, mo0c);
            return;
        }
        ((InterfaceC0598a) obj).mo435e(mo0c, (String) serializable, "{} is unavailable so will not be registered for {} algorithms.");
    }
}
