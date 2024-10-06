package p024g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import p008c.C0315a;
import p046m1.C0736h;
/* renamed from: g.l */
/* loaded from: classes.dex */
public final class C0528l {

    /* renamed from: a */
    public final ImageView f1994a;

    /* renamed from: b */
    public C0538p0 f1995b;

    /* renamed from: c */
    public C0538p0 f1996c;

    public C0528l(ImageView imageView) {
        this.f1994a = imageView;
    }

    /* renamed from: a */
    public final void m596a() {
        boolean z;
        ImageView imageView = this.f1994a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            C0494b0.m636b(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z2 = true;
            if (i <= 21 && i == 21) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (this.f1996c == null) {
                    this.f1996c = new C0538p0();
                }
                C0538p0 c0538p0 = this.f1996c;
                c0538p0.f2032a = null;
                c0538p0.f2035d = false;
                c0538p0.f2033b = null;
                c0538p0.f2034c = false;
                ColorStateList imageTintList = imageView.getImageTintList();
                if (imageTintList != null) {
                    c0538p0.f2035d = true;
                    c0538p0.f2032a = imageTintList;
                }
                PorterDuff.Mode imageTintMode = imageView.getImageTintMode();
                if (imageTintMode != null) {
                    c0538p0.f2034c = true;
                    c0538p0.f2033b = imageTintMode;
                }
                if (!c0538p0.f2035d && !c0538p0.f2034c) {
                    z2 = false;
                } else {
                    C0516i.m603n(drawable, c0538p0, imageView.getDrawableState());
                }
                if (z2) {
                    return;
                }
            }
            C0538p0 c0538p02 = this.f1995b;
            if (c0538p02 != null) {
                C0516i.m603n(drawable, c0538p02, imageView.getDrawableState());
            }
        }
    }

    /* renamed from: b */
    public final void m595b(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int m572i;
        ImageView imageView = this.f1994a;
        C0542r0 m569l = C0542r0.m569l(imageView.getContext(), attributeSet, C0736h.f2572l, i);
        try {
            Drawable drawable3 = imageView.getDrawable();
            if (drawable3 == null && (m572i = m569l.m572i(1, -1)) != -1 && (drawable3 = C0315a.m994c(imageView.getContext(), m572i)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                C0494b0.m636b(drawable3);
            }
            if (m569l.m570k(2)) {
                ColorStateList m579b = m569l.m579b(2);
                int i2 = Build.VERSION.SDK_INT;
                imageView.setImageTintList(m579b);
                if (i2 == 21 && (drawable2 = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (m569l.m570k(3)) {
                PorterDuff.Mode m635c = C0494b0.m635c(m569l.m573h(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                imageView.setImageTintMode(m635c);
                if (i3 == 21 && (drawable = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        } finally {
            m569l.m568m();
        }
    }
}
