package p024g;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: g.b */
/* loaded from: classes.dex */
public final class C0493b extends Drawable {

    /* renamed from: a */
    public final ActionBarContainer f1880a;

    public C0493b(ActionBarContainer actionBarContainer) {
        this.f1880a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f1880a;
        if (actionBarContainer.f323i) {
            Drawable drawable = actionBarContainer.f322h;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f320f;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f321g;
        if (drawable3 == null || !actionBarContainer.f324j) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable;
        ActionBarContainer actionBarContainer = this.f1880a;
        if (actionBarContainer.f323i) {
            drawable = actionBarContainer.f322h;
            if (drawable == null) {
                return;
            }
        } else {
            drawable = actionBarContainer.f320f;
            if (drawable == null) {
                return;
            }
        }
        drawable.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
