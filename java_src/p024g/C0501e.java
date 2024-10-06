package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import p000a0.C0010i;
import p000a0.InterfaceC0003b;
/* renamed from: g.e */
/* loaded from: classes.dex */
public class C0501e extends Button implements InterfaceC0003b {

    /* renamed from: b */
    public final C0499d f1905b;

    /* renamed from: c */
    public final C0558w f1906c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0501e(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0536o0.m582a(context);
        C0499d c0499d = new C0499d(this);
        this.f1905b = c0499d;
        c0499d.m629d(attributeSet, i);
        C0558w c0558w = new C0558w(this);
        this.f1906c = c0558w;
        c0558w.m550d(attributeSet, i);
        c0558w.m552b();
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            c0499d.m632a();
        }
        C0558w c0558w = this.f1906c;
        if (c0558w != null) {
            c0558w.m552b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC0003b.f27a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
        if (c0558w == null) {
            return 0;
        }
        return c0558w.f2092h.f2111a;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0558w c0558w = this.f1906c;
        if (c0558w != null && !InterfaceC0003b.f27a) {
            c0558w.f2092h.m544a();
        }
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        boolean z;
        super.onTextChanged(charSequence, i, i2, i3);
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
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
        C0558w c0558w = this.f1906c;
        if (c0558w != null) {
            c0558w.m546h(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0010i.m1375f(callback, this));
    }

    public void setSupportAllCaps(boolean z) {
        C0558w c0558w = this.f1906c;
        if (c0558w != null) {
            c0558w.f2085a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f1905b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0558w c0558w = this.f1906c;
        if (c0558w != null) {
            c0558w.m549e(context, i);
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
        C0558w c0558w = this.f1906c;
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
