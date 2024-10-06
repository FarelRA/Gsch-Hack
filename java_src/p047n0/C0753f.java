package p047n0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p028h.AbstractC0574c;
import p045m0.AbstractC0713m;
import p045m0.C0708h;
/* renamed from: n0.f */
/* loaded from: classes.dex */
public final class C0753f extends AbstractC0574c {

    /* renamed from: n0.f$a */
    /* loaded from: classes.dex */
    public static class C0754a extends FilterInputStream {

        /* renamed from: a */
        public final HttpURLConnection f2628a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0754a(HttpURLConnection httpURLConnection) {
            super(r0);
            InputStream errorStream;
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
                errorStream = httpURLConnection.getErrorStream();
            }
            this.f2628a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            super.close();
            this.f2628a.disconnect();
        }
    }

    /* renamed from: f */
    public static ArrayList m243f(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : (List) entry.getValue()) {
                    arrayList.add(new C0708h((String) entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc A[Catch: all -> 0x00b0, TRY_ENTER, TryCatch #0 {all -> 0x00b0, blocks: (B:3:0x003f, B:4:0x0047, B:6:0x004d, B:10:0x0062, B:46:0x00d4, B:47:0x00d9, B:19:0x007d, B:20:0x0080, B:35:0x009f, B:44:0x00cc, B:45:0x00d3), top: B:51:0x003f }] */
    @Override // p028h.AbstractC0574c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C0752e mo244a(AbstractC0713m<?> abstractC0713m, Map<String, String> map) {
        int responseCode;
        boolean z;
        String str;
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(Collections.emptyMap());
        URL url = new URL(abstractC0713m.f2482c);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i = abstractC0713m.f2490k.f2462a;
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i);
        boolean z2 = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        try {
            for (String str2 : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            int i2 = abstractC0713m.f2481b;
            switch (i2) {
                case -1:
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                        if (i2 != 4 && ((100 > responseCode || responseCode >= 200) && responseCode != 204 && responseCode != 304)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            C0752e c0752e = new C0752e(responseCode, m243f(httpURLConnection.getHeaderFields()));
                            httpURLConnection.disconnect();
                            return c0752e;
                        }
                        try {
                            return new C0752e(responseCode, m243f(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new C0754a(httpURLConnection));
                        } catch (Throwable th) {
                            th = th;
                            z2 = true;
                            if (!z2) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    }
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                case 0:
                    str = "GET";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 1:
                    str = "POST";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 2:
                    str = "PUT";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 3:
                    str = "DELETE";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 4:
                    str = "HEAD";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 5:
                    str = "OPTIONS";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 6:
                    str = "TRACE";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 7:
                    str = "PATCH";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
