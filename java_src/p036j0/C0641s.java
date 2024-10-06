package p036j0;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: j0.s */
/* loaded from: classes.dex */
public class C0641s extends C0640r {

    /* renamed from: l0 */
    public static Method f2235l0;

    /* renamed from: m0 */
    public static boolean f2236m0;

    /* renamed from: n0 */
    public static Method f2237n0;

    /* renamed from: o0 */
    public static boolean f2238o0;

    /* renamed from: R */
    public final void m452R(View view, Matrix matrix) {
        if (!f2236m0) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f2235l0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e);
            }
            f2236m0 = true;
        }
        Method method = f2235l0;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: S */
    public final void m451S(View view, Matrix matrix) {
        if (!f2238o0) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f2237n0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e);
            }
            f2238o0 = true;
        }
        Method method = f2237n0;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
