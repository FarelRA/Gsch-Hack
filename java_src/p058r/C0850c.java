package p058r;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p024g.C0558w;
import p039k.C0659f;
import p039k.C0666h;
import p055q.C0825c;
import p068v.C0892a;
import p068v.C0894c;
import p068v.C0895d;
import p068v.C0896e;
import p068v.C0901f;
import p068v.CallableC0893b;
import p068v.RunnableC0904g;
@SuppressLint({"NewApi"})
/* renamed from: r.c */
/* loaded from: classes.dex */
public final class C0850c {

    /* renamed from: a */
    public static final C0857j f2749a;

    /* renamed from: b */
    public static final C0659f<String, Typeface> f2750b;

    static {
        C0857j c0851d;
        boolean z;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            c0851d = new C0855h();
        } else if (i >= 28) {
            c0851d = new C0854g();
        } else if (i >= 26) {
            c0851d = new C0853f();
        } else {
            if (i >= 24) {
                Method method = C0852e.f2758c;
                if (method == null) {
                    Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
                }
                if (method != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    c0851d = new C0852e();
                }
            }
            c0851d = new C0851d();
        }
        f2749a = c0851d;
        f2750b = new C0659f<>(16);
    }

    /* renamed from: a */
    public static Typeface m173a(Context context, C0825c.InterfaceC0826a interfaceC0826a, Resources resources, int i, int i2, C0558w.C0559a c0559a) {
        Typeface typeface = null;
        if (interfaceC0826a instanceof C0825c.C0829d) {
            C0825c.C0829d c0829d = (C0825c.C0829d) interfaceC0826a;
            boolean z = c0829d.f2729c == 0;
            int i3 = c0829d.f2728b;
            C0892a c0892a = c0829d.f2727a;
            C0659f<String, Typeface> c0659f = C0896e.f2832a;
            String str = c0892a.f2824e + "-" + i2;
            Typeface m421a = C0896e.f2832a.m421a(str);
            if (m421a != null) {
                C0558w c0558w = C0558w.this;
                if (c0558w.f2095k) {
                    c0558w.f2094j = m421a;
                    TextView textView = (TextView) c0559a.f2096a.get();
                    if (textView != null) {
                        textView.setTypeface(m421a, c0558w.f2093i);
                    }
                }
                typeface = m421a;
            } else if (z && i3 == -1) {
                C0896e.C0900d m107b = C0896e.m107b(context, c0892a, i2);
                int i4 = m107b.f2845b;
                if (i4 == 0) {
                    c0559a.m198b(m107b.f2844a, null);
                } else {
                    c0559a.m199a(i4, null);
                }
                typeface = m107b.f2844a;
            } else {
                CallableC0893b callableC0893b = new CallableC0893b(context, c0892a, i2, str);
                if (z) {
                    try {
                        typeface = ((C0896e.C0900d) C0896e.f2833b.m104c(callableC0893b, i3)).f2844a;
                    } catch (InterruptedException unused) {
                    }
                } else {
                    C0894c c0894c = new C0894c(c0559a);
                    synchronized (C0896e.f2834c) {
                        C0666h<String, ArrayList<C0901f.InterfaceC0903b<C0896e.C0900d>>> c0666h = C0896e.f2835d;
                        ArrayList<C0901f.InterfaceC0903b<C0896e.C0900d>> orDefault = c0666h.getOrDefault(str, null);
                        if (orDefault != null) {
                            orDefault.add(c0894c);
                        } else {
                            ArrayList<C0901f.InterfaceC0903b<C0896e.C0900d>> arrayList = new ArrayList<>();
                            arrayList.add(c0894c);
                            c0666h.put(str, arrayList);
                            C0901f c0901f = C0896e.f2833b;
                            C0895d c0895d = new C0895d(str);
                            c0901f.getClass();
                            c0901f.m105b(new RunnableC0904g(callableC0893b, new Handler(), c0895d));
                        }
                    }
                }
            }
        } else {
            Typeface mo161a = f2749a.mo161a(context, (C0825c.C0827b) interfaceC0826a, resources, i2);
            if (mo161a != null) {
                c0559a.m198b(mo161a, null);
            } else {
                c0559a.m199a(-3, null);
            }
            typeface = mo161a;
        }
        if (typeface != null) {
            f2750b.m420b(m172b(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: b */
    public static String m172b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
