package p058r;

import android.graphics.Color;
/* renamed from: r.a */
/* loaded from: classes.dex */
public final class C0847a {

    /* renamed from: a */
    public static final /* synthetic */ int f2746a = 0;

    static {
        new ThreadLocal();
    }

    /* renamed from: a */
    public static int m182a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i3, m181b(Color.red(i), alpha2, Color.red(i2), alpha, i3), m181b(Color.green(i), alpha2, Color.green(i2), alpha, i3), m181b(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    /* renamed from: b */
    public static int m181b(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * 255) * i2)) / (i5 * 255);
    }
}
