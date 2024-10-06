package p020f;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import p039k.AbstractC0660g;
import p039k.C0655b;
import p063t.InterfaceMenuC0872a;
/* renamed from: f.g */
/* loaded from: classes.dex */
public class MenuC0469g extends AbstractC0459b<InterfaceMenuC0872a> implements Menu {
    public MenuC0469g(Context context, InterfaceMenuC0872a interfaceMenuC0872a) {
        super(context, interfaceMenuC0872a);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).add(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).add(charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = ((InterfaceMenuC0872a) this.f1797a).addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m701j(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return m700k(((InterfaceMenuC0872a) this.f1797a).addSubMenu(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m700k(((InterfaceMenuC0872a) this.f1797a).addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m700k(((InterfaceMenuC0872a) this.f1797a).addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return m700k(((InterfaceMenuC0872a) this.f1797a).addSubMenu(charSequence));
    }

    @Override // p020f.C0460c, android.view.Menu
    public final void clear() {
        C0655b c0655b = this.f1795c;
        if (c0655b != null) {
            c0655b.clear();
        }
        C0655b c0655b2 = this.f1796d;
        if (c0655b2 != null) {
            c0655b2.clear();
        }
        ((InterfaceMenuC0872a) this.f1797a).clear();
    }

    @Override // android.view.Menu
    public final void close() {
        ((InterfaceMenuC0872a) this.f1797a).close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).findItem(i));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return m701j(((InterfaceMenuC0872a) this.f1797a).getItem(i));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return ((InterfaceMenuC0872a) this.f1797a).hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return ((InterfaceMenuC0872a) this.f1797a).isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return ((InterfaceMenuC0872a) this.f1797a).performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return ((InterfaceMenuC0872a) this.f1797a).performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        C0655b c0655b = this.f1795c;
        if (c0655b != null) {
            Iterator it = ((AbstractC0660g.C0663c) c0655b.keySet()).iterator();
            while (true) {
                AbstractC0660g.C0661a c0661a = (AbstractC0660g.C0661a) it;
                if (!c0661a.hasNext()) {
                    break;
                } else if (i == ((MenuItem) c0661a.next()).getGroupId()) {
                    c0661a.remove();
                }
            }
        }
        ((InterfaceMenuC0872a) this.f1797a).removeGroup(i);
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        C0655b c0655b = this.f1795c;
        if (c0655b != null) {
            Iterator it = ((AbstractC0660g.C0663c) c0655b.keySet()).iterator();
            while (true) {
                AbstractC0660g.C0661a c0661a = (AbstractC0660g.C0661a) it;
                if (!c0661a.hasNext()) {
                    break;
                } else if (i == ((MenuItem) c0661a.next()).getItemId()) {
                    c0661a.remove();
                    break;
                }
            }
        }
        ((InterfaceMenuC0872a) this.f1797a).removeItem(i);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        ((InterfaceMenuC0872a) this.f1797a).setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ((InterfaceMenuC0872a) this.f1797a).setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        ((InterfaceMenuC0872a) this.f1797a).setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z) {
        ((InterfaceMenuC0872a) this.f1797a).setQwertyMode(z);
    }

    @Override // android.view.Menu
    public final int size() {
        return ((InterfaceMenuC0872a) this.f1797a).size();
    }
}
