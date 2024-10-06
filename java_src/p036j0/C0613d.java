package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: j0.d */
/* loaded from: classes.dex */
public final class C0613d extends AbstractC0644v {

    /* renamed from: j0.d$a */
    /* loaded from: classes.dex */
    public static class C0614a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final View f2167a;

        /* renamed from: b */
        public boolean f2168b = false;

        public C0614a(View view) {
            this.f2167a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            View view = this.f2167a;
            C0637q.m454b(view, 1.0f);
            if (this.f2168b) {
                view.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            View view = this.f2167a;
            if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                this.f2168b = true;
                view.setLayerType(2, null);
            }
        }
    }

    public C0613d(int i) {
        if ((i & (-4)) == 0) {
            this.f2244w = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    /* renamed from: J */
    public final ObjectAnimator m502J(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C0637q.m454b(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C0637q.f2230d, f2);
        ofFloat.addListener(new C0614a(view));
        mo469a(new C0612c(view));
        return ofFloat;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: g */
    public final void mo466g(C0634n c0634n) {
        m450H(c0634n);
        c0634n.f2224a.put("android:fade:transitionAlpha", Float.valueOf(C0637q.f2227a.mo312A(c0634n.f2225b)));
    }
}
