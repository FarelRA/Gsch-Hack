package p024g;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import p061s.InterfaceC0865c;
/* renamed from: g.p */
/* loaded from: classes.dex */
public class C0537p {

    /* renamed from: c */
    public static final int[] f2029c = {16843067, 16843068};

    /* renamed from: a */
    public final ProgressBar f2030a;

    /* renamed from: b */
    public Bitmap f2031b;

    public C0537p(ProgressBar progressBar) {
        this.f2030a = progressBar;
    }

    /* renamed from: a */
    public void mo567a(AttributeSet attributeSet, int i) {
        ProgressBar progressBar = this.f2030a;
        C0542r0 m569l = C0542r0.m569l(progressBar.getContext(), attributeSet, f2029c, i);
        Drawable m575f = m569l.m575f(0);
        if (m575f != null) {
            if (m575f instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) m575f;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable m581b = m581b(animationDrawable.getFrame(i2), true);
                    m581b.setLevel(10000);
                    animationDrawable2.addFrame(m581b, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                m575f = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(m575f);
        }
        Drawable m575f2 = m569l.m575f(1);
        if (m575f2 != null) {
            progressBar.setProgressDrawable(m581b(m575f2, false));
        }
        m569l.m568m();
    }

    /* renamed from: b */
    public final Drawable m581b(Drawable drawable, boolean z) {
        boolean z2;
        if (drawable instanceof InterfaceC0865c) {
            InterfaceC0865c interfaceC0865c = (InterfaceC0865c) drawable;
            Drawable mo137a = interfaceC0865c.mo137a();
            if (mo137a != null) {
                interfaceC0865c.mo136b(m581b(mo137a, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                Drawable drawable2 = layerDrawable.getDrawable(i);
                if (id != 16908301 && id != 16908303) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                drawableArr[i] = m581b(drawable2, z2);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f2031b == null) {
                this.f2031b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            if (z) {
                return new ClipDrawable(shapeDrawable, 3, 1);
            }
            return shapeDrawable;
        }
        return drawable;
    }
}
