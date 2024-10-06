package p017e0;

import android.graphics.Rect;
import android.view.View;
import p039k.C0655b;
/* renamed from: e0.m */
/* loaded from: classes.dex */
public final class RunnableC0433m implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ ComponentCallbacksC0411c f1686b;

    /* renamed from: c */
    public final /* synthetic */ ComponentCallbacksC0411c f1687c;

    /* renamed from: d */
    public final /* synthetic */ boolean f1688d;

    /* renamed from: e */
    public final /* synthetic */ View f1689e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC0443t f1690f;

    /* renamed from: g */
    public final /* synthetic */ Rect f1691g;

    public RunnableC0433m(ComponentCallbacksC0411c componentCallbacksC0411c, ComponentCallbacksC0411c componentCallbacksC0411c2, boolean z, C0655b c0655b, View view, AbstractC0443t abstractC0443t, Rect rect) {
        this.f1686b = componentCallbacksC0411c;
        this.f1687c = componentCallbacksC0411c2;
        this.f1688d = z;
        this.f1689e = view;
        this.f1690f = abstractC0443t;
        this.f1691g = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ComponentCallbacksC0411c componentCallbacksC0411c;
        if (this.f1688d) {
            componentCallbacksC0411c = this.f1687c;
        } else {
            componentCallbacksC0411c = this.f1686b;
        }
        componentCallbacksC0411c.getClass();
        View view = this.f1689e;
        if (view != null) {
            this.f1690f.getClass();
            AbstractC0443t.m724g(view, this.f1691g);
        }
    }
}
