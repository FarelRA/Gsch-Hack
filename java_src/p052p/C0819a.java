package p052p;

import android.content.Context;
import android.os.Build;
/* renamed from: p.a */
/* loaded from: classes.dex */
public class C0819a {

    /* renamed from: a */
    public static final Object f2712a = new Object();

    /* renamed from: a */
    public static int m206a(Context context, int i) {
        int color;
        if (Build.VERSION.SDK_INT >= 23) {
            color = context.getColor(i);
            return color;
        }
        return context.getResources().getColor(i);
    }
}
