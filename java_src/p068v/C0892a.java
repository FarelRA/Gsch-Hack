package p068v;

import android.util.Base64;
import java.util.List;
/* renamed from: v.a */
/* loaded from: classes.dex */
public final class C0892a {

    /* renamed from: a */
    public final String f2820a;

    /* renamed from: b */
    public final String f2821b;

    /* renamed from: c */
    public final String f2822c;

    /* renamed from: d */
    public final List<List<byte[]>> f2823d;

    /* renamed from: e */
    public final String f2824e;

    public C0892a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f2820a = str;
        this.f2821b = str2;
        this.f2822c = str3;
        list.getClass();
        this.f2823d = list;
        this.f2824e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2820a + ", mProviderPackage: " + this.f2821b + ", mQuery: " + this.f2822c + ", mCertificates:");
        int i = 0;
        while (true) {
            List<List<byte[]>> list = this.f2823d;
            if (i >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List<byte[]> list2 = list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list2.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i++;
        }
    }
}
