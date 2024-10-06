package androidx.lifecycle;

import androidx.lifecycle.AbstractC0160f;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes.dex */
public final class C0155a {
    /* renamed from: a */
    public static void m1218a(List<C0156b> list, InterfaceC0163g interfaceC0163g, AbstractC0160f.EnumC0161a enumC0161a, Object obj) {
        int size;
        if (list != null && list.size() - 1 >= 0) {
            C0156b c0156b = list.get(size);
            c0156b.getClass();
            try {
                c0156b.getClass();
                c0156b.getClass();
                throw null;
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }
    }
}
