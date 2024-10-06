package p036j0;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: j0.q */
/* loaded from: classes.dex */
public final class C0637q {

    /* renamed from: a */
    public static final C0641s f2227a;

    /* renamed from: b */
    public static Field f2228b;

    /* renamed from: c */
    public static boolean f2229c;

    /* renamed from: d */
    public static final C0638a f2230d;

    /* renamed from: j0.q$a */
    /* loaded from: classes.dex */
    public static class C0638a extends Property<View, Float> {
        public C0638a() {
            super(Float.class, "translationAlpha");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(C0637q.f2227a.mo312A(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            C0637q.m454b(view, f.floatValue());
        }
    }

    /* renamed from: j0.q$b */
    /* loaded from: classes.dex */
    public static class C0639b extends Property<View, Rect> {
        public C0639b() {
            super(Rect.class, "clipBounds");
        }

        @Override // android.util.Property
        public final Rect get(View view) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public final void set(View view, Rect rect) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            view.setClipBounds(rect);
        }
    }

    static {
        f2227a = Build.VERSION.SDK_INT >= 22 ? new C0642t() : new C0641s();
        f2230d = new C0638a();
        new C0639b();
    }

    /* renamed from: a */
    public static void m455a(View view, int i, int i2, int i3, int i4) {
        f2227a.mo305H(view, i, i2, i3, i4);
    }

    /* renamed from: b */
    public static void m454b(View view, float f) {
        f2227a.getClass();
        if (!C0640r.f2232i0) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                C0640r.f2231h0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e);
            }
            C0640r.f2232i0 = true;
        }
        Method method = C0640r.f2231h0;
        if (method != null) {
            try {
                method.invoke(view, Float.valueOf(f));
                return;
            } catch (IllegalAccessException unused) {
                return;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        view.setAlpha(f);
    }

    /* renamed from: c */
    public static void m453c(View view, int i) {
        if (!f2229c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f2228b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f2229c = true;
        }
        Field field = f2228b;
        if (field != null) {
            try {
                f2228b.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
