package p076y;

import android.view.View;
import java.lang.ref.WeakReference;
/* renamed from: y.q */
/* loaded from: classes.dex */
public final class C0960q {

    /* renamed from: a */
    public final WeakReference<View> f2946a;

    public C0960q(View view) {
        this.f2946a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public final void m24a(float f) {
        View view = this.f2946a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    /* renamed from: b */
    public final void m23b() {
        View view = this.f2946a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public final void m22c(long j) {
        View view = this.f2946a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    /* renamed from: d */
    public final void m21d(InterfaceC0961r interfaceC0961r) {
        View view = this.f2946a.get();
        if (view != null) {
            if (interfaceC0961r != null) {
                view.animate().setListener(new C0958o(interfaceC0961r, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    /* renamed from: e */
    public final void m20e(float f) {
        View view = this.f2946a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
