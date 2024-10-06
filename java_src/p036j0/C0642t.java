package p036j0;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: j0.t */
/* loaded from: classes.dex */
public final class C0642t extends C0641s {

    /* renamed from: p0 */
    public static Method f2239p0;

    /* renamed from: q0 */
    public static boolean f2240q0;

    @Override // p046m1.C0736h
    /* renamed from: H */
    public final void mo305H(View view, int i, int i2, int i3, int i4) {
        if (!f2240q0) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setLeftTopRightBottom", cls, cls, cls, cls);
                f2239p0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e);
            }
            f2240q0 = true;
        }
        Method method = f2239p0;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
