package p018e1;

import android.view.ViewTreeObserver;
/* renamed from: e1.c */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0448c implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b */
    public final /* synthetic */ C0449d f1737b;

    public ViewTreeObserver$OnPreDrawListenerC0448c(C0449d c0449d) {
        this.f1737b = c0449d;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        C0449d c0449d = this.f1737b;
        float rotation = c0449d.f1758n.getRotation();
        if (c0449d.f1751g != rotation) {
            c0449d.f1751g = rotation;
            return true;
        }
        return true;
    }
}
