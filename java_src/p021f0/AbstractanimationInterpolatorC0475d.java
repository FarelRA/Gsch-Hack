package p021f0;

import android.view.animation.Interpolator;
/* renamed from: f0.d  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AbstractanimationInterpolatorC0475d implements Interpolator {

    /* renamed from: a */
    public final float[] f1809a;

    /* renamed from: b */
    public final float f1810b;

    public AbstractanimationInterpolatorC0475d(float[] fArr) {
        this.f1809a = fArr;
        this.f1810b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f1809a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f1810b;
        float f3 = fArr[min];
        return ((fArr[min + 1] - f3) * ((f - (min * f2)) / f2)) + f3;
    }
}
