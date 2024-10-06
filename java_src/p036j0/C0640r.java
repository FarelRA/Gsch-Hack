package p036j0;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p046m1.C0736h;
/* renamed from: j0.r */
/* loaded from: classes.dex */
public class C0640r extends C0736h {

    /* renamed from: h0 */
    public static Method f2231h0;

    /* renamed from: i0 */
    public static boolean f2232i0;

    /* renamed from: j0 */
    public static Method f2233j0;

    /* renamed from: k0 */
    public static boolean f2234k0;

    @Override // p046m1.C0736h
    /* renamed from: A */
    public final float mo312A(View view) {
        if (!f2234k0) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f2233j0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e);
            }
            f2234k0 = true;
        }
        Method method = f2233j0;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.mo312A(view);
    }
}
