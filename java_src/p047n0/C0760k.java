package p047n0;

import android.content.Context;
import p045m0.C0702d;
import p045m0.C0710j;
import p045m0.C0717o;
/* renamed from: n0.k */
/* loaded from: classes.dex */
public final class C0760k {
    /* renamed from: a */
    public static C0717o m235a(Context context) {
        C0710j[] c0710jArr;
        C0717o c0717o = new C0717o(new C0747c(new C0759j(context.getApplicationContext())), new C0744a(new C0753f()));
        C0702d c0702d = c0717o.f2504i;
        if (c0702d != null) {
            c0702d.m343b();
        }
        for (C0710j c0710j : c0717o.f2503h) {
            if (c0710j != null) {
                c0710j.f2475f = true;
                c0710j.interrupt();
            }
        }
        C0702d c0702d2 = new C0702d(c0717o.f2498c, c0717o.f2499d, c0717o.f2500e, c0717o.f2502g);
        c0717o.f2504i = c0702d2;
        c0702d2.start();
        for (int i = 0; i < c0717o.f2503h.length; i++) {
            C0710j c0710j2 = new C0710j(c0717o.f2499d, c0717o.f2501f, c0717o.f2500e, c0717o.f2502g);
            c0717o.f2503h[i] = c0710j2;
            c0710j2.start();
        }
        return c0717o;
    }
}
