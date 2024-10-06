package p051o1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p046m1.BinderC0740l;
/* renamed from: o1.h */
/* loaded from: classes.dex */
public final class C0804h implements InterfaceC0806j, IInterface {

    /* renamed from: a */
    public final IBinder f2683a;

    public C0804h(IBinder iBinder) {
        this.f2683a = iBinder;
    }

    @Override // p051o1.InterfaceC0806j
    /* renamed from: a */
    public final void mo215a(Bundle bundle, BinderC0740l binderC0740l) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.play.core.integrity.protocol.IIntegrityService");
        int i = C0801e.f2681a;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(binderC0740l);
        try {
            this.f2683a.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2683a;
    }
}
