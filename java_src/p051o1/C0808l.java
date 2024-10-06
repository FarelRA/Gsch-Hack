package p051o1;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
/* renamed from: o1.l */
/* loaded from: classes.dex */
public final class C0808l {

    /* renamed from: a */
    public final String f2685a;

    public C0808l(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        this.f2685a = ("UID: [" + myUid + "]  PID: [" + myPid + "] ").concat(str);
    }

    /* renamed from: b */
    public static String m213b(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return str + " : " + str2;
    }

    /* renamed from: a */
    public final void m214a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", m213b(this.f2685a, str, objArr));
        }
    }
}
