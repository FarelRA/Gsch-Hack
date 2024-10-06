package p071w0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
/* renamed from: w0.h */
/* loaded from: classes.dex */
public final class C0923h {

    /* renamed from: a */
    public final long f2885a;

    /* renamed from: b */
    public final long f2886b;

    /* renamed from: c */
    public final TimeInterpolator f2887c;

    /* renamed from: d */
    public int f2888d;

    /* renamed from: e */
    public int f2889e;

    public C0923h(long j) {
        this.f2885a = 0L;
        this.f2886b = 300L;
        this.f2887c = null;
        this.f2888d = 0;
        this.f2889e = 1;
        this.f2885a = j;
        this.f2886b = 150L;
    }

    public C0923h(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f2885a = 0L;
        this.f2886b = 300L;
        this.f2887c = null;
        this.f2888d = 0;
        this.f2889e = 1;
        this.f2885a = j;
        this.f2886b = j2;
        this.f2887c = timeInterpolator;
    }

    /* renamed from: a */
    public final void m96a(Animator animator) {
        animator.setStartDelay(this.f2885a);
        animator.setDuration(this.f2886b);
        animator.setInterpolator(m95b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f2888d);
            valueAnimator.setRepeatMode(this.f2889e);
        }
    }

    /* renamed from: b */
    public final TimeInterpolator m95b() {
        TimeInterpolator timeInterpolator = this.f2887c;
        return timeInterpolator != null ? timeInterpolator : C0916a.f2873b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0923h.class != obj.getClass()) {
            return false;
        }
        C0923h c0923h = (C0923h) obj;
        if (this.f2885a != c0923h.f2885a || this.f2886b != c0923h.f2886b || this.f2888d != c0923h.f2888d || this.f2889e != c0923h.f2889e) {
            return false;
        }
        return m95b().getClass().equals(c0923h.m95b().getClass());
    }

    public final int hashCode() {
        long j = this.f2885a;
        long j2 = this.f2886b;
        return ((((m95b().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.f2888d) * 31) + this.f2889e;
    }

    public final String toString() {
        return "\n" + C0923h.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f2885a + " duration: " + this.f2886b + " interpolator: " + m95b().getClass() + " repeatCount: " + this.f2888d + " repeatMode: " + this.f2889e + "}\n";
    }
}
