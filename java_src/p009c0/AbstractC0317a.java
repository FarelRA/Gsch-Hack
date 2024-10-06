package p009c0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: c0.a */
/* loaded from: classes.dex */
public abstract class AbstractC0317a implements Parcelable {

    /* renamed from: a */
    public final Parcelable f1144a;

    /* renamed from: b */
    public static final C0318a f1143b = new C0318a();
    public static final Parcelable.Creator<AbstractC0317a> CREATOR = new C0319b();

    /* renamed from: c0.a$a */
    /* loaded from: classes.dex */
    public static class C0318a extends AbstractC0317a {
    }

    public AbstractC0317a() {
        this.f1144a = null;
    }

    public AbstractC0317a(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f1144a = readParcelable == null ? f1143b : readParcelable;
    }

    public AbstractC0317a(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f1144a = parcelable == f1143b ? null : parcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1144a, i);
    }

    /* renamed from: c0.a$b */
    /* loaded from: classes.dex */
    public static class C0319b implements Parcelable.ClassLoaderCreator<AbstractC0317a> {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return AbstractC0317a.f1143b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new AbstractC0317a[i];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final AbstractC0317a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbstractC0317a.f1143b;
            }
            throw new IllegalStateException("superState must be null");
        }
    }
}
