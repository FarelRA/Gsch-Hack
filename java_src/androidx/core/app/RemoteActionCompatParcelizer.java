package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import p042l0.AbstractC0690a;
import p042l0.InterfaceC0692c;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC0690a abstractC0690a) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        InterfaceC0692c interfaceC0692c = remoteActionCompat.f624a;
        if (abstractC0690a.mo359h(1)) {
            interfaceC0692c = abstractC0690a.m365l();
        }
        remoteActionCompat.f624a = (IconCompat) interfaceC0692c;
        CharSequence charSequence = remoteActionCompat.f625b;
        if (abstractC0690a.mo359h(2)) {
            charSequence = abstractC0690a.mo360g();
        }
        remoteActionCompat.f625b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f626c;
        if (abstractC0690a.mo359h(3)) {
            charSequence2 = abstractC0690a.mo360g();
        }
        remoteActionCompat.f626c = charSequence2;
        Parcelable parcelable = remoteActionCompat.f627d;
        if (abstractC0690a.mo359h(4)) {
            parcelable = abstractC0690a.mo357j();
        }
        remoteActionCompat.f627d = (PendingIntent) parcelable;
        boolean z = remoteActionCompat.f628e;
        if (abstractC0690a.mo359h(5)) {
            z = abstractC0690a.mo362e();
        }
        remoteActionCompat.f628e = z;
        boolean z2 = remoteActionCompat.f629f;
        if (abstractC0690a.mo359h(6)) {
            z2 = abstractC0690a.mo362e();
        }
        remoteActionCompat.f629f = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC0690a abstractC0690a) {
        abstractC0690a.getClass();
        IconCompat iconCompat = remoteActionCompat.f624a;
        abstractC0690a.mo355m(1);
        abstractC0690a.m364t(iconCompat);
        CharSequence charSequence = remoteActionCompat.f625b;
        abstractC0690a.mo355m(2);
        abstractC0690a.mo352p(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f626c;
        abstractC0690a.mo355m(3);
        abstractC0690a.mo352p(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.f627d;
        abstractC0690a.mo355m(4);
        abstractC0690a.mo350r(pendingIntent);
        boolean z = remoteActionCompat.f628e;
        abstractC0690a.mo355m(5);
        abstractC0690a.mo354n(z);
        boolean z2 = remoteActionCompat.f629f;
        abstractC0690a.mo355m(6);
        abstractC0690a.mo354n(z2);
    }
}
