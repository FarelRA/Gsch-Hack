package p061s;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
/* renamed from: s.f */
/* loaded from: classes.dex */
public final class C0868f extends Drawable.ConstantState {

    /* renamed from: a */
    public int f2782a;

    /* renamed from: b */
    public Drawable.ConstantState f2783b;

    /* renamed from: c */
    public ColorStateList f2784c;

    /* renamed from: d */
    public PorterDuff.Mode f2785d;

    public C0868f(C0868f c0868f) {
        this.f2784c = null;
        this.f2785d = C0866d.f2774h;
        if (c0868f != null) {
            this.f2782a = c0868f.f2782a;
            this.f2783b = c0868f.f2783b;
            this.f2784c = c0868f.f2784c;
            this.f2785d = c0868f.f2785d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f2782a;
        Drawable.ConstantState constantState = this.f2783b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new C0867e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new C0867e(this, resources);
    }
}
