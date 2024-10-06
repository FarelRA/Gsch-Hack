package p020f;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p039k.C0655b;
import p063t.InterfaceMenuItemC0873b;
import p063t.InterfaceSubMenuC0874c;
/* renamed from: f.b */
/* loaded from: classes.dex */
public abstract class AbstractC0459b<T> extends C0460c {

    /* renamed from: b */
    public final Context f1794b;

    /* renamed from: c */
    public C0655b f1795c;

    /* renamed from: d */
    public C0655b f1796d;

    public AbstractC0459b(Context context, T t) {
        super(t);
        this.f1794b = context;
    }

    /* renamed from: j */
    public final MenuItem m701j(MenuItem menuItem) {
        if (menuItem instanceof InterfaceMenuItemC0873b) {
            InterfaceMenuItemC0873b interfaceMenuItemC0873b = (InterfaceMenuItemC0873b) menuItem;
            if (this.f1795c == null) {
                this.f1795c = new C0655b();
            }
            MenuItem menuItem2 = (MenuItem) this.f1795c.getOrDefault(menuItem, null);
            if (menuItem2 == null) {
                C0466e c0466e = new C0466e(this.f1794b, interfaceMenuItemC0873b);
                this.f1795c.put(interfaceMenuItemC0873b, c0466e);
                return c0466e;
            }
            return menuItem2;
        }
        return menuItem;
    }

    /* renamed from: k */
    public final SubMenu m700k(SubMenu subMenu) {
        if (subMenu instanceof InterfaceSubMenuC0874c) {
            InterfaceSubMenuC0874c interfaceSubMenuC0874c = (InterfaceSubMenuC0874c) subMenu;
            if (this.f1796d == null) {
                this.f1796d = new C0655b();
            }
            SubMenu subMenu2 = (SubMenu) this.f1796d.getOrDefault(interfaceSubMenuC0874c, null);
            if (subMenu2 == null) {
                SubMenuC0471i subMenuC0471i = new SubMenuC0471i(this.f1794b, interfaceSubMenuC0874c);
                this.f1796d.put(interfaceSubMenuC0874c, subMenuC0471i);
                return subMenuC0471i;
            }
            return subMenu2;
        }
        return subMenu;
    }
}
