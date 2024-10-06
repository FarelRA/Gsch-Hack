package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.C0212k;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes.dex */
public abstract class AbstractC0211j {

    /* renamed from: a */
    public final C0212k.AbstractC0224j f822a;

    public AbstractC0211j(C0212k.AbstractC0224j abstractC0224j) {
        new Rect();
        this.f822a = abstractC0224j;
    }

    /* renamed from: a */
    public static AbstractC0211j m1148a(C0212k.AbstractC0224j abstractC0224j, int i) {
        if (i != 0) {
            if (i == 1) {
                return new C0210i(abstractC0224j);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return new C0209h(abstractC0224j);
    }

    /* renamed from: b */
    public abstract int mo1147b(View view);

    /* renamed from: c */
    public abstract int mo1146c(View view);

    /* renamed from: d */
    public abstract int mo1145d();

    /* renamed from: e */
    public abstract int mo1144e();

    /* renamed from: f */
    public abstract int mo1143f();
}
