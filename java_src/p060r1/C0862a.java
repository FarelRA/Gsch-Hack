package p060r1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.scottyab.rootbeer.RootBeerNative;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Scanner;
import net.geschool.app.student.MainActivity;
import p046m1.C0736h;
import p057q1.C0844h;
/* renamed from: r1.a */
/* loaded from: classes.dex */
public final class C0862a {

    /* renamed from: a */
    public final Context f2769a;

    public C0862a(MainActivity mainActivity) {
        this.f2769a = mainActivity;
    }

    /* renamed from: a */
    public static boolean m146a(String str) {
        String[] m275y;
        boolean z = false;
        for (String str2 : C0736h.m275y()) {
            String str3 = str2 + str;
            if (new File(str2, str).exists()) {
                C0736h.m301L(str3 + " binary detected!");
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m145b(ArrayList arrayList) {
        PackageManager packageManager = this.f2769a.getPackageManager();
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                packageManager.getPackageInfo(str, 0);
                C0736h.m282r(str + " ROOT management app detected!");
                z = true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01e7  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m144c() {
        String[] strArr;
        boolean z;
        String[] strArr2;
        boolean z2;
        String str;
        String str2;
        String[] strArr3;
        Process process;
        boolean z3;
        String[] m275y;
        boolean z4;
        InputStream inputStream;
        InputStream inputStream2;
        char c = 1;
        if (!m145b(new ArrayList(Arrays.asList(C0736h.f2548U)))) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList(C0736h.f2549V));
            if (!m145b(arrayList) && !m146a("su")) {
                HashMap hashMap = new HashMap();
                hashMap.put("ro.debuggable", "1");
                hashMap.put("ro.secure", "0");
                try {
                    inputStream2 = Runtime.getRuntime().exec("getprop").getInputStream();
                } catch (IOException | NoSuchElementException e) {
                    e.printStackTrace();
                }
                if (inputStream2 == null) {
                    strArr = null;
                    if (strArr != null) {
                        z = false;
                    } else {
                        boolean z5 = false;
                        for (String str3 : strArr) {
                            for (String str4 : hashMap.keySet()) {
                                if (str3.contains(str4)) {
                                    String m187a = C0844h.m187a("[", (String) hashMap.get(str4), "]");
                                    if (str3.contains(m187a)) {
                                        C0736h.m301L(str4 + " = " + m187a + " detected!");
                                        z5 = true;
                                    }
                                }
                            }
                        }
                        z = z5;
                    }
                    if (!z) {
                        try {
                            inputStream = Runtime.getRuntime().exec("mount").getInputStream();
                        } catch (IOException | NoSuchElementException e2) {
                            e2.printStackTrace();
                        }
                        if (inputStream == null) {
                            strArr2 = null;
                            if (strArr2 != null) {
                                z2 = false;
                            } else {
                                int i = Build.VERSION.SDK_INT;
                                int length = strArr2.length;
                                int i2 = 0;
                                boolean z6 = false;
                                while (i2 < length) {
                                    String str5 = strArr2[i2];
                                    String[] split = str5.split(" ");
                                    int i3 = 23;
                                    if ((i > 23 || split.length >= 4) && (i <= 23 || split.length >= 6)) {
                                        if (i > 23) {
                                            str = split[2];
                                            str2 = split[5];
                                        } else {
                                            str = split[c];
                                            str2 = split[3];
                                        }
                                        String[] strArr4 = C0736h.f2551X;
                                        int i4 = 0;
                                        while (i4 < 7) {
                                            String str6 = strArr4[i4];
                                            if (str.equalsIgnoreCase(str6)) {
                                                if (Build.VERSION.SDK_INT > i3) {
                                                    str2 = str2.replace("(", "").replace(")", "");
                                                }
                                                String[] split2 = str2.split(",");
                                                int length2 = split2.length;
                                                int i5 = 0;
                                                while (i5 < length2) {
                                                    strArr3 = strArr2;
                                                    if (split2[i5].equalsIgnoreCase("rw")) {
                                                        C0736h.m301L(str6 + " path is mounted with rw permissions! " + str5);
                                                        z6 = true;
                                                        break;
                                                    }
                                                    i5++;
                                                    strArr2 = strArr3;
                                                }
                                            }
                                            strArr3 = strArr2;
                                            i4++;
                                            i3 = 23;
                                            strArr2 = strArr3;
                                        }
                                    } else {
                                        C0736h.m282r("Error formatting mount line: ".concat(str5));
                                    }
                                    i2++;
                                    c = 1;
                                    strArr2 = strArr2;
                                }
                                z2 = z6;
                            }
                            if (!z2) {
                                String str7 = Build.TAGS;
                                if (!(str7 != null && str7.contains("test-keys"))) {
                                    try {
                                        process = Runtime.getRuntime().exec(new String[]{"which", "su"});
                                        try {
                                            z3 = new BufferedReader(new InputStreamReader(process.getInputStream())).readLine() != null;
                                            process.destroy();
                                        } catch (Throwable unused) {
                                            if (process != null) {
                                                process.destroy();
                                            }
                                            z3 = false;
                                            if (!z3) {
                                            }
                                            return true;
                                        }
                                    } catch (Throwable unused2) {
                                        process = null;
                                    }
                                    if (!z3) {
                                        if (RootBeerNative.f1358a) {
                                            int length3 = C0736h.m275y().length;
                                            String[] strArr5 = new String[length3];
                                            for (int i6 = 0; i6 < length3; i6++) {
                                                strArr5[i6] = m275y[i6] + "su";
                                            }
                                            RootBeerNative rootBeerNative = new RootBeerNative();
                                            try {
                                                rootBeerNative.setLogDebugMessages(true);
                                            } catch (UnsatisfiedLinkError unused3) {
                                            }
                                            if (rootBeerNative.checkForRoot(strArr5) > 0) {
                                                z4 = true;
                                                if (z4 && !m146a("magisk")) {
                                                    return false;
                                                }
                                            }
                                        } else {
                                            C0736h.m282r("We could not load the native library to test for root");
                                        }
                                        z4 = false;
                                        if (z4) {
                                        }
                                    }
                                }
                            }
                        } else {
                            strArr2 = new Scanner(inputStream).useDelimiter("\\A").next().split("\n");
                            if (strArr2 != null) {
                            }
                            if (!z2) {
                            }
                        }
                    }
                } else {
                    strArr = new Scanner(inputStream2).useDelimiter("\\A").next().split("\n");
                    if (strArr != null) {
                    }
                    if (!z) {
                    }
                }
            }
        }
        return true;
    }
}
