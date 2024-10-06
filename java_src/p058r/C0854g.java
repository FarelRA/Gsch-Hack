package p058r;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: r.g */
/* loaded from: classes.dex */
public final class C0854g extends C0853f {
    @Override // p058r.C0853f
    /* renamed from: j */
    public final Typeface mo163j(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f2760f, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f2766l.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p058r.C0853f
    /* renamed from: o */
    public final Method mo162o(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
