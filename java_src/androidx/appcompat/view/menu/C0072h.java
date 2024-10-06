package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import p008c.C0315a;
import p061s.C0863a;
import p063t.InterfaceMenuItemC0873b;
import p076y.AbstractC0941b;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes.dex */
public final class C0072h implements InterfaceMenuItemC0873b {

    /* renamed from: A */
    public AbstractC0941b f249A;

    /* renamed from: B */
    public MenuItem.OnActionExpandListener f250B;

    /* renamed from: a */
    public final int f252a;

    /* renamed from: b */
    public final int f253b;

    /* renamed from: c */
    public final int f254c;

    /* renamed from: d */
    public final int f255d;

    /* renamed from: e */
    public CharSequence f256e;

    /* renamed from: f */
    public CharSequence f257f;

    /* renamed from: g */
    public Intent f258g;

    /* renamed from: h */
    public char f259h;

    /* renamed from: j */
    public char f261j;

    /* renamed from: l */
    public Drawable f263l;

    /* renamed from: n */
    public final C0068f f265n;

    /* renamed from: o */
    public SubMenuC0083m f266o;

    /* renamed from: p */
    public MenuItem.OnMenuItemClickListener f267p;

    /* renamed from: q */
    public CharSequence f268q;

    /* renamed from: r */
    public CharSequence f269r;

    /* renamed from: y */
    public int f276y;

    /* renamed from: z */
    public View f277z;

    /* renamed from: i */
    public int f260i = 4096;

    /* renamed from: k */
    public int f262k = 4096;

    /* renamed from: m */
    public int f264m = 0;

    /* renamed from: s */
    public ColorStateList f270s = null;

    /* renamed from: t */
    public PorterDuff.Mode f271t = null;

    /* renamed from: u */
    public boolean f272u = false;

    /* renamed from: v */
    public boolean f273v = false;

    /* renamed from: w */
    public boolean f274w = false;

    /* renamed from: x */
    public int f275x = 16;

    /* renamed from: C */
    public boolean f251C = false;

    /* renamed from: androidx.appcompat.view.menu.h$a */
    /* loaded from: classes.dex */
    public class C0073a implements AbstractC0941b.InterfaceC0942a {
        public C0073a() {
        }
    }

    public C0072h(C0068f c0068f, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f265n = c0068f;
        this.f252a = i2;
        this.f253b = i;
        this.f254c = i3;
        this.f255d = i4;
        this.f256e = charSequence;
        this.f276y = i5;
    }

    /* renamed from: a */
    public static void m1338a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: b */
    public final Drawable m1337b(Drawable drawable) {
        if (drawable != null && this.f274w && (this.f272u || this.f273v)) {
            drawable = C0863a.m138f(drawable).mutate();
            if (this.f272u) {
                drawable.setTintList(this.f270s);
            }
            if (this.f273v) {
                drawable.setTintMode(this.f271t);
            }
            this.f274w = false;
        }
        return drawable;
    }

    /* renamed from: c */
    public final boolean m1336c() {
        AbstractC0941b abstractC0941b;
        if ((this.f276y & 8) != 0) {
            if (this.f277z == null && (abstractC0941b = this.f249A) != null) {
                this.f277z = abstractC0941b.mo62d(this);
            }
            return this.f277z != null;
        }
        return false;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f276y & 8) == 0) {
            return false;
        }
        if (this.f277z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f250B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f265n.mo1330d(this);
        }
        return false;
    }

    @Override // p063t.InterfaceMenuItemC0873b
    /* renamed from: d */
    public final AbstractC0941b mo129d() {
        return this.f249A;
    }

    @Override // p063t.InterfaceMenuItemC0873b
    /* renamed from: e */
    public final InterfaceMenuItemC0873b mo128e(AbstractC0941b abstractC0941b) {
        AbstractC0941b abstractC0941b2 = this.f249A;
        if (abstractC0941b2 != null) {
            abstractC0941b2.f2921a = null;
        }
        this.f277z = null;
        this.f249A = abstractC0941b;
        this.f265n.m1346p(true);
        AbstractC0941b abstractC0941b3 = this.f249A;
        if (abstractC0941b3 != null) {
            abstractC0941b3.mo58h(new C0073a());
        }
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean expandActionView() {
        if (m1336c()) {
            MenuItem.OnActionExpandListener onActionExpandListener = this.f250B;
            if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
                return this.f265n.mo1328f(this);
            }
            return false;
        }
        return false;
    }

    /* renamed from: f */
    public final void m1335f(boolean z) {
        this.f275x = z ? this.f275x | 32 : this.f275x & (-33);
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final View getActionView() {
        View view = this.f277z;
        if (view != null) {
            return view;
        }
        AbstractC0941b abstractC0941b = this.f249A;
        if (abstractC0941b != null) {
            View mo62d = abstractC0941b.mo62d(this);
            this.f277z = mo62d;
            return mo62d;
        }
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f262k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f261j;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f268q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f253b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f263l;
        if (drawable != null) {
            return m1337b(drawable);
        }
        int i = this.f264m;
        if (i != 0) {
            Drawable m994c = C0315a.m994c(this.f265n.f222a, i);
            this.f264m = 0;
            this.f263l = m994c;
            return m1337b(m994c);
        }
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f270s;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f271t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f258g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f252a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f260i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f259h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f254c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f266o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f256e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f257f;
        return charSequence != null ? charSequence : this.f256e;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f269r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f266o != null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f251C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f275x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f275x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f275x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        AbstractC0941b abstractC0941b = this.f249A;
        return (abstractC0941b == null || !abstractC0941b.mo59g()) ? (this.f275x & 8) == 0 : (this.f275x & 8) == 0 && this.f249A.mo64b();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setActionView(int i) {
        int i2;
        C0068f c0068f = this.f265n;
        Context context = c0068f.f222a;
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false);
        this.f277z = inflate;
        this.f249A = null;
        if (inflate != null && inflate.getId() == -1 && (i2 = this.f252a) > 0) {
            inflate.setId(i2);
        }
        c0068f.f232k = true;
        c0068f.m1346p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.f261j == c) {
            return this;
        }
        this.f261j = Character.toLowerCase(c);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f261j == c && this.f262k == i) {
            return this;
        }
        this.f261j = Character.toLowerCase(c);
        this.f262k = KeyEvent.normalizeMetaState(i);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.f275x;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f275x = i2;
        if (i != i2) {
            this.f265n.m1346p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        boolean z2;
        int i;
        int i2 = this.f275x;
        int i3 = i2 & 4;
        C0068f c0068f = this.f265n;
        int i4 = 2;
        if (i3 != 0) {
            c0068f.getClass();
            ArrayList<C0072h> arrayList = c0068f.f227f;
            int size = arrayList.size();
            c0068f.m1339w();
            for (int i5 = 0; i5 < size; i5++) {
                C0072h c0072h = arrayList.get(i5);
                if (c0072h.f253b == this.f253b) {
                    boolean z3 = true;
                    if ((c0072h.f275x & 4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && c0072h.isCheckable()) {
                        if (c0072h != this) {
                            z3 = false;
                        }
                        int i6 = c0072h.f275x;
                        int i7 = i6 & (-3);
                        if (z3) {
                            i = 2;
                        } else {
                            i = 0;
                        }
                        int i8 = i | i7;
                        c0072h.f275x = i8;
                        if (i6 != i8) {
                            c0072h.f265n.m1346p(false);
                        }
                    }
                }
            }
            c0068f.m1340v();
        } else {
            int i9 = i2 & (-3);
            if (!z) {
                i4 = 0;
            }
            int i10 = i4 | i9;
            this.f275x = i10;
            if (i2 != i10) {
                c0068f.m1346p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final InterfaceMenuItemC0873b setContentDescription(CharSequence charSequence) {
        this.f268q = charSequence;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f275x = z ? this.f275x | 16 : this.f275x & (-17);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f263l = null;
        this.f264m = i;
        this.f274w = true;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f264m = 0;
        this.f263l = drawable;
        this.f274w = true;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f270s = colorStateList;
        this.f272u = true;
        this.f274w = true;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f271t = mode;
        this.f273v = true;
        this.f274w = true;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f258g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.f259h == c) {
            return this;
        }
        this.f259h = c;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.f259h == c && this.f260i == i) {
            return this;
        }
        this.f259h = c;
        this.f260i = KeyEvent.normalizeMetaState(i);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f250B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f267p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f259h = c;
        this.f261j = Character.toLowerCase(c2);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f259h = c;
        this.f260i = KeyEvent.normalizeMetaState(i);
        this.f261j = Character.toLowerCase(c2);
        this.f262k = KeyEvent.normalizeMetaState(i2);
        this.f265n.m1346p(false);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f276y = i;
        C0068f c0068f = this.f265n;
        c0068f.f232k = true;
        c0068f.m1346p(true);
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        setTitle(this.f265n.f222a.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f256e = charSequence;
        this.f265n.m1346p(false);
        SubMenuC0083m subMenuC0083m = this.f266o;
        if (subMenuC0083m != null) {
            subMenuC0083m.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f257f = charSequence;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final InterfaceMenuItemC0873b setTooltipText(CharSequence charSequence) {
        this.f269r = charSequence;
        this.f265n.m1346p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i;
        int i2 = this.f275x;
        int i3 = i2 & (-9);
        boolean z2 = false;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        int i4 = i | i3;
        this.f275x = i4;
        if (i2 != i4) {
            z2 = true;
        }
        if (z2) {
            C0068f c0068f = this.f265n;
            c0068f.f229h = true;
            c0068f.m1346p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f256e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // p063t.InterfaceMenuItemC0873b, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i;
        this.f277z = view;
        this.f249A = null;
        if (view != null && view.getId() == -1 && (i = this.f252a) > 0) {
            view.setId(i);
        }
        C0068f c0068f = this.f265n;
        c0068f.f232k = true;
        c0068f.m1346p(true);
        return this;
    }
}
