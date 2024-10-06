package p071w0;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import p039k.C0666h;
/* renamed from: w0.g */
/* loaded from: classes.dex */
public final class C0922g {

    /* renamed from: a */
    public final C0666h<String, C0923h> f2884a = new C0666h<>();

    /* renamed from: a */
    public static C0922g m99a(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m98b(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(loadAnimator);
                return m98b(arrayList);
            }
            return null;
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    /* renamed from: b */
    public static C0922g m98b(ArrayList arrayList) {
        C0922g c0922g = new C0922g();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            if (animator instanceof ObjectAnimator) {
                ObjectAnimator objectAnimator = (ObjectAnimator) animator;
                String propertyName = objectAnimator.getPropertyName();
                long startDelay = objectAnimator.getStartDelay();
                long duration = objectAnimator.getDuration();
                TimeInterpolator interpolator = objectAnimator.getInterpolator();
                if (!(interpolator instanceof AccelerateDecelerateInterpolator) && interpolator != null) {
                    if (interpolator instanceof AccelerateInterpolator) {
                        interpolator = C0916a.f2874c;
                    } else if (interpolator instanceof DecelerateInterpolator) {
                        interpolator = C0916a.f2875d;
                    }
                } else {
                    interpolator = C0916a.f2873b;
                }
                C0923h c0923h = new C0923h(startDelay, duration, interpolator);
                c0923h.f2888d = objectAnimator.getRepeatCount();
                c0923h.f2889e = objectAnimator.getRepeatMode();
                c0922g.f2884a.put(propertyName, c0923h);
            } else {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
        }
        return c0922g;
    }

    /* renamed from: c */
    public final C0923h m97c(String str) {
        boolean z;
        C0666h<String, C0923h> c0666h = this.f2884a;
        if (c0666h.getOrDefault(str, null) != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return c0666h.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0922g.class != obj.getClass()) {
            return false;
        }
        return this.f2884a.equals(((C0922g) obj).f2884a);
    }

    public final int hashCode() {
        return this.f2884a.hashCode();
    }

    public final String toString() {
        return "\n" + C0922g.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f2884a + "}\n";
    }
}
