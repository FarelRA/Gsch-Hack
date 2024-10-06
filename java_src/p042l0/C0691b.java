package p042l0;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;
import p039k.C0655b;
/* renamed from: l0.b */
/* loaded from: classes.dex */
public final class C0691b extends AbstractC0690a {

    /* renamed from: d */
    public final SparseIntArray f2430d;

    /* renamed from: e */
    public final Parcel f2431e;

    /* renamed from: f */
    public final int f2432f;

    /* renamed from: g */
    public final int f2433g;

    /* renamed from: h */
    public final String f2434h;

    /* renamed from: i */
    public int f2435i;

    /* renamed from: j */
    public int f2436j;

    /* renamed from: k */
    public int f2437k;

    public C0691b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0655b(), new C0655b(), new C0655b());
    }

    public C0691b(Parcel parcel, int i, int i2, String str, C0655b<String, Method> c0655b, C0655b<String, Method> c0655b2, C0655b<String, Class> c0655b3) {
        super(c0655b, c0655b2, c0655b3);
        this.f2430d = new SparseIntArray();
        this.f2435i = -1;
        this.f2437k = -1;
        this.f2431e = parcel;
        this.f2432f = i;
        this.f2433g = i2;
        this.f2436j = i;
        this.f2434h = str;
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: a */
    public final C0691b mo363a() {
        Parcel parcel = this.f2431e;
        int dataPosition = parcel.dataPosition();
        int i = this.f2436j;
        if (i == this.f2432f) {
            i = this.f2433g;
        }
        int i2 = i;
        return new C0691b(parcel, dataPosition, i2, this.f2434h + "  ", this.f2427a, this.f2428b, this.f2429c);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: e */
    public final boolean mo362e() {
        return this.f2431e.readInt() != 0;
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: f */
    public final byte[] mo361f() {
        Parcel parcel = this.f2431e;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: g */
    public final CharSequence mo360g() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f2431e);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: h */
    public final boolean mo359h(int i) {
        while (this.f2436j < this.f2433g) {
            int i2 = this.f2437k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.f2436j;
            Parcel parcel = this.f2431e;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.f2437k = parcel.readInt();
            this.f2436j += readInt;
        }
        return this.f2437k == i;
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: i */
    public final int mo358i() {
        return this.f2431e.readInt();
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: j */
    public final <T extends Parcelable> T mo357j() {
        return (T) this.f2431e.readParcelable(C0691b.class.getClassLoader());
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: k */
    public final String mo356k() {
        return this.f2431e.readString();
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: m */
    public final void mo355m(int i) {
        m348u();
        this.f2435i = i;
        this.f2430d.put(i, this.f2431e.dataPosition());
        mo351q(0);
        mo351q(i);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: n */
    public final void mo354n(boolean z) {
        this.f2431e.writeInt(z ? 1 : 0);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: o */
    public final void mo353o(byte[] bArr) {
        Parcel parcel = this.f2431e;
        if (bArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(bArr.length);
        parcel.writeByteArray(bArr);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: p */
    public final void mo352p(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f2431e, 0);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: q */
    public final void mo351q(int i) {
        this.f2431e.writeInt(i);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: r */
    public final void mo350r(Parcelable parcelable) {
        this.f2431e.writeParcelable(parcelable, 0);
    }

    @Override // p042l0.AbstractC0690a
    /* renamed from: s */
    public final void mo349s(String str) {
        this.f2431e.writeString(str);
    }

    /* renamed from: u */
    public final void m348u() {
        int i = this.f2435i;
        if (i >= 0) {
            int i2 = this.f2430d.get(i);
            Parcel parcel = this.f2431e;
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i2);
            parcel.writeInt(dataPosition - i2);
            parcel.setDataPosition(dataPosition);
        }
    }
}
