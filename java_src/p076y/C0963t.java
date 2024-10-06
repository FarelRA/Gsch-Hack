package p076y;

import java.util.Objects;
/* renamed from: y.t */
/* loaded from: classes.dex */
public final class C0963t {

    /* renamed from: a */
    public final Object f2947a;

    public C0963t(Object obj) {
        this.f2947a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0963t)) {
            return false;
        }
        return Objects.equals(this.f2947a, ((C0963t) obj).f2947a);
    }

    public final int hashCode() {
        Object obj = this.f2947a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
