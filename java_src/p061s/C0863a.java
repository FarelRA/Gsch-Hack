package p061s;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: s.a */
/* loaded from: classes.dex */
public final class C0863a {

    /* renamed from: a */
    public static Method f2770a;

    /* renamed from: b */
    public static boolean f2771b;

    /* renamed from: c */
    public static Method f2772c;

    /* renamed from: d */
    public static boolean f2773d;

    /* renamed from: a */
    public static void m143a(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        Drawable mo137a;
        int i = Build.VERSION.SDK_INT;
        drawable.clearColorFilter();
        if (i >= 23) {
            return;
        }
        if (drawable instanceof InsetDrawable) {
            mo137a = ((InsetDrawable) drawable).getDrawable();
        } else if (!(drawable instanceof InterfaceC0865c)) {
            if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
                return;
            }
            int childCount = drawableContainerState.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                Drawable child = drawableContainerState.getChild(i2);
                if (child != null) {
                    m143a(child);
                }
            }
            return;
        } else {
            mo137a = ((InterfaceC0865c) drawable).mo137a();
        }
        m143a(mo137a);
    }

    /* renamed from: b */
    public static void m142b(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.setLayoutDirection(i);
            return;
        }
        if (!f2771b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f2770a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f2771b = true;
        }
        Method method = f2770a;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                f2770a = null;
            }
        }
    }

    /* renamed from: c */
    public static void m141c(Drawable drawable, int i) {
        drawable.setTint(i);
    }

    /* renamed from: d */
    public static void m140d(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    /* renamed from: e */
    public static void m139e(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    /* renamed from: f */
    public static Drawable m138f(Drawable drawable) {
        return (Build.VERSION.SDK_INT < 23 && !(drawable instanceof InterfaceC0864b)) ? new C0867e(drawable) : drawable;
    }
}
