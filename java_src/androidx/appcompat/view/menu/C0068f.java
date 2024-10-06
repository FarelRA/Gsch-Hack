package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p052p.C0819a;
import p063t.InterfaceMenuC0872a;
import p076y.AbstractC0941b;
import p076y.C0957n;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes.dex */
public class C0068f implements InterfaceMenuC0872a {

    /* renamed from: y */
    public static final int[] f221y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f222a;

    /* renamed from: b */
    public final Resources f223b;

    /* renamed from: c */
    public boolean f224c;

    /* renamed from: d */
    public boolean f225d;

    /* renamed from: e */
    public InterfaceC0069a f226e;

    /* renamed from: f */
    public final ArrayList<C0072h> f227f;

    /* renamed from: g */
    public final ArrayList<C0072h> f228g;

    /* renamed from: h */
    public boolean f229h;

    /* renamed from: i */
    public final ArrayList<C0072h> f230i;

    /* renamed from: j */
    public final ArrayList<C0072h> f231j;

    /* renamed from: k */
    public boolean f232k;

    /* renamed from: m */
    public CharSequence f234m;

    /* renamed from: n */
    public Drawable f235n;

    /* renamed from: o */
    public View f236o;

    /* renamed from: v */
    public C0072h f243v;

    /* renamed from: x */
    public boolean f245x;

    /* renamed from: l */
    public int f233l = 0;

    /* renamed from: p */
    public boolean f237p = false;

    /* renamed from: q */
    public boolean f238q = false;

    /* renamed from: r */
    public boolean f239r = false;

    /* renamed from: s */
    public boolean f240s = false;

    /* renamed from: t */
    public final ArrayList<C0072h> f241t = new ArrayList<>();

    /* renamed from: u */
    public final CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> f242u = new CopyOnWriteArrayList<>();

    /* renamed from: w */
    public boolean f244w = false;

    /* renamed from: androidx.appcompat.view.menu.f$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0069a {
        /* renamed from: a */
        boolean mo853a(C0068f c0068f, MenuItem menuItem);

        /* renamed from: b */
        void mo852b(C0068f c0068f);
    }

    /* renamed from: androidx.appcompat.view.menu.f$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0070b {
        /* renamed from: a */
        boolean mo1315a(C0072h c0072h);
    }

    public C0068f(Context context) {
        boolean z;
        boolean z2 = false;
        this.f222a = context;
        Resources resources = context.getResources();
        this.f223b = resources;
        this.f227f = new ArrayList<>();
        this.f228g = new ArrayList<>();
        this.f229h = true;
        this.f230i = new ArrayList<>();
        this.f231j = new ArrayList<>();
        this.f232k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = C0957n.f2942a;
            if (Build.VERSION.SDK_INT >= 28) {
                z = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                if (identifier != 0 && resources2.getBoolean(identifier)) {
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                z2 = true;
            }
        }
        this.f225d = z2;
    }

    /* renamed from: a */
    public final C0072h m1353a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0 && i5 < 6) {
            int i6 = (f221y[i5] << 16) | (65535 & i3);
            C0072h c0072h = new C0072h(this, i, i2, i3, i6, charSequence, this.f233l);
            ArrayList<C0072h> arrayList = this.f227f;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    if (arrayList.get(size).f255d <= i6) {
                        i4 = size + 1;
                        break;
                    }
                } else {
                    i4 = 0;
                    break;
                }
            }
            arrayList.add(i4, c0072h);
            m1346p(true);
            return c0072h;
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return m1353a(0, 0, 0, this.f223b.getString(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return m1353a(i, i2, i3, this.f223b.getString(i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m1353a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return m1353a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f222a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            C0072h m1353a = m1353a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            m1353a.setIcon(resolveInfo.loadIcon(packageManager));
            m1353a.f258g = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = m1353a;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f223b.getString(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f223b.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0072h m1353a = m1353a(i, i2, i3, charSequence);
        SubMenuC0083m subMenuC0083m = new SubMenuC0083m(this.f222a, this, m1353a);
        m1353a.f266o = subMenuC0083m;
        subMenuC0083m.setHeaderTitle(m1353a.f256e);
        return subMenuC0083m;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public final void m1352b(InterfaceC0076j interfaceC0076j, Context context) {
        this.f242u.add(new WeakReference<>(interfaceC0076j));
        interfaceC0076j.mo693e(context, this);
        this.f232k = true;
    }

    /* renamed from: c */
    public final void m1351c(boolean z) {
        if (this.f240s) {
            return;
        }
        this.f240s = true;
        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
        Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0076j> next = it.next();
            InterfaceC0076j interfaceC0076j = next.get();
            if (interfaceC0076j == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                interfaceC0076j.mo1281a(this, z);
            }
        }
        this.f240s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        C0072h c0072h = this.f243v;
        if (c0072h != null) {
            mo1330d(c0072h);
        }
        this.f227f.clear();
        m1346p(true);
    }

    public final void clearHeader() {
        this.f235n = null;
        this.f234m = null;
        this.f236o = null;
        m1346p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        m1351c(true);
    }

    /* renamed from: d */
    public boolean mo1330d(C0072h c0072h) {
        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
        boolean z = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f243v == c0072h) {
            m1339w();
            Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0076j> next = it.next();
                InterfaceC0076j interfaceC0076j = next.get();
                if (interfaceC0076j == null) {
                    copyOnWriteArrayList.remove(next);
                } else {
                    z = interfaceC0076j.mo694b(c0072h);
                    if (z) {
                        break;
                    }
                }
            }
            m1340v();
            if (z) {
                this.f243v = null;
            }
        }
        return z;
    }

    /* renamed from: e */
    public boolean mo1329e(C0068f c0068f, MenuItem menuItem) {
        InterfaceC0069a interfaceC0069a = this.f226e;
        return interfaceC0069a != null && interfaceC0069a.mo853a(c0068f, menuItem);
    }

    /* renamed from: f */
    public boolean mo1328f(C0072h c0072h) {
        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
        boolean z = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        m1339w();
        Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0076j> next = it.next();
            InterfaceC0076j interfaceC0076j = next.get();
            if (interfaceC0076j == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                z = interfaceC0076j.mo692j(c0072h);
                if (z) {
                    break;
                }
            }
        }
        m1340v();
        if (z) {
            this.f243v = c0072h;
        }
        return z;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0072h c0072h = this.f227f.get(i2);
            if (c0072h.f252a == i) {
                return c0072h;
            }
            if (c0072h.hasSubMenu() && (findItem = c0072h.f266o.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final C0072h m1350g(int i, KeyEvent keyEvent) {
        char c;
        ArrayList<C0072h> arrayList = this.f241t;
        arrayList.clear();
        m1349h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean mo1324n = mo1324n();
        for (int i2 = 0; i2 < size; i2++) {
            C0072h c0072h = arrayList.get(i2);
            if (mo1324n) {
                c = c0072h.f261j;
            } else {
                c = c0072h.f259h;
            }
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (mo1324n && c == '\b' && i == 67))) {
                return c0072h;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return this.f227f.get(i);
    }

    /* renamed from: h */
    public final void m1349h(ArrayList arrayList, int i, KeyEvent keyEvent) {
        char c;
        int i2;
        boolean z;
        boolean mo1324n = mo1324n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (!keyEvent.getKeyData(keyData) && i != 67) {
            return;
        }
        ArrayList<C0072h> arrayList2 = this.f227f;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0072h c0072h = arrayList2.get(i3);
            if (c0072h.hasSubMenu()) {
                c0072h.f266o.m1349h(arrayList, i, keyEvent);
            }
            if (mo1324n) {
                c = c0072h.f261j;
            } else {
                c = c0072h.f259h;
            }
            if (mo1324n) {
                i2 = c0072h.f262k;
            } else {
                i2 = c0072h.f260i;
            }
            if ((modifiers & 69647) == (i2 & 69647)) {
                z = true;
            } else {
                z = false;
            }
            if (z && c != 0) {
                char[] cArr = keyData.meta;
                if (c != cArr[0] && c != cArr[2]) {
                    if (mo1324n && c == '\b') {
                        if (i != 67) {
                        }
                    }
                }
                if (c0072h.isEnabled()) {
                    arrayList.add(c0072h);
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f245x) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f227f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m1348i() {
        boolean z;
        ArrayList<C0072h> m1347l = m1347l();
        if (!this.f232k) {
            return;
        }
        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
        Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            WeakReference<InterfaceC0076j> next = it.next();
            InterfaceC0076j interfaceC0076j = next.get();
            if (interfaceC0076j == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                z2 |= interfaceC0076j.mo1279d();
            }
        }
        ArrayList<C0072h> arrayList = this.f230i;
        ArrayList<C0072h> arrayList2 = this.f231j;
        arrayList.clear();
        arrayList2.clear();
        if (z2) {
            int size = m1347l.size();
            for (int i = 0; i < size; i++) {
                C0072h c0072h = m1347l.get(i);
                if ((c0072h.f275x & 32) == 32) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    arrayList.add(c0072h);
                } else {
                    arrayList2.add(c0072h);
                }
            }
        } else {
            arrayList2.addAll(m1347l());
        }
        this.f232k = false;
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m1350g(i, keyEvent) != null;
    }

    /* renamed from: j */
    public String mo1327j() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: k */
    public C0068f mo1326k() {
        return this;
    }

    /* renamed from: l */
    public final ArrayList<C0072h> m1347l() {
        boolean z = this.f229h;
        ArrayList<C0072h> arrayList = this.f228g;
        if (z) {
            arrayList.clear();
            ArrayList<C0072h> arrayList2 = this.f227f;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                C0072h c0072h = arrayList2.get(i);
                if (c0072h.isVisible()) {
                    arrayList.add(c0072h);
                }
            }
            this.f229h = false;
            this.f232k = true;
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: m */
    public boolean mo1325m() {
        return this.f244w;
    }

    /* renamed from: n */
    public boolean mo1324n() {
        return this.f224c;
    }

    /* renamed from: o */
    public boolean mo1323o() {
        return this.f225d;
    }

    /* renamed from: p */
    public final void m1346p(boolean z) {
        if (!this.f237p) {
            if (z) {
                this.f229h = true;
                this.f232k = true;
            }
            CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
            if (!copyOnWriteArrayList.isEmpty()) {
                m1339w();
                Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    WeakReference<InterfaceC0076j> next = it.next();
                    InterfaceC0076j interfaceC0076j = next.get();
                    if (interfaceC0076j == null) {
                        copyOnWriteArrayList.remove(next);
                    } else {
                        interfaceC0076j.mo1278f();
                    }
                }
                m1340v();
                return;
            }
            return;
        }
        this.f238q = true;
        if (z) {
            this.f239r = true;
        }
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return m1345q(findItem(i), null, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        boolean z;
        C0072h m1350g = m1350g(i, keyEvent);
        if (m1350g != null) {
            z = m1345q(m1350g, null, i2);
        } else {
            z = false;
        }
        if ((i2 & 2) != 0) {
            m1351c(true);
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
        if (r1 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0067, code lost:
        if ((r9 & 1) == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00bf, code lost:
        if (r1 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c1, code lost:
        m1351c(true);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005c  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m1345q(MenuItem menuItem, InterfaceC0076j interfaceC0076j, int i) {
        boolean z;
        AbstractC0941b abstractC0941b;
        boolean z2;
        C0072h c0072h = (C0072h) menuItem;
        boolean z3 = false;
        if (c0072h == null || !c0072h.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = c0072h.f267p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(c0072h)) {
            C0068f c0068f = c0072h.f265n;
            if (!c0068f.mo1329e(c0068f, c0072h)) {
                Intent intent = c0072h.f258g;
                if (intent != null) {
                    try {
                        c0068f.f222a.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
                    }
                }
                AbstractC0941b abstractC0941b2 = c0072h.f249A;
                if (abstractC0941b2 == null || !abstractC0941b2.mo61e()) {
                    z = false;
                    abstractC0941b = c0072h.f249A;
                    if (abstractC0941b == null && abstractC0941b.mo65a()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!c0072h.m1336c()) {
                        z |= c0072h.expandActionView();
                    } else if (c0072h.hasSubMenu() || z2) {
                        if ((i & 4) == 0) {
                            m1351c(false);
                        }
                        if (!c0072h.hasSubMenu()) {
                            SubMenuC0083m subMenuC0083m = new SubMenuC0083m(this.f222a, this, c0072h);
                            c0072h.f266o = subMenuC0083m;
                            subMenuC0083m.setHeaderTitle(c0072h.f256e);
                        }
                        SubMenuC0083m subMenuC0083m2 = c0072h.f266o;
                        if (z2) {
                            abstractC0941b.mo60f(subMenuC0083m2);
                        }
                        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            if (interfaceC0076j != null) {
                                z3 = interfaceC0076j.mo1275k(subMenuC0083m2);
                            }
                            Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
                            while (it.hasNext()) {
                                WeakReference<InterfaceC0076j> next = it.next();
                                InterfaceC0076j interfaceC0076j2 = next.get();
                                if (interfaceC0076j2 == null) {
                                    copyOnWriteArrayList.remove(next);
                                } else if (!z3) {
                                    z3 = interfaceC0076j2.mo1275k(subMenuC0083m2);
                                }
                            }
                        }
                        z |= z3;
                    }
                    return z;
                }
            }
        }
        z = true;
        abstractC0941b = c0072h.f249A;
        if (abstractC0941b == null) {
        }
        z2 = false;
        if (!c0072h.m1336c()) {
        }
        return z;
    }

    /* renamed from: r */
    public final void m1344r(InterfaceC0076j interfaceC0076j) {
        CopyOnWriteArrayList<WeakReference<InterfaceC0076j>> copyOnWriteArrayList = this.f242u;
        Iterator<WeakReference<InterfaceC0076j>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0076j> next = it.next();
            InterfaceC0076j interfaceC0076j2 = next.get();
            if (interfaceC0076j2 == null || interfaceC0076j2 == interfaceC0076j) {
                copyOnWriteArrayList.remove(next);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        ArrayList<C0072h> arrayList;
        int size = size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            arrayList = this.f227f;
            if (i3 < size) {
                if (arrayList.get(i3).f253b == i) {
                    break;
                }
                i3++;
            } else {
                i3 = -1;
                break;
            }
        }
        if (i3 >= 0) {
            int size2 = arrayList.size() - i3;
            while (true) {
                int i4 = i2 + 1;
                if (i2 >= size2 || arrayList.get(i3).f253b != i) {
                    break;
                }
                if (i3 >= 0 && i3 < arrayList.size()) {
                    arrayList.remove(i3);
                }
                i2 = i4;
            }
            m1346p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        ArrayList<C0072h> arrayList;
        int size = size();
        int i2 = 0;
        while (true) {
            arrayList = this.f227f;
            if (i2 < size) {
                if (arrayList.get(i2).f252a == i) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 >= 0 && i2 < arrayList.size()) {
            arrayList.remove(i2);
            m1346p(true);
        }
    }

    /* renamed from: s */
    public final void m1343s(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo1327j());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0083m) item.getSubMenu()).m1343s(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        int i2;
        ArrayList<C0072h> arrayList = this.f227f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0072h c0072h = arrayList.get(i3);
            if (c0072h.f253b == i) {
                int i4 = c0072h.f275x & (-5);
                if (z2) {
                    i2 = 4;
                } else {
                    i2 = 0;
                }
                c0072h.f275x = i4 | i2;
                c0072h.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f244w = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ArrayList<C0072h> arrayList = this.f227f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0072h c0072h = arrayList.get(i2);
            if (c0072h.f253b == i) {
                c0072h.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        int i2;
        boolean z2;
        ArrayList<C0072h> arrayList = this.f227f;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            C0072h c0072h = arrayList.get(i3);
            if (c0072h.f253b == i) {
                int i4 = c0072h.f275x;
                int i5 = i4 & (-9);
                if (z) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
                int i6 = i5 | i2;
                c0072h.f275x = i6;
                if (i4 != i6) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    z3 = true;
                }
            }
        }
        if (z3) {
            m1346p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f224c = z;
        m1346p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f227f.size();
    }

    /* renamed from: t */
    public final void m1342t(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0083m) item.getSubMenu()).m1342t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo1327j(), sparseArray);
        }
    }

    /* renamed from: u */
    public final void m1341u(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        if (view != null) {
            this.f236o = view;
            this.f234m = null;
            this.f235n = null;
        } else {
            if (i > 0) {
                this.f234m = this.f223b.getText(i);
            } else if (charSequence != null) {
                this.f234m = charSequence;
            }
            if (i2 > 0) {
                Object obj = C0819a.f2712a;
                this.f235n = this.f222a.getDrawable(i2);
            } else if (drawable != null) {
                this.f235n = drawable;
            }
            this.f236o = null;
        }
        m1346p(false);
    }

    /* renamed from: v */
    public final void m1340v() {
        this.f237p = false;
        if (this.f238q) {
            this.f238q = false;
            m1346p(this.f239r);
        }
    }

    /* renamed from: w */
    public final void m1339w() {
        if (this.f237p) {
            return;
        }
        this.f237p = true;
        this.f238q = false;
        this.f239r = false;
    }
}
