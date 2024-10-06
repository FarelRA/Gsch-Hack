package p001a1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p008c.C0315a;
import p022f1.C0484g;
import p024g.C0501e;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: a1.a */
/* loaded from: classes.dex */
public final class C0012a extends C0501e {

    /* renamed from: d */
    public final C0014c f41d;

    /* renamed from: e */
    public int f42e;

    /* renamed from: f */
    public PorterDuff.Mode f43f;

    /* renamed from: g */
    public ColorStateList f44g;

    /* renamed from: h */
    public Drawable f45h;

    /* renamed from: i */
    public int f46i;

    /* renamed from: j */
    public int f47j;

    /* renamed from: k */
    public int f48k;

    public C0012a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialButtonStyle);
        Drawable drawable;
        int resourceId;
        int[] iArr = C0736h.f2559c0;
        C0736h.m290j(context, attributeSet, R.attr.materialButtonStyle, 2131624400);
        C0736h.m287m(context, attributeSet, iArr, R.attr.materialButtonStyle, 2131624400, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.materialButtonStyle, 2131624400);
        this.f42e = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        this.f43f = C0484g.m668a(obtainStyledAttributes.getInt(12, -1), PorterDuff.Mode.SRC_IN);
        this.f44g = C0736h.m278v(getContext(), obtainStyledAttributes, 11);
        this.f45h = (!obtainStyledAttributes.hasValue(7) || (resourceId = obtainStyledAttributes.getResourceId(7, 0)) == 0 || (drawable = C0315a.m994c(getContext(), resourceId)) == null) ? obtainStyledAttributes.getDrawable(7) : drawable;
        this.f48k = obtainStyledAttributes.getInteger(8, 1);
        this.f46i = obtainStyledAttributes.getDimensionPixelSize(10, 0);
        C0014c c0014c = new C0014c(this);
        this.f41d = c0014c;
        c0014c.f50b = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        c0014c.f51c = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        c0014c.f52d = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        c0014c.f53e = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
        c0014c.f54f = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        c0014c.f55g = obtainStyledAttributes.getDimensionPixelSize(15, 0);
        c0014c.f56h = C0484g.m668a(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN);
        C0012a c0012a = c0014c.f49a;
        c0014c.f57i = C0736h.m278v(c0012a.getContext(), obtainStyledAttributes, 4);
        c0014c.f58j = C0736h.m278v(c0012a.getContext(), obtainStyledAttributes, 14);
        c0014c.f59k = C0736h.m278v(c0012a.getContext(), obtainStyledAttributes, 13);
        Paint paint = c0014c.f60l;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(c0014c.f55g);
        ColorStateList colorStateList = c0014c.f58j;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(c0012a.getDrawableState(), 0) : 0);
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int paddingStart = c0012a.getPaddingStart();
        int paddingTop = c0012a.getPaddingTop();
        int paddingEnd = c0012a.getPaddingEnd();
        int paddingBottom = c0012a.getPaddingBottom();
        c0012a.setInternalBackground(c0014c.m1372a());
        c0012a.setPaddingRelative(paddingStart + c0014c.f50b, paddingTop + c0014c.f52d, paddingEnd + c0014c.f51c, paddingBottom + c0014c.f53e);
        obtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.f42e);
        m1373b();
    }

    /* renamed from: a */
    public final boolean m1374a() {
        C0014c c0014c = this.f41d;
        if (c0014c != null && !c0014c.f64p) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m1373b() {
        Drawable drawable = this.f45h;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f45h = mutate;
            mutate.setTintList(this.f44g);
            PorterDuff.Mode mode = this.f43f;
            if (mode != null) {
                this.f45h.setTintMode(mode);
            }
            int i = this.f46i;
            if (i == 0) {
                i = this.f45h.getIntrinsicWidth();
            }
            int i2 = this.f46i;
            if (i2 == 0) {
                i2 = this.f45h.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f45h;
            int i3 = this.f47j;
            drawable2.setBounds(i3, 0, i + i3, i2);
        }
        setCompoundDrawablesRelative(this.f45h, null, null, null);
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (m1374a()) {
            return this.f41d.f54f;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f45h;
    }

    public int getIconGravity() {
        return this.f48k;
    }

    public int getIconPadding() {
        return this.f42e;
    }

    public int getIconSize() {
        return this.f46i;
    }

    public ColorStateList getIconTint() {
        return this.f44g;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f43f;
    }

    public ColorStateList getRippleColor() {
        if (m1374a()) {
            return this.f41d.f59k;
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (m1374a()) {
            return this.f41d.f58j;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (m1374a()) {
            return this.f41d.f55g;
        }
        return 0;
    }

    @Override // p024g.C0501e
    public ColorStateList getSupportBackgroundTintList() {
        if (m1374a()) {
            return this.f41d.f57i;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // p024g.C0501e
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (m1374a()) {
            return this.f41d.f56h;
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // p024g.C0501e, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0014c c0014c;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (c0014c = this.f41d) != null) {
            int i5 = i4 - i2;
            int i6 = i3 - i;
            GradientDrawable gradientDrawable = c0014c.f63o;
            if (gradientDrawable != null) {
                gradientDrawable.setBounds(c0014c.f50b, c0014c.f52d, i6 - c0014c.f51c, i5 - c0014c.f53e);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f45h != null && this.f48k == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i3 = this.f46i;
            if (i3 == 0) {
                i3 = this.f45h.getIntrinsicWidth();
            }
            int measuredWidth = getMeasuredWidth() - measureText;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            int paddingEnd = ((((measuredWidth - getPaddingEnd()) - i3) - this.f42e) - getPaddingStart()) / 2;
            boolean z = true;
            if (getLayoutDirection() != 1) {
                z = false;
            }
            if (z) {
                paddingEnd = -paddingEnd;
            }
            if (this.f47j != paddingEnd) {
                this.f47j = paddingEnd;
                m1373b();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (m1374a()) {
            GradientDrawable gradientDrawable = this.f41d.f61m;
            if (gradientDrawable != null) {
                gradientDrawable.setColor(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // p024g.C0501e, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (m1374a()) {
            if (drawable != getBackground()) {
                Log.i("MaterialButton", "Setting a custom background is not supported.");
                C0014c c0014c = this.f41d;
                c0014c.f64p = true;
                ColorStateList colorStateList = c0014c.f57i;
                C0012a c0012a = c0014c.f49a;
                c0012a.setSupportBackgroundTintList(colorStateList);
                c0012a.setSupportBackgroundTintMode(c0014c.f56h);
            } else {
                getBackground().setState(drawable.getState());
                return;
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // p024g.C0501e, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C0315a.m994c(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(int i) {
        GradientDrawable gradientDrawable;
        if (m1374a()) {
            C0014c c0014c = this.f41d;
            if (c0014c.f54f != i) {
                c0014c.f54f = i;
                if (c0014c.f61m != null && c0014c.f62n != null && c0014c.f63o != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        C0012a c0012a = c0014c.f49a;
                        GradientDrawable gradientDrawable2 = null;
                        if (c0012a.getBackground() != null) {
                            gradientDrawable = (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) c0012a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
                        } else {
                            gradientDrawable = null;
                        }
                        float f = i + 1.0E-5f;
                        gradientDrawable.setCornerRadius(f);
                        if (c0012a.getBackground() != null) {
                            gradientDrawable2 = (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) c0012a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
                        }
                        gradientDrawable2.setCornerRadius(f);
                    }
                    float f2 = i + 1.0E-5f;
                    c0014c.f61m.setCornerRadius(f2);
                    c0014c.f62n.setCornerRadius(f2);
                    c0014c.f63o.setCornerRadius(f2);
                }
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m1374a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f45h != drawable) {
            this.f45h = drawable;
            m1373b();
        }
    }

    public void setIconGravity(int i) {
        this.f48k = i;
    }

    public void setIconPadding(int i) {
        if (this.f42e != i) {
            this.f42e = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C0315a.m994c(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f46i != i) {
            this.f46i = i;
            m1373b();
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f44g != colorStateList) {
            this.f44g = colorStateList;
            m1373b();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f43f != mode) {
            this.f43f = mode;
            m1373b();
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C0315a.m995b(getContext(), i));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m1374a()) {
            C0014c c0014c = this.f41d;
            if (c0014c.f59k != colorStateList) {
                c0014c.f59k = colorStateList;
                C0012a c0012a = c0014c.f49a;
                if (c0012a.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) c0012a.getBackground()).setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (m1374a()) {
            setRippleColor(C0315a.m995b(getContext(), i));
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m1374a()) {
            C0014c c0014c = this.f41d;
            if (c0014c.f58j != colorStateList) {
                c0014c.f58j = colorStateList;
                Paint paint = c0014c.f60l;
                C0012a c0012a = c0014c.f49a;
                int i = 0;
                if (colorStateList != null) {
                    i = colorStateList.getColorForState(c0012a.getDrawableState(), 0);
                }
                paint.setColor(i);
                if (c0014c.f62n != null) {
                    c0012a.setInternalBackground(c0014c.m1372a());
                }
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (m1374a()) {
            setStrokeColor(C0315a.m995b(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m1374a()) {
            C0014c c0014c = this.f41d;
            if (c0014c.f55g != i) {
                c0014c.f55g = i;
                c0014c.f60l.setStrokeWidth(i);
                if (c0014c.f62n != null) {
                    c0014c.f49a.setInternalBackground(c0014c.m1372a());
                }
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m1374a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // p024g.C0501e
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        boolean m1374a = m1374a();
        C0014c c0014c = this.f41d;
        if (m1374a) {
            if (c0014c.f57i != colorStateList) {
                c0014c.f57i = colorStateList;
                c0014c.m1371b();
            }
        } else if (c0014c != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // p024g.C0501e
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        boolean m1374a = m1374a();
        C0014c c0014c = this.f41d;
        if (m1374a) {
            if (c0014c.f56h != mode) {
                c0014c.f56h = mode;
                c0014c.m1371b();
            }
        } else if (c0014c != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }
}
