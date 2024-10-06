package p020f;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p063t.InterfaceSubMenuC0874c;
/* renamed from: f.i */
/* loaded from: classes.dex */
public final class SubMenuC0471i extends MenuC0469g implements SubMenu {
    public SubMenuC0471i(Context context, InterfaceSubMenuC0874c interfaceSubMenuC0874c) {
        super(context, interfaceSubMenuC0874c);
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        ((InterfaceSubMenuC0874c) this.f1797a).clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return m701j(((InterfaceSubMenuC0874c) this.f1797a).getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        ((InterfaceSubMenuC0874c) this.f1797a).setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        ((InterfaceSubMenuC0874c) this.f1797a).setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        ((InterfaceSubMenuC0874c) this.f1797a).setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        ((InterfaceSubMenuC0874c) this.f1797a).setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        ((InterfaceSubMenuC0874c) this.f1797a).setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        ((InterfaceSubMenuC0874c) this.f1797a).setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        ((InterfaceSubMenuC0874c) this.f1797a).setIcon(drawable);
        return this;
    }
}
