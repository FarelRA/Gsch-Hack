package p062s0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: s0.b */
/* loaded from: classes.dex */
public final class C0870b {

    /* renamed from: s0.b$a */
    /* loaded from: classes.dex */
    public static class C0871a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C0871a(String str, Parcel parcel) {
            super(str + " Parcel: pos=" + r0 + " size=" + r4);
            int dataPosition = parcel.dataPosition();
            int dataSize = parcel.dataSize();
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m133a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m131c = m131c(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m131c == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m131c);
        return createFromParcel;
    }

    /* renamed from: b */
    public static int m132b(Parcel parcel, int i) {
        int m131c = m131c(parcel, i);
        if (m131c == 4) {
            return parcel.readInt();
        }
        String hexString = Integer.toHexString(m131c);
        throw new C0871a("Expected size 4 got " + m131c + " (0x" + hexString + ")", parcel);
    }

    /* renamed from: c */
    public static int m131c(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: d */
    public static int m130d(Parcel parcel) {
        int readInt = parcel.readInt();
        int m131c = m131c(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if (((char) readInt) == 20293) {
            int i = m131c + dataPosition;
            if (i >= dataPosition && i <= parcel.dataSize()) {
                return i;
            }
            throw new C0871a("Size read is invalid start=" + dataPosition + " end=" + i, parcel);
        }
        throw new C0871a("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(readInt))), parcel);
    }
}
