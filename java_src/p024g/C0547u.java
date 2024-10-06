package p024g;

import android.view.View;
import p020f.InterfaceC0470h;
import p024g.C0549v;
/* renamed from: g.u */
/* loaded from: classes.dex */
public final class C0547u extends AbstractView$OnTouchListenerC0502e0 {

    /* renamed from: k */
    public final /* synthetic */ C0549v.C0551b f2051k;

    /* renamed from: l */
    public final /* synthetic */ C0549v f2052l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0547u(C0549v c0549v, View view, C0549v.C0551b c0551b) {
        super(view);
        this.f2052l = c0549v;
        this.f2051k = c0551b;
    }

    @Override // p024g.AbstractView$OnTouchListenerC0502e0
    /* renamed from: b */
    public final InterfaceC0470h mo564b() {
        return this.f2051k;
    }

    @Override // p024g.AbstractView$OnTouchListenerC0502e0
    /* renamed from: c */
    public final boolean mo563c() {
        C0549v c0549v = this.f2052l;
        if (c0549v.f2059g.mo620g()) {
            return true;
        }
        c0549v.f2059g.mo560c();
        return true;
    }
}
