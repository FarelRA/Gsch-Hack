package p046m1;
/* renamed from: m1.f */
/* loaded from: classes.dex */
public final class C0734f extends AbstractC0732d {

    /* renamed from: a */
    public final String f2526a;

    @Override // p046m1.AbstractC0732d
    /* renamed from: a */
    public final String mo313a() {
        return this.f2526a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0732d) {
            return this.f2526a.equals(((AbstractC0732d) obj).mo313a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2526a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "IntegrityTokenResponse{token=" + this.f2526a + "}";
    }
}
