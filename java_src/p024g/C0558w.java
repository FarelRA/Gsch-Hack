package p024g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p000a0.C0010i;
import p000a0.InterfaceC0003b;
import p046m1.C0736h;
import p055q.AbstractC0831e;
/* renamed from: g.w */
/* loaded from: classes.dex */
public final class C0558w {

    /* renamed from: a */
    public final TextView f2085a;

    /* renamed from: b */
    public C0538p0 f2086b;

    /* renamed from: c */
    public C0538p0 f2087c;

    /* renamed from: d */
    public C0538p0 f2088d;

    /* renamed from: e */
    public C0538p0 f2089e;

    /* renamed from: f */
    public C0538p0 f2090f;

    /* renamed from: g */
    public C0538p0 f2091g;

    /* renamed from: h */
    public final C0563y f2092h;

    /* renamed from: i */
    public int f2093i = 0;

    /* renamed from: j */
    public Typeface f2094j;

    /* renamed from: k */
    public boolean f2095k;

    /* renamed from: g.w$a */
    /* loaded from: classes.dex */
    public class C0559a extends AbstractC0831e {

        /* renamed from: a */
        public final /* synthetic */ WeakReference f2096a;

        public C0559a(WeakReference weakReference) {
            this.f2096a = weakReference;
        }
    }

    public C0558w(TextView textView) {
        this.f2085a = textView;
        this.f2092h = new C0563y(textView);
    }

    /* renamed from: c */
    public static C0538p0 m551c(Context context, C0516i c0516i, int i) {
        ColorStateList m605l = c0516i.m605l(context, i);
        if (m605l != null) {
            C0538p0 c0538p0 = new C0538p0();
            c0538p0.f2035d = true;
            c0538p0.f2032a = m605l;
            return c0538p0;
        }
        return null;
    }

    /* renamed from: a */
    public final void m553a(Drawable drawable, C0538p0 c0538p0) {
        if (drawable == null || c0538p0 == null) {
            return;
        }
        C0516i.m603n(drawable, c0538p0, this.f2085a.getDrawableState());
    }

    /* renamed from: b */
    public final void m552b() {
        C0538p0 c0538p0 = this.f2086b;
        TextView textView = this.f2085a;
        if (c0538p0 != null || this.f2087c != null || this.f2088d != null || this.f2089e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            m553a(compoundDrawables[0], this.f2086b);
            m553a(compoundDrawables[1], this.f2087c);
            m553a(compoundDrawables[2], this.f2088d);
            m553a(compoundDrawables[3], this.f2089e);
        }
        if (this.f2090f == null && this.f2091g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        m553a(compoundDrawablesRelative[0], this.f2090f);
        m553a(compoundDrawablesRelative[2], this.f2091g);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public final void m550d(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        float f;
        int i2;
        float f2;
        int i3;
        float f3;
        int autoSizeStepGranularity;
        int i4;
        int resourceId;
        TextView textView = this.f2085a;
        Context context = textView.getContext();
        C0516i m610g = C0516i.m610g();
        C0542r0 m569l = C0542r0.m569l(context, attributeSet, C0736h.f2574n, i);
        int m572i = m569l.m572i(0, -1);
        if (m569l.m570k(3)) {
            this.f2086b = m551c(context, m610g, m569l.m572i(3, 0));
        }
        if (m569l.m570k(1)) {
            this.f2087c = m551c(context, m610g, m569l.m572i(1, 0));
        }
        if (m569l.m570k(4)) {
            this.f2088d = m551c(context, m610g, m569l.m572i(4, 0));
        }
        if (m569l.m570k(2)) {
            this.f2089e = m551c(context, m610g, m569l.m572i(2, 0));
        }
        int i5 = Build.VERSION.SDK_INT;
        if (m569l.m570k(5)) {
            this.f2090f = m551c(context, m610g, m569l.m572i(5, 0));
        }
        if (m569l.m570k(6)) {
            this.f2091g = m551c(context, m610g, m569l.m572i(6, 0));
        }
        m569l.m568m();
        boolean z3 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr = C0736h.f2530C;
        if (m572i != -1) {
            C0542r0 c0542r0 = new C0542r0(context, context.obtainStyledAttributes(m572i, iArr));
            if (!z3 && c0542r0.m570k(12)) {
                z = c0542r0.m580a(12, false);
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            m545i(context, c0542r0);
            if (i5 < 23) {
                if (c0542r0.m570k(3)) {
                    colorStateList = c0542r0.m579b(3);
                } else {
                    colorStateList = null;
                }
                if (c0542r0.m570k(4)) {
                    colorStateList2 = c0542r0.m579b(4);
                } else {
                    colorStateList2 = null;
                }
                if (c0542r0.m570k(5)) {
                    colorStateList3 = c0542r0.m579b(5);
                    c0542r0.m568m();
                }
            } else {
                colorStateList = null;
                colorStateList2 = null;
            }
            colorStateList3 = null;
            c0542r0.m568m();
        } else {
            z = false;
            z2 = false;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
        }
        C0542r0 c0542r02 = new C0542r0(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
        if (!z3 && c0542r02.m570k(12)) {
            z = c0542r02.m580a(12, false);
            z2 = true;
        }
        if (i5 < 23) {
            if (c0542r02.m570k(3)) {
                colorStateList = c0542r02.m579b(3);
            }
            if (c0542r02.m570k(4)) {
                colorStateList2 = c0542r02.m579b(4);
            }
            if (c0542r02.m570k(5)) {
                colorStateList3 = c0542r02.m579b(5);
            }
        }
        ColorStateList colorStateList4 = colorStateList;
        ColorStateList colorStateList5 = colorStateList2;
        ColorStateList colorStateList6 = colorStateList3;
        if (i5 >= 28 && c0542r02.m570k(0) && c0542r02.m577d(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m545i(context, c0542r02);
        c0542r02.m568m();
        if (colorStateList4 != null) {
            textView.setTextColor(colorStateList4);
        }
        if (colorStateList5 != null) {
            textView.setHintTextColor(colorStateList5);
        }
        if (colorStateList6 != null) {
            textView.setLinkTextColor(colorStateList6);
        }
        if (!z3 && z2) {
            textView.setAllCaps(z);
        }
        Typeface typeface = this.f2094j;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f2093i);
        }
        int[] iArr2 = C0736h.f2575o;
        C0563y c0563y = this.f2092h;
        Context context2 = c0563y.f2120j;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        if (obtainStyledAttributes.hasValue(5)) {
            c0563y.f2111a = obtainStyledAttributes.getInt(5, 0);
        }
        if (obtainStyledAttributes.hasValue(4)) {
            f = obtainStyledAttributes.getDimension(4, -1.0f);
        } else {
            f = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(2)) {
            f2 = obtainStyledAttributes.getDimension(2, -1.0f);
            i2 = 1;
        } else {
            i2 = 1;
            f2 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(i2)) {
            f3 = obtainStyledAttributes.getDimension(i2, -1.0f);
            i3 = 3;
        } else {
            i3 = 3;
            f3 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(i3) && (resourceId = obtainStyledAttributes.getResourceId(i3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr3 = new int[length];
            if (length > 0) {
                for (int i6 = 0; i6 < length; i6++) {
                    iArr3[i6] = obtainTypedArray.getDimensionPixelSize(i6, -1);
                }
                c0563y.f2116f = C0563y.m543b(iArr3);
                c0563y.m537h();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (c0563y.m536i()) {
            if (c0563y.f2111a == 1) {
                if (!c0563y.f2117g) {
                    DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                    if (f2 == -1.0f) {
                        i4 = 2;
                        f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i4 = 2;
                    }
                    if (f3 == -1.0f) {
                        f3 = TypedValue.applyDimension(i4, 112.0f, displayMetrics);
                    }
                    if (f == -1.0f) {
                        f = 1.0f;
                    }
                    c0563y.m535j(f2, f3, f);
                }
                c0563y.m538g();
            }
        } else {
            c0563y.f2111a = 0;
        }
        if (InterfaceC0003b.f27a && c0563y.f2111a != 0) {
            int[] iArr4 = c0563y.f2116f;
            if (iArr4.length > 0) {
                autoSizeStepGranularity = textView.getAutoSizeStepGranularity();
                if (autoSizeStepGranularity != -1.0f) {
                    textView.setAutoSizeTextTypeUniformWithConfiguration(Math.round(c0563y.f2114d), Math.round(c0563y.f2115e), Math.round(c0563y.f2113c), 0);
                } else {
                    textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr4, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2);
        int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(6, -1);
        int dimensionPixelSize2 = obtainStyledAttributes2.getDimensionPixelSize(8, -1);
        int dimensionPixelSize3 = obtainStyledAttributes2.getDimensionPixelSize(9, -1);
        obtainStyledAttributes2.recycle();
        if (dimensionPixelSize != -1) {
            C0010i.m1379b(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            C0010i.m1378c(textView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            if (dimensionPixelSize3 >= 0) {
                int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
                if (dimensionPixelSize3 != fontMetricsInt) {
                    textView.setLineSpacing(dimensionPixelSize3 - fontMetricsInt, 1.0f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: e */
    public final void m549e(Context context, int i) {
        ColorStateList m579b;
        C0542r0 c0542r0 = new C0542r0(context, context.obtainStyledAttributes(i, C0736h.f2530C));
        boolean m570k = c0542r0.m570k(12);
        TextView textView = this.f2085a;
        if (m570k) {
            textView.setAllCaps(c0542r0.m580a(12, false));
        }
        if (Build.VERSION.SDK_INT < 23 && c0542r0.m570k(3) && (m579b = c0542r0.m579b(3)) != null) {
            textView.setTextColor(m579b);
        }
        if (c0542r0.m570k(0) && c0542r0.m577d(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m545i(context, c0542r0);
        c0542r0.m568m();
        Typeface typeface = this.f2094j;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f2093i);
        }
    }

    /* renamed from: f */
    public final void m548f(int i, int i2, int i3, int i4) {
        C0563y c0563y = this.f2092h;
        if (c0563y.m536i()) {
            DisplayMetrics displayMetrics = c0563y.f2120j.getResources().getDisplayMetrics();
            c0563y.m535j(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (c0563y.m538g()) {
                c0563y.m544a();
            }
        }
    }

    /* renamed from: g */
    public final void m547g(int[] iArr, int i) {
        C0563y c0563y = this.f2092h;
        if (c0563y.m536i()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = c0563y.f2120j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                c0563y.f2116f = C0563y.m543b(iArr2);
                if (!c0563y.m537h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                c0563y.f2117g = false;
            }
            if (c0563y.m538g()) {
                c0563y.m544a();
            }
        }
    }

    /* renamed from: h */
    public final void m546h(int i) {
        C0563y c0563y = this.f2092h;
        if (c0563y.m536i()) {
            if (i != 0) {
                if (i == 1) {
                    DisplayMetrics displayMetrics = c0563y.f2120j.getResources().getDisplayMetrics();
                    c0563y.m535j(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (c0563y.m538g()) {
                        c0563y.m544a();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            c0563y.f2111a = 0;
            c0563y.f2114d = -1.0f;
            c0563y.f2115e = -1.0f;
            c0563y.f2113c = -1.0f;
            c0563y.f2116f = new int[0];
            c0563y.f2112b = false;
        }
    }

    /* renamed from: i */
    public final void m545i(Context context, C0542r0 c0542r0) {
        String string;
        Typeface typeface;
        this.f2093i = c0542r0.m573h(2, this.f2093i);
        int i = 10;
        boolean z = false;
        if (!c0542r0.m570k(10) && !c0542r0.m570k(11)) {
            if (c0542r0.m570k(1)) {
                this.f2095k = false;
                int m573h = c0542r0.m573h(1, 1);
                if (m573h != 1) {
                    if (m573h != 2) {
                        if (m573h == 3) {
                            typeface = Typeface.MONOSPACE;
                        } else {
                            return;
                        }
                    } else {
                        typeface = Typeface.SERIF;
                    }
                } else {
                    typeface = Typeface.SANS_SERIF;
                }
                this.f2094j = typeface;
                return;
            }
            return;
        }
        this.f2094j = null;
        if (c0542r0.m570k(11)) {
            i = 11;
        }
        if (!context.isRestricted()) {
            try {
                Typeface m574g = c0542r0.m574g(i, this.f2093i, new C0559a(new WeakReference(this.f2085a)));
                this.f2094j = m574g;
                if (m574g == null) {
                    z = true;
                }
                this.f2095k = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f2094j == null && (string = c0542r0.f2039b.getString(i)) != null) {
            this.f2094j = Typeface.create(string, this.f2093i);
        }
    }
}
