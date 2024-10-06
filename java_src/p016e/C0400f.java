package p016e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0072h;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;
import p020f.MenuItemC0461d;
import p024g.C0494b0;
import p046m1.C0736h;
import p063t.InterfaceMenuC0872a;
import p063t.InterfaceMenuItemC0873b;
import p076y.AbstractC0941b;
/* renamed from: e.f */
/* loaded from: classes.dex */
public final class C0400f extends MenuInflater {

    /* renamed from: e */
    public static final Class<?>[] f1473e;

    /* renamed from: f */
    public static final Class<?>[] f1474f;

    /* renamed from: a */
    public final Object[] f1475a;

    /* renamed from: b */
    public final Object[] f1476b;

    /* renamed from: c */
    public final Context f1477c;

    /* renamed from: d */
    public Object f1478d;

    /* renamed from: e.f$a */
    /* loaded from: classes.dex */
    public static class MenuItem$OnMenuItemClickListenerC0401a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c */
        public static final Class<?>[] f1479c = {MenuItem.class};

        /* renamed from: a */
        public final Object f1480a;

        /* renamed from: b */
        public final Method f1481b;

        public MenuItem$OnMenuItemClickListenerC0401a(Object obj, String str) {
            this.f1480a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1481b = cls.getMethod(str, f1479c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Method method = this.f1481b;
            try {
                Class<?> returnType = method.getReturnType();
                Class<?> cls = Boolean.TYPE;
                Object obj = this.f1480a;
                if (returnType == cls) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: e.f$b */
    /* loaded from: classes.dex */
    public class C0402b {

        /* renamed from: A */
        public CharSequence f1482A;

        /* renamed from: B */
        public CharSequence f1483B;

        /* renamed from: a */
        public final Menu f1487a;

        /* renamed from: h */
        public boolean f1494h;

        /* renamed from: i */
        public int f1495i;

        /* renamed from: j */
        public int f1496j;

        /* renamed from: k */
        public CharSequence f1497k;

        /* renamed from: l */
        public CharSequence f1498l;

        /* renamed from: m */
        public int f1499m;

        /* renamed from: n */
        public char f1500n;

        /* renamed from: o */
        public int f1501o;

        /* renamed from: p */
        public char f1502p;

        /* renamed from: q */
        public int f1503q;

        /* renamed from: r */
        public int f1504r;

        /* renamed from: s */
        public boolean f1505s;

        /* renamed from: t */
        public boolean f1506t;

        /* renamed from: u */
        public boolean f1507u;

        /* renamed from: v */
        public int f1508v;

        /* renamed from: w */
        public int f1509w;

        /* renamed from: x */
        public String f1510x;

        /* renamed from: y */
        public String f1511y;

        /* renamed from: z */
        public AbstractC0941b f1512z;

        /* renamed from: C */
        public ColorStateList f1484C = null;

        /* renamed from: D */
        public PorterDuff.Mode f1485D = null;

        /* renamed from: b */
        public int f1488b = 0;

        /* renamed from: c */
        public int f1489c = 0;

        /* renamed from: d */
        public int f1490d = 0;

        /* renamed from: e */
        public int f1491e = 0;

        /* renamed from: f */
        public boolean f1492f = true;

        /* renamed from: g */
        public boolean f1493g = true;

        public C0402b(Menu menu) {
            this.f1487a = menu;
        }

        /* renamed from: a */
        public final <T> T m830a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = C0400f.this.f1477c.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: b */
        public final void m829b(MenuItem menuItem) {
            boolean z;
            MenuItem enabled = menuItem.setChecked(this.f1505s).setVisible(this.f1506t).setEnabled(this.f1507u);
            boolean z2 = false;
            if (this.f1504r >= 1) {
                z = true;
            } else {
                z = false;
            }
            enabled.setCheckable(z).setTitleCondensed(this.f1498l).setIcon(this.f1499m);
            int i = this.f1508v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            String str = this.f1511y;
            C0400f c0400f = C0400f.this;
            if (str != null) {
                if (!c0400f.f1477c.isRestricted()) {
                    if (c0400f.f1478d == null) {
                        c0400f.f1478d = C0400f.m832a(c0400f.f1477c);
                    }
                    menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0401a(c0400f.f1478d, this.f1511y));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            boolean z3 = menuItem instanceof C0072h;
            if (z3) {
                C0072h c0072h = (C0072h) menuItem;
            }
            if (this.f1504r >= 2) {
                if (z3) {
                    C0072h c0072h2 = (C0072h) menuItem;
                    c0072h2.f275x = (c0072h2.f275x & (-5)) | 4;
                } else if (menuItem instanceof MenuItemC0461d) {
                    MenuItemC0461d menuItemC0461d = (MenuItemC0461d) menuItem;
                    try {
                        if (menuItemC0461d.f1798e == null) {
                            menuItemC0461d.f1798e = ((InterfaceMenuItemC0873b) menuItemC0461d.f1797a).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemC0461d.f1798e.invoke(menuItemC0461d.f1797a, Boolean.TRUE);
                    } catch (Exception e) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
                    }
                }
            }
            String str2 = this.f1510x;
            if (str2 != null) {
                menuItem.setActionView((View) m830a(str2, C0400f.f1473e, c0400f.f1475a));
                z2 = true;
            }
            int i2 = this.f1509w;
            if (i2 > 0) {
                if (!z2) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC0941b abstractC0941b = this.f1512z;
            if (abstractC0941b != null) {
                if (menuItem instanceof InterfaceMenuItemC0873b) {
                    ((InterfaceMenuItemC0873b) menuItem).mo128e(abstractC0941b);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.f1482A;
            boolean z4 = menuItem instanceof InterfaceMenuItemC0873b;
            if (z4) {
                ((InterfaceMenuItemC0873b) menuItem).setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.f1483B;
            if (z4) {
                ((InterfaceMenuItemC0873b) menuItem).setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.f1500n;
            int i3 = this.f1501o;
            if (z4) {
                ((InterfaceMenuItemC0873b) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.f1502p;
            int i4 = this.f1503q;
            if (z4) {
                ((InterfaceMenuItemC0873b) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.f1485D;
            if (mode != null) {
                if (z4) {
                    ((InterfaceMenuItemC0873b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.f1484C;
            if (colorStateList != null) {
                if (z4) {
                    ((InterfaceMenuItemC0873b) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f1473e = clsArr;
        f1474f = clsArr;
    }

    public C0400f(Context context) {
        super(context);
        this.f1477c = context;
        Object[] objArr = {context};
        this.f1475a = objArr;
        this.f1476b = objArr;
    }

    /* renamed from: a */
    public static Object m832a(Context context) {
        return (!(context instanceof Activity) && (context instanceof ContextWrapper)) ? m832a(((ContextWrapper) context).getBaseContext()) : context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final void m831b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        int i;
        char charAt;
        char charAt2;
        int i2;
        boolean z;
        AbstractC0941b abstractC0941b;
        ColorStateList colorStateList;
        C0402b c0402b = new C0402b(menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlResourceParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType != 1) {
                Menu menu2 = c0402b.f1487a;
                if (eventType != i) {
                    if (eventType == 3) {
                        String name2 = xmlResourceParser.getName();
                        if (z3 && name2.equals(str)) {
                            z3 = false;
                            str = null;
                        } else if (name2.equals("group")) {
                            c0402b.f1488b = 0;
                            c0402b.f1489c = 0;
                            c0402b.f1490d = 0;
                            c0402b.f1491e = 0;
                            c0402b.f1492f = true;
                            c0402b.f1493g = true;
                        } else if (name2.equals("item")) {
                            if (!c0402b.f1494h) {
                                AbstractC0941b abstractC0941b2 = c0402b.f1512z;
                                if (abstractC0941b2 != null && abstractC0941b2.mo65a()) {
                                    c0402b.f1494h = true;
                                    c0402b.m829b(menu2.addSubMenu(c0402b.f1488b, c0402b.f1495i, c0402b.f1496j, c0402b.f1497k).getItem());
                                } else {
                                    c0402b.f1494h = true;
                                    c0402b.m829b(menu2.add(c0402b.f1488b, c0402b.f1495i, c0402b.f1496j, c0402b.f1497k));
                                }
                            }
                        } else if (name2.equals("menu")) {
                            z2 = true;
                        }
                    }
                } else if (!z3) {
                    String name3 = xmlResourceParser.getName();
                    boolean equals = name3.equals("group");
                    C0400f c0400f = C0400f.this;
                    if (equals) {
                        TypedArray obtainStyledAttributes = c0400f.f1477c.obtainStyledAttributes(attributeSet, C0736h.f2582v);
                        c0402b.f1488b = obtainStyledAttributes.getResourceId(1, 0);
                        c0402b.f1489c = obtainStyledAttributes.getInt(3, 0);
                        c0402b.f1490d = obtainStyledAttributes.getInt(4, 0);
                        c0402b.f1491e = obtainStyledAttributes.getInt(5, 0);
                        c0402b.f1492f = obtainStyledAttributes.getBoolean(2, true);
                        c0402b.f1493g = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                    } else if (name3.equals("item")) {
                        TypedArray obtainStyledAttributes2 = c0400f.f1477c.obtainStyledAttributes(attributeSet, C0736h.f2583w);
                        c0402b.f1495i = obtainStyledAttributes2.getResourceId(2, 0);
                        c0402b.f1496j = (obtainStyledAttributes2.getInt(5, c0402b.f1489c) & (-65536)) | (obtainStyledAttributes2.getInt(6, c0402b.f1490d) & 65535);
                        c0402b.f1497k = obtainStyledAttributes2.getText(7);
                        c0402b.f1498l = obtainStyledAttributes2.getText(8);
                        c0402b.f1499m = obtainStyledAttributes2.getResourceId(0, 0);
                        String string = obtainStyledAttributes2.getString(9);
                        if (string == null) {
                            charAt = 0;
                        } else {
                            charAt = string.charAt(0);
                        }
                        c0402b.f1500n = charAt;
                        c0402b.f1501o = obtainStyledAttributes2.getInt(16, 4096);
                        String string2 = obtainStyledAttributes2.getString(10);
                        if (string2 == null) {
                            charAt2 = 0;
                        } else {
                            charAt2 = string2.charAt(0);
                        }
                        c0402b.f1502p = charAt2;
                        c0402b.f1503q = obtainStyledAttributes2.getInt(20, 4096);
                        if (obtainStyledAttributes2.hasValue(11)) {
                            i2 = obtainStyledAttributes2.getBoolean(11, false);
                        } else {
                            i2 = c0402b.f1491e;
                        }
                        c0402b.f1504r = i2;
                        c0402b.f1505s = obtainStyledAttributes2.getBoolean(3, false);
                        c0402b.f1506t = obtainStyledAttributes2.getBoolean(4, c0402b.f1492f);
                        c0402b.f1507u = obtainStyledAttributes2.getBoolean(1, c0402b.f1493g);
                        c0402b.f1508v = obtainStyledAttributes2.getInt(21, -1);
                        c0402b.f1511y = obtainStyledAttributes2.getString(12);
                        c0402b.f1509w = obtainStyledAttributes2.getResourceId(13, 0);
                        c0402b.f1510x = obtainStyledAttributes2.getString(15);
                        String string3 = obtainStyledAttributes2.getString(14);
                        if (string3 != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z && c0402b.f1509w == 0 && c0402b.f1510x == null) {
                            abstractC0941b = (AbstractC0941b) c0402b.m830a(string3, f1474f, c0400f.f1476b);
                        } else {
                            if (z) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            abstractC0941b = null;
                        }
                        c0402b.f1512z = abstractC0941b;
                        c0402b.f1482A = obtainStyledAttributes2.getText(17);
                        c0402b.f1483B = obtainStyledAttributes2.getText(22);
                        if (obtainStyledAttributes2.hasValue(19)) {
                            c0402b.f1485D = C0494b0.m635c(obtainStyledAttributes2.getInt(19, -1), c0402b.f1485D);
                            colorStateList = null;
                        } else {
                            colorStateList = null;
                            c0402b.f1485D = null;
                        }
                        if (obtainStyledAttributes2.hasValue(18)) {
                            c0402b.f1484C = obtainStyledAttributes2.getColorStateList(18);
                        } else {
                            c0402b.f1484C = colorStateList;
                        }
                        obtainStyledAttributes2.recycle();
                        c0402b.f1494h = false;
                    } else if (name3.equals("menu")) {
                        c0402b.f1494h = true;
                        SubMenu addSubMenu = menu2.addSubMenu(c0402b.f1488b, c0402b.f1495i, c0402b.f1496j, c0402b.f1497k);
                        c0402b.m829b(addSubMenu.getItem());
                        m831b(xmlResourceParser, attributeSet, addSubMenu);
                    } else {
                        str = name3;
                        z3 = true;
                    }
                }
                eventType = xmlResourceParser.next();
                i = 2;
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof InterfaceMenuC0872a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f1477c.getResources().getLayout(i);
                    m831b(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
