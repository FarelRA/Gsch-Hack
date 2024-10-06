package p020f;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p052p.C0819a;
import p061s.C0863a;
import p063t.InterfaceMenuItemC0873b;
import p076y.AbstractC0941b;
/* renamed from: f.a */
/* loaded from: classes.dex */
public final class C0458a implements InterfaceMenuItemC0873b {

    /* renamed from: a */
    public CharSequence f1778a;

    /* renamed from: b */
    public CharSequence f1779b;

    /* renamed from: c */
    public Intent f1780c;

    /* renamed from: d */
    public char f1781d;

    /* renamed from: f */
    public char f1783f;

    /* renamed from: h */
    public Drawable f1785h;

    /* renamed from: i */
    public final Context f1786i;

    /* renamed from: j */
    public CharSequence f1787j;

    /* renamed from: k */
    public CharSequence f1788k;

    /* renamed from: e */
    public int f1782e = 4096;

    /* renamed from: g */
    public int f1784g = 4096;

    /* renamed from: l */
    public ColorStateList f1789l = null;

    /* renamed from: m */
    public PorterDuff.Mode f1790m = null;

    /* renamed from: n */
    public boolean f1791n = false;

    /* renamed from: o */
    public boolean f1792o = false;

    /* renamed from: p */
    public int f1793p = 16;

    public C0458a(Context context, CharSequence charSequence) {
        this.f1786i = context;
        this.f1778a = charSequence;
    }

    /* renamed from: a */
    public final void m702a() {
        Drawable drawable = this.f1785h;
        if (drawable != null) {
            if (this.f1791n || this.f1792o) {
                Drawable m138f = C0863a.m138f(drawable);
                this.f1785h = m138f;
                Drawable mutate = m138f.mutate();
                this.f1785h = mutate;
                if (this.f1791n) {
                    mutate.setTintList(this.f1789l);
                }
                if (this.f1792o) {
                    this.f1785h.setTintMode(this.f1790m);
                }
            }
        }
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // p063t.InterfaceMenuItemC0873b
    /* renamed from: d */
    public final AbstractC0941b mo129d() {
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b
    /* renamed from: e */
    public final InterfaceMenuItemC0873b mo128e(AbstractC0941b abstractC0941b) {
        throw new UnsupportedOperationException();
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1784g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1783f;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1787j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f1785h;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1789l;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1790m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1780c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return 16908332;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1782e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1781d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1778a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1779b;
        return charSequence != null ? charSequence : this.f1778a;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1788k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f1793p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f1793p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f1793p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f1793p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f1783f = Character.toLowerCase(c);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f1783f = Character.toLowerCase(c);
        this.f1784g = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f1793p = (z ? 1 : 0) | (this.f1793p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f1793p = (z ? 2 : 0) | (this.f1793p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f1787j = charSequence;
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final InterfaceMenuItemC0873b setContentDescription(CharSequence charSequence) {
        this.f1787j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f1793p = (z ? 16 : 0) | (this.f1793p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        Object obj = C0819a.f2712a;
        this.f1785h = this.f1786i.getDrawable(i);
        m702a();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1785h = drawable;
        m702a();
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1789l = colorStateList;
        this.f1791n = true;
        m702a();
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1790m = mode;
        this.f1792o = true;
        m702a();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1780c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f1781d = c;
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f1781d = c;
        this.f1782e = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f1781d = c;
        this.f1783f = Character.toLowerCase(c2);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1781d = c;
        this.f1782e = KeyEvent.normalizeMetaState(i);
        this.f1783f = Character.toLowerCase(c2);
        this.f1784g = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f1778a = this.f1786i.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1778a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1779b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f1788k = charSequence;
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final InterfaceMenuItemC0873b setTooltipText(CharSequence charSequence) {
        this.f1788k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        this.f1793p = (this.f1793p & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }
}
