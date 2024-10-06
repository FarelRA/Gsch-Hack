package p022f1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
/* renamed from: f1.f */
/* loaded from: classes.dex */
public final class C0481f {

    /* renamed from: a */
    public final ArrayList<C0483b> f1859a = new ArrayList<>();

    /* renamed from: b */
    public ValueAnimator f1860b = null;

    /* renamed from: c */
    public final C0482a f1861c = new C0482a();

    /* renamed from: f1.f$a */
    /* loaded from: classes.dex */
    public class C0482a extends AnimatorListenerAdapter {
        public C0482a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            C0481f c0481f = C0481f.this;
            if (c0481f.f1860b == animator) {
                c0481f.f1860b = null;
            }
        }
    }

    /* renamed from: f1.f$b */
    /* loaded from: classes.dex */
    public static class C0483b {
        public C0483b(int[] iArr, ValueAnimator valueAnimator) {
        }
    }

    /* renamed from: a */
    public final void m669a(int[] iArr, ValueAnimator valueAnimator) {
        C0483b c0483b = new C0483b(iArr, valueAnimator);
        valueAnimator.addListener(this.f1861c);
        this.f1859a.add(c0483b);
    }
}
