package p070w;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.LocaleList;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Objects;
import p057q1.C0844h;
/* renamed from: w.a */
/* loaded from: classes.dex */
public final class C0909a implements Spannable {

    /* renamed from: w.a$a */
    /* loaded from: classes.dex */
    public static final class C0910a {

        /* renamed from: a */
        public final TextPaint f2863a;

        /* renamed from: b */
        public final TextDirectionHeuristic f2864b;

        /* renamed from: c */
        public final int f2865c;

        /* renamed from: d */
        public final int f2866d;

        public C0910a(PrecomputedText.Params params) {
            TextPaint textPaint;
            TextDirectionHeuristic textDirection;
            int breakStrategy;
            int hyphenationFrequency;
            textPaint = params.getTextPaint();
            this.f2863a = textPaint;
            textDirection = params.getTextDirection();
            this.f2864b = textDirection;
            breakStrategy = params.getBreakStrategy();
            this.f2865c = breakStrategy;
            hyphenationFrequency = params.getHyphenationFrequency();
            this.f2866d = hyphenationFrequency;
        }

        @SuppressLint({"NewApi"})
        public C0910a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f2863a = textPaint;
            this.f2864b = textDirectionHeuristic;
            this.f2865c = i;
            this.f2866d = i2;
        }

        /* renamed from: a */
        public final boolean m102a(C0910a c0910a) {
            LocaleList textLocales;
            LocaleList textLocales2;
            boolean equals;
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                if (this.f2865c != c0910a.f2865c || this.f2866d != c0910a.f2866d) {
                    return false;
                }
            }
            TextPaint textPaint = this.f2863a;
            if (textPaint.getTextSize() != c0910a.f2863a.getTextSize()) {
                return false;
            }
            float textScaleX = textPaint.getTextScaleX();
            TextPaint textPaint2 = c0910a.f2863a;
            if (textScaleX != textPaint2.getTextScaleX() || textPaint.getTextSkewX() != textPaint2.getTextSkewX() || textPaint.getLetterSpacing() != textPaint2.getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) || textPaint.getFlags() != textPaint2.getFlags()) {
                return false;
            }
            if (i >= 24) {
                textLocales = textPaint.getTextLocales();
                textLocales2 = textPaint2.getTextLocales();
                equals = textLocales.equals(textLocales2);
                if (!equals) {
                    return false;
                }
            } else if (!textPaint.getTextLocale().equals(textPaint2.getTextLocale())) {
                return false;
            }
            if (textPaint.getTypeface() == null) {
                if (textPaint2.getTypeface() != null) {
                    return false;
                }
                return true;
            } else if (!textPaint.getTypeface().equals(textPaint2.getTypeface())) {
                return false;
            } else {
                return true;
            }
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C0910a) {
                C0910a c0910a = (C0910a) obj;
                return m102a(c0910a) && this.f2864b == c0910a.f2864b;
            }
            return false;
        }

        public final int hashCode() {
            LocaleList textLocales;
            int i = Build.VERSION.SDK_INT;
            int i2 = this.f2866d;
            int i3 = this.f2865c;
            TextDirectionHeuristic textDirectionHeuristic = this.f2864b;
            TextPaint textPaint = this.f2863a;
            if (i >= 24) {
                textLocales = textPaint.getTextLocales();
                return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textLocales, textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
            }
            return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
        }

        public final String toString() {
            StringBuilder sb;
            Object textLocale;
            String fontVariationSettings;
            StringBuilder sb2 = new StringBuilder("{");
            StringBuilder sb3 = new StringBuilder("textSize=");
            TextPaint textPaint = this.f2863a;
            sb3.append(textPaint.getTextSize());
            sb2.append(sb3.toString());
            sb2.append(", textScaleX=" + textPaint.getTextScaleX());
            sb2.append(", textSkewX=" + textPaint.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            sb2.append(", letterSpacing=" + textPaint.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
            if (i >= 24) {
                sb = new StringBuilder(", textLocale=");
                textLocale = textPaint.getTextLocales();
            } else {
                sb = new StringBuilder(", textLocale=");
                textLocale = textPaint.getTextLocale();
            }
            sb.append(textLocale);
            sb2.append(sb.toString());
            sb2.append(", typeface=" + textPaint.getTypeface());
            if (i >= 26) {
                StringBuilder sb4 = new StringBuilder(", variationSettings=");
                fontVariationSettings = textPaint.getFontVariationSettings();
                sb4.append(fontVariationSettings);
                sb2.append(sb4.toString());
            }
            sb2.append(", textDir=" + this.f2864b);
            sb2.append(", breakStrategy=" + this.f2865c);
            sb2.append(", hyphenationFrequency=" + this.f2866d);
            sb2.append("}");
            return sb2.toString();
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0844h.m186b(i, i2, cls);
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public final void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        C0844h.m185c(obj);
        throw null;
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        C0844h.m184d(obj, i, i2, i3);
        throw null;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        throw null;
    }
}
