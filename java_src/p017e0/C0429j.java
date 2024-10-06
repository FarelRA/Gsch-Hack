package p017e0;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: e0.j */
/* loaded from: classes.dex */
public final class C0429j implements Parcelable {
    public static final Parcelable.Creator<C0429j> CREATOR = new C0430a();

    /* renamed from: a */
    public final String f1665a;

    /* renamed from: b */
    public final int f1666b;

    /* renamed from: c */
    public final boolean f1667c;

    /* renamed from: d */
    public final int f1668d;

    /* renamed from: e */
    public final int f1669e;

    /* renamed from: f */
    public final String f1670f;

    /* renamed from: g */
    public final boolean f1671g;

    /* renamed from: h */
    public final boolean f1672h;

    /* renamed from: i */
    public final Bundle f1673i;

    /* renamed from: j */
    public final boolean f1674j;

    /* renamed from: k */
    public Bundle f1675k;

    /* renamed from: l */
    public ComponentCallbacksC0411c f1676l;

    /* renamed from: e0.j$a */
    /* loaded from: classes.dex */
    public static class C0430a implements Parcelable.Creator<C0429j> {
        @Override // android.os.Parcelable.Creator
        public final C0429j createFromParcel(Parcel parcel) {
            return new C0429j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0429j[] newArray(int i) {
            return new C0429j[i];
        }
    }

    public C0429j(Parcel parcel) {
        this.f1665a = parcel.readString();
        this.f1666b = parcel.readInt();
        this.f1667c = parcel.readInt() != 0;
        this.f1668d = parcel.readInt();
        this.f1669e = parcel.readInt();
        this.f1670f = parcel.readString();
        this.f1671g = parcel.readInt() != 0;
        this.f1672h = parcel.readInt() != 0;
        this.f1673i = parcel.readBundle();
        this.f1674j = parcel.readInt() != 0;
        this.f1675k = parcel.readBundle();
    }

    public C0429j(ComponentCallbacksC0411c componentCallbacksC0411c) {
        this.f1665a = ComponentCallbacksC0411c.class.getName();
        this.f1666b = componentCallbacksC0411c.f1579e;
        this.f1667c = componentCallbacksC0411c.f1587m;
        this.f1668d = componentCallbacksC0411c.f1598x;
        this.f1669e = componentCallbacksC0411c.f1599y;
        this.f1670f = componentCallbacksC0411c.f1600z;
        this.f1671g = componentCallbacksC0411c.f1563C;
        this.f1672h = componentCallbacksC0411c.f1562B;
        this.f1673i = componentCallbacksC0411c.f1581g;
        this.f1674j = componentCallbacksC0411c.f1561A;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1665a);
        parcel.writeInt(this.f1666b);
        parcel.writeInt(this.f1667c ? 1 : 0);
        parcel.writeInt(this.f1668d);
        parcel.writeInt(this.f1669e);
        parcel.writeString(this.f1670f);
        parcel.writeInt(this.f1671g ? 1 : 0);
        parcel.writeInt(this.f1672h ? 1 : 0);
        parcel.writeBundle(this.f1673i);
        parcel.writeInt(this.f1674j ? 1 : 0);
        parcel.writeBundle(this.f1675k);
    }
}
