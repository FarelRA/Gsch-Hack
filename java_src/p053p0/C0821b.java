package p053p0;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import p050o0.C0795a;
import p062s0.C0870b;
/* renamed from: p0.b */
/* loaded from: classes.dex */
public final class C0821b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m130d = C0870b.m130d(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        C0795a c0795a = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m130d) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            if (c != 1000) {
                                parcel.setDataPosition(parcel.dataPosition() + C0870b.m131c(parcel, readInt));
                            } else {
                                i = C0870b.m132b(parcel, readInt);
                            }
                        } else {
                            c0795a = (C0795a) C0870b.m133a(parcel, readInt, C0795a.CREATOR);
                        }
                    } else {
                        pendingIntent = (PendingIntent) C0870b.m133a(parcel, readInt, PendingIntent.CREATOR);
                    }
                } else {
                    int m131c = C0870b.m131c(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (m131c == 0) {
                        str = null;
                    } else {
                        str = parcel.readString();
                        parcel.setDataPosition(dataPosition + m131c);
                    }
                }
            } else {
                i2 = C0870b.m132b(parcel, readInt);
            }
        }
        if (parcel.dataPosition() == m130d) {
            return new Status(i, i2, str, pendingIntent, c0795a);
        }
        throw new C0870b.C0871a("Overread allowed size end=" + m130d, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Status[i];
    }
}
