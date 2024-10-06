package p061s;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* renamed from: s.d */
/* loaded from: classes.dex */
public class C0866d extends Drawable implements Drawable.Callback, InterfaceC0865c, InterfaceC0864b {

    /* renamed from: h */
    public static final PorterDuff.Mode f2774h = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public int f2775b;

    /* renamed from: c */
    public PorterDuff.Mode f2776c;

    /* renamed from: d */
    public boolean f2777d;

    /* renamed from: e */
    public C0868f f2778e;

    /* renamed from: f */
    public boolean f2779f;

    /* renamed from: g */
    public Drawable f2780g;

    public C0866d(Drawable drawable) {
        this.f2778e = new C0868f(this.f2778e);
        mo136b(drawable);
    }

    @Override // p061s.InterfaceC0865c
    /* renamed from: a */
    public final Drawable mo137a() {
        return this.f2780g;
    }

    @Override // p061s.InterfaceC0865c
    /* renamed from: b */
    public final void mo136b(Drawable drawable) {
        Drawable drawable2 = this.f2780g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2780g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0868f c0868f = this.f2778e;
            if (c0868f != null) {
                c0868f.f2783b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: c */
    public boolean mo134c() {
        throw null;
    }

    /* renamed from: d */
    public final boolean m135d(int[] iArr) {
        if (mo134c()) {
            C0868f c0868f = this.f2778e;
            ColorStateList colorStateList = c0868f.f2784c;
            PorterDuff.Mode mode = c0868f.f2785d;
            if (colorStateList == null || mode == null) {
                this.f2777d = false;
                clearColorFilter();
            } else {
                int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
                if (!this.f2777d || colorForState != this.f2775b || mode != this.f2776c) {
                    setColorFilter(colorForState, mode);
                    this.f2775b = colorForState;
                    this.f2776c = mode;
                    this.f2777d = true;
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f2780g.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0868f c0868f = this.f2778e;
        return changingConfigurations | (c0868f != null ? c0868f.getChangingConfigurations() : 0) | this.f2780g.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        C0868f c0868f = this.f2778e;
        if (c0868f != null) {
            if (c0868f.f2783b != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                c0868f.f2782a = getChangingConfigurations();
                return this.f2778e;
            }
            return null;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f2780g.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f2780g.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f2780g.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f2780g.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f2780g.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f2780g.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f2780g.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.f2780g.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.f2780g.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f2780g.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        C0868f c0868f;
        ColorStateList colorStateList = (!mo134c() || (c0868f = this.f2778e) == null) ? null : c0868f.f2784c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f2780g.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f2780g.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable.ConstantState constantState;
        if (!this.f2779f && super.mutate() == this) {
            this.f2778e = new C0868f(this.f2778e);
            Drawable drawable = this.f2780g;
            if (drawable != null) {
                drawable.mutate();
            }
            C0868f c0868f = this.f2778e;
            if (c0868f != null) {
                Drawable drawable2 = this.f2780g;
                if (drawable2 != null) {
                    constantState = drawable2.getConstantState();
                } else {
                    constantState = null;
                }
                c0868f.f2783b = constantState;
            }
            this.f2779f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2780g;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        return this.f2780g.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f2780g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        this.f2780g.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i) {
        this.f2780g.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f2780g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.f2780g.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.f2780g.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m135d(iArr) || this.f2780g.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f2778e.f2784c = colorStateList;
        m135d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f2778e.f2785d = mode;
        m135d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f2780g.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public C0866d(C0868f c0868f, Resources resources) {
        Drawable.ConstantState constantState;
        this.f2778e = c0868f;
        if (c0868f == null || (constantState = c0868f.f2783b) == null) {
            return;
        }
        mo136b(constantState.newDrawable(resources));
    }
}
