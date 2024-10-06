package p045m0;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: m0.s */
/* loaded from: classes.dex */
public final class C0725s {

    /* renamed from: a */
    public static final boolean f2511a = Log.isLoggable("Volley", 2);

    /* renamed from: b */
    public static final String f2512b = C0725s.class.getName();

    /* renamed from: m0.s$a */
    /* loaded from: classes.dex */
    public static class C0726a {

        /* renamed from: c */
        public static final boolean f2513c = C0725s.f2511a;

        /* renamed from: a */
        public final ArrayList f2514a = new ArrayList();

        /* renamed from: b */
        public boolean f2515b = false;

        /* renamed from: m0.s$a$a */
        /* loaded from: classes.dex */
        public static class C0727a {

            /* renamed from: a */
            public final String f2516a;

            /* renamed from: b */
            public final long f2517b;

            /* renamed from: c */
            public final long f2518c;

            public C0727a(String str, long j, long j2) {
                this.f2516a = str;
                this.f2517b = j;
                this.f2518c = j2;
            }
        }

        /* renamed from: a */
        public final synchronized void m320a(String str, long j) {
            if (this.f2515b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f2514a.add(new C0727a(str, j, SystemClock.elapsedRealtime()));
        }

        /* renamed from: b */
        public final synchronized void m319b(String str) {
            long j;
            this.f2515b = true;
            ArrayList arrayList = this.f2514a;
            if (arrayList.size() == 0) {
                j = 0;
            } else {
                j = ((C0727a) arrayList.get(arrayList.size() - 1)).f2518c - ((C0727a) arrayList.get(0)).f2518c;
            }
            if (j <= 0) {
                return;
            }
            long j2 = ((C0727a) this.f2514a.get(0)).f2518c;
            C0725s.m323b("(%-4d ms) %s", Long.valueOf(j), str);
            Iterator it = this.f2514a.iterator();
            while (it.hasNext()) {
                C0727a c0727a = (C0727a) it.next();
                long j3 = c0727a.f2518c;
                C0725s.m323b("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c0727a.f2517b), c0727a.f2516a);
                j2 = j3;
            }
        }

        public final void finalize() {
            if (this.f2515b) {
                return;
            }
            m319b("Request on the loose");
            C0725s.m322c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    /* renamed from: a */
    public static String m324a(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f2512b)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, format);
    }

    /* renamed from: b */
    public static void m323b(String str, Object... objArr) {
        Log.d("Volley", m324a(str, objArr));
    }

    /* renamed from: c */
    public static void m322c(String str, Object... objArr) {
        Log.e("Volley", m324a(str, objArr));
    }

    /* renamed from: d */
    public static void m321d(String str, Object... objArr) {
        if (f2511a) {
            Log.v("Volley", m324a(str, objArr));
        }
    }
}
