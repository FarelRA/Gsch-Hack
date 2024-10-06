package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.appcompat.view.menu.m */
/* loaded from: classes.dex */
public final class SubMenuC0083m extends C0068f implements SubMenu {

    /* renamed from: A */
    public final C0072h f314A;

    /* renamed from: z */
    public final C0068f f315z;

    public SubMenuC0083m(Context context, C0068f c0068f, C0072h c0072h) {
        super(context);
        this.f315z = c0068f;
        this.f314A = c0072h;
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: d */
    public final boolean mo1330d(C0072h c0072h) {
        return this.f315z.mo1330d(c0072h);
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: e */
    public final boolean mo1329e(C0068f c0068f, MenuItem menuItem) {
        return super.mo1329e(c0068f, menuItem) || this.f315z.mo1329e(c0068f, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: f */
    public final boolean mo1328f(C0072h c0072h) {
        return this.f315z.mo1328f(c0072h);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f314A;
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: j */
    public final String mo1327j() {
        int i;
        C0072h c0072h = this.f314A;
        if (c0072h != null) {
            i = c0072h.f252a;
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: k */
    public final C0068f mo1326k() {
        return this.f315z.mo1326k();
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: m */
    public final boolean mo1325m() {
        return this.f315z.mo1325m();
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: n */
    public final boolean mo1324n() {
        return this.f315z.mo1324n();
    }

    @Override // androidx.appcompat.view.menu.C0068f
    /* renamed from: o */
    public final boolean mo1323o() {
        return this.f315z.mo1323o();
    }

    @Override // androidx.appcompat.view.menu.C0068f, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.f315z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        m1341u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        m1341u(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        m1341u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f314A.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f314A.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0068f, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f315z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        m1341u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        m1341u(0, charSequence, 0, null, null);
        return this;
    }
}
