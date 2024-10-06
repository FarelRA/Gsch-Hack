package p020f;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.SubMenuC0083m;
import java.lang.reflect.Method;
import p016e.InterfaceC0395b;
import p063t.InterfaceMenuItemC0873b;
import p076y.AbstractC0941b;
/* renamed from: f.d */
/* loaded from: classes.dex */
public class MenuItemC0461d extends AbstractC0459b<InterfaceMenuItemC0873b> implements MenuItem {

    /* renamed from: e */
    public Method f1798e;

    /* renamed from: f.d$a */
    /* loaded from: classes.dex */
    public class C0462a extends AbstractC0941b {

        /* renamed from: b */
        public final ActionProvider f1799b;

        public C0462a(ActionProvider actionProvider) {
            this.f1799b = actionProvider;
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: a */
        public final boolean mo65a() {
            return this.f1799b.hasSubMenu();
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: c */
        public final View mo63c() {
            return this.f1799b.onCreateActionView();
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: e */
        public final boolean mo61e() {
            return this.f1799b.onPerformDefaultAction();
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: f */
        public final void mo60f(SubMenuC0083m subMenuC0083m) {
            this.f1799b.onPrepareSubMenu(MenuItemC0461d.this.m700k(subMenuC0083m));
        }
    }

    /* renamed from: f.d$b */
    /* loaded from: classes.dex */
    public static class C0463b extends FrameLayout implements InterfaceC0395b {

        /* renamed from: b */
        public final CollapsibleActionView f1801b;

        public C0463b(View view) {
            super(view.getContext());
            this.f1801b = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // p016e.InterfaceC0395b
        public final void onActionViewCollapsed() {
            this.f1801b.onActionViewCollapsed();
        }

        @Override // p016e.InterfaceC0395b
        public final void onActionViewExpanded() {
            this.f1801b.onActionViewExpanded();
        }
    }

    /* renamed from: f.d$c */
    /* loaded from: classes.dex */
    public class MenuItem$OnActionExpandListenerC0464c extends C0460c implements MenuItem.OnActionExpandListener {
        public MenuItem$OnActionExpandListenerC0464c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f1797a).onMenuItemActionCollapse(MenuItemC0461d.this.m701j(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f1797a).onMenuItemActionExpand(MenuItemC0461d.this.m701j(menuItem));
        }
    }

    /* renamed from: f.d$d */
    /* loaded from: classes.dex */
    public class MenuItem$OnMenuItemClickListenerC0465d extends C0460c implements MenuItem.OnMenuItemClickListener {
        public MenuItem$OnMenuItemClickListenerC0465d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.f1797a).onMenuItemClick(MenuItemC0461d.this.m701j(menuItem));
        }
    }

    public MenuItemC0461d(Context context, InterfaceMenuItemC0873b interfaceMenuItemC0873b) {
        super(context, interfaceMenuItemC0873b);
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return ((InterfaceMenuItemC0873b) this.f1797a).collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return ((InterfaceMenuItemC0873b) this.f1797a).expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        AbstractC0941b mo129d = ((InterfaceMenuItemC0873b) this.f1797a).mo129d();
        if (mo129d instanceof C0462a) {
            return ((C0462a) mo129d).f1799b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = ((InterfaceMenuItemC0873b) this.f1797a).getActionView();
        if (actionView instanceof C0463b) {
            return (View) ((C0463b) actionView).f1801b;
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return m700k(((InterfaceMenuItemC0873b) this.f1797a).getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return ((InterfaceMenuItemC0873b) this.f1797a).getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return ((InterfaceMenuItemC0873b) this.f1797a).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return ((InterfaceMenuItemC0873b) this.f1797a).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return ((InterfaceMenuItemC0873b) this.f1797a).isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return ((InterfaceMenuItemC0873b) this.f1797a).isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return ((InterfaceMenuItemC0873b) this.f1797a).isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return ((InterfaceMenuItemC0873b) this.f1797a).isVisible();
    }

    /* renamed from: l */
    public C0462a mo695l(ActionProvider actionProvider) {
        return new C0462a(actionProvider);
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        ((InterfaceMenuItemC0873b) this.f1797a).mo128e(actionProvider != null ? mo695l(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setActionView(i);
        View actionView = ((InterfaceMenuItemC0873b) this.f1797a).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((InterfaceMenuItemC0873b) this.f1797a).setActionView(new C0463b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new C0463b(view);
        }
        ((InterfaceMenuItemC0873b) this.f1797a).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        ((InterfaceMenuItemC0873b) this.f1797a).setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        ((InterfaceMenuItemC0873b) this.f1797a).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        ((InterfaceMenuItemC0873b) this.f1797a).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        ((InterfaceMenuItemC0873b) this.f1797a).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        ((InterfaceMenuItemC0873b) this.f1797a).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        ((InterfaceMenuItemC0873b) this.f1797a).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        ((InterfaceMenuItemC0873b) this.f1797a).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        ((InterfaceMenuItemC0873b) this.f1797a).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        ((InterfaceMenuItemC0873b) this.f1797a).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        ((InterfaceMenuItemC0873b) this.f1797a).setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((InterfaceMenuItemC0873b) this.f1797a).setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0464c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((InterfaceMenuItemC0873b) this.f1797a).setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0465d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        ((InterfaceMenuItemC0873b) this.f1797a).setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        ((InterfaceMenuItemC0873b) this.f1797a).setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        ((InterfaceMenuItemC0873b) this.f1797a).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        ((InterfaceMenuItemC0873b) this.f1797a).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        ((InterfaceMenuItemC0873b) this.f1797a).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        ((InterfaceMenuItemC0873b) this.f1797a).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        return ((InterfaceMenuItemC0873b) this.f1797a).setVisible(z);
    }
}
