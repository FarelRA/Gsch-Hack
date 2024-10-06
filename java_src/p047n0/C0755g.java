package p047n0;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import p045m0.AbstractC0713m;
import p045m0.C0708h;
import p045m0.C0712l;
import p045m0.C0724r;
import p045m0.C0725s;
import p045m0.InterfaceC0699b;
/* renamed from: n0.g */
/* loaded from: classes.dex */
public final class C0755g {

    /* renamed from: n0.g$a */
    /* loaded from: classes.dex */
    public static class C0756a {

        /* renamed from: a */
        public final String f2629a;

        /* renamed from: b */
        public final C0724r f2630b;

        public C0756a(String str, C0724r c0724r) {
            this.f2629a = str;
            this.f2630b = c0724r;
        }
    }

    /* renamed from: a */
    public static C0712l m242a(AbstractC0713m<?> abstractC0713m, long j, List<C0708h> list) {
        InterfaceC0699b.C0700a c0700a = abstractC0713m.f2491l;
        if (c0700a == null) {
            return new C0712l(304, null, true, j, list);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (C0708h c0708h : list) {
                treeSet.add(c0708h.f2469a);
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<C0708h> list2 = c0700a.f2452h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (C0708h c0708h2 : c0700a.f2452h) {
                    if (!treeSet.contains(c0708h2.f2469a)) {
                        arrayList.add(c0708h2);
                    }
                }
            }
        } else if (!c0700a.f2451g.isEmpty()) {
            for (Map.Entry<String, String> entry : c0700a.f2451g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new C0708h(entry.getKey(), entry.getValue()));
                }
            }
        }
        return new C0712l(304, c0700a.f2445a, true, j, arrayList);
    }

    /* renamed from: b */
    public static byte[] m241b(InputStream inputStream, int i, C0745b c0745b) {
        byte[] bArr;
        C0757h c0757h = new C0757h(c0745b, i);
        try {
            bArr = c0745b.m270a(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    c0757h.write(bArr, 0, read);
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        C0725s.m321d("Error occurred when closing InputStream", new Object[0]);
                    }
                    c0745b.m269b(bArr);
                    c0757h.close();
                    throw th;
                }
            }
            byte[] byteArray = c0757h.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                C0725s.m321d("Error occurred when closing InputStream", new Object[0]);
            }
            c0745b.m269b(bArr);
            c0757h.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArr = null;
        }
    }

    /* renamed from: c */
    public static void m240c(long j, AbstractC0713m<?> abstractC0713m, byte[] bArr, int i) {
        Object obj;
        if (C0725s.f2511a || j > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = abstractC0713m;
            objArr[1] = Long.valueOf(j);
            if (bArr != null) {
                obj = Integer.valueOf(bArr.length);
            } else {
                obj = "null";
            }
            objArr[2] = obj;
            objArr[3] = Integer.valueOf(i);
            objArr[4] = Integer.valueOf(abstractC0713m.f2490k.f2463b);
            C0725s.m323b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }
}
