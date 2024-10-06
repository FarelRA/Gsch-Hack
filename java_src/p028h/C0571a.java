package p028h;
/* renamed from: h.a */
/* loaded from: classes.dex */
public final class C0571a extends AbstractC0574c {

    /* renamed from: b */
    public static volatile C0571a f2125b;

    /* renamed from: a */
    public final C0572b f2126a = new C0572b();

    /* renamed from: f */
    public static C0571a m522f() {
        if (f2125b != null) {
            return f2125b;
        }
        synchronized (C0571a.class) {
            if (f2125b == null) {
                f2125b = new C0571a();
            }
        }
        return f2125b;
    }
}
