package p001a1;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
@TargetApi(21)
/* renamed from: a1.b */
/* loaded from: classes.dex */
public final class C0013b extends RippleDrawable {
    public C0013b(ColorStateList colorStateList, InsetDrawable insetDrawable, GradientDrawable gradientDrawable) {
        super(colorStateList, insetDrawable, gradientDrawable);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (getDrawable(0) != null) {
            ((GradientDrawable) ((LayerDrawable) ((InsetDrawable) getDrawable(0)).getDrawable()).getDrawable(0)).setColorFilter(colorFilter);
        }
    }
}
