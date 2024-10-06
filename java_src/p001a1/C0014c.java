package p001a1;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.StateSet;
import p026g1.C0568a;
/* renamed from: a1.c */
/* loaded from: classes.dex */
public final class C0014c {

    /* renamed from: a */
    public final C0012a f49a;

    /* renamed from: b */
    public int f50b;

    /* renamed from: c */
    public int f51c;

    /* renamed from: d */
    public int f52d;

    /* renamed from: e */
    public int f53e;

    /* renamed from: f */
    public int f54f;

    /* renamed from: g */
    public int f55g;

    /* renamed from: h */
    public PorterDuff.Mode f56h;

    /* renamed from: i */
    public ColorStateList f57i;

    /* renamed from: j */
    public ColorStateList f58j;

    /* renamed from: k */
    public ColorStateList f59k;

    /* renamed from: l */
    public final Paint f60l = new Paint(1);

    /* renamed from: m */
    public GradientDrawable f61m;

    /* renamed from: n */
    public GradientDrawable f62n;

    /* renamed from: o */
    public GradientDrawable f63o;

    /* renamed from: p */
    public boolean f64p;

    public C0014c(C0012a c0012a) {
        new Rect();
        new RectF();
        this.f64p = false;
        this.f49a = c0012a;
    }

    @TargetApi(21)
    /* renamed from: a */
    public final C0013b m1372a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f61m = gradientDrawable;
        gradientDrawable.setCornerRadius(this.f54f + 1.0E-5f);
        this.f61m.setColor(-1);
        m1371b();
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.f62n = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.f54f + 1.0E-5f);
        this.f62n.setColor(0);
        this.f62n.setStroke(this.f55g, this.f58j);
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{this.f61m, this.f62n}), this.f50b, this.f52d, this.f51c, this.f53e);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.f63o = gradientDrawable3;
        gradientDrawable3.setCornerRadius(this.f54f + 1.0E-5f);
        this.f63o.setColor(-1);
        ColorStateList colorStateList = this.f59k;
        return new C0013b(new ColorStateList(new int[][]{C0568a.f2124c, StateSet.NOTHING}, new int[]{C0568a.m523a(colorStateList, C0568a.f2123b), C0568a.m523a(colorStateList, C0568a.f2122a)}), insetDrawable, this.f63o);
    }

    /* renamed from: b */
    public final void m1371b() {
        GradientDrawable gradientDrawable = this.f61m;
        if (gradientDrawable != null) {
            gradientDrawable.setTintList(this.f57i);
            PorterDuff.Mode mode = this.f56h;
            if (mode != null) {
                this.f61m.setTintMode(mode);
            }
        }
    }
}
