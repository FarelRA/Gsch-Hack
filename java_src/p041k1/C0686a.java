package p041k1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
/* renamed from: k1.a */
/* loaded from: classes.dex */
public final class C0686a extends GradientDrawable {

    /* renamed from: a */
    public final Paint f2400a;

    /* renamed from: b */
    public final RectF f2401b;

    /* renamed from: c */
    public int f2402c;

    public C0686a() {
        Paint paint = new Paint(1);
        this.f2400a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f2401b = new RectF();
    }

    /* renamed from: a */
    public final void m379a(float f, float f2, float f3, float f4) {
        RectF rectF = this.f2401b;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ((View) callback).setLayerType(2, null);
        } else {
            this.f2402c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }
        super.draw(canvas);
        canvas.drawRect(this.f2401b, this.f2400a);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.f2402c);
        }
    }
}
