package p017e0;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import p017e0.C0435o;
import p039k.C0655b;
/* renamed from: e0.n */
/* loaded from: classes.dex */
public final class RunnableC0434n implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ AbstractC0443t f1692b;

    /* renamed from: c */
    public final /* synthetic */ C0655b f1693c;

    /* renamed from: d */
    public final /* synthetic */ Object f1694d;

    /* renamed from: e */
    public final /* synthetic */ C0435o.C0436a f1695e;

    /* renamed from: f */
    public final /* synthetic */ ArrayList f1696f;

    /* renamed from: g */
    public final /* synthetic */ ComponentCallbacksC0411c f1697g;

    /* renamed from: h */
    public final /* synthetic */ ComponentCallbacksC0411c f1698h;

    /* renamed from: i */
    public final /* synthetic */ boolean f1699i;

    /* renamed from: j */
    public final /* synthetic */ ArrayList f1700j;

    /* renamed from: k */
    public final /* synthetic */ Object f1701k;

    /* renamed from: l */
    public final /* synthetic */ Rect f1702l;

    public RunnableC0434n(AbstractC0443t abstractC0443t, C0655b c0655b, Object obj, C0435o.C0436a c0436a, ArrayList arrayList, View view, ComponentCallbacksC0411c componentCallbacksC0411c, ComponentCallbacksC0411c componentCallbacksC0411c2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f1692b = abstractC0443t;
        this.f1693c = c0655b;
        this.f1694d = obj;
        this.f1695e = c0436a;
        this.f1696f = arrayList;
        this.f1697g = componentCallbacksC0411c;
        this.f1698h = componentCallbacksC0411c2;
        this.f1699i = z;
        this.f1700j = arrayList2;
        this.f1701k = obj2;
        this.f1702l = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ComponentCallbacksC0411c componentCallbacksC0411c;
        AbstractC0443t abstractC0443t = this.f1692b;
        C0655b c0655b = this.f1693c;
        Object obj = this.f1694d;
        C0435o.C0436a c0436a = this.f1695e;
        C0435o.m733c(abstractC0443t, c0655b, obj, c0436a);
        boolean z = this.f1699i;
        if (z) {
            componentCallbacksC0411c = this.f1698h;
        } else {
            componentCallbacksC0411c = this.f1697g;
        }
        componentCallbacksC0411c.getClass();
        if (obj != null) {
            abstractC0443t.mo491n(obj, this.f1700j, this.f1696f);
            View m729g = C0435o.m729g(null, c0436a, this.f1701k, z);
            if (m729g != null) {
                AbstractC0443t.m724g(m729g, this.f1702l);
            }
        }
    }
}
