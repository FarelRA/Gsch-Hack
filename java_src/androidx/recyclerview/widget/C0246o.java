package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C0212k;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes.dex */
public final class C0246o {
    /* renamed from: a */
    public static int m1057a(C0212k.C0238s c0238s, AbstractC0211j abstractC0211j, View view, View view2, C0212k.AbstractC0224j abstractC0224j, boolean z) {
        if (abstractC0224j.m1090p() == 0 || c0238s.m1069a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (z) {
            return Math.min(abstractC0211j.mo1143f(), abstractC0211j.mo1147b(view2) - abstractC0211j.mo1146c(view));
        }
        C0212k.AbstractC0224j.m1083w(view);
        throw null;
    }

    /* renamed from: b */
    public static int m1056b(C0212k.C0238s c0238s, AbstractC0211j abstractC0211j, View view, View view2, C0212k.AbstractC0224j abstractC0224j, boolean z) {
        if (abstractC0224j.m1090p() == 0 || c0238s.m1069a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (z) {
            abstractC0211j.mo1147b(view2);
            abstractC0211j.mo1146c(view);
            C0212k.AbstractC0224j.m1083w(view);
            throw null;
        }
        return c0238s.m1069a();
    }
}
