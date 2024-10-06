package p051o1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* renamed from: o1.r */
/* loaded from: classes.dex */
public final class ServiceConnectionC0814r implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ C0815s f2693a;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0815s c0815s = this.f2693a;
        c0815s.f2696b.m214a("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        c0815s.m209a().post(new C0811o(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C0815s c0815s = this.f2693a;
        c0815s.f2696b.m214a("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        c0815s.m209a().post(new C0812p(1, this));
    }
}
