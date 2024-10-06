package p004b;

import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
/* renamed from: b.q */
/* loaded from: classes.dex */
public final class C0285q {

    /* renamed from: a */
    public static Field f1048a;

    /* renamed from: b */
    public static boolean f1049b;

    /* renamed from: c */
    public static Class f1050c;

    /* renamed from: d */
    public static boolean f1051d;

    /* renamed from: e */
    public static Field f1052e;

    /* renamed from: f */
    public static boolean f1053f;

    /* renamed from: g */
    public static Field f1054g;

    /* renamed from: h */
    public static boolean f1055h;

    /* renamed from: a */
    public static void m1022a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f1051d) {
            try {
                f1050c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f1051d = true;
        }
        Class cls = f1050c;
        if (cls == null) {
            return;
        }
        if (!f1053f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f1052e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f1053f = true;
        }
        Field field = f1052e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
