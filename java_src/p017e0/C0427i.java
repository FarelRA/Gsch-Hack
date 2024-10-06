package p017e0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: e0.i */
/* loaded from: classes.dex */
public final class C0427i implements Parcelable {
    public static final Parcelable.Creator<C0427i> CREATOR = new C0428a();

    /* renamed from: a */
    public C0429j[] f1660a;

    /* renamed from: b */
    public int[] f1661b;

    /* renamed from: c */
    public C0409b[] f1662c;

    /* renamed from: d */
    public int f1663d;

    /* renamed from: e */
    public int f1664e;

    /* renamed from: e0.i$a */
    /* loaded from: classes.dex */
    public static class C0428a implements Parcelable.Creator<C0427i> {
        @Override // android.os.Parcelable.Creator
        public final C0427i createFromParcel(Parcel parcel) {
            return new C0427i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0427i[] newArray(int i) {
            return new C0427i[i];
        }
    }

    public C0427i() {
        this.f1663d = -1;
    }

    public C0427i(Parcel parcel) {
        this.f1663d = -1;
        this.f1660a = (C0429j[]) parcel.createTypedArray(C0429j.CREATOR);
        this.f1661b = parcel.createIntArray();
        this.f1662c = (C0409b[]) parcel.createTypedArray(C0409b.CREATOR);
        this.f1663d = parcel.readInt();
        this.f1664e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f1660a, i);
        parcel.writeIntArray(this.f1661b);
        parcel.writeTypedArray(this.f1662c, i);
        parcel.writeInt(this.f1663d);
        parcel.writeInt(this.f1664e);
    }
}
