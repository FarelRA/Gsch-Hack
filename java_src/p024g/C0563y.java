package p024g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: g.y */
/* loaded from: classes.dex */
public final class C0563y {

    /* renamed from: k */
    public static final RectF f2109k = new RectF();

    /* renamed from: l */
    public static final ConcurrentHashMap<String, Method> f2110l = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f2111a = 0;

    /* renamed from: b */
    public boolean f2112b = false;

    /* renamed from: c */
    public float f2113c = -1.0f;

    /* renamed from: d */
    public float f2114d = -1.0f;

    /* renamed from: e */
    public float f2115e = -1.0f;

    /* renamed from: f */
    public int[] f2116f = new int[0];

    /* renamed from: g */
    public boolean f2117g = false;

    /* renamed from: h */
    public TextPaint f2118h;

    /* renamed from: i */
    public final TextView f2119i;

    /* renamed from: j */
    public final Context f2120j;

    public C0563y(TextView textView) {
        this.f2119i = textView;
        this.f2120j = textView.getContext();
    }

    /* renamed from: b */
    public static int[] m543b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: d */
    public static Method m541d(String str) {
        try {
            ConcurrentHashMap<String, Method> concurrentHashMap = f2110l;
            Method method = concurrentHashMap.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                concurrentHashMap.put(str, method);
            }
            return method;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: e */
    public static Object m540e(TextView textView, Object obj, String str) {
        try {
            return m541d(str).invoke(textView, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
            return obj;
        }
    }

    /* renamed from: a */
    public final void m544a() {
        boolean z;
        int measuredWidth;
        if (m536i() && this.f2111a != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return;
        }
        if (this.f2112b) {
            if (this.f2119i.getMeasuredHeight() > 0 && this.f2119i.getMeasuredWidth() > 0) {
                if (((Boolean) m540e(this.f2119i, Boolean.FALSE, "getHorizontallyScrolling")).booleanValue()) {
                    measuredWidth = 1048576;
                } else {
                    measuredWidth = (this.f2119i.getMeasuredWidth() - this.f2119i.getTotalPaddingLeft()) - this.f2119i.getTotalPaddingRight();
                }
                int height = (this.f2119i.getHeight() - this.f2119i.getCompoundPaddingBottom()) - this.f2119i.getCompoundPaddingTop();
                if (measuredWidth > 0 && height > 0) {
                    RectF rectF = f2109k;
                    synchronized (rectF) {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float m542c = m542c(rectF);
                        if (m542c != this.f2119i.getTextSize()) {
                            m539f(0, m542c);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.f2112b = true;
    }

    /* renamed from: c */
    public final int m542c(RectF rectF) {
        int i;
        int i2;
        StaticLayout staticLayout;
        boolean z;
        StaticLayout.Builder obtain;
        StaticLayout.Builder alignment;
        StaticLayout.Builder lineSpacing;
        StaticLayout.Builder includePad;
        int breakStrategy;
        StaticLayout.Builder breakStrategy2;
        int hyphenationFrequency;
        StaticLayout.Builder hyphenationFrequency2;
        int i3;
        StaticLayout.Builder maxLines;
        StaticLayout.Builder textDirection;
        CharSequence transformation;
        int length = this.f2116f.length;
        if (length != 0) {
            int i4 = length - 1;
            int i5 = 1;
            int i6 = 0;
            while (i5 <= i4) {
                int i7 = (i5 + i4) / 2;
                int i8 = this.f2116f[i7];
                TextView textView = this.f2119i;
                CharSequence text = textView.getText();
                TransformationMethod transformationMethod = textView.getTransformationMethod();
                if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, textView)) != null) {
                    text = transformation;
                }
                int i9 = Build.VERSION.SDK_INT;
                int maxLines2 = textView.getMaxLines();
                TextPaint textPaint = this.f2118h;
                if (textPaint == null) {
                    this.f2118h = new TextPaint();
                } else {
                    textPaint.reset();
                }
                this.f2118h.set(textView.getPaint());
                this.f2118h.setTextSize(i8);
                Layout.Alignment alignment2 = (Layout.Alignment) m540e(textView, Layout.Alignment.ALIGN_NORMAL, "getLayoutAlignment");
                if (i9 >= 23) {
                    int round = Math.round(rectF.right);
                    TextDirectionHeuristic textDirectionHeuristic = (TextDirectionHeuristic) m540e(textView, TextDirectionHeuristics.FIRSTSTRONG_LTR, "getTextDirectionHeuristic");
                    obtain = StaticLayout.Builder.obtain(text, 0, text.length(), this.f2118h, round);
                    alignment = obtain.setAlignment(alignment2);
                    lineSpacing = alignment.setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier());
                    includePad = lineSpacing.setIncludePad(textView.getIncludeFontPadding());
                    breakStrategy = textView.getBreakStrategy();
                    breakStrategy2 = includePad.setBreakStrategy(breakStrategy);
                    hyphenationFrequency = textView.getHyphenationFrequency();
                    hyphenationFrequency2 = breakStrategy2.setHyphenationFrequency(hyphenationFrequency);
                    if (maxLines2 == -1) {
                        i3 = Integer.MAX_VALUE;
                    } else {
                        i3 = maxLines2;
                    }
                    maxLines = hyphenationFrequency2.setMaxLines(i3);
                    textDirection = maxLines.setTextDirection(textDirectionHeuristic);
                    staticLayout = textDirection.build();
                    i2 = maxLines2;
                    i = -1;
                } else {
                    i = -1;
                    i2 = maxLines2;
                    staticLayout = new StaticLayout(text, this.f2118h, Math.round(rectF.right), alignment2, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
                }
                if ((i2 != i && (staticLayout.getLineCount() > i2 || staticLayout.getLineEnd(staticLayout.getLineCount() - 1) != text.length())) || staticLayout.getHeight() > rectF.bottom) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    int i10 = i7 + 1;
                    i6 = i5;
                    i5 = i10;
                } else {
                    i6 = i7 - 1;
                    i4 = i6;
                }
            }
            return this.f2116f[i6];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: f */
    public final void m539f(int i, float f) {
        Resources resources;
        Context context = this.f2120j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i, f, resources.getDisplayMetrics());
        TextView textView = this.f2119i;
        if (applyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(applyDimension);
            boolean isInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.f2112b = false;
                try {
                    Method m541d = m541d("nullLayouts");
                    if (m541d != null) {
                        m541d.invoke(textView, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    textView.requestLayout();
                } else {
                    textView.forceLayout();
                }
                textView.invalidate();
            }
        }
    }

    /* renamed from: g */
    public final boolean m538g() {
        if (m536i() && this.f2111a == 1) {
            if (!this.f2117g || this.f2116f.length == 0) {
                float round = Math.round(this.f2114d);
                int i = 1;
                while (Math.round(this.f2113c + round) <= Math.round(this.f2115e)) {
                    i++;
                    round += this.f2113c;
                }
                int[] iArr = new int[i];
                float f = this.f2114d;
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = Math.round(f);
                    f += this.f2113c;
                }
                this.f2116f = m543b(iArr);
            }
            this.f2112b = true;
        } else {
            this.f2112b = false;
        }
        return this.f2112b;
    }

    /* renamed from: h */
    public final boolean m537h() {
        int[] iArr = this.f2116f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f2117g = z;
        if (z) {
            this.f2111a = 1;
            this.f2114d = iArr[0];
            this.f2115e = iArr[length - 1];
            this.f2113c = -1.0f;
        }
        return z;
    }

    /* renamed from: i */
    public final boolean m536i() {
        return !(this.f2119i instanceof C0524j);
    }

    /* renamed from: j */
    public final void m535j(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f2111a = 1;
            this.f2114d = f;
            this.f2115e = f2;
            this.f2113c = f3;
            this.f2117g = false;
        }
    }
}
