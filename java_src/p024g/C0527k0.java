package p024g;
/* renamed from: g.k0 */
/* loaded from: classes.dex */
public final class C0527k0 {

    /* renamed from: a */
    public int f1986a = 0;

    /* renamed from: b */
    public int f1987b = 0;

    /* renamed from: c */
    public int f1988c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f1989d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f1990e = 0;

    /* renamed from: f */
    public int f1991f = 0;

    /* renamed from: g */
    public boolean f1992g = false;

    /* renamed from: h */
    public boolean f1993h = false;

    /* renamed from: a */
    public final void m597a(int i, int i2) {
        this.f1988c = i;
        this.f1989d = i2;
        this.f1993h = true;
        if (this.f1992g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1986a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1987b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1986a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1987b = i2;
        }
    }
}
