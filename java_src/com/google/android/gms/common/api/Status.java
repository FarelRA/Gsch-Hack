package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import p046m1.C0736h;
import p050o0.C0795a;
import p053p0.C0821b;
import p059r0.C0860a;
import p062s0.AbstractC0869a;
/* loaded from: classes.dex */
public final class Status extends AbstractC0869a implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;

    /* renamed from: a */
    public final int f1158a;

    /* renamed from: b */
    public final int f1159b;

    /* renamed from: c */
    public final String f1160c;

    /* renamed from: d */
    public final PendingIntent f1161d;

    /* renamed from: e */
    public final C0795a f1162e;

    static {
        new Status(-1, null);
        new Status(0, null);
        new Status(14, null);
        new Status(8, null);
        new Status(15, null);
        new Status(16, null);
        new Status(17, null);
        new Status(18, null);
        CREATOR = new C0821b();
    }

    public Status() {
        throw null;
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent, C0795a c0795a) {
        this.f1158a = i;
        this.f1159b = i2;
        this.f1160c = str;
        this.f1161d = pendingIntent;
        this.f1162e = c0795a;
    }

    public Status(int i, String str) {
        this(1, i, str, null, null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            return this.f1158a == status.f1158a && this.f1159b == status.f1159b && C0860a.m148a(this.f1160c, status.f1160c) && C0860a.m148a(this.f1161d, status.f1161d) && C0860a.m148a(this.f1162e, status.f1162e);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1158a), Integer.valueOf(this.f1159b), this.f1160c, this.f1161d, this.f1162e});
    }

    public final String toString() {
        C0860a.C0861a c0861a = new C0860a.C0861a(this);
        String str = this.f1160c;
        if (str == null) {
            int i = this.f1159b;
            switch (i) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    str = "unknown status code: " + i;
                    break;
                case 2:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str = "SERVICE_DISABLED";
                    break;
                case 4:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str = "INVALID_ACCOUNT";
                    break;
                case 6:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    str = "NETWORK_ERROR";
                    break;
                case 8:
                    str = "INTERNAL_ERROR";
                    break;
                case 10:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
                case 19:
                    str = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    str = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    str = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    str = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        c0861a.m147a(str, "statusCode");
        c0861a.m147a(this.f1161d, "resolution");
        return c0861a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m297P = C0736h.m297P(parcel, 20293);
        parcel.writeInt(262145);
        parcel.writeInt(this.f1159b);
        String str = this.f1160c;
        if (str != null) {
            int m297P2 = C0736h.m297P(parcel, 2);
            parcel.writeString(str);
            C0736h.m296Q(parcel, m297P2);
        }
        C0736h.m298O(parcel, 3, this.f1161d, i);
        C0736h.m298O(parcel, 4, this.f1162e, i);
        parcel.writeInt(263144);
        parcel.writeInt(this.f1158a);
        C0736h.m296Q(parcel, m297P);
    }
}
