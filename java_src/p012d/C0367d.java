package p012d;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import p012d.C0362b;
/* renamed from: d.d */
/* loaded from: classes.dex */
public class C0367d extends C0362b {

    /* renamed from: o */
    public C0368a f1422o;

    /* renamed from: p */
    public boolean f1423p;

    /* renamed from: d.d$a */
    /* loaded from: classes.dex */
    public static class C0368a extends C0362b.AbstractC0365c {

        /* renamed from: H */
        public int[][] f1424H;

        public C0368a(C0368a c0368a, C0367d c0367d, Resources resources) {
            super(c0368a, c0367d, resources);
            if (c0368a != null) {
                this.f1424H = c0368a.f1424H;
            } else {
                this.f1424H = new int[this.f1401g.length];
            }
        }

        @Override // p012d.C0362b.AbstractC0365c
        /* renamed from: e */
        public void mo893e() {
            int[][] iArr = this.f1424H;
            int[][] iArr2 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[] iArr3 = this.f1424H[length];
                iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
            }
            this.f1424H = iArr2;
        }

        /* renamed from: f */
        public final int m892f(int[] iArr) {
            int[][] iArr2 = this.f1424H;
            int i = this.f1402h;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0367d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0367d(this, resources);
        }
    }

    public C0367d() {
    }

    public C0367d(C0368a c0368a, Resources resources) {
        mo895e(new C0368a(c0368a, this, resources));
        onStateChange(getState());
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p012d.C0362b
    /* renamed from: e */
    public void mo895e(C0362b.AbstractC0365c abstractC0365c) {
        this.f1374b = abstractC0365c;
        int i = this.f1380h;
        if (i >= 0) {
            Drawable m897d = abstractC0365c.m897d(i);
            this.f1376d = m897d;
            if (m897d != null) {
                m902c(m897d);
            }
        }
        this.f1377e = null;
        if (abstractC0365c instanceof C0368a) {
            this.f1422o = (C0368a) abstractC0365c;
        }
    }

    @Override // p012d.C0362b
    /* renamed from: f */
    public C0368a mo896b() {
        return new C0368a(this.f1422o, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1423p) {
            super.mutate();
            this.f1422o.mo893e();
            this.f1423p = true;
        }
        return this;
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m892f = this.f1422o.m892f(iArr);
        if (m892f < 0) {
            m892f = this.f1422o.m892f(StateSet.WILD_CARD);
        }
        return m901d(m892f) || onStateChange;
    }
}
