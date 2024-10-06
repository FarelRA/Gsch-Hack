package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.widget.C0122a;
import androidx.appcompat.widget.Toolbar;
import net.geschool.app.secure.R;
import p004b.LayoutInflater$Factory2C0266j;
import p008c.C0315a;
import p024g.C0527k0;
import p024g.C0542r0;
import p024g.C0561x;
import p024g.InterfaceC0492a0;
import p024g.View$OnClickListenerC0546t0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes.dex */
public final class C0134d implements InterfaceC0492a0 {

    /* renamed from: a */
    public final Toolbar f559a;

    /* renamed from: b */
    public int f560b;

    /* renamed from: c */
    public C0132c f561c;

    /* renamed from: d */
    public View f562d;

    /* renamed from: e */
    public Drawable f563e;

    /* renamed from: f */
    public Drawable f564f;

    /* renamed from: g */
    public Drawable f565g;

    /* renamed from: h */
    public boolean f566h;

    /* renamed from: i */
    public CharSequence f567i;

    /* renamed from: j */
    public CharSequence f568j;

    /* renamed from: k */
    public CharSequence f569k;

    /* renamed from: l */
    public Window.Callback f570l;

    /* renamed from: m */
    public boolean f571m;

    /* renamed from: n */
    public C0122a f572n;

    /* renamed from: o */
    public int f573o;

    /* renamed from: p */
    public Drawable f574p;

    /* renamed from: androidx.appcompat.widget.d$a */
    /* loaded from: classes.dex */
    public class C0135a extends C0736h {

        /* renamed from: h0 */
        public boolean f575h0 = false;

        /* renamed from: i0 */
        public final /* synthetic */ int f576i0;

        public C0135a(int i) {
            this.f576i0 = i;
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            if (this.f575h0) {
                return;
            }
            C0134d.this.f559a.setVisibility(this.f576i0);
        }

        @Override // p046m1.C0736h, p076y.InterfaceC0961r
        /* renamed from: d */
        public final void mo18d(View view) {
            this.f575h0 = true;
        }

        @Override // p046m1.C0736h, p076y.InterfaceC0961r
        /* renamed from: e */
        public final void mo17e() {
            C0134d.this.f559a.setVisibility(0);
        }
    }

    public C0134d(Toolbar toolbar, boolean z) {
        boolean z2;
        Drawable drawable;
        this.f573o = 0;
        this.f559a = toolbar;
        this.f567i = toolbar.getTitle();
        this.f568j = toolbar.getSubtitle();
        if (this.f567i != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f566h = z2;
        this.f565g = toolbar.getNavigationIcon();
        C0542r0 m569l = C0542r0.m569l(toolbar.getContext(), null, C0736h.f2560d, R.attr.actionBarStyle);
        int i = 15;
        this.f574p = m569l.m576e(15);
        if (z) {
            CharSequence m571j = m569l.m571j(27);
            if (!TextUtils.isEmpty(m571j)) {
                this.f566h = true;
                this.f567i = m571j;
                if ((this.f560b & 8) != 0) {
                    toolbar.setTitle(m571j);
                }
            }
            CharSequence m571j2 = m569l.m571j(25);
            if (!TextUtils.isEmpty(m571j2)) {
                this.f568j = m571j2;
                if ((this.f560b & 8) != 0) {
                    toolbar.setSubtitle(m571j2);
                }
            }
            Drawable m576e = m569l.m576e(20);
            if (m576e != null) {
                this.f564f = m576e;
                m1264w();
            }
            Drawable m576e2 = m569l.m576e(17);
            if (m576e2 != null) {
                setIcon(m576e2);
            }
            if (this.f565g == null && (drawable = this.f574p) != null) {
                this.f565g = drawable;
                toolbar.setNavigationIcon((this.f560b & 4) == 0 ? null : drawable);
            }
            mo638v(m569l.m573h(10, 0));
            int m572i = m569l.m572i(9, 0);
            if (m572i != 0) {
                View inflate = LayoutInflater.from(toolbar.getContext()).inflate(m572i, (ViewGroup) toolbar, false);
                View view = this.f562d;
                if (view != null && (this.f560b & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.f562d = inflate;
                if (inflate != null && (this.f560b & 16) != 0) {
                    toolbar.addView(inflate);
                }
                mo638v(this.f560b | 16);
            }
            int layoutDimension = m569l.f2039b.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int m578c = m569l.m578c(7, -1);
            int m578c2 = m569l.m578c(3, -1);
            if (m578c >= 0 || m578c2 >= 0) {
                int max = Math.max(m578c, 0);
                int max2 = Math.max(m578c2, 0);
                if (toolbar.f500u == null) {
                    toolbar.f500u = new C0527k0();
                }
                toolbar.f500u.m597a(max, max2);
            }
            int m572i2 = m569l.m572i(28, 0);
            if (m572i2 != 0) {
                Context context = toolbar.getContext();
                toolbar.f492m = m572i2;
                C0561x c0561x = toolbar.f482c;
                if (c0561x != null) {
                    c0561x.setTextAppearance(context, m572i2);
                }
            }
            int m572i3 = m569l.m572i(26, 0);
            if (m572i3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.f493n = m572i3;
                C0561x c0561x2 = toolbar.f483d;
                if (c0561x2 != null) {
                    c0561x2.setTextAppearance(context2, m572i3);
                }
            }
            int m572i4 = m569l.m572i(22, 0);
            if (m572i4 != 0) {
                toolbar.setPopupTheme(m572i4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.f574p = toolbar.getNavigationIcon();
            } else {
                i = 11;
            }
            this.f560b = i;
        }
        m569l.m568m();
        if (R.string.abc_action_bar_up_description != this.f573o) {
            this.f573o = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i2 = this.f573o;
                String string = i2 != 0 ? mo645o().getString(i2) : null;
                this.f569k = string;
                if ((this.f560b & 4) != 0) {
                    if (TextUtils.isEmpty(string)) {
                        toolbar.setNavigationContentDescription(this.f573o);
                    } else {
                        toolbar.setNavigationContentDescription(this.f569k);
                    }
                }
            }
        }
        this.f569k = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new View$OnClickListenerC0546t0(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0021 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // p024g.InterfaceC0492a0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo659a() {
        boolean z;
        boolean z2;
        ActionMenuView actionMenuView = this.f559a.f481b;
        if (actionMenuView == null) {
            return false;
        }
        C0122a c0122a = actionMenuView.f375u;
        if (c0122a != null) {
            if (c0122a.f531w == null && !c0122a.m1276h()) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                z = true;
                if (z) {
                    return false;
                }
                return true;
            }
        }
        z = false;
        if (z) {
        }
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: b */
    public final void mo658b(C0068f c0068f, LayoutInflater$Factory2C0266j.C0269c c0269c) {
        C0122a c0122a = this.f572n;
        Toolbar toolbar = this.f559a;
        if (c0122a == null) {
            this.f572n = new C0122a(toolbar.getContext());
        }
        C0122a c0122a2 = this.f572n;
        c0122a2.f167f = c0269c;
        if (c0068f != null || toolbar.f481b != null) {
            toolbar.m1294d();
            C0068f c0068f2 = toolbar.f481b.f371q;
            if (c0068f2 != c0068f) {
                if (c0068f2 != null) {
                    c0068f2.m1344r(toolbar.f475K);
                    c0068f2.m1344r(toolbar.f476L);
                }
                if (toolbar.f476L == null) {
                    toolbar.f476L = new Toolbar.C0116c();
                }
                c0122a2.f526r = true;
                if (c0068f != null) {
                    c0068f.m1352b(c0122a2, toolbar.f490k);
                    c0068f.m1352b(toolbar.f476L, toolbar.f490k);
                } else {
                    c0122a2.mo693e(toolbar.f490k, null);
                    toolbar.f476L.mo693e(toolbar.f490k, null);
                    c0122a2.mo1278f();
                    toolbar.f476L.mo1278f();
                }
                toolbar.f481b.setPopupTheme(toolbar.f491l);
                toolbar.f481b.setPresenter(c0122a2);
                toolbar.f475K = c0122a2;
            }
        }
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: c */
    public final boolean mo657c() {
        boolean z;
        ActionMenuView actionMenuView = this.f559a.f481b;
        if (actionMenuView == null) {
            return false;
        }
        C0122a c0122a = actionMenuView.f375u;
        if (c0122a != null && c0122a.m1276h()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // p024g.InterfaceC0492a0
    public final void collapseActionView() {
        C0072h c0072h;
        Toolbar.C0116c c0116c = this.f559a.f476L;
        if (c0116c == null) {
            c0072h = null;
        } else {
            c0072h = c0116c.f509c;
        }
        if (c0072h != null) {
            c0072h.collapseActionView();
        }
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: d */
    public final boolean mo656d() {
        boolean z;
        ActionMenuView actionMenuView = this.f559a.f481b;
        if (actionMenuView == null) {
            return false;
        }
        C0122a c0122a = actionMenuView.f375u;
        if (c0122a != null && c0122a.m1277g()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: e */
    public final boolean mo655e() {
        boolean z;
        ActionMenuView actionMenuView = this.f559a.f481b;
        if (actionMenuView == null) {
            return false;
        }
        C0122a c0122a = actionMenuView.f375u;
        if (c0122a != null && c0122a.m1274l()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: f */
    public final void mo654f() {
        this.f571m = true;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: g */
    public final boolean mo653g() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f559a;
        if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f481b) != null && actionMenuView.f374t) {
            return true;
        }
        return false;
    }

    @Override // p024g.InterfaceC0492a0
    public final CharSequence getTitle() {
        return this.f559a.getTitle();
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: h */
    public final void mo652h() {
        C0122a c0122a;
        ActionMenuView actionMenuView = this.f559a.f481b;
        if (actionMenuView != null && (c0122a = actionMenuView.f375u) != null) {
            c0122a.m1277g();
            C0122a.C0123a c0123a = c0122a.f530v;
            if (c0123a != null && c0123a.m1333b()) {
                c0123a.f288j.dismiss();
            }
        }
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: i */
    public final void mo651i() {
        C0132c c0132c = this.f561c;
        if (c0132c != null) {
            ViewParent parent = c0132c.getParent();
            Toolbar toolbar = this.f559a;
            if (parent == toolbar) {
                toolbar.removeView(this.f561c);
            }
        }
        this.f561c = null;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: j */
    public final int mo650j() {
        return this.f560b;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: k */
    public final void mo649k(int i) {
        this.f559a.setVisibility(i);
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: l */
    public final void mo648l(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = C0315a.m994c(mo645o(), i);
        } else {
            drawable = null;
        }
        this.f564f = drawable;
        m1264w();
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: m */
    public final void mo647m() {
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: n */
    public final Toolbar mo646n() {
        return this.f559a;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: o */
    public final Context mo645o() {
        return this.f559a.getContext();
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: p */
    public final void mo644p() {
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: q */
    public final C0960q mo643q(int i, long j) {
        C0960q m35a = C0954m.m35a(this.f559a);
        m35a.m24a(i == 0 ? 1.0f : 0.0f);
        m35a.m22c(j);
        m35a.m21d(new C0135a(i));
        return m35a;
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: r */
    public final void mo642r() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: s */
    public final boolean mo641s() {
        Toolbar.C0116c c0116c = this.f559a.f476L;
        if (c0116c != null && c0116c.f509c != null) {
            return true;
        }
        return false;
    }

    @Override // p024g.InterfaceC0492a0
    public final void setIcon(int i) {
        setIcon(i != 0 ? C0315a.m994c(mo645o(), i) : null);
    }

    @Override // p024g.InterfaceC0492a0
    public final void setIcon(Drawable drawable) {
        this.f563e = drawable;
        m1264w();
    }

    @Override // p024g.InterfaceC0492a0
    public final void setWindowCallback(Window.Callback callback) {
        this.f570l = callback;
    }

    @Override // p024g.InterfaceC0492a0
    public final void setWindowTitle(CharSequence charSequence) {
        if (!this.f566h) {
            this.f567i = charSequence;
            if ((this.f560b & 8) != 0) {
                this.f559a.setTitle(charSequence);
            }
        }
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: t */
    public final void mo640t() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: u */
    public final void mo639u(boolean z) {
        this.f559a.setCollapsible(z);
    }

    @Override // p024g.InterfaceC0492a0
    /* renamed from: v */
    public final void mo638v(int i) {
        View view;
        Drawable drawable;
        int i2 = this.f560b ^ i;
        this.f560b = i;
        if (i2 != 0) {
            int i3 = i2 & 4;
            CharSequence charSequence = null;
            Toolbar toolbar = this.f559a;
            if (i3 != 0) {
                if ((i & 4) != 0 && (i & 4) != 0) {
                    if (TextUtils.isEmpty(this.f569k)) {
                        toolbar.setNavigationContentDescription(this.f573o);
                    } else {
                        toolbar.setNavigationContentDescription(this.f569k);
                    }
                }
                if ((this.f560b & 4) != 0) {
                    drawable = this.f565g;
                    if (drawable == null) {
                        drawable = this.f574p;
                    }
                } else {
                    drawable = null;
                }
                toolbar.setNavigationIcon(drawable);
            }
            if ((i2 & 3) != 0) {
                m1264w();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    toolbar.setTitle(this.f567i);
                    charSequence = this.f568j;
                } else {
                    toolbar.setTitle((CharSequence) null);
                }
                toolbar.setSubtitle(charSequence);
            }
            if ((i2 & 16) != 0 && (view = this.f562d) != null) {
                if ((i & 16) != 0) {
                    toolbar.addView(view);
                } else {
                    toolbar.removeView(view);
                }
            }
        }
    }

    /* renamed from: w */
    public final void m1264w() {
        Drawable drawable;
        int i = this.f560b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f564f) == null) {
            drawable = this.f563e;
        }
        this.f559a.setLogo(drawable);
    }
}
