package p050o0;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p046m1.C0736h;
import p059r0.C0860a;
import p062s0.AbstractC0869a;
/* renamed from: o0.a */
/* loaded from: classes.dex */
public final class C0795a extends AbstractC0869a {
    public static final Parcelable.Creator<C0795a> CREATOR;

    /* renamed from: a */
    public final int f2676a;

    /* renamed from: b */
    public final int f2677b;

    /* renamed from: c */
    public final PendingIntent f2678c;

    /* renamed from: d */
    public final String f2679d;

    static {
        new C0795a(1, 0, null, null);
        CREATOR = new C0796b();
    }

    public C0795a(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f2676a = i;
        this.f2677b = i2;
        this.f2678c = pendingIntent;
        this.f2679d = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0795a) {
            C0795a c0795a = (C0795a) obj;
            return this.f2677b == c0795a.f2677b && C0860a.m148a(this.f2678c, c0795a.f2678c) && C0860a.m148a(this.f2679d, c0795a.f2679d);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2677b), this.f2678c, this.f2679d});
    }

    public final String toString() {
        String str;
        C0860a.C0861a c0861a = new C0860a.C0861a(this);
        int i = this.f2677b;
        if (i != 99) {
            if (i != 1500) {
                switch (i) {
                    case -1:
                        str = "UNKNOWN";
                        break;
                    case 0:
                        str = "SUCCESS";
                        break;
                    case 1:
                        str = "SERVICE_MISSING";
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
                    case 9:
                        str = "SERVICE_INVALID";
                        break;
                    case 10:
                        str = "DEVELOPER_ERROR";
                        break;
                    case 11:
                        str = "LICENSE_CHECK_FAILED";
                        break;
                    default:
                        switch (i) {
                            case 13:
                                str = "CANCELED";
                                break;
                            case 14:
                                str = "TIMEOUT";
                                break;
                            case 15:
                                str = "INTERRUPTED";
                                break;
                            case 16:
                                str = "API_UNAVAILABLE";
                                break;
                            case 17:
                                str = "SIGN_IN_FAILED";
                                break;
                            case 18:
                                str = "SERVICE_UPDATING";
                                break;
                            case 19:
                                str = "SERVICE_MISSING_PERMISSION";
                                break;
                            case 20:
                                str = "RESTRICTED_PROFILE";
                                break;
                            case 21:
                                str = "API_VERSION_UPDATE_REQUIRED";
                                break;
                            case 22:
                                str = "RESOLUTION_ACTIVITY_NOT_FOUND";
                                break;
                            case 23:
                                str = "API_DISABLED";
                                break;
                            case 24:
                                str = "API_DISABLED_FOR_CONNECTION";
                                break;
                            default:
                                str = "UNKNOWN_ERROR_CODE(" + i + ")";
                                break;
                        }
                }
            } else {
                str = "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            }
        } else {
            str = "UNFINISHED";
        }
        c0861a.m147a(str, "statusCode");
        c0861a.m147a(this.f2678c, "resolution");
        c0861a.m147a(this.f2679d, "message");
        return c0861a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m297P = C0736h.m297P(parcel, 20293);
        parcel.writeInt(262145);
        parcel.writeInt(this.f2676a);
        parcel.writeInt(262146);
        parcel.writeInt(this.f2677b);
        C0736h.m298O(parcel, 3, this.f2678c, i);
        String str = this.f2679d;
        if (str != null) {
            int m297P2 = C0736h.m297P(parcel, 4);
            parcel.writeString(str);
            C0736h.m296Q(parcel, m297P2);
        }
        C0736h.m296Q(parcel, m297P);
    }
}
