package p017e0;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import p017e0.C0407a;
/* renamed from: e0.b */
/* loaded from: classes.dex */
public final class C0409b implements Parcelable {
    public static final Parcelable.Creator<C0409b> CREATOR = new C0410a();

    /* renamed from: a */
    public final int[] f1547a;

    /* renamed from: b */
    public final int f1548b;

    /* renamed from: c */
    public final int f1549c;

    /* renamed from: d */
    public final String f1550d;

    /* renamed from: e */
    public final int f1551e;

    /* renamed from: f */
    public final int f1552f;

    /* renamed from: g */
    public final CharSequence f1553g;

    /* renamed from: h */
    public final int f1554h;

    /* renamed from: i */
    public final CharSequence f1555i;

    /* renamed from: j */
    public final ArrayList<String> f1556j;

    /* renamed from: k */
    public final ArrayList<String> f1557k;

    /* renamed from: l */
    public final boolean f1558l;

    /* renamed from: e0.b$a */
    /* loaded from: classes.dex */
    public static class C0410a implements Parcelable.Creator<C0409b> {
        @Override // android.os.Parcelable.Creator
        public final C0409b createFromParcel(Parcel parcel) {
            return new C0409b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0409b[] newArray(int i) {
            return new C0409b[i];
        }
    }

    public C0409b(Parcel parcel) {
        this.f1547a = parcel.createIntArray();
        this.f1548b = parcel.readInt();
        this.f1549c = parcel.readInt();
        this.f1550d = parcel.readString();
        this.f1551e = parcel.readInt();
        this.f1552f = parcel.readInt();
        this.f1553g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1554h = parcel.readInt();
        this.f1555i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1556j = parcel.createStringArrayList();
        this.f1557k = parcel.createStringArrayList();
        this.f1558l = parcel.readInt() != 0;
    }

    public C0409b(C0407a c0407a) {
        int size = c0407a.f1524b.size();
        this.f1547a = new int[size * 6];
        if (!c0407a.f1531i) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C0407a.C0408a c0408a = c0407a.f1524b.get(i2);
            int[] iArr = this.f1547a;
            int i3 = i + 1;
            iArr[i] = c0408a.f1541a;
            int i4 = i3 + 1;
            ComponentCallbacksC0411c componentCallbacksC0411c = c0408a.f1542b;
            iArr[i3] = componentCallbacksC0411c != null ? componentCallbacksC0411c.f1579e : -1;
            int i5 = i4 + 1;
            iArr[i4] = c0408a.f1543c;
            int i6 = i5 + 1;
            iArr[i5] = c0408a.f1544d;
            int i7 = i6 + 1;
            iArr[i6] = c0408a.f1545e;
            i = i7 + 1;
            iArr[i7] = c0408a.f1546f;
        }
        this.f1548b = c0407a.f1529g;
        this.f1549c = c0407a.f1530h;
        this.f1550d = c0407a.f1532j;
        this.f1551e = c0407a.f1533k;
        this.f1552f = c0407a.f1534l;
        this.f1553g = c0407a.f1535m;
        this.f1554h = c0407a.f1536n;
        this.f1555i = c0407a.f1537o;
        this.f1556j = c0407a.f1538p;
        this.f1557k = c0407a.f1539q;
        this.f1558l = c0407a.f1540r;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1547a);
        parcel.writeInt(this.f1548b);
        parcel.writeInt(this.f1549c);
        parcel.writeString(this.f1550d);
        parcel.writeInt(this.f1551e);
        parcel.writeInt(this.f1552f);
        TextUtils.writeToParcel(this.f1553g, parcel, 0);
        parcel.writeInt(this.f1554h);
        TextUtils.writeToParcel(this.f1555i, parcel, 0);
        parcel.writeStringList(this.f1556j);
        parcel.writeStringList(this.f1557k);
        parcel.writeInt(this.f1558l ? 1 : 0);
    }
}
