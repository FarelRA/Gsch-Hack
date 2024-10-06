package p034i2;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.impl.StaticLoggerBinder;
import p020f.C0460c;
import p038j2.C0653c;
import p046m1.C0736h;
/* renamed from: i2.b */
/* loaded from: classes.dex */
public final class C0599b {

    /* renamed from: a */
    public static int f2144a;

    /* renamed from: b */
    public static final C0460c f2145b = new C0460c(11);

    /* renamed from: c */
    public static final C0736h f2146c = new C0736h();

    /* renamed from: d */
    public static final String[] f2147d = {"1.6", "1.7"};

    /* renamed from: e */
    public static final String f2148e = "org/slf4j/impl/StaticLoggerBinder.class";

    /* renamed from: a */
    public static final void m511a() {
        boolean z;
        try {
            LinkedHashSet m510b = m510b();
            m505g(m510b);
            StaticLoggerBinder.getSingleton();
            f2144a = 3;
            m506f(m510b);
            m509c();
        } catch (Exception e) {
            f2144a = 2;
            C0736h.m307F("Failed to instantiate SLF4J LoggerFactory", e);
            throw new IllegalStateException("Unexpected initialization failure", e);
        } catch (NoClassDefFoundError e2) {
            String message = e2.getMessage();
            if (message != null && (message.indexOf("org/slf4j/impl/StaticLoggerBinder") != -1 || message.indexOf("org.slf4j.impl.StaticLoggerBinder") != -1)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f2144a = 4;
                C0736h.m308E("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                C0736h.m308E("Defaulting to no-operation (NOP) logger implementation");
                C0736h.m308E("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                return;
            }
            f2144a = 2;
            C0736h.m307F("Failed to instantiate SLF4J LoggerFactory", e2);
            throw e2;
        } catch (NoSuchMethodError e3) {
            String message2 = e3.getMessage();
            if (message2 != null && message2.indexOf("org.slf4j.impl.StaticLoggerBinder.getSingleton()") != -1) {
                f2144a = 2;
                C0736h.m308E("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                C0736h.m308E("Your binding is version 1.5.5 or earlier.");
                C0736h.m308E("Upgrade your binding to version 1.6.x.");
            }
            throw e3;
        }
    }

    /* renamed from: b */
    public static LinkedHashSet m510b() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = C0599b.class.getClassLoader();
            String str = f2148e;
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(str) : classLoader.getResources(str);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e) {
            C0736h.m307F("Error getting resources from path", e);
        }
        return linkedHashSet;
    }

    /* renamed from: c */
    public static final void m509c() {
        C0460c c0460c = f2145b;
        c0460c.getClass();
        ArrayList arrayList = new ArrayList(((ConcurrentMap) c0460c.f1797a).values());
        if (arrayList.isEmpty()) {
            return;
        }
        C0736h.m308E("The following set of substitute loggers may have been accessed");
        C0736h.m308E("during the initialization phase. Logging calls during this");
        C0736h.m308E("phase were not honored. However, subsequent logging calls to these");
        C0736h.m308E("loggers will work as normally expected.");
        C0736h.m308E("See also http://www.slf4j.org/codes.html#substituteLogger");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0653c c0653c = (C0653c) it.next();
            c0653c.f2261b = m507e(c0653c.f2260a);
            C0736h.m308E(c0653c.f2260a);
        }
        f2145b.clear();
    }

    /* renamed from: d */
    public static ILoggerFactory m508d() {
        if (f2144a == 0) {
            f2144a = 1;
            m511a();
            if (f2144a == 3) {
                m504h();
            }
        }
        int i = f2144a;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f2146c;
                    }
                    throw new IllegalStateException("Unreachable code");
                }
                return StaticLoggerBinder.getSingleton().getLoggerFactory();
            }
            throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        return f2145b;
    }

    /* renamed from: e */
    public static InterfaceC0598a m507e(String str) {
        return m508d().mo295c(str);
    }

    /* renamed from: f */
    public static void m506f(LinkedHashSet linkedHashSet) {
        boolean z = true;
        if (linkedHashSet.size() <= 1) {
            z = false;
        }
        if (z) {
            C0736h.m308E("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
        }
    }

    /* renamed from: g */
    public static void m505g(LinkedHashSet linkedHashSet) {
        boolean z = true;
        if (linkedHashSet.size() <= 1) {
            z = false;
        }
        if (z) {
            C0736h.m308E("Class path contains multiple SLF4J bindings.");
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                C0736h.m308E("Found binding in [" + ((URL) it.next()) + "]");
            }
            C0736h.m308E("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    /* renamed from: h */
    public static final void m504h() {
        String[] strArr;
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            int i = 0;
            boolean z = false;
            while (true) {
                strArr = f2147d;
                if (i >= strArr.length) {
                    break;
                }
                if (str.startsWith(strArr[i])) {
                    z = true;
                }
                i++;
            }
            if (z) {
                return;
            }
            C0736h.m308E("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(strArr).toString());
            C0736h.m308E("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            C0736h.m307F("Unexpected problem occured during version sanity check", th);
        }
    }
}
