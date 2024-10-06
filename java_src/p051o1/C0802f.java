package p051o1;
/* renamed from: o1.f */
/* loaded from: classes.dex */
public final class C0802f extends AbstractC0803g {

    /* renamed from: a */
    public final long f2682a;

    public C0802f(long j) {
        this.f2682a = j;
    }

    @Override // p051o1.AbstractC0803g
    /* renamed from: a */
    public final void mo217a() {
    }

    @Override // p051o1.AbstractC0803g
    /* renamed from: b */
    public final long mo216b() {
        return this.f2682a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0803g) {
            AbstractC0803g abstractC0803g = (AbstractC0803g) obj;
            abstractC0803g.mo217a();
            return this.f2682a == abstractC0803g.mo216b();
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f2682a;
        return (-724379968) ^ ((int) ((j >>> 32) ^ j));
    }

    public final String toString() {
        return "EventRecord{eventType=3, eventTimestamp=" + this.f2682a + "}";
    }
}
