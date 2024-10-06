package p046m1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import p051o1.AbstractC0803g;
import p051o1.C0802f;
import p051o1.C0808l;
import p051o1.C0815s;
import p051o1.C0817u;
/* renamed from: m1.m */
/* loaded from: classes.dex */
public final class C0741m {

    /* renamed from: a */
    public final C0808l f2597a;

    /* renamed from: b */
    public final String f2598b;

    /* renamed from: c */
    public final C0815s f2599c;

    public C0741m(Context context, C0808l c0808l) {
        boolean z;
        String str;
        this.f2598b = context.getPackageName();
        this.f2597a = c0808l;
        C0808l c0808l2 = C0817u.f2708a;
        try {
            if (context.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled) {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
                if (signatureArr != null && (r3 = signatureArr.length) != 0) {
                    for (Signature signature : signatureArr) {
                        byte[] byteArray = signature.toByteArray();
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                            messageDigest.update(byteArray);
                            str = Base64.encodeToString(messageDigest.digest(), 11);
                        } catch (NoSuchAlgorithmException unused) {
                            str = "";
                        }
                        if ("8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(str) || ((Build.TAGS.contains("dev-keys") || Build.TAGS.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(str))) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    Object[] objArr = new Object[0];
                    C0808l c0808l3 = C0817u.f2708a;
                    c0808l3.getClass();
                    if (Log.isLoggable("PlayCore", 5)) {
                        Log.w("PlayCore", C0808l.m213b(c0808l3.f2685a, "Phonesky package is not signed -- possibly self-built package. Could not verify.", objArr));
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        z = false;
        if (!z) {
            Object[] objArr2 = new Object[0];
            c0808l.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", C0808l.m213b(c0808l.f2685a, "Phonesky is not installed.", objArr2));
            }
            this.f2599c = null;
            return;
        }
        this.f2599c = new C0815s(context, c0808l, C0742n.f2600a);
    }

    /* renamed from: a */
    public static Bundle m272a(C0741m c0741m, byte[] bArr, Long l) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c0741m.f2598b);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 1);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0802f(System.currentTimeMillis()));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("event_type", 3);
            bundle2.putLong("event_timestamp", ((AbstractC0803g) it.next()).mo216b());
            arrayList2.add(bundle2);
        }
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(arrayList2));
        return bundle;
    }
}
