package p036j0;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p046m1.C0736h;
/* renamed from: j0.p */
/* loaded from: classes.dex */
public final class C0636p {
    /* renamed from: a */
    public static void m456a(ViewGroup viewGroup, boolean z) {
        String str;
        if (!C0736h.f2558c) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                C0736h.f2556b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            C0736h.f2558c = true;
        }
        Method method = C0736h.f2556b;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                e = e2;
                str = "Failed to invoke suppressLayout method";
                Log.i("ViewUtilsApi18", str, e);
            } catch (InvocationTargetException e3) {
                e = e3;
                str = "Error invoking suppressLayout method";
                Log.i("ViewUtilsApi18", str, e);
            }
        }
    }
}
