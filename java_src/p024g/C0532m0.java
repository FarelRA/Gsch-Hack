package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import p008c.C0315a;
import p058r.C0847a;
/* renamed from: g.m0 */
/* loaded from: classes.dex */
public final class C0532m0 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f2018a = new ThreadLocal<>();

    /* renamed from: b */
    public static final int[] f2019b = {-16842910};

    /* renamed from: c */
    public static final int[] f2020c = {16842908};

    /* renamed from: d */
    public static final int[] f2021d = {16842919};

    /* renamed from: e */
    public static final int[] f2022e = {16842912};

    /* renamed from: f */
    public static final int[] f2023f = new int[0];

    /* renamed from: g */
    public static final int[] f2024g = new int[1];

    /* renamed from: a */
    public static int m586a(Context context, int i) {
        ColorStateList m584c = m584c(context, i);
        if (m584c != null && m584c.isStateful()) {
            return m584c.getColorForState(f2019b, m584c.getDefaultColor());
        }
        ThreadLocal<TypedValue> threadLocal = f2018a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        float f = typedValue.getFloat();
        int m585b = m585b(context, i);
        int round = Math.round(Color.alpha(m585b) * f);
        int i2 = C0847a.f2746a;
        if (round >= 0 && round <= 255) {
            return (m585b & 16777215) | (round << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    /* renamed from: b */
    public static int m585b(Context context, int i) {
        int[] iArr = f2024g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: c */
    public static ColorStateList m584c(Context context, int i) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f2024g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = C0315a.m995b(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
