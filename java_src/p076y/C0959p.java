package p076y;

import android.animation.ValueAnimator;
import android.view.View;
import p004b.C0295u;
/* renamed from: y.p */
/* loaded from: classes.dex */
public final class C0959p implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0962s f2945a;

    public C0959p(C0295u.C0298c c0298c, View view) {
        this.f2945a = c0298c;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ((View) C0295u.this.f1084d.getParent()).invalidate();
    }
}
