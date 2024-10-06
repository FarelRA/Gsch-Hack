package p037j1;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p009c0.AbstractC0317a;
import p039k.C0666h;
/* renamed from: j1.a */
/* loaded from: classes.dex */
public final class C0649a extends AbstractC0317a {
    public static final Parcelable.Creator<C0649a> CREATOR = new C0650a();

    /* renamed from: c */
    public final C0666h<String, Bundle> f2258c;

    /* renamed from: j1.a$a */
    /* loaded from: classes.dex */
    public static class C0650a implements Parcelable.ClassLoaderCreator<C0649a> {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new C0649a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new C0649a[i];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final C0649a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C0649a(parcel, classLoader);
        }
    }

    public C0649a() {
        throw null;
    }

    public C0649a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f2258c = new C0666h<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f2258c.put(strArr[i], bundleArr[i]);
        }
    }

    public final String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f2258c + "}";
    }

    @Override // p009c0.AbstractC0317a, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1144a, i);
        C0666h<String, Bundle> c0666h = this.f2258c;
        int i2 = c0666h.f2306c;
        parcel.writeInt(i2);
        String[] strArr = new String[i2];
        Bundle[] bundleArr = new Bundle[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = c0666h.m399h(i3);
            bundleArr[i3] = c0666h.m397j(i3);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
