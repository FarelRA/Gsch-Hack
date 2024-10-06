package p024g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p046m1.C0736h;
import p061s.C0863a;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: g.t */
/* loaded from: classes.dex */
public final class C0545t extends C0537p {

    /* renamed from: d */
    public final SeekBar f2043d;

    /* renamed from: e */
    public Drawable f2044e;

    /* renamed from: f */
    public ColorStateList f2045f;

    /* renamed from: g */
    public PorterDuff.Mode f2046g;

    /* renamed from: h */
    public boolean f2047h;

    /* renamed from: i */
    public boolean f2048i;

    public C0545t(SeekBar seekBar) {
        super(seekBar);
        this.f2045f = null;
        this.f2046g = null;
        this.f2047h = false;
        this.f2048i = false;
        this.f2043d = seekBar;
    }

    @Override // p024g.C0537p
    /* renamed from: a */
    public final void mo567a(AttributeSet attributeSet, int i) {
        super.mo567a(attributeSet, R.attr.seekBarStyle);
        SeekBar seekBar = this.f2043d;
        C0542r0 m569l = C0542r0.m569l(seekBar.getContext(), attributeSet, C0736h.f2573m, R.attr.seekBarStyle);
        Drawable m575f = m569l.m575f(0);
        if (m575f != null) {
            seekBar.setThumb(m575f);
        }
        Drawable m576e = m569l.m576e(1);
        Drawable drawable = this.f2044e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f2044e = m576e;
        if (m576e != null) {
            m576e.setCallback(seekBar);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            C0863a.m142b(m576e, seekBar.getLayoutDirection());
            if (m576e.isStateful()) {
                m576e.setState(seekBar.getDrawableState());
            }
            m566c();
        }
        seekBar.invalidate();
        if (m569l.m570k(3)) {
            this.f2046g = C0494b0.m635c(m569l.m573h(3, -1), this.f2046g);
            this.f2048i = true;
        }
        if (m569l.m570k(2)) {
            this.f2045f = m569l.m579b(2);
            this.f2047h = true;
        }
        m569l.m568m();
        m566c();
    }

    /* renamed from: c */
    public final void m566c() {
        Drawable drawable = this.f2044e;
        if (drawable != null) {
            if (this.f2047h || this.f2048i) {
                Drawable m138f = C0863a.m138f(drawable.mutate());
                this.f2044e = m138f;
                if (this.f2047h) {
                    m138f.setTintList(this.f2045f);
                }
                if (this.f2048i) {
                    this.f2044e.setTintMode(this.f2046g);
                }
                if (this.f2044e.isStateful()) {
                    this.f2044e.setState(this.f2043d.getDrawableState());
                }
            }
        }
    }

    /* renamed from: d */
    public final void m565d(Canvas canvas) {
        if (this.f2044e != null) {
            SeekBar seekBar = this.f2043d;
            int max = seekBar.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f2044e.getIntrinsicWidth();
                int intrinsicHeight = this.f2044e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f2044e.setBounds(-i, -i2, i, i2);
                float width = ((seekBar.getWidth() - seekBar.getPaddingLeft()) - seekBar.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(seekBar.getPaddingLeft(), seekBar.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f2044e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
