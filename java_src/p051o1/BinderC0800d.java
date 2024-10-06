package p051o1;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p046m1.BinderC0740l;
import p046m1.C0730b;
import p046m1.C0734f;
import p066u0.C0880d;
/* renamed from: o1.d */
/* loaded from: classes.dex */
public class BinderC0800d extends Binder implements IInterface {
    public BinderC0800d() {
        attachInterface(this, "com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Parcelable parcelable;
        C0880d c0880d;
        C0730b c0730b;
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        AbstractBinderC0807k abstractBinderC0807k = (AbstractBinderC0807k) this;
        if (i == 2) {
            Parcelable.Creator creator = Bundle.CREATOR;
            int i3 = C0801e.f2681a;
            if (parcel.readInt() == 0) {
                parcelable = null;
            } else {
                parcelable = (Parcelable) creator.createFromParcel(parcel);
            }
            Bundle bundle = (Bundle) parcelable;
            int dataAvail = parcel.dataAvail();
            if (dataAvail <= 0) {
                BinderC0740l binderC0740l = (BinderC0740l) abstractBinderC0807k;
                C0815s c0815s = binderC0740l.f2596c.f2599c;
                C0880d c0880d2 = binderC0740l.f2595b;
                synchronized (c0815s.f2700f) {
                    c0815s.f2699e.remove(c0880d2);
                }
                synchronized (c0815s.f2700f) {
                    if (c0815s.f2705k.get() > 0 && c0815s.f2705k.decrementAndGet() > 0) {
                        c0815s.f2696b.m214a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    } else {
                        c0815s.m209a().post(new C0812p(0, c0815s));
                    }
                }
                binderC0740l.f2594a.m214a("onRequestIntegrityToken", new Object[0]);
                int i4 = bundle.getInt("error");
                if (i4 != 0) {
                    c0880d = binderC0740l.f2595b;
                    c0730b = new C0730b(i4, null);
                } else {
                    String string = bundle.getString("token");
                    if (string == null) {
                        c0880d = binderC0740l.f2595b;
                        c0730b = new C0730b(-100, null);
                    } else {
                        binderC0740l.f2595b.m125b(new C0734f(string));
                        return true;
                    }
                }
                c0880d.m126a(c0730b);
                return true;
            }
            throw new BadParcelableException("Parcel data not fully consumed, unread size: " + dataAvail);
        }
        return false;
    }
}
