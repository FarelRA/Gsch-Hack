package p024g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import net.geschool.app.secure.R;
/* renamed from: g.r */
/* loaded from: classes.dex */
public final class C0541r extends RatingBar {

    /* renamed from: b */
    public final C0537p f2037b;

    public C0541r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        C0537p c0537p = new C0537p(this);
        this.f2037b = c0537p;
        c0537p.mo567a(attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmap = this.f2037b.f2031b;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
