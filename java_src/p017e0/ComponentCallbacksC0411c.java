package p017e0;

import android.animation.Animator;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0160f;
import androidx.lifecycle.C0164h;
import androidx.lifecycle.C0168j;
import androidx.lifecycle.C0171m;
import androidx.lifecycle.InterfaceC0163g;
import androidx.lifecycle.InterfaceC0172n;
import java.lang.reflect.InvocationTargetException;
import p017e0.LayoutInflater$Factory2C0421g;
import p028h.AbstractC0574c;
import p039k.C0666h;
import p046m1.C0736h;
import p057q1.C0844h;
/* renamed from: e0.c */
/* loaded from: classes.dex */
public final class ComponentCallbacksC0411c implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0163g, InterfaceC0172n {

    /* renamed from: P */
    public static final C0666h<String, Class<?>> f1559P = new C0666h<>();

    /* renamed from: Q */
    public static final Object f1560Q = new Object();

    /* renamed from: A */
    public boolean f1561A;

    /* renamed from: B */
    public boolean f1562B;

    /* renamed from: C */
    public boolean f1563C;

    /* renamed from: D */
    public boolean f1564D;

    /* renamed from: F */
    public boolean f1566F;

    /* renamed from: G */
    public ViewGroup f1567G;

    /* renamed from: H */
    public View f1568H;

    /* renamed from: I */
    public boolean f1569I;

    /* renamed from: K */
    public C0413b f1571K;

    /* renamed from: L */
    public boolean f1572L;

    /* renamed from: M */
    public boolean f1573M;

    /* renamed from: c */
    public Bundle f1577c;

    /* renamed from: d */
    public SparseArray<Parcelable> f1578d;

    /* renamed from: f */
    public String f1580f;

    /* renamed from: g */
    public Bundle f1581g;

    /* renamed from: h */
    public ComponentCallbacksC0411c f1582h;

    /* renamed from: j */
    public int f1584j;

    /* renamed from: k */
    public boolean f1585k;

    /* renamed from: l */
    public boolean f1586l;

    /* renamed from: m */
    public boolean f1587m;

    /* renamed from: n */
    public boolean f1588n;

    /* renamed from: o */
    public boolean f1589o;

    /* renamed from: p */
    public boolean f1590p;

    /* renamed from: q */
    public int f1591q;

    /* renamed from: r */
    public LayoutInflater$Factory2C0421g f1592r;

    /* renamed from: s */
    public AbstractC0419e f1593s;

    /* renamed from: t */
    public LayoutInflater$Factory2C0421g f1594t;

    /* renamed from: u */
    public C0426h f1595u;

    /* renamed from: v */
    public C0171m f1596v;

    /* renamed from: w */
    public ComponentCallbacksC0411c f1597w;

    /* renamed from: x */
    public int f1598x;

    /* renamed from: y */
    public int f1599y;

    /* renamed from: z */
    public String f1600z;

    /* renamed from: b */
    public int f1576b = 0;

    /* renamed from: e */
    public int f1579e = -1;

    /* renamed from: i */
    public int f1583i = -1;

    /* renamed from: E */
    public final boolean f1565E = true;

    /* renamed from: J */
    public boolean f1570J = true;

    /* renamed from: N */
    public final C0164h f1574N = new C0164h(this);

    /* renamed from: O */
    public final C0168j<InterfaceC0163g> f1575O = new C0168j<>();

    /* renamed from: e0.c$a */
    /* loaded from: classes.dex */
    public class C0412a extends AbstractC0574c {
        public C0412a() {
        }

        @Override // p028h.AbstractC0574c
        /* renamed from: c */
        public final ComponentCallbacksC0411c mo521c(Context context, String str, Bundle bundle) {
            ComponentCallbacksC0411c.this.f1593s.getClass();
            return ComponentCallbacksC0411c.m799d(context, str, bundle);
        }

        @Override // p028h.AbstractC0574c
        /* renamed from: d */
        public final View mo520d(int i) {
            ComponentCallbacksC0411c.this.getClass();
            throw new IllegalStateException("Fragment does not have a view");
        }

        @Override // p028h.AbstractC0574c
        /* renamed from: e */
        public final boolean mo519e() {
            ComponentCallbacksC0411c.this.getClass();
            return false;
        }
    }

    /* renamed from: e0.c$b */
    /* loaded from: classes.dex */
    public static class C0413b {

        /* renamed from: a */
        public View f1602a;

        /* renamed from: b */
        public Animator f1603b;

        /* renamed from: c */
        public int f1604c;

        /* renamed from: d */
        public int f1605d;

        /* renamed from: e */
        public int f1606e;

        /* renamed from: f */
        public int f1607f;

        /* renamed from: g */
        public final Object f1608g;

        /* renamed from: h */
        public final Object f1609h;

        /* renamed from: i */
        public final Object f1610i;

        public C0413b() {
            Object obj = ComponentCallbacksC0411c.f1560Q;
            this.f1608g = obj;
            this.f1609h = obj;
            this.f1610i = obj;
        }
    }

    /* renamed from: e0.c$c */
    /* loaded from: classes.dex */
    public static class C0414c extends RuntimeException {
        public C0414c(String str, ReflectiveOperationException reflectiveOperationException) {
            super(str, reflectiveOperationException);
        }
    }

    /* renamed from: d */
    public static ComponentCallbacksC0411c m799d(Context context, String str, Bundle bundle) {
        try {
            C0666h<String, Class<?>> c0666h = f1559P;
            Class<?> orDefault = c0666h.getOrDefault(str, null);
            if (orDefault == null) {
                orDefault = context.getClassLoader().loadClass(str);
                c0666h.put(str, orDefault);
            }
            ComponentCallbacksC0411c componentCallbacksC0411c = (ComponentCallbacksC0411c) orDefault.getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(componentCallbacksC0411c.getClass().getClassLoader());
                componentCallbacksC0411c.m795h(bundle);
            }
            return componentCallbacksC0411c;
        } catch (ClassNotFoundException e) {
            throw new C0414c(C0844h.m187a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (IllegalAccessException e2) {
            throw new C0414c(C0844h.m187a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (InstantiationException e3) {
            throw new C0414c(C0844h.m187a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new C0414c(C0844h.m187a("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new C0414c(C0844h.m187a("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    /* renamed from: a */
    public final C0413b m802a() {
        if (this.f1571K == null) {
            this.f1571K = new C0413b();
        }
        return this.f1571K;
    }

    /* renamed from: b */
    public final View m801b() {
        C0413b c0413b = this.f1571K;
        if (c0413b == null) {
            return null;
        }
        return c0413b.f1602a;
    }

    /* renamed from: c */
    public final Animator m800c() {
        C0413b c0413b = this.f1571K;
        if (c0413b == null) {
            return null;
        }
        return c0413b.f1603b;
    }

    /* renamed from: e */
    public final void m798e() {
        if (this.f1593s != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = new LayoutInflater$Factory2C0421g();
            this.f1594t = layoutInflater$Factory2C0421g;
            AbstractC0419e abstractC0419e = this.f1593s;
            C0412a c0412a = new C0412a();
            if (layoutInflater$Factory2C0421g.f1641l == null) {
                layoutInflater$Factory2C0421g.f1641l = abstractC0419e;
                layoutInflater$Factory2C0421g.f1642m = c0412a;
                layoutInflater$Factory2C0421g.f1643n = this;
                return;
            }
            throw new IllegalStateException("Already attached");
        }
        throw new IllegalStateException("Fragment has not been attached yet.");
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* renamed from: f */
    public final LayoutInflater m797f() {
        AbstractC0419e abstractC0419e = this.f1593s;
        if (abstractC0419e != null) {
            ActivityC0415d activityC0415d = ActivityC0415d.this;
            LayoutInflater cloneInContext = activityC0415d.getLayoutInflater().cloneInContext(activityC0415d);
            if (this.f1594t == null) {
                m798e();
                int i = this.f1576b;
                if (i >= 4) {
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = this.f1594t;
                    layoutInflater$Factory2C0421g.f1645p = false;
                    layoutInflater$Factory2C0421g.f1646q = false;
                    layoutInflater$Factory2C0421g.m786C(4);
                } else if (i >= 3) {
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2 = this.f1594t;
                    layoutInflater$Factory2C0421g2.f1645p = false;
                    layoutInflater$Factory2C0421g2.f1646q = false;
                    layoutInflater$Factory2C0421g2.m786C(3);
                } else if (i >= 2) {
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g3 = this.f1594t;
                    layoutInflater$Factory2C0421g3.f1645p = false;
                    layoutInflater$Factory2C0421g3.f1646q = false;
                    layoutInflater$Factory2C0421g3.m786C(2);
                } else if (i >= 1) {
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g4 = this.f1594t;
                    layoutInflater$Factory2C0421g4.f1645p = false;
                    layoutInflater$Factory2C0421g4.f1646q = false;
                    layoutInflater$Factory2C0421g4.m786C(1);
                }
            }
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g5 = this.f1594t;
            layoutInflater$Factory2C0421g5.getClass();
            cloneInContext.setFactory2(layoutInflater$Factory2C0421g5);
            return cloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    /* renamed from: g */
    public final void m796g(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            if (this.f1594t == null) {
                m798e();
            }
            this.f1594t.m771R(parcelable, this.f1595u);
            this.f1595u = null;
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = this.f1594t;
            layoutInflater$Factory2C0421g.f1645p = false;
            layoutInflater$Factory2C0421g.f1646q = false;
            layoutInflater$Factory2C0421g.m786C(1);
        }
    }

    @Override // androidx.lifecycle.InterfaceC0163g
    public final AbstractC0160f getLifecycle() {
        return this.f1574N;
    }

    @Override // androidx.lifecycle.InterfaceC0172n
    public final C0171m getViewModelStore() {
        Context context;
        AbstractC0419e abstractC0419e = this.f1593s;
        if (abstractC0419e == null) {
            context = null;
        } else {
            context = abstractC0419e.f1627b;
        }
        if (context != null) {
            if (this.f1596v == null) {
                this.f1596v = new C0171m();
            }
            return this.f1596v;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* renamed from: h */
    public final void m795h(Bundle bundle) {
        if (this.f1579e >= 0) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = this.f1592r;
            boolean z = false;
            if (layoutInflater$Factory2C0421g != null && (layoutInflater$Factory2C0421g.f1645p || layoutInflater$Factory2C0421g.f1646q)) {
                z = true;
            }
            if (z) {
                throw new IllegalStateException("Fragment already active and state has been saved");
            }
        }
        this.f1581g = bundle;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* renamed from: i */
    public final void m794i(int i, ComponentCallbacksC0411c componentCallbacksC0411c) {
        StringBuilder sb;
        this.f1579e = i;
        if (componentCallbacksC0411c != null) {
            sb = new StringBuilder();
            sb.append(componentCallbacksC0411c.f1580f);
            sb.append(":");
        } else {
            sb = new StringBuilder("android:fragment:");
        }
        sb.append(this.f1579e);
        this.f1580f = sb.toString();
    }

    /* renamed from: j */
    public final void m793j(int i) {
        if (this.f1571K == null && i == 0) {
            return;
        }
        m802a().f1605d = i;
    }

    /* renamed from: k */
    public final void m792k(LayoutInflater$Factory2C0421g.C0425d c0425d) {
        m802a();
        this.f1571K.getClass();
        if (c0425d != null && c0425d != null) {
            c0425d.f1656a++;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.f1566F = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        ActivityC0415d activityC0415d;
        AbstractC0419e abstractC0419e = this.f1593s;
        if (abstractC0419e == null) {
            activityC0415d = null;
        } else {
            activityC0415d = (ActivityC0415d) abstractC0419e.f1626a;
        }
        activityC0415d.onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.f1566F = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        C0736h.m292h(this, sb);
        if (this.f1579e >= 0) {
            sb.append(" #");
            sb.append(this.f1579e);
        }
        if (this.f1598x != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1598x));
        }
        if (this.f1600z != null) {
            sb.append(" ");
            sb.append(this.f1600z);
        }
        sb.append('}');
        return sb.toString();
    }
}
