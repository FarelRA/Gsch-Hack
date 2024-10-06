package p058r;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import p055q.C0825c;
import p068v.C0896e;
/* renamed from: r.j */
/* loaded from: classes.dex */
public class C0857j {

    /* renamed from: r.j$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0858a<T> {
        /* renamed from: a */
        int mo155a(T t);

        /* renamed from: b */
        boolean mo154b(T t);
    }

    public C0857j() {
        new ConcurrentHashMap();
    }

    /* renamed from: e */
    public static <T> T m157e(T[] tArr, int i, InterfaceC0858a<T> interfaceC0858a) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (Math.abs(interfaceC0858a.mo155a(t2) - i2) * 2) + (interfaceC0858a.mo154b(t2) == z ? 0 : 1);
            if (t == null || i3 > abs) {
                t = t2;
                i3 = abs;
            }
        }
        return t;
    }

    /* renamed from: a */
    public Typeface mo161a(Context context, C0825c.C0827b c0827b, Resources resources, int i) {
        throw null;
    }

    /* renamed from: b */
    public Typeface mo160b(Context context, C0896e.C0899c[] c0899cArr, int i) {
        throw null;
    }

    /* renamed from: c */
    public Typeface mo159c(Context context, InputStream inputStream) {
        File m150d = C0859k.m150d(context);
        if (m150d == null) {
            return null;
        }
        try {
            if (C0859k.m151c(m150d, inputStream)) {
                return Typeface.createFromFile(m150d.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m150d.delete();
        }
    }

    /* renamed from: d */
    public Typeface mo158d(Context context, Resources resources, int i, String str, int i2) {
        File m150d = C0859k.m150d(context);
        if (m150d == null) {
            return null;
        }
        try {
            if (C0859k.m152b(m150d, resources, i)) {
                return Typeface.createFromFile(m150d.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m150d.delete();
        }
    }

    /* renamed from: f */
    public C0896e.C0899c mo156f(int i, C0896e.C0899c[] c0899cArr) {
        return (C0896e.C0899c) m157e(c0899cArr, i, new C0856i());
    }
}
