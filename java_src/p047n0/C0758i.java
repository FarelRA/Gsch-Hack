package p047n0;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import p045m0.AbstractC0713m;
import p045m0.C0712l;
import p045m0.C0720p;
import p045m0.InterfaceC0699b;
/* renamed from: n0.i */
/* loaded from: classes.dex */
public final class C0758i extends AbstractC0713m<String> {

    /* renamed from: n */
    public final Object f2632n;

    /* renamed from: o */
    public final C0720p.InterfaceC0722b<String> f2633o;

    public C0758i(String str, C0720p.InterfaceC0722b interfaceC0722b, C0720p.InterfaceC0721a interfaceC0721a) {
        super(str, interfaceC0721a);
        this.f2632n = new Object();
        this.f2633o = interfaceC0722b;
    }

    @Override // p045m0.AbstractC0713m
    /* renamed from: b */
    public final void mo238b(String str) {
        C0720p.InterfaceC0722b<String> interfaceC0722b;
        String str2 = str;
        synchronized (this.f2632n) {
            interfaceC0722b = this.f2633o;
        }
        if (interfaceC0722b != null) {
            interfaceC0722b.mo233a(str2);
        }
    }

    @Override // p045m0.AbstractC0713m
    /* renamed from: j */
    public final C0720p<String> mo237j(C0712l c0712l) {
        String str;
        InterfaceC0699b.C0700a c0700a;
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        Map<String, String> map = c0712l.f2477b;
        byte[] bArr = c0712l.f2476a;
        try {
            str = new String(bArr, C0751d.m248a(map));
        } catch (UnsupportedEncodingException unused) {
            str = new String(bArr);
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (map != null) {
            String str2 = map.get("Date");
            if (str2 != null) {
                j = C0751d.m247b(str2);
            } else {
                j = 0;
            }
            String str3 = map.get("Cache-Control");
            int i = 0;
            if (str3 != null) {
                String[] split = str3.split(",", 0);
                z = false;
                j2 = 0;
                j3 = 0;
                while (i < split.length) {
                    String trim = split[i].trim();
                    if (!trim.equals("no-cache") && !trim.equals("no-store")) {
                        if (trim.startsWith("max-age=")) {
                            try {
                                j2 = Long.parseLong(trim.substring(8));
                            } catch (Exception unused2) {
                            }
                        } else if (trim.startsWith("stale-while-revalidate=")) {
                            j3 = Long.parseLong(trim.substring(23));
                        } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                            z = true;
                        }
                        i++;
                    }
                }
                i = 1;
            } else {
                z = false;
                j2 = 0;
                j3 = 0;
            }
            String str4 = map.get("Expires");
            if (str4 != null) {
                j4 = C0751d.m247b(str4);
            } else {
                j4 = 0;
            }
            String str5 = map.get("Last-Modified");
            if (str5 != null) {
                j5 = C0751d.m247b(str5);
            } else {
                j5 = 0;
            }
            String str6 = map.get("ETag");
            if (i != 0) {
                j7 = currentTimeMillis + (j2 * 1000);
                if (z) {
                    j8 = j7;
                } else {
                    Long.signum(j3);
                    j8 = (j3 * 1000) + j7;
                }
                j6 = j8;
            } else {
                j6 = 0;
                if (j > 0 && j4 >= j) {
                    j7 = currentTimeMillis + (j4 - j);
                    j6 = j7;
                } else {
                    j7 = 0;
                }
            }
            InterfaceC0699b.C0700a c0700a2 = new InterfaceC0699b.C0700a();
            c0700a2.f2445a = bArr;
            c0700a2.f2446b = str6;
            c0700a2.f2450f = j7;
            c0700a2.f2449e = j6;
            c0700a2.f2447c = j;
            c0700a2.f2448d = j5;
            c0700a2.f2451g = map;
            c0700a2.f2452h = c0712l.f2478c;
            c0700a = c0700a2;
            return new C0720p<>(str, c0700a);
        }
        c0700a = null;
        return new C0720p<>(str, c0700a);
    }
}
