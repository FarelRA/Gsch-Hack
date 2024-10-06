package p024g;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: g.y0 */
/* loaded from: classes.dex */
public final class C0564y0 {

    /* renamed from: a */
    public static final Method f2121a;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f2121a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
        }
    }

    /* renamed from: a */
    public static boolean m534a(View view) {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (view.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }
}
