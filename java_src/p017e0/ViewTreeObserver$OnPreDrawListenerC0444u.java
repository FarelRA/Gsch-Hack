package p017e0;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
/* renamed from: e0.u */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0444u implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: b */
    public final View f1729b;

    /* renamed from: c */
    public ViewTreeObserver f1730c;

    /* renamed from: d */
    public final Runnable f1731d;

    public ViewTreeObserver$OnPreDrawListenerC0444u(ViewGroup viewGroup, Runnable runnable) {
        this.f1729b = viewGroup;
        this.f1730c = viewGroup.getViewTreeObserver();
        this.f1731d = runnable;
    }

    /* renamed from: a */
    public static void m722a(ViewGroup viewGroup, Runnable runnable) {
        ViewTreeObserver$OnPreDrawListenerC0444u viewTreeObserver$OnPreDrawListenerC0444u = new ViewTreeObserver$OnPreDrawListenerC0444u(viewGroup, runnable);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0444u);
        viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC0444u);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ViewTreeObserver viewTreeObserver;
        boolean isAlive = this.f1730c.isAlive();
        View view = this.f1729b;
        if (isAlive) {
            viewTreeObserver = this.f1730c;
        } else {
            viewTreeObserver = view.getViewTreeObserver();
        }
        viewTreeObserver.removeOnPreDrawListener(this);
        view.removeOnAttachStateChangeListener(this);
        this.f1731d.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f1730c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.f1730c.isAlive();
        View view2 = this.f1729b;
        (isAlive ? this.f1730c : view2.getViewTreeObserver()).removeOnPreDrawListener(this);
        view2.removeOnAttachStateChangeListener(this);
    }
}
