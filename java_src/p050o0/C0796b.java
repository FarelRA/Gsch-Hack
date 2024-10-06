package p050o0;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import p062s0.C0870b;
/* renamed from: o0.b */
/* loaded from: classes.dex */
public final class C0796b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m130d = C0870b.m130d(parcel);
        int i = 0;
        PendingIntent pendingIntent = null;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < m130d) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            parcel.setDataPosition(parcel.dataPosition() + C0870b.m131c(parcel, readInt));
                        } else {
                            int m131c = C0870b.m131c(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (m131c == 0) {
                                str = null;
                            } else {
                                String readString = parcel.readString();
                                parcel.setDataPosition(dataPosition + m131c);
                                str = readString;
                            }
                        }
                    } else {
                        pendingIntent = (PendingIntent) C0870b.m133a(parcel, readInt, PendingIntent.CREATOR);
                    }
                } else {
                    i2 = C0870b.m132b(parcel, readInt);
                }
            } else {
                i = C0870b.m132b(parcel, readInt);
            }
        }
        if (parcel.dataPosition() == m130d) {
            return new C0795a(i, i2, pendingIntent, str);
        }
        throw new C0870b.C0871a("Overread allowed size end=" + m130d, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new C0795a[i];
    }
}
