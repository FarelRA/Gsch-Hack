package p024g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import net.geschool.app.secure.R;
/* renamed from: g.s */
/* loaded from: classes.dex */
public final class C0543s extends SeekBar {

    /* renamed from: b */
    public final C0545t f2041b;

    public C0543s(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        C0545t c0545t = new C0545t(this);
        this.f2041b = c0545t;
        c0545t.mo567a(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0545t c0545t = this.f2041b;
        Drawable drawable = c0545t.f2044e;
        if (drawable != null && drawable.isStateful()) {
            SeekBar seekBar = c0545t.f2043d;
            if (drawable.setState(seekBar.getDrawableState())) {
                seekBar.invalidateDrawable(drawable);
            }
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2041b.f2044e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f2041b.m565d(canvas);
    }
}
