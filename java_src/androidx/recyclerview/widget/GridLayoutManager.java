package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.C0212k;
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: q */
    public int f703q;

    /* renamed from: r */
    public final C0173a f704r;

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes.dex */
    public static final class C0173a extends AbstractC0175c {
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes.dex */
    public static class C0174b extends C0212k.C0228k {
        public C0174b(int i, int i2) {
            super(i, i2);
        }

        public C0174b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0174b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0174b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0175c {

        /* renamed from: a */
        public final SparseIntArray f705a = new SparseIntArray();

        /* renamed from: a */
        public static int m1200a(int i, int i2) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i3++;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = 1;
                }
            }
            return i3 + 1 > i2 ? i4 + 1 : i4;
        }

        /* renamed from: b */
        public final void m1199b() {
            this.f705a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f703q = -1;
        new SparseIntArray();
        new SparseIntArray();
        C0173a c0173a = new C0173a();
        this.f704r = c0173a;
        new Rect();
        int i3 = C0212k.AbstractC0224j.m1082x(context, attributeSet, i, i2).f901b;
        if (i3 != this.f703q) {
            if (i3 >= 1) {
                this.f703q = i3;
                c0173a.m1199b();
                m1107I();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i3);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: S */
    public final void mo1190S(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.mo1190S(false);
    }

    /* renamed from: T */
    public final int m1201T(int i, C0212k.C0234p c0234p, C0212k.C0238s c0238s) {
        boolean z = c0238s.f922d;
        C0173a c0173a = this.f704r;
        if (!z) {
            int i2 = this.f703q;
            c0173a.getClass();
            return AbstractC0175c.m1200a(i, i2);
        }
        int m1076a = c0234p.m1076a(i);
        if (m1076a == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        int i3 = this.f703q;
        c0173a.getClass();
        return AbstractC0175c.m1200a(m1076a, i3);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: d */
    public final boolean mo1102d(C0212k.C0228k c0228k) {
        return c0228k instanceof C0174b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: l */
    public final C0212k.C0228k mo1094l() {
        return this.f706h == 0 ? new C0174b(-2, -1) : new C0174b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: m */
    public final C0212k.C0228k mo1093m(Context context, AttributeSet attributeSet) {
        return new C0174b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: n */
    public final C0212k.C0228k mo1092n(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0174b((ViewGroup.MarginLayoutParams) layoutParams) : new C0174b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: q */
    public final int mo1089q(C0212k.C0234p c0234p, C0212k.C0238s c0238s) {
        if (this.f706h == 1) {
            return this.f703q;
        }
        if (c0238s.m1069a() < 1) {
            return 0;
        }
        return m1201T(c0238s.m1069a() - 1, c0234p, c0238s) + 1;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0224j
    /* renamed from: y */
    public final int mo1081y(C0212k.C0234p c0234p, C0212k.C0238s c0238s) {
        if (this.f706h == 0) {
            return this.f703q;
        }
        if (c0238s.m1069a() < 1) {
            return 0;
        }
        return m1201T(c0238s.m1069a() - 1, c0234p, c0238s) + 1;
    }
}
