package p058r;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p055q.C0825c;
import p068v.C0896e;
/* renamed from: r.d */
/* loaded from: classes.dex */
public class C0851d extends C0857j {

    /* renamed from: a */
    public static Class<?> f2751a = null;

    /* renamed from: b */
    public static Constructor<?> f2752b = null;

    /* renamed from: c */
    public static Method f2753c = null;

    /* renamed from: d */
    public static Method f2754d = null;

    /* renamed from: e */
    public static boolean f2755e = false;

    /* renamed from: g */
    public static boolean m171g(Object obj, String str, int i, boolean z) {
        m170h();
        try {
            return ((Boolean) f2753c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: h */
    public static void m170h() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f2755e) {
            return;
        }
        f2755e = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f2752b = constructor;
        f2751a = cls;
        f2753c = method2;
        f2754d = method;
    }

    @Override // p058r.C0857j
    /* renamed from: a */
    public Typeface mo161a(Context context, C0825c.C0827b c0827b, Resources resources, int i) {
        C0825c.C0828c[] c0828cArr;
        m170h();
        try {
            Object newInstance = f2752b.newInstance(new Object[0]);
            for (C0825c.C0828c c0828c : c0827b.f2720a) {
                File m150d = C0859k.m150d(context);
                if (m150d == null) {
                    return null;
                }
                try {
                    if (!C0859k.m152b(m150d, resources, c0828c.f2726f)) {
                        return null;
                    }
                    if (!m171g(newInstance, m150d.getPath(), c0828c.f2722b, c0828c.f2723c)) {
                        return null;
                    }
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    m150d.delete();
                }
            }
            m170h();
            try {
                Object newInstance2 = Array.newInstance(f2751a, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f2754d.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // p058r.C0857j
    /* renamed from: b */
    public Typeface mo160b(Context context, C0896e.C0899c[] c0899cArr, int i) {
        File file;
        String readlink;
        if (c0899cArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo156f(i, c0899cArr).f2839a, "r", null);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
            } catch (ErrnoException unused) {
            }
            try {
                if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                    file = new File(readlink);
                    if (file != null && file.canRead()) {
                        Typeface createFromFile = Typeface.createFromFile(file);
                        openFileDescriptor.close();
                        return createFromFile;
                    }
                    FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                    Typeface mo159c = mo159c(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return mo159c;
                }
                Typeface mo159c2 = mo159c(context, fileInputStream);
                fileInputStream.close();
                openFileDescriptor.close();
                return mo159c2;
            } finally {
            }
            file = null;
            if (file != null) {
                Typeface createFromFile2 = Typeface.createFromFile(file);
                openFileDescriptor.close();
                return createFromFile2;
            }
            FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
        } catch (IOException unused2) {
            return null;
        }
    }
}
