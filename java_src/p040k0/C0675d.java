package p040k0;

import android.animation.TypeEvaluator;
/* renamed from: k0.d */
/* loaded from: classes.dex */
public final class C0675d implements TypeEvaluator {

    /* renamed from: a */
    public static final C0675d f2333a = new C0675d();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = ((((float) Math.pow((intValue2 & 255) / 255.0f, 2.2d)) - pow3) * f) + pow3;
        return Integer.valueOf((Math.round(((float) Math.pow(((pow4 - pow) * f) + pow, 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(((((((intValue2 >> 24) & 255) / 255.0f) - f2) * f) + f2) * 255.0f) << 24) | (Math.round(((float) Math.pow(((((float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d)) - pow2) * f) + pow2, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(pow5, 0.45454545454545453d)) * 255.0f));
    }
}
