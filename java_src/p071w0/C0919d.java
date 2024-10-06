package p071w0;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: w0.d */
/* loaded from: classes.dex */
public final class C0919d extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final C0919d f2879a = new C0919d();

    public C0919d() {
        super(Integer.class, "drawableAlphaCompat");
        new WeakHashMap();
    }

    @Override // android.util.Property
    public final Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public final void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
