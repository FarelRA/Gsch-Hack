package p026g1;

import android.content.res.ColorStateList;
import android.graphics.Color;
import p058r.C0847a;
/* renamed from: g1.a */
/* loaded from: classes.dex */
public final class C0568a {

    /* renamed from: a */
    public static final int[] f2122a = {16842919};

    /* renamed from: b */
    public static final int[] f2123b = {16842913, 16842919};

    /* renamed from: c */
    public static final int[] f2124c = {16842913};

    /* renamed from: a */
    public static int m523a(ColorStateList colorStateList, int[] iArr) {
        int i;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        } else {
            i = 0;
        }
        int min = Math.min(Color.alpha(i) * 2, 255);
        int i2 = C0847a.f2746a;
        if (min >= 0 && min <= 255) {
            return (i & 16777215) | (min << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
}
