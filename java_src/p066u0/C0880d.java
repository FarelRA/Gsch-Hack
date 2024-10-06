package p066u0;

import p046m1.C0734f;
/* renamed from: u0.d */
/* loaded from: classes.dex */
public final class C0880d<TResult> {

    /* renamed from: a */
    public final C0888l f2788a = new C0888l();

    /* renamed from: a */
    public final void m126a(Exception exc) {
        C0888l c0888l = this.f2788a;
        c0888l.getClass();
        synchronized (c0888l.f2799a) {
            if (!c0888l.f2801c) {
                c0888l.f2801c = true;
                c0888l.f2803e = exc;
                c0888l.f2800b.m122a(c0888l);
            }
        }
    }

    /* renamed from: b */
    public final void m125b(C0734f c0734f) {
        C0888l c0888l = this.f2788a;
        synchronized (c0888l.f2799a) {
            if (!c0888l.f2801c) {
                c0888l.f2801c = true;
                c0888l.f2802d = c0734f;
                c0888l.f2800b.m122a(c0888l);
            }
        }
    }
}
