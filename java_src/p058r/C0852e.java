package p058r;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import p039k.C0666h;
import p055q.C0825c;
import p068v.C0896e;
/* renamed from: r.e */
/* loaded from: classes.dex */
public final class C0852e extends C0857j {

    /* renamed from: a */
    public static final Class<?> f2756a;

    /* renamed from: b */
    public static final Constructor<?> f2757b;

    /* renamed from: c */
    public static final Method f2758c;

    /* renamed from: d */
    public static final Method f2759d;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f2757b = constructor;
        f2756a = cls;
        f2758c = method2;
        f2759d = method;
    }

    /* renamed from: g */
    public static boolean m169g(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f2758c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @Override // p058r.C0857j
    /* renamed from: a */
    public final Typeface mo161a(Context context, C0825c.C0827b c0827b, Resources resources, int i) {
        Object obj;
        C0825c.C0828c[] c0828cArr;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = f2757b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C0825c.C0828c c0828c : c0827b.f2720a) {
            int i2 = c0828c.f2726f;
            File m150d = C0859k.m150d(context);
            if (m150d != null) {
                try {
                    if (C0859k.m152b(m150d, resources, i2)) {
                        try {
                            fileInputStream = new FileInputStream(m150d);
                        } catch (IOException unused2) {
                            mappedByteBuffer = null;
                        }
                        try {
                            FileChannel channel = fileInputStream.getChannel();
                            mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                            fileInputStream.close();
                            if (mappedByteBuffer != null || !m169g(obj, mappedByteBuffer, c0828c.f2725e, c0828c.f2722b, c0828c.f2723c)) {
                                return null;
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                                break;
                            } finally {
                                break;
                            }
                        }
                    }
                } finally {
                    m150d.delete();
                }
            }
            mappedByteBuffer = null;
            if (mappedByteBuffer != null) {
                return null;
            }
        }
        try {
            Object newInstance = Array.newInstance(f2756a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f2759d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }

    @Override // p058r.C0857j
    /* renamed from: b */
    public final Typeface mo160b(Context context, C0896e.C0899c[] c0899cArr, int i) {
        Object obj;
        Typeface typeface;
        try {
            obj = f2757b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        C0666h c0666h = new C0666h();
        for (C0896e.C0899c c0899c : c0899cArr) {
            Uri uri = c0899c.f2839a;
            ByteBuffer byteBuffer = (ByteBuffer) c0666h.getOrDefault(uri, null);
            if (byteBuffer == null) {
                byteBuffer = C0859k.m149e(context, uri);
                c0666h.put(uri, byteBuffer);
            }
            if (byteBuffer == null || !m169g(obj, byteBuffer, c0899c.f2840b, c0899c.f2841c, c0899c.f2842d)) {
                return null;
            }
        }
        try {
            Object newInstance = Array.newInstance(f2756a, 1);
            Array.set(newInstance, 0, obj);
            typeface = (Typeface) f2759d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused2) {
            typeface = null;
        }
        if (typeface == null) {
            return null;
        }
        return Typeface.create(typeface, i);
    }
}
