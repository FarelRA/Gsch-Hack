package p071w0;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: w0.f */
/* loaded from: classes.dex */
public final class C0921f implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    public final float[] f2881a = new float[9];

    /* renamed from: b */
    public final float[] f2882b = new float[9];

    /* renamed from: c */
    public final Matrix f2883c = new Matrix();

    @Override // android.animation.TypeEvaluator
    public final Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        float[] fArr = this.f2881a;
        matrix.getValues(fArr);
        float[] fArr2 = this.f2882b;
        matrix2.getValues(fArr2);
        for (int i = 0; i < 9; i++) {
            float f2 = fArr2[i];
            float f3 = fArr[i];
            fArr2[i] = ((f2 - f3) * f) + f3;
        }
        Matrix matrix3 = this.f2883c;
        matrix3.setValues(fArr2);
        return matrix3;
    }
}
