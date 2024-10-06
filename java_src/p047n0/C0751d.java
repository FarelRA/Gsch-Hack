package p047n0;

import android.util.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p045m0.C0725s;
/* renamed from: n0.d */
/* loaded from: classes.dex */
public final class C0751d {
    /* renamed from: a */
    public static String m248a(Map<String, String> map) {
        String str;
        if (map == null || (str = map.get("Content-Type")) == null) {
            return "ISO-8859-1";
        }
        String[] split = str.split(";", 0);
        for (int i = 1; i < split.length; i++) {
            String[] split2 = split[i].trim().split("=", 0);
            if (split2.length == 2 && split2[0].equals("charset")) {
                return split2[1];
            }
        }
        return "ISO-8859-1";
    }

    /* renamed from: b */
    public static long m247b(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e) {
            if (!"0".equals(str) && !"-1".equals(str)) {
                Log.e("Volley", C0725s.m324a("Unable to parse dateStr: %s, falling back to 0", str), e);
                return 0L;
            }
            C0725s.m321d("Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }
}
