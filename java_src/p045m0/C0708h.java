package p045m0;

import android.text.TextUtils;
/* renamed from: m0.h */
/* loaded from: classes.dex */
public final class C0708h {

    /* renamed from: a */
    public final String f2469a;

    /* renamed from: b */
    public final String f2470b;

    public C0708h(String str, String str2) {
        this.f2469a = str;
        this.f2470b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0708h.class != obj.getClass()) {
            return false;
        }
        C0708h c0708h = (C0708h) obj;
        return TextUtils.equals(this.f2469a, c0708h.f2469a) && TextUtils.equals(this.f2470b, c0708h.f2470b);
    }

    public final int hashCode() {
        return this.f2470b.hashCode() + (this.f2469a.hashCode() * 31);
    }

    public final String toString() {
        return "Header[name=" + this.f2469a + ",value=" + this.f2470b + "]";
    }
}
