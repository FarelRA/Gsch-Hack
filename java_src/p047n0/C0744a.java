package p047n0;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import p028h.AbstractC0574c;
import p045m0.AbstractC0713m;
import p045m0.C0698a;
import p045m0.C0703e;
import p045m0.C0704f;
import p045m0.C0708h;
import p045m0.C0711k;
import p045m0.C0712l;
import p045m0.C0724r;
import p045m0.C0725s;
import p045m0.InterfaceC0699b;
import p045m0.InterfaceC0709i;
import p047n0.C0755g;
/* renamed from: n0.a */
/* loaded from: classes.dex */
public final class C0744a implements InterfaceC0709i {

    /* renamed from: a */
    public final AbstractC0574c f2603a;

    /* renamed from: b */
    public final C0745b f2604b;

    public C0744a(C0753f c0753f) {
        C0745b c0745b = new C0745b();
        this.f2603a = c0753f;
        this.f2604b = c0745b;
    }

    /* renamed from: a */
    public final C0712l m271a(AbstractC0713m<?> abstractC0713m) {
        IOException e;
        Object obj;
        C0755g.C0756a c0756a;
        String str;
        int i;
        Map map;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            C0752e c0752e = null;
            try {
                InterfaceC0699b.C0700a c0700a = abstractC0713m.f2491l;
                if (c0700a == null) {
                    map = Collections.emptyMap();
                } else {
                    HashMap hashMap = new HashMap();
                    String str2 = c0700a.f2446b;
                    if (str2 != null) {
                        hashMap.put("If-None-Match", str2);
                    }
                    long j = c0700a.f2448d;
                    if (j > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                        hashMap.put("If-Modified-Since", simpleDateFormat.format(new Date(j)));
                    }
                    map = hashMap;
                }
                C0752e mo244a = this.f2603a.mo244a(abstractC0713m, map);
                try {
                    int i2 = mo244a.f2624a;
                    List<C0708h> m245b = mo244a.m245b();
                    if (i2 == 304) {
                        return C0755g.m242a(abstractC0713m, SystemClock.elapsedRealtime() - elapsedRealtime, m245b);
                    }
                    InputStream m246a = mo244a.m246a();
                    byte[] m241b = m246a != null ? C0755g.m241b(m246a, mo244a.f2626c, this.f2604b) : new byte[0];
                    C0755g.m240c(SystemClock.elapsedRealtime() - elapsedRealtime, abstractC0713m, m241b, i2);
                    if (i2 < 200 || i2 > 299) {
                        throw new IOException();
                    }
                    return new C0712l(i2, m241b, false, SystemClock.elapsedRealtime() - elapsedRealtime, m245b);
                } catch (IOException e2) {
                    e = e2;
                    obj = null;
                    c0752e = mo244a;
                    if (e instanceof SocketTimeoutException) {
                        c0756a = new C0755g.C0756a("socket", new C0711k());
                    } else {
                        boolean z = e instanceof MalformedURLException;
                        String str3 = abstractC0713m.f2482c;
                        if (z) {
                            throw new RuntimeException("Bad URL " + str3, e);
                        } else if (c0752e == null) {
                            throw new C0703e(e);
                        } else {
                            int i3 = c0752e.f2624a;
                            C0725s.m322c("Unexpected response code %d for %s", Integer.valueOf(i3), str3);
                            if (obj != null) {
                                List<C0708h> m245b2 = c0752e.m245b();
                                SystemClock.elapsedRealtime();
                                if (m245b2 != null) {
                                    if (m245b2.isEmpty()) {
                                        Collections.emptyMap();
                                    } else {
                                        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                                        for (C0708h c0708h : m245b2) {
                                            treeMap.put(c0708h.f2469a, c0708h.f2470b);
                                        }
                                    }
                                }
                                if (m245b2 != null) {
                                    Collections.unmodifiableList(m245b2);
                                }
                                if (i3 != 401 && i3 != 403) {
                                    if (i3 < 400 || i3 > 499) {
                                        throw new C0711k(0);
                                    }
                                    throw new C0703e();
                                }
                                c0756a = new C0755g.C0756a("auth", new C0698a());
                            } else {
                                c0756a = new C0755g.C0756a("network", new C0711k());
                            }
                        }
                    }
                    str = c0756a.f2629a;
                    C0704f c0704f = abstractC0713m.f2490k;
                    i = c0704f.f2462a;
                    try {
                        C0724r c0724r = c0756a.f2630b;
                        int i4 = c0704f.f2463b + 1;
                        c0704f.f2463b = i4;
                        c0704f.f2462a = ((int) (i * 1.0f)) + i;
                        if (!(i4 <= 1)) {
                            throw c0724r;
                        }
                        abstractC0713m.m340a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(i)));
                    } catch (C0724r e3) {
                        abstractC0713m.m340a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(i)));
                        throw e3;
                    }
                }
            } catch (IOException e4) {
                e = e4;
                obj = null;
            }
            abstractC0713m.m340a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(i)));
        }
    }
}
