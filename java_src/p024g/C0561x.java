package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p000a0.C0010i;
import p000a0.InterfaceC0003b;
import p046m1.C0736h;
import p070w.C0909a;
/* renamed from: g.x */
/* loaded from: classes.dex */
public class C0561x extends TextView implements InterfaceC0003b {

    /* renamed from: b */
    public final C0499d f2105b;

    /* renamed from: c */
    public final C0558w f2106c;

    /* renamed from: d */
    public Future<C0909a> f2107d;

    public C0561x() {
        throw null;
    }

    public C0561x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0561x(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0536o0.m582a(context);
        C0499d c0499d = new C0499d(this);
        this.f2105b = c0499d;
        c0499d.m629d(attributeSet, i);
        C0558w c0558w = new C0558w(this);
        this.f2106c = c0558w;
        c0558w.m550d(attributeSet, i);
        c0558w.m552b();
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            c0499d.m632a();
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            c0558w.m552b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC0003b.f27a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            return Math.round(c0558w.f2092h.f2115e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (InterfaceC0003b.f27a) {
            return super.getAutoSizeMinTextSize();
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            return Math.round(c0558w.f2092h.f2114d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (InterfaceC0003b.f27a) {
            return super.getAutoSizeStepGranularity();
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            return Math.round(c0558w.f2092h.f2113c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (InterfaceC0003b.f27a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            return c0558w.f2092h.f2116f;
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (InterfaceC0003b.f27a) {
            if (super.getAutoSizeTextType() != 1) {
                return 0;
            }
            return 1;
        }
        C0558w c0558w = this.f2106c;
        if (c0558w == null) {
            return 0;
        }
        return c0558w.f2092h.f2111a;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future<C0909a> future = this.f2107d;
        if (future != null) {
            try {
                this.f2107d = null;
                C0010i.m1377d(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    public C0909a.C0910a getTextMetricsParamsCompat() {
        return C0010i.m1380a(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0736h.m310C(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0558w c0558w = this.f2106c;
        if (c0558w != null && !InterfaceC0003b.f27a) {
            c0558w.f2092h.m544a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future<C0909a> future = this.f2107d;
        if (future != null) {
            try {
                this.f2107d = null;
                C0010i.m1377d(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        boolean z;
        super.onTextChanged(charSequence, i, i2, i3);
        C0558w c0558w = this.f2106c;
        if (c0558w != null && !InterfaceC0003b.f27a) {
            C0563y c0563y = c0558w.f2092h;
            if (c0563y.m536i() && c0563y.f2111a != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                c0563y.m544a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (InterfaceC0003b.f27a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            c0558w.m548f(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (InterfaceC0003b.f27a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            c0558w.m547g(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (InterfaceC0003b.f27a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            c0558w.m546h(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0010i.m1375f(callback, this));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0010i.m1379b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0010i.m1378c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        if (i >= 0) {
            int fontMetricsInt = getPaint().getFontMetricsInt(null);
            if (i != fontMetricsInt) {
                setLineSpacing(i - fontMetricsInt, 1.0f);
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setPrecomputedText(C0909a c0909a) {
        C0010i.m1377d(this, c0909a);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f2105b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0558w c0558w = this.f2106c;
        if (c0558w != null) {
            c0558w.m549e(context, i);
        }
    }

    public void setTextFuture(Future<C0909a> future) {
        this.f2107d = future;
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setTextMetricsParamsCompat(C0909a.C0910a c0910a) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = c0910a.f2864b;
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i = 7;
            }
            setTextDirection(i);
            TextPaint textPaint = c0910a.f2863a;
            if (i2 >= 23) {
                float textScaleX = textPaint.getTextScaleX();
                getPaint().set(textPaint);
                if (textScaleX == getTextScaleX()) {
                    setTextScaleX((textScaleX / 2.0f) + 1.0f);
                }
                setTextScaleX(textScaleX);
                return;
            }
            getPaint().set(textPaint);
            setBreakStrategy(c0910a.f2865c);
            setHyphenationFrequency(c0910a.f2866d);
            return;
        }
        i = 1;
        setTextDirection(i);
        TextPaint textPaint2 = c0910a.f2863a;
        if (i2 >= 23) {
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z;
        boolean z2 = InterfaceC0003b.f27a;
        if (z2) {
            super.setTextSize(i, f);
            return;
        }
        C0558w c0558w = this.f2106c;
        if (c0558w != null && !z2) {
            C0563y c0563y = c0558w.f2092h;
            if (c0563y.m536i() && c0563y.f2111a != 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                c0563y.m539f(i, f);
            }
        }
    }
}
