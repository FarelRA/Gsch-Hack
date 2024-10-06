package p058r;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p039k.C0659f;
import p055q.C0825c;
import p068v.C0896e;
/* renamed from: r.f */
/* loaded from: classes.dex */
public class C0853f extends C0851d {

    /* renamed from: f */
    public final Class<?> f2760f;

    /* renamed from: g */
    public final Constructor<?> f2761g;

    /* renamed from: h */
    public final Method f2762h;

    /* renamed from: i */
    public final Method f2763i;

    /* renamed from: j */
    public final Method f2764j;

    /* renamed from: k */
    public final Method f2765k;

    /* renamed from: l */
    public final Method f2766l;

    public C0853f() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = m165m(cls);
            method3 = m164n(cls);
            method4 = cls.getMethod("freeze", new Class[0]);
            method = cls.getMethod("abortCreation", new Class[0]);
            method5 = mo162o(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f2760f = cls;
        this.f2761g = constructor;
        this.f2762h = method2;
        this.f2763i = method3;
        this.f2764j = method4;
        this.f2765k = method;
        this.f2766l = method5;
    }

    /* renamed from: m */
    public static Method m165m(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: n */
    public static Method m164n(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    @Override // p058r.C0851d, p058r.C0857j
    /* renamed from: a */
    public final Typeface mo161a(Context context, C0825c.C0827b c0827b, Resources resources, int i) {
        Object obj;
        C0825c.C0828c[] c0828cArr;
        FontVariationAxis[] fromFontVariationSettings;
        if (!m166l()) {
            return super.mo161a(context, c0827b, resources, i);
        }
        try {
            obj = this.f2761g.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C0825c.C0828c c0828c : c0827b.f2720a) {
            String str = c0828c.f2721a;
            int i2 = c0828c.f2725e;
            int i3 = c0828c.f2722b;
            boolean z = c0828c.f2723c;
            fromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(c0828c.f2724d);
            if (!m168i(context, obj, str, i2, i3, z ? 1 : 0, fromFontVariationSettings)) {
                try {
                    this.f2765k.invoke(obj, new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
                return null;
            }
        }
        if (!m167k(obj)) {
            return null;
        }
        return mo163j(obj);
    }

    @Override // p058r.C0851d, p058r.C0857j
    /* renamed from: b */
    public final Typeface mo160b(Context context, C0896e.C0899c[] c0899cArr, int i) {
        Object obj;
        Typeface mo163j;
        boolean z;
        if (c0899cArr.length < 1) {
            return null;
        }
        if (!m166l()) {
            C0896e.C0899c mo156f = mo156f(i, c0899cArr);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo156f.f2839a, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(mo156f.f2841c).setItalic(mo156f.f2842d).build();
                openFileDescriptor.close();
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        C0659f<String, Typeface> c0659f = C0896e.f2832a;
        HashMap hashMap = new HashMap();
        for (C0896e.C0899c c0899c : c0899cArr) {
            if (c0899c.f2843e == 0) {
                Uri uri = c0899c.f2839a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, C0859k.m149e(context, uri));
                }
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        try {
            obj = this.f2761g.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused2) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        int length = c0899cArr.length;
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            Method method = this.f2765k;
            if (i2 < length) {
                C0896e.C0899c c0899c2 = c0899cArr[i2];
                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(c0899c2.f2839a);
                if (byteBuffer != null) {
                    try {
                        z = ((Boolean) this.f2763i.invoke(obj, byteBuffer, Integer.valueOf(c0899c2.f2840b), null, Integer.valueOf(c0899c2.f2841c), Integer.valueOf(c0899c2.f2842d ? 1 : 0))).booleanValue();
                    } catch (IllegalAccessException | InvocationTargetException unused3) {
                        z = false;
                    }
                    if (!z) {
                        try {
                            method.invoke(obj, new Object[0]);
                            return null;
                        } catch (IllegalAccessException | InvocationTargetException unused4) {
                            return null;
                        }
                    }
                    z2 = true;
                }
                i2++;
            } else if (!z2) {
                try {
                    method.invoke(obj, new Object[0]);
                    return null;
                } catch (IllegalAccessException | InvocationTargetException unused5) {
                    return null;
                }
            } else if (!m167k(obj) || (mo163j = mo163j(obj)) == null) {
                return null;
            } else {
                return Typeface.create(mo163j, i);
            }
        }
    }

    @Override // p058r.C0857j
    /* renamed from: d */
    public final Typeface mo158d(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        if (!m166l()) {
            return super.mo158d(context, resources, i, str, i2);
        }
        try {
            obj = this.f2761g.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        if (!m168i(context, obj, str, 0, -1, -1, null)) {
            try {
                this.f2765k.invoke(obj, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
            return null;
        } else if (!m167k(obj)) {
            return null;
        } else {
            return mo163j(obj);
        }
    }

    /* renamed from: i */
    public final boolean m168i(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f2762h.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: j */
    public Typeface mo163j(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f2760f, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f2766l.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: k */
    public final boolean m167k(Object obj) {
        try {
            return ((Boolean) this.f2764j.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: l */
    public final boolean m166l() {
        Method method = this.f2762h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    /* renamed from: o */
    public Method mo162o(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
