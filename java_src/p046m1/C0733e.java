package p046m1;
/* renamed from: m1.e */
/* loaded from: classes.dex */
public final class C0733e extends AbstractC0731c {

    /* renamed from: a */
    public final String f2524a;

    /* renamed from: b */
    public final Long f2525b = null;

    @Override // p046m1.AbstractC0731c
    /* renamed from: a */
    public final Long mo315a() {
        return this.f2525b;
    }

    @Override // p046m1.AbstractC0731c
    /* renamed from: b */
    public final String mo314b() {
        return this.f2524a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0731c) {
            AbstractC0731c abstractC0731c = (AbstractC0731c) obj;
            if (this.f2524a.equals(abstractC0731c.mo314b())) {
                Long l = this.f2525b;
                Long mo315a = abstractC0731c.mo315a();
                if (l != null ? l.equals(mo315a) : mo315a == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f2524a.hashCode() ^ 1000003;
        Long l = this.f2525b;
        return (hashCode * 1000003) ^ (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f2524a + ", cloudProjectNumber=" + this.f2525b + "}";
    }
}
