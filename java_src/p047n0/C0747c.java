package p047n0;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p045m0.C0708h;
import p045m0.C0725s;
import p045m0.InterfaceC0699b;
/* renamed from: n0.c */
/* loaded from: classes.dex */
public final class C0747c implements InterfaceC0699b {

    /* renamed from: c */
    public final InterfaceC0750c f2612c;

    /* renamed from: a */
    public final LinkedHashMap f2610a = new LinkedHashMap(16, 0.75f, true);

    /* renamed from: b */
    public long f2611b = 0;

    /* renamed from: d */
    public final int f2613d = 5242880;

    /* renamed from: n0.c$a */
    /* loaded from: classes.dex */
    public static class C0748a {

        /* renamed from: a */
        public long f2614a;

        /* renamed from: b */
        public final String f2615b;

        /* renamed from: c */
        public final String f2616c;

        /* renamed from: d */
        public final long f2617d;

        /* renamed from: e */
        public final long f2618e;

        /* renamed from: f */
        public final long f2619f;

        /* renamed from: g */
        public final long f2620g;

        /* renamed from: h */
        public final List<C0708h> f2621h;

        public C0748a(String str, String str2, long j, long j2, long j3, long j4, List<C0708h> list) {
            this.f2615b = str;
            this.f2616c = "".equals(str2) ? null : str2;
            this.f2617d = j;
            this.f2618e = j2;
            this.f2619f = j3;
            this.f2620g = j4;
            this.f2621h = list;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<m0.h>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0748a(String str, InterfaceC0699b.C0700a c0700a) {
            this(str, r2, r3, r5, r7, r9, r0);
            String str2 = c0700a.f2446b;
            long j = c0700a.f2447c;
            long j2 = c0700a.f2448d;
            long j3 = c0700a.f2449e;
            long j4 = c0700a.f2450f;
            ?? r0 = c0700a.f2452h;
            if (r0 == 0) {
                Map<String, String> map = c0700a.f2451g;
                r0 = new ArrayList(map.size());
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    r0.add(new C0708h(entry.getKey(), entry.getValue()));
                }
            }
        }

        /* renamed from: a */
        public static C0748a m251a(C0749b c0749b) {
            List arrayList;
            if (C0747c.m259i(c0749b) == 538247942) {
                String m257k = C0747c.m257k(c0749b);
                String m257k2 = C0747c.m257k(c0749b);
                long m258j = C0747c.m258j(c0749b);
                long m258j2 = C0747c.m258j(c0749b);
                long m258j3 = C0747c.m258j(c0749b);
                long m258j4 = C0747c.m258j(c0749b);
                int m259i = C0747c.m259i(c0749b);
                if (m259i >= 0) {
                    if (m259i == 0) {
                        arrayList = Collections.emptyList();
                    } else {
                        arrayList = new ArrayList();
                    }
                    List list = arrayList;
                    for (int i = 0; i < m259i; i++) {
                        list.add(new C0708h(C0747c.m257k(c0749b).intern(), C0747c.m257k(c0749b).intern()));
                    }
                    return new C0748a(m257k, m257k2, m258j, m258j2, m258j3, m258j4, list);
                }
                throw new IOException("readHeaderList size=" + m259i);
            }
            throw new IOException();
        }

        /* renamed from: b */
        public final InterfaceC0699b.C0700a m250b(byte[] bArr) {
            InterfaceC0699b.C0700a c0700a = new InterfaceC0699b.C0700a();
            c0700a.f2445a = bArr;
            c0700a.f2446b = this.f2616c;
            c0700a.f2447c = this.f2617d;
            c0700a.f2448d = this.f2618e;
            c0700a.f2449e = this.f2619f;
            c0700a.f2450f = this.f2620g;
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            List<C0708h> list = this.f2621h;
            for (C0708h c0708h : list) {
                treeMap.put(c0708h.f2469a, c0708h.f2470b);
            }
            c0700a.f2451g = treeMap;
            c0700a.f2452h = Collections.unmodifiableList(list);
            return c0700a;
        }

        /* renamed from: c */
        public final boolean m249c(BufferedOutputStream bufferedOutputStream) {
            try {
                C0747c.m254n(bufferedOutputStream, 538247942);
                C0747c.m252p(bufferedOutputStream, this.f2615b);
                String str = this.f2616c;
                if (str == null) {
                    str = "";
                }
                C0747c.m252p(bufferedOutputStream, str);
                C0747c.m253o(bufferedOutputStream, this.f2617d);
                C0747c.m253o(bufferedOutputStream, this.f2618e);
                C0747c.m253o(bufferedOutputStream, this.f2619f);
                C0747c.m253o(bufferedOutputStream, this.f2620g);
                List<C0708h> list = this.f2621h;
                if (list != null) {
                    C0747c.m254n(bufferedOutputStream, list.size());
                    for (C0708h c0708h : list) {
                        C0747c.m252p(bufferedOutputStream, c0708h.f2469a);
                        C0747c.m252p(bufferedOutputStream, c0708h.f2470b);
                    }
                } else {
                    C0747c.m254n(bufferedOutputStream, 0);
                }
                bufferedOutputStream.flush();
                return true;
            } catch (IOException e) {
                C0725s.m323b("%s", e.toString());
                return false;
            }
        }
    }

    /* renamed from: n0.c$b */
    /* loaded from: classes.dex */
    public static class C0749b extends FilterInputStream {

        /* renamed from: a */
        public final long f2622a;

        /* renamed from: b */
        public long f2623b;

        public C0749b(BufferedInputStream bufferedInputStream, long j) {
            super(bufferedInputStream);
            this.f2622a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() {
            int read = super.read();
            if (read != -1) {
                this.f2623b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f2623b += read;
            }
            return read;
        }
    }

    /* renamed from: n0.c$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0750c {
    }

    public C0747c(C0759j c0759j) {
        this.f2612c = c0759j;
    }

    /* renamed from: c */
    public static String m265c(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(str.substring(0, length).hashCode());
        return valueOf + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: h */
    public static int m260h(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: i */
    public static int m259i(InputStream inputStream) {
        return (m260h(inputStream) << 24) | (m260h(inputStream) << 0) | 0 | (m260h(inputStream) << 8) | (m260h(inputStream) << 16);
    }

    /* renamed from: j */
    public static long m258j(InputStream inputStream) {
        return ((m260h(inputStream) & 255) << 0) | 0 | ((m260h(inputStream) & 255) << 8) | ((m260h(inputStream) & 255) << 16) | ((m260h(inputStream) & 255) << 24) | ((m260h(inputStream) & 255) << 32) | ((m260h(inputStream) & 255) << 40) | ((m260h(inputStream) & 255) << 48) | ((255 & m260h(inputStream)) << 56);
    }

    /* renamed from: k */
    public static String m257k(C0749b c0749b) {
        return new String(m255m(c0749b, m258j(c0749b)), "UTF-8");
    }

    /* renamed from: m */
    public static byte[] m255m(C0749b c0749b, long j) {
        long j2 = c0749b.f2622a - c0749b.f2623b;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c0749b).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + j2);
    }

    /* renamed from: n */
    public static void m254n(BufferedOutputStream bufferedOutputStream, int i) {
        bufferedOutputStream.write((i >> 0) & 255);
        bufferedOutputStream.write((i >> 8) & 255);
        bufferedOutputStream.write((i >> 16) & 255);
        bufferedOutputStream.write((i >> 24) & 255);
    }

    /* renamed from: o */
    public static void m253o(BufferedOutputStream bufferedOutputStream, long j) {
        bufferedOutputStream.write((byte) (j >>> 0));
        bufferedOutputStream.write((byte) (j >>> 8));
        bufferedOutputStream.write((byte) (j >>> 16));
        bufferedOutputStream.write((byte) (j >>> 24));
        bufferedOutputStream.write((byte) (j >>> 32));
        bufferedOutputStream.write((byte) (j >>> 40));
        bufferedOutputStream.write((byte) (j >>> 48));
        bufferedOutputStream.write((byte) (j >>> 56));
    }

    /* renamed from: p */
    public static void m252p(BufferedOutputStream bufferedOutputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        m253o(bufferedOutputStream, bytes.length);
        bufferedOutputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public final synchronized InterfaceC0699b.C0700a m267a(String str) {
        C0748a c0748a = (C0748a) this.f2610a.get(str);
        if (c0748a == null) {
            return null;
        }
        File m266b = m266b(str);
        try {
            C0749b c0749b = new C0749b(new BufferedInputStream(new FileInputStream(m266b)), m266b.length());
            try {
                C0748a m251a = C0748a.m251a(c0749b);
                if (!TextUtils.equals(str, m251a.f2615b)) {
                    C0725s.m323b("%s: key=%s, found=%s", m266b.getAbsolutePath(), str, m251a.f2615b);
                    C0748a c0748a2 = (C0748a) this.f2610a.remove(str);
                    if (c0748a2 != null) {
                        this.f2611b -= c0748a2.f2614a;
                    }
                    return null;
                }
                return c0748a.m250b(m255m(c0749b, c0749b.f2622a - c0749b.f2623b));
            } finally {
                c0749b.close();
            }
        } catch (IOException e) {
            C0725s.m323b("%s: %s", m266b.getAbsolutePath(), e.toString());
            m256l(str);
            return null;
        }
    }

    /* renamed from: b */
    public final File m266b(String str) {
        return new File(((C0759j) this.f2612c).m236a(), m265c(str));
    }

    /* renamed from: d */
    public final synchronized void m264d() {
        long length;
        C0749b c0749b;
        File m236a = ((C0759j) this.f2612c).m236a();
        if (!m236a.exists()) {
            if (!m236a.mkdirs()) {
                C0725s.m322c("Unable to create cache dir %s", m236a.getAbsolutePath());
            }
            return;
        }
        File[] listFiles = m236a.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            try {
                length = file.length();
                c0749b = new C0749b(new BufferedInputStream(new FileInputStream(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                C0748a m251a = C0748a.m251a(c0749b);
                m251a.f2614a = length;
                m261g(m251a.f2615b, m251a);
                c0749b.close();
            } catch (Throwable th) {
                c0749b.close();
                throw th;
                break;
            }
        }
    }

    /* renamed from: e */
    public final void m263e() {
        long j = this.f2611b;
        int i = this.f2613d;
        if (j < i) {
            return;
        }
        if (C0725s.f2511a) {
            C0725s.m321d("Pruning old cache entries.", new Object[0]);
        }
        long j2 = this.f2611b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.f2610a.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            C0748a c0748a = (C0748a) ((Map.Entry) it.next()).getValue();
            if (m266b(c0748a.f2615b).delete()) {
                this.f2611b -= c0748a.f2614a;
            } else {
                String str = c0748a.f2615b;
                C0725s.m323b("Could not delete cache entry for key=%s, filename=%s", str, m265c(str));
            }
            it.remove();
            i2++;
            if (((float) this.f2611b) < i * 0.9f) {
                break;
            }
        }
        if (C0725s.f2511a) {
            C0725s.m321d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f2611b - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
        }
    }

    /* renamed from: f */
    public final synchronized void m262f(String str, InterfaceC0699b.C0700a c0700a) {
        BufferedOutputStream bufferedOutputStream;
        C0748a c0748a;
        long j = this.f2611b;
        byte[] bArr = c0700a.f2445a;
        long length = j + bArr.length;
        int i = this.f2613d;
        if (length > i && bArr.length > i * 0.9f) {
            return;
        }
        File m266b = m266b(str);
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m266b));
            c0748a = new C0748a(str, c0700a);
        } catch (IOException unused) {
            if (!m266b.delete()) {
                C0725s.m323b("Could not clean up file %s", m266b.getAbsolutePath());
            }
            if (!((C0759j) this.f2612c).m236a().exists()) {
                C0725s.m323b("Re-initializing cache after external clearing.", new Object[0]);
                this.f2610a.clear();
                this.f2611b = 0L;
                m264d();
            }
        }
        if (c0748a.m249c(bufferedOutputStream)) {
            bufferedOutputStream.write(c0700a.f2445a);
            bufferedOutputStream.close();
            c0748a.f2614a = m266b.length();
            m261g(str, c0748a);
            m263e();
            return;
        }
        bufferedOutputStream.close();
        C0725s.m323b("Failed to write header for %s", m266b.getAbsolutePath());
        throw new IOException();
    }

    /* renamed from: g */
    public final void m261g(String str, C0748a c0748a) {
        LinkedHashMap linkedHashMap = this.f2610a;
        if (linkedHashMap.containsKey(str)) {
            this.f2611b = (c0748a.f2614a - ((C0748a) linkedHashMap.get(str)).f2614a) + this.f2611b;
        } else {
            this.f2611b += c0748a.f2614a;
        }
        linkedHashMap.put(str, c0748a);
    }

    /* renamed from: l */
    public final synchronized void m256l(String str) {
        boolean delete = m266b(str).delete();
        C0748a c0748a = (C0748a) this.f2610a.remove(str);
        if (c0748a != null) {
            this.f2611b -= c0748a.f2614a;
        }
        if (!delete) {
            C0725s.m323b("Could not delete cache entry for key=%s, filename=%s", str, m265c(str));
        }
    }
}
