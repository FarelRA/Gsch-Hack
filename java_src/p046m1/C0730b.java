package p046m1;

import com.google.android.gms.common.api.Status;
import java.util.HashMap;
import java.util.Locale;
import p048n1.C0761a;
import p053p0.C0820a;
/* renamed from: m1.b */
/* loaded from: classes.dex */
public final class C0730b extends C0820a {

    /* renamed from: a */
    public final Throwable f2523a;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0730b(int i, Throwable th) {
        super(new Status(i, String.format(r1, "Integrity API error (%d): %s.", r2)));
        String str;
        HashMap hashMap;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(i);
        HashMap hashMap2 = C0761a.f2636a;
        Integer valueOf = Integer.valueOf(i);
        if (hashMap2.containsKey(valueOf)) {
            if (C0761a.f2637b.containsKey(valueOf)) {
                str = ((String) hashMap2.get(valueOf)) + " (https://developer.android.com/google/play/integrity/reference/com/google/android/play/core/integrity/model/IntegrityErrorCode.html#" + ((String) hashMap.get(valueOf)) + ")";
                objArr[1] = str;
                if (i == 0) {
                    this.f2523a = th;
                    return;
                }
                throw new IllegalArgumentException("ErrorCode should not be 0.");
            }
        }
        str = "";
        objArr[1] = str;
        if (i == 0) {
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f2523a;
    }
}
