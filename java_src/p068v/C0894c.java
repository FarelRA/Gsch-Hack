package p068v;

import android.os.Handler;
import p024g.C0558w;
import p055q.AbstractC0831e;
import p068v.C0896e;
import p068v.C0901f;
/* renamed from: v.c */
/* loaded from: classes.dex */
public final class C0894c implements C0901f.InterfaceC0903b<C0896e.C0900d> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0831e f2829a;

    /* renamed from: b */
    public final /* synthetic */ Handler f2830b = null;

    public C0894c(C0558w.C0559a c0559a) {
        this.f2829a = c0559a;
    }

    @Override // p068v.C0901f.InterfaceC0903b
    /* renamed from: a */
    public final void mo103a(C0896e.C0900d c0900d) {
        C0896e.C0900d c0900d2 = c0900d;
        Handler handler = this.f2830b;
        AbstractC0831e abstractC0831e = this.f2829a;
        if (c0900d2 == null) {
            abstractC0831e.m199a(1, handler);
            return;
        }
        int i = c0900d2.f2845b;
        if (i == 0) {
            abstractC0831e.m198b(c0900d2.f2844a, handler);
        } else {
            abstractC0831e.m199a(i, handler);
        }
    }
}
