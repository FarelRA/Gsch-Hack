package p024g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: g.d */
/* loaded from: classes.dex */
public final class C0499d {

    /* renamed from: a */
    public final View f1899a;

    /* renamed from: d */
    public C0538p0 f1902d;

    /* renamed from: e */
    public C0538p0 f1903e;

    /* renamed from: f */
    public C0538p0 f1904f;

    /* renamed from: c */
    public int f1901c = -1;

    /* renamed from: b */
    public final C0516i f1900b = C0516i.m610g();

    public C0499d(View view) {
        this.f1899a = view;
    }

    /* renamed from: a */
    public final void m632a() {
        boolean z;
        View view = this.f1899a;
        Drawable background = view.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z2 = true;
            if (i <= 21 ? i == 21 : this.f1902d != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (this.f1904f == null) {
                    this.f1904f = new C0538p0();
                }
                C0538p0 c0538p0 = this.f1904f;
                c0538p0.f2032a = null;
                c0538p0.f2035d = false;
                c0538p0.f2033b = null;
                c0538p0.f2034c = false;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    c0538p0.f2035d = true;
                    c0538p0.f2032a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    c0538p0.f2034c = true;
                    c0538p0.f2033b = backgroundTintMode;
                }
                if (!c0538p0.f2035d && !c0538p0.f2034c) {
                    z2 = false;
                } else {
                    C0516i.m603n(background, c0538p0, view.getDrawableState());
                }
                if (z2) {
                    return;
                }
            }
            C0538p0 c0538p02 = this.f1903e;
            if (c0538p02 != null) {
                C0516i.m603n(background, c0538p02, view.getDrawableState());
                return;
            }
            C0538p0 c0538p03 = this.f1902d;
            if (c0538p03 != null) {
                C0516i.m603n(background, c0538p03, view.getDrawableState());
            }
        }
    }

    /* renamed from: b */
    public final ColorStateList m631b() {
        C0538p0 c0538p0 = this.f1903e;
        if (c0538p0 != null) {
            return c0538p0.f2032a;
        }
        return null;
    }

    /* renamed from: c */
    public final PorterDuff.Mode m630c() {
        C0538p0 c0538p0 = this.f1903e;
        if (c0538p0 != null) {
            return c0538p0.f2033b;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005f A[Catch: all -> 0x00ab, TryCatch #0 {all -> 0x00ab, blocks: (B:3:0x000d, B:5:0x0014, B:7:0x0028, B:8:0x002b, B:10:0x0034, B:12:0x0041, B:14:0x004b, B:21:0x0059, B:23:0x005f, B:24:0x0066, B:25:0x0069, B:27:0x0070, B:29:0x0082, B:31:0x008c, B:36:0x0097, B:38:0x009d, B:39:0x00a4), top: B:45:0x000d }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m629d(AttributeSet attributeSet, int i) {
        boolean z;
        View view = this.f1899a;
        C0542r0 m569l = C0542r0.m569l(view.getContext(), attributeSet, C0736h.f2533F, i);
        boolean z2 = false;
        try {
            if (m569l.m570k(0)) {
                this.f1901c = m569l.m572i(0, -1);
                ColorStateList m605l = this.f1900b.m605l(view.getContext(), this.f1901c);
                if (m605l != null) {
                    m626g(m605l);
                }
            }
            if (m569l.m570k(1)) {
                ColorStateList m579b = m569l.m579b(1);
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                int i2 = Build.VERSION.SDK_INT;
                view.setBackgroundTintList(m579b);
                if (i2 == 21) {
                    Drawable background = view.getBackground();
                    if (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) {
                        z = false;
                        if (background != null && z) {
                            if (background.isStateful()) {
                                background.setState(view.getDrawableState());
                            }
                            view.setBackground(background);
                        }
                    }
                    z = true;
                    if (background != null) {
                        if (background.isStateful()) {
                        }
                        view.setBackground(background);
                    }
                }
            }
            if (m569l.m570k(2)) {
                PorterDuff.Mode m635c = C0494b0.m635c(m569l.m573h(2, -1), null);
                WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                int i3 = Build.VERSION.SDK_INT;
                view.setBackgroundTintMode(m635c);
                if (i3 == 21) {
                    Drawable background2 = view.getBackground();
                    z2 = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? true : true;
                    if (background2 != null && z2) {
                        if (background2.isStateful()) {
                            background2.setState(view.getDrawableState());
                        }
                        view.setBackground(background2);
                    }
                }
            }
        } finally {
            m569l.m568m();
        }
    }

    /* renamed from: e */
    public final void m628e() {
        this.f1901c = -1;
        m626g(null);
        m632a();
    }

    /* renamed from: f */
    public final void m627f(int i) {
        this.f1901c = i;
        C0516i c0516i = this.f1900b;
        m626g(c0516i != null ? c0516i.m605l(this.f1899a.getContext(), i) : null);
        m632a();
    }

    /* renamed from: g */
    public final void m626g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1902d == null) {
                this.f1902d = new C0538p0();
            }
            C0538p0 c0538p0 = this.f1902d;
            c0538p0.f2032a = colorStateList;
            c0538p0.f2035d = true;
        } else {
            this.f1902d = null;
        }
        m632a();
    }

    /* renamed from: h */
    public final void m625h(ColorStateList colorStateList) {
        if (this.f1903e == null) {
            this.f1903e = new C0538p0();
        }
        C0538p0 c0538p0 = this.f1903e;
        c0538p0.f2032a = colorStateList;
        c0538p0.f2035d = true;
        m632a();
    }

    /* renamed from: i */
    public final void m624i(PorterDuff.Mode mode) {
        if (this.f1903e == null) {
            this.f1903e = new C0538p0();
        }
        C0538p0 c0538p0 = this.f1903e;
        c0538p0.f2033b = mode;
        c0538p0.f2034c = true;
        m632a();
    }
}
