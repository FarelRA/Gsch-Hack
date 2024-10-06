package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import net.geschool.app.secure.R;
import p008c.C0315a;
/* renamed from: g.k */
/* loaded from: classes.dex */
public class C0526k extends ImageButton {

    /* renamed from: b */
    public final C0499d f1984b;

    /* renamed from: c */
    public final C0528l f1985c;

    public C0526k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0526k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0536o0.m582a(context);
        C0499d c0499d = new C0499d(this);
        this.f1984b = c0499d;
        c0499d.m629d(attributeSet, i);
        C0528l c0528l = new C0528l(this);
        this.f1985c = c0528l;
        c0528l.m595b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            c0499d.m632a();
        }
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            c0528l.m596a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        C0538p0 c0538p0;
        C0528l c0528l = this.f1985c;
        if (c0528l == null || (c0538p0 = c0528l.f1995b) == null) {
            return null;
        }
        return c0538p0.f2032a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C0538p0 c0538p0;
        C0528l c0528l = this.f1985c;
        if (c0528l == null || (c0538p0 = c0528l.f1995b) == null) {
            return null;
        }
        return c0538p0.f2033b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        if ((!(this.f1985c.f1994a.getBackground() instanceof RippleDrawable)) && super.hasOverlappingRendering()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            c0528l.m596a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            c0528l.m596a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        Drawable drawable;
        C0528l c0528l = this.f1985c;
        ImageView imageView = c0528l.f1994a;
        if (i != 0) {
            drawable = C0315a.m994c(imageView.getContext(), i);
            if (drawable != null) {
                C0494b0.m636b(drawable);
            }
        } else {
            drawable = null;
        }
        imageView.setImageDrawable(drawable);
        c0528l.m596a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            c0528l.m596a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f1984b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            if (c0528l.f1995b == null) {
                c0528l.f1995b = new C0538p0();
            }
            C0538p0 c0538p0 = c0528l.f1995b;
            c0538p0.f2032a = colorStateList;
            c0538p0.f2035d = true;
            c0528l.m596a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0528l c0528l = this.f1985c;
        if (c0528l != null) {
            if (c0528l.f1995b == null) {
                c0528l.f1995b = new C0538p0();
            }
            C0538p0 c0538p0 = c0528l.f1995b;
            c0538p0.f2033b = mode;
            c0538p0.f2034c = true;
            c0528l.m596a();
        }
    }
}
