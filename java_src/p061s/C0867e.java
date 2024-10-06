package p061s;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: s.e */
/* loaded from: classes.dex */
public final class C0867e extends C0866d {

    /* renamed from: i */
    public static Method f2781i;

    public C0867e(Drawable drawable) {
        super(drawable);
        if (f2781i == null) {
            try {
                f2781i = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // p061s.C0866d
    /* renamed from: c */
    public final boolean mo134c() {
        if (Build.VERSION.SDK_INT == 21) {
            Drawable drawable = this.f2780g;
            return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f2780g.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f2780g.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = this.f2780g;
        if (drawable != null && (method = f2781i) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        this.f2780g.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f2780g.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p061s.C0866d, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // p061s.C0866d, android.graphics.drawable.Drawable
    public final void setTint(int i) {
        if (mo134c()) {
            super.setTint(i);
        } else {
            this.f2780g.setTint(i);
        }
    }

    @Override // p061s.C0866d, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (mo134c()) {
            super.setTintList(colorStateList);
        } else {
            this.f2780g.setTintList(colorStateList);
        }
    }

    @Override // p061s.C0866d, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (mo134c()) {
            super.setTintMode(mode);
        } else {
            this.f2780g.setTintMode(mode);
        }
    }

    public C0867e(C0868f c0868f, Resources resources) {
        super(c0868f, resources);
        if (f2781i == null) {
            try {
                f2781i = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }
}
