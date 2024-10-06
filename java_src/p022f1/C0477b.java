package p022f1;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.animation.LinearInterpolator;
import java.util.WeakHashMap;
import p070w.C0911b;
import p071w0.C0916a;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: f1.b */
/* loaded from: classes.dex */
public final class C0477b {

    /* renamed from: A */
    public float f1812A;

    /* renamed from: B */
    public int[] f1813B;

    /* renamed from: C */
    public boolean f1814C;

    /* renamed from: D */
    public final TextPaint f1815D;

    /* renamed from: E */
    public final TextPaint f1816E;

    /* renamed from: F */
    public TimeInterpolator f1817F;

    /* renamed from: G */
    public TimeInterpolator f1818G;

    /* renamed from: H */
    public float f1819H;

    /* renamed from: I */
    public float f1820I;

    /* renamed from: J */
    public float f1821J;

    /* renamed from: K */
    public int f1822K;

    /* renamed from: a */
    public final View f1823a;

    /* renamed from: b */
    public boolean f1824b;

    /* renamed from: c */
    public float f1825c;

    /* renamed from: d */
    public final Rect f1826d;

    /* renamed from: e */
    public final Rect f1827e;

    /* renamed from: f */
    public final RectF f1828f;

    /* renamed from: g */
    public int f1829g = 16;

    /* renamed from: h */
    public int f1830h = 16;

    /* renamed from: i */
    public float f1831i = 15.0f;

    /* renamed from: j */
    public float f1832j = 15.0f;

    /* renamed from: k */
    public ColorStateList f1833k;

    /* renamed from: l */
    public ColorStateList f1834l;

    /* renamed from: m */
    public float f1835m;

    /* renamed from: n */
    public float f1836n;

    /* renamed from: o */
    public float f1837o;

    /* renamed from: p */
    public float f1838p;

    /* renamed from: q */
    public float f1839q;

    /* renamed from: r */
    public float f1840r;

    /* renamed from: s */
    public Typeface f1841s;

    /* renamed from: t */
    public Typeface f1842t;

    /* renamed from: u */
    public Typeface f1843u;

    /* renamed from: v */
    public CharSequence f1844v;

    /* renamed from: w */
    public CharSequence f1845w;

    /* renamed from: x */
    public boolean f1846x;

    /* renamed from: y */
    public Bitmap f1847y;

    /* renamed from: z */
    public float f1848z;

    public C0477b(View view) {
        this.f1823a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f1815D = textPaint;
        this.f1816E = new TextPaint(textPaint);
        this.f1827e = new Rect();
        this.f1826d = new Rect();
        this.f1828f = new RectF();
    }

    /* renamed from: a */
    public static int m681a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), (int) ((Color.red(i2) * f) + (Color.red(i) * f2)), (int) ((Color.green(i2) * f) + (Color.green(i) * f2)), (int) ((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    /* renamed from: f */
    public static float m676f(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        LinearInterpolator linearInterpolator = C0916a.f2872a;
        return ((f2 - f) * f3) + f;
    }

    /* renamed from: b */
    public final boolean m680b(CharSequence charSequence) {
        boolean z;
        C0911b.C0915d c0915d;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        boolean z2 = false;
        if (this.f1823a.getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            c0915d = C0911b.f2868b;
        } else {
            c0915d = C0911b.f2867a;
        }
        int length = charSequence.length();
        if (length >= 0 && charSequence.length() - length >= 0) {
            C0911b.InterfaceC0913b interfaceC0913b = c0915d.f2870a;
            if (interfaceC0913b == null) {
                return c0915d.mo100a();
            }
            int mo101a = interfaceC0913b.mo101a(charSequence, length);
            if (mo101a != 0) {
                if (mo101a != 1) {
                    z2 = c0915d.mo100a();
                }
            } else {
                z2 = true;
            }
            return z2;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public final void m679c(float f) {
        int m677e;
        int defaultColor;
        RectF rectF = this.f1828f;
        Rect rect = this.f1826d;
        Rect rect2 = this.f1827e;
        rectF.left = m676f(rect.left, rect2.left, f, this.f1817F);
        rectF.top = m676f(this.f1835m, this.f1836n, f, this.f1817F);
        rectF.right = m676f(rect.right, rect2.right, f, this.f1817F);
        rectF.bottom = m676f(rect.bottom, rect2.bottom, f, this.f1817F);
        this.f1839q = m676f(this.f1837o, this.f1838p, f, this.f1817F);
        this.f1840r = m676f(this.f1835m, this.f1836n, f, this.f1817F);
        m678d(m676f(this.f1831i, this.f1832j, f, this.f1818G));
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        View view = this.f1823a;
        view.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f1834l;
        ColorStateList colorStateList2 = this.f1833k;
        TextPaint textPaint = this.f1815D;
        if (colorStateList != colorStateList2) {
            int[] iArr = this.f1813B;
            if (iArr != null) {
                defaultColor = colorStateList2.getColorForState(iArr, 0);
            } else {
                defaultColor = colorStateList2.getDefaultColor();
            }
            m677e = m681a(defaultColor, m677e(), f);
        } else {
            m677e = m677e();
        }
        textPaint.setColor(m677e);
        textPaint.setShadowLayer(m676f(0.0f, this.f1819H, f, null), m676f(0.0f, this.f1820I, f, null), m676f(0.0f, this.f1821J, f, null), m681a(0, this.f1822K, f));
        view.postInvalidateOnAnimation();
    }

    /* renamed from: d */
    public final void m678d(float f) {
        boolean z;
        boolean z2;
        boolean z3;
        float f2;
        if (this.f1844v == null) {
            return;
        }
        float width = this.f1827e.width();
        float width2 = this.f1826d.width();
        boolean z4 = true;
        if (Math.abs(f - this.f1832j) < 0.001f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            f2 = this.f1832j;
            this.f1848z = 1.0f;
            Typeface typeface = this.f1843u;
            Typeface typeface2 = this.f1841s;
            if (typeface != typeface2) {
                this.f1843u = typeface2;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            float f3 = this.f1831i;
            Typeface typeface3 = this.f1843u;
            Typeface typeface4 = this.f1842t;
            if (typeface3 != typeface4) {
                this.f1843u = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (Math.abs(f - f3) < 0.001f) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                this.f1848z = 1.0f;
            } else {
                this.f1848z = f / this.f1831i;
            }
            float f4 = this.f1832j / this.f1831i;
            if (width2 * f4 > width) {
                width = Math.min(width / f4, width2);
            } else {
                width = width2;
            }
            f2 = f3;
        }
        if (width > 0.0f) {
            if (this.f1812A == f2 && !this.f1814C && !z2) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.f1812A = f2;
            this.f1814C = false;
        }
        if (this.f1845w == null || z2) {
            TextPaint textPaint = this.f1815D;
            textPaint.setTextSize(this.f1812A);
            textPaint.setTypeface(this.f1843u);
            if (this.f1848z == 1.0f) {
                z4 = false;
            }
            textPaint.setLinearText(z4);
            CharSequence ellipsize = TextUtils.ellipsize(this.f1844v, textPaint, width, TextUtils.TruncateAt.END);
            if (!TextUtils.equals(ellipsize, this.f1845w)) {
                this.f1845w = ellipsize;
                this.f1846x = m680b(ellipsize);
            }
        }
    }

    /* renamed from: e */
    public final int m677e() {
        int[] iArr = this.f1813B;
        return iArr != null ? this.f1834l.getColorForState(iArr, 0) : this.f1834l.getDefaultColor();
    }

    /* renamed from: g */
    public final void m675g() {
        boolean z;
        Rect rect = this.f1827e;
        if (rect.width() > 0 && rect.height() > 0) {
            Rect rect2 = this.f1826d;
            if (rect2.width() > 0 && rect2.height() > 0) {
                z = true;
                this.f1824b = z;
            }
        }
        z = false;
        this.f1824b = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e0  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m674h() {
        float f;
        float ascent;
        int i;
        float centerX;
        CharSequence charSequence;
        int i2;
        float ascent2;
        int i3;
        float centerX2;
        float f2;
        Bitmap bitmap;
        View view = this.f1823a;
        if (view.getHeight() > 0 && view.getWidth() > 0) {
            float f3 = this.f1812A;
            m678d(this.f1832j);
            CharSequence charSequence2 = this.f1845w;
            TextPaint textPaint = this.f1815D;
            float f4 = 0.0f;
            if (charSequence2 != null) {
                f = textPaint.measureText(charSequence2, 0, charSequence2.length());
            } else {
                f = 0.0f;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(this.f1830h, this.f1846x ? 1 : 0);
            int i4 = absoluteGravity & 112;
            Rect rect = this.f1827e;
            if (i4 != 48) {
                if (i4 != 80) {
                    this.f1836n = rect.centerY() + (((textPaint.descent() - textPaint.ascent()) / 2.0f) - textPaint.descent());
                    i = absoluteGravity & 8388615;
                    if (i == 1) {
                        if (i != 5) {
                            this.f1838p = rect.left;
                            m678d(this.f1831i);
                            charSequence = this.f1845w;
                            if (charSequence != null) {
                                f4 = textPaint.measureText(charSequence, 0, charSequence.length());
                            }
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f1829g, this.f1846x ? 1 : 0);
                            i2 = absoluteGravity2 & 112;
                            Rect rect2 = this.f1826d;
                            if (i2 != 48) {
                                if (i2 != 80) {
                                    ascent2 = rect2.centerY() + (((textPaint.descent() - textPaint.ascent()) / 2.0f) - textPaint.descent());
                                } else {
                                    ascent2 = rect2.bottom;
                                }
                            } else {
                                ascent2 = rect2.top - textPaint.ascent();
                            }
                            this.f1835m = ascent2;
                            i3 = absoluteGravity2 & 8388615;
                            if (i3 != 1) {
                                if (i3 != 5) {
                                    f2 = rect2.left;
                                    this.f1837o = f2;
                                    bitmap = this.f1847y;
                                    if (bitmap != null) {
                                        bitmap.recycle();
                                        this.f1847y = null;
                                    }
                                    m678d(f3);
                                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                                    view.postInvalidateOnAnimation();
                                    m679c(this.f1825c);
                                }
                                centerX2 = rect2.right;
                            } else {
                                centerX2 = rect2.centerX();
                                f4 /= 2.0f;
                            }
                            f2 = centerX2 - f4;
                            this.f1837o = f2;
                            bitmap = this.f1847y;
                            if (bitmap != null) {
                            }
                            m678d(f3);
                            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                            view.postInvalidateOnAnimation();
                            m679c(this.f1825c);
                        }
                        centerX = rect.right;
                    } else {
                        centerX = rect.centerX();
                        f /= 2.0f;
                    }
                    this.f1838p = centerX - f;
                    m678d(this.f1831i);
                    charSequence = this.f1845w;
                    if (charSequence != null) {
                    }
                    int absoluteGravity22 = Gravity.getAbsoluteGravity(this.f1829g, this.f1846x ? 1 : 0);
                    i2 = absoluteGravity22 & 112;
                    Rect rect22 = this.f1826d;
                    if (i2 != 48) {
                    }
                    this.f1835m = ascent2;
                    i3 = absoluteGravity22 & 8388615;
                    if (i3 != 1) {
                    }
                    f2 = centerX2 - f4;
                    this.f1837o = f2;
                    bitmap = this.f1847y;
                    if (bitmap != null) {
                    }
                    m678d(f3);
                    WeakHashMap<View, C0960q> weakHashMap22 = C0954m.f2934a;
                    view.postInvalidateOnAnimation();
                    m679c(this.f1825c);
                }
                ascent = rect.bottom;
            } else {
                ascent = rect.top - textPaint.ascent();
            }
            this.f1836n = ascent;
            i = absoluteGravity & 8388615;
            if (i == 1) {
            }
            this.f1838p = centerX - f;
            m678d(this.f1831i);
            charSequence = this.f1845w;
            if (charSequence != null) {
            }
            int absoluteGravity222 = Gravity.getAbsoluteGravity(this.f1829g, this.f1846x ? 1 : 0);
            i2 = absoluteGravity222 & 112;
            Rect rect222 = this.f1826d;
            if (i2 != 48) {
            }
            this.f1835m = ascent2;
            i3 = absoluteGravity222 & 8388615;
            if (i3 != 1) {
            }
            f2 = centerX2 - f4;
            this.f1837o = f2;
            bitmap = this.f1847y;
            if (bitmap != null) {
            }
            m678d(f3);
            WeakHashMap<View, C0960q> weakHashMap222 = C0954m.f2934a;
            view.postInvalidateOnAnimation();
            m679c(this.f1825c);
        }
    }

    /* renamed from: i */
    public final void m673i(ColorStateList colorStateList) {
        if (this.f1834l != colorStateList) {
            this.f1834l = colorStateList;
            m674h();
        }
    }

    /* renamed from: j */
    public final void m672j(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.f1825c) {
            this.f1825c = f;
            m679c(f);
        }
    }
}
