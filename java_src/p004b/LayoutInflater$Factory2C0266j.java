package p004b;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.view.menu.C0065d;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.ExpandedMenuView;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.ViewStubCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p000a0.C0007f;
import p008c.C0315a;
import p016e.AbstractC0393a;
import p016e.C0396c;
import p016e.C0397d;
import p016e.C0398e;
import p016e.C0400f;
import p016e.Window$CallbackC0406i;
import p024g.C0516i;
import p024g.C0562x0;
import p024g.C0564y0;
import p024g.InterfaceC0565z;
import p046m1.C0736h;
import p049o.C0791d;
import p076y.C0943c;
import p076y.C0954m;
import p076y.C0960q;
import p076y.View$OnApplyWindowInsetsListenerC0953l;
/* renamed from: b.j */
/* loaded from: classes.dex */
public final class LayoutInflater$Factory2C0266j extends AbstractC0265i implements C0068f.InterfaceC0069a, LayoutInflater.Factory2 {

    /* renamed from: R */
    public static final int[] f967R = {16842836};

    /* renamed from: A */
    public boolean f968A;

    /* renamed from: B */
    public boolean f969B;

    /* renamed from: C */
    public boolean f970C;

    /* renamed from: D */
    public C0275h[] f971D;

    /* renamed from: E */
    public C0275h f972E;

    /* renamed from: F */
    public boolean f973F;

    /* renamed from: G */
    public boolean f974G;

    /* renamed from: I */
    public boolean f976I;

    /* renamed from: J */
    public C0273f f977J;

    /* renamed from: K */
    public boolean f978K;

    /* renamed from: L */
    public int f979L;

    /* renamed from: N */
    public boolean f981N;

    /* renamed from: O */
    public Rect f982O;

    /* renamed from: P */
    public Rect f983P;

    /* renamed from: Q */
    public AppCompatViewInflater f984Q;

    /* renamed from: b */
    public final Context f985b;

    /* renamed from: c */
    public final Window f986c;

    /* renamed from: d */
    public final Window.Callback f987d;

    /* renamed from: e */
    public final C0272e f988e;

    /* renamed from: f */
    public final InterfaceC0264h f989f;

    /* renamed from: g */
    public AbstractC0254a f990g;

    /* renamed from: h */
    public C0400f f991h;

    /* renamed from: i */
    public CharSequence f992i;

    /* renamed from: j */
    public InterfaceC0565z f993j;

    /* renamed from: k */
    public C0269c f994k;

    /* renamed from: l */
    public C0276i f995l;

    /* renamed from: m */
    public AbstractC0393a f996m;

    /* renamed from: n */
    public ActionBarContextView f997n;

    /* renamed from: o */
    public PopupWindow f998o;

    /* renamed from: p */
    public RunnableC0279m f999p;

    /* renamed from: r */
    public boolean f1001r;

    /* renamed from: s */
    public ViewGroup f1002s;

    /* renamed from: t */
    public TextView f1003t;

    /* renamed from: u */
    public View f1004u;

    /* renamed from: v */
    public boolean f1005v;

    /* renamed from: w */
    public boolean f1006w;

    /* renamed from: x */
    public boolean f1007x;

    /* renamed from: y */
    public boolean f1008y;

    /* renamed from: z */
    public boolean f1009z;

    /* renamed from: q */
    public C0960q f1000q = null;

    /* renamed from: H */
    public int f975H = -100;

    /* renamed from: M */
    public final RunnableC0267a f980M = new RunnableC0267a();

    /* renamed from: b.j$a */
    /* loaded from: classes.dex */
    public class RunnableC0267a implements Runnable {
        public RunnableC0267a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            if ((layoutInflater$Factory2C0266j.f979L & 1) != 0) {
                layoutInflater$Factory2C0266j.m1034o(0);
            }
            if ((layoutInflater$Factory2C0266j.f979L & 4096) != 0) {
                layoutInflater$Factory2C0266j.m1034o(108);
            }
            layoutInflater$Factory2C0266j.f978K = false;
            layoutInflater$Factory2C0266j.f979L = 0;
        }
    }

    /* renamed from: b.j$b */
    /* loaded from: classes.dex */
    public class C0268b implements InterfaceC0258b {
    }

    /* renamed from: b.j$c */
    /* loaded from: classes.dex */
    public final class C0269c implements InterfaceC0076j.InterfaceC0077a {
        public C0269c() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: a */
        public final void mo1015a(C0068f c0068f, boolean z) {
            LayoutInflater$Factory2C0266j.this.m1037l(c0068f);
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: b */
        public final boolean mo1014b(C0068f c0068f) {
            Window.Callback m1030s = LayoutInflater$Factory2C0266j.this.m1030s();
            if (m1030s != null) {
                m1030s.onMenuOpened(108, c0068f);
                return true;
            }
            return true;
        }
    }

    /* renamed from: b.j$d */
    /* loaded from: classes.dex */
    public class C0270d implements AbstractC0393a.InterfaceC0394a {

        /* renamed from: a */
        public final AbstractC0393a.InterfaceC0394a f1012a;

        /* renamed from: b.j$d$a */
        /* loaded from: classes.dex */
        public class C0271a extends C0736h {
            public C0271a() {
            }

            @Override // p076y.InterfaceC0961r
            /* renamed from: b */
            public final void mo19b() {
                C0270d c0270d = C0270d.this;
                LayoutInflater$Factory2C0266j.this.f997n.setVisibility(8);
                LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
                PopupWindow popupWindow = layoutInflater$Factory2C0266j.f998o;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflater$Factory2C0266j.f997n.getParent() instanceof View) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    ((View) layoutInflater$Factory2C0266j.f997n.getParent()).requestApplyInsets();
                }
                layoutInflater$Factory2C0266j.f997n.removeAllViews();
                layoutInflater$Factory2C0266j.f1000q.m21d(null);
                layoutInflater$Factory2C0266j.f1000q = null;
            }
        }

        public C0270d(AbstractC0393a.InterfaceC0394a interfaceC0394a) {
            this.f1012a = interfaceC0394a;
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: a */
        public final boolean mo837a(AbstractC0393a abstractC0393a, C0068f c0068f) {
            return this.f1012a.mo837a(abstractC0393a, c0068f);
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: b */
        public final void mo836b(AbstractC0393a abstractC0393a) {
            this.f1012a.mo836b(abstractC0393a);
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            if (layoutInflater$Factory2C0266j.f998o != null) {
                layoutInflater$Factory2C0266j.f986c.getDecorView().removeCallbacks(layoutInflater$Factory2C0266j.f999p);
            }
            if (layoutInflater$Factory2C0266j.f997n != null) {
                C0960q c0960q = layoutInflater$Factory2C0266j.f1000q;
                if (c0960q != null) {
                    c0960q.m23b();
                }
                C0960q m35a = C0954m.m35a(layoutInflater$Factory2C0266j.f997n);
                m35a.m24a(0.0f);
                layoutInflater$Factory2C0266j.f1000q = m35a;
                m35a.m21d(new C0271a());
            }
            InterfaceC0264h interfaceC0264h = layoutInflater$Factory2C0266j.f989f;
            if (interfaceC0264h != null) {
                interfaceC0264h.onSupportActionModeFinished(layoutInflater$Factory2C0266j.f996m);
            }
            layoutInflater$Factory2C0266j.f996m = null;
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: c */
        public final boolean mo835c(AbstractC0393a abstractC0393a, C0068f c0068f) {
            return this.f1012a.mo835c(abstractC0393a, c0068f);
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: d */
        public final boolean mo834d(AbstractC0393a abstractC0393a, MenuItem menuItem) {
            return this.f1012a.mo834d(abstractC0393a, menuItem);
        }
    }

    /* renamed from: b.j$e */
    /* loaded from: classes.dex */
    public class C0272e extends Window$CallbackC0406i {
        public C0272e(Window.Callback callback) {
            super(callback);
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0266j.this.m1035n(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
            if (r6 != false) goto L7;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x004e A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            boolean z;
            if (super.dispatchKeyShortcutEvent(keyEvent)) {
                return true;
            }
            int keyCode = keyEvent.getKeyCode();
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            layoutInflater$Factory2C0266j.m1029t();
            AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
            if (abstractC0254a == null || !abstractC0254a.mo1006i(keyCode, keyEvent)) {
                C0275h c0275h = layoutInflater$Factory2C0266j.f972E;
                if (c0275h != null && layoutInflater$Factory2C0266j.m1027v(c0275h, keyEvent.getKeyCode(), keyEvent)) {
                    C0275h c0275h2 = layoutInflater$Factory2C0266j.f972E;
                    if (c0275h2 != null) {
                        c0275h2.f1033l = true;
                    }
                } else {
                    if (layoutInflater$Factory2C0266j.f972E == null) {
                        C0275h m1031r = layoutInflater$Factory2C0266j.m1031r(0);
                        layoutInflater$Factory2C0266j.m1026w(m1031r, keyEvent);
                        boolean m1027v = layoutInflater$Factory2C0266j.m1027v(m1031r, keyEvent.getKeyCode(), keyEvent);
                        m1031r.f1032k = false;
                    }
                    z = false;
                    if (!z) {
                        return true;
                    }
                    return false;
                }
            }
            z = true;
            if (!z) {
            }
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final void onContentChanged() {
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0068f)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            if (i == 108) {
                layoutInflater$Factory2C0266j.m1029t();
                AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
                if (abstractC0254a != null) {
                    abstractC0254a.mo1010c(true);
                }
            } else {
                layoutInflater$Factory2C0266j.getClass();
            }
            return true;
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            if (i == 108) {
                layoutInflater$Factory2C0266j.m1029t();
                AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
                if (abstractC0254a != null) {
                    abstractC0254a.mo1010c(false);
                }
            } else if (i == 0) {
                C0275h m1031r = layoutInflater$Factory2C0266j.m1031r(i);
                if (m1031r.f1034m) {
                    layoutInflater$Factory2C0266j.m1036m(m1031r, false);
                }
            } else {
                layoutInflater$Factory2C0266j.getClass();
            }
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            C0068f c0068f;
            if (menu instanceof C0068f) {
                c0068f = (C0068f) menu;
            } else {
                c0068f = null;
            }
            if (i == 0 && c0068f == null) {
                return false;
            }
            if (c0068f != null) {
                c0068f.f245x = true;
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0068f != null) {
                c0068f.f245x = false;
            }
            return onPreparePanel;
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0068f c0068f = LayoutInflater$Factory2C0266j.this.m1031r(0).f1029h;
            if (c0068f != null) {
                super.onProvideKeyboardShortcuts(list, c0068f, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            layoutInflater$Factory2C0266j.getClass();
            C0398e.C0399a c0399a = new C0398e.C0399a(layoutInflater$Factory2C0266j.f985b, callback);
            AbstractC0393a mo1039j = layoutInflater$Factory2C0266j.mo1039j(c0399a);
            if (mo1039j != null) {
                return c0399a.m833e(mo1039j);
            }
            return null;
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            layoutInflater$Factory2C0266j.getClass();
            if (i != 0) {
                return super.onWindowStartingActionMode(callback, i);
            }
            C0398e.C0399a c0399a = new C0398e.C0399a(layoutInflater$Factory2C0266j.f985b, callback);
            AbstractC0393a mo1039j = layoutInflater$Factory2C0266j.mo1039j(c0399a);
            if (mo1039j != null) {
                return c0399a.m833e(mo1039j);
            }
            return null;
        }
    }

    /* renamed from: b.j$f */
    /* loaded from: classes.dex */
    public final class C0273f {

        /* renamed from: a */
        public final C0293t f1016a;

        /* renamed from: b */
        public boolean f1017b;

        /* renamed from: c */
        public C0282o f1018c;

        /* renamed from: d */
        public IntentFilter f1019d;

        public C0273f(C0293t c0293t) {
            this.f1016a = c0293t;
            this.f1017b = c0293t.m1012a();
        }
    }

    /* renamed from: b.j$g */
    /* loaded from: classes.dex */
    public class C0274g extends ContentFrameLayout {
        public C0274g(C0396c c0396c) {
            super(c0396c, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0266j.this.m1035n(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            boolean z;
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x >= -5 && y >= -5 && x <= getWidth() + 5 && y <= getHeight() + 5) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
                    layoutInflater$Factory2C0266j.m1036m(layoutInflater$Factory2C0266j.m1031r(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(C0315a.m994c(getContext(), i));
        }
    }

    /* renamed from: b.j$h */
    /* loaded from: classes.dex */
    public static final class C0275h {

        /* renamed from: a */
        public final int f1022a;

        /* renamed from: b */
        public int f1023b;

        /* renamed from: c */
        public int f1024c;

        /* renamed from: d */
        public int f1025d;

        /* renamed from: e */
        public C0274g f1026e;

        /* renamed from: f */
        public View f1027f;

        /* renamed from: g */
        public View f1028g;

        /* renamed from: h */
        public C0068f f1029h;

        /* renamed from: i */
        public C0065d f1030i;

        /* renamed from: j */
        public C0396c f1031j;

        /* renamed from: k */
        public boolean f1032k;

        /* renamed from: l */
        public boolean f1033l;

        /* renamed from: m */
        public boolean f1034m;

        /* renamed from: n */
        public boolean f1035n = false;

        /* renamed from: o */
        public boolean f1036o;

        /* renamed from: p */
        public Bundle f1037p;

        public C0275h(int i) {
            this.f1022a = i;
        }
    }

    /* renamed from: b.j$i */
    /* loaded from: classes.dex */
    public final class C0276i implements InterfaceC0076j.InterfaceC0077a {
        public C0276i() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: a */
        public final void mo1015a(C0068f c0068f, boolean z) {
            boolean z2;
            int i;
            C0275h c0275h;
            C0068f mo1326k = c0068f.mo1326k();
            int i2 = 0;
            if (mo1326k != c0068f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                c0068f = mo1326k;
            }
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
            C0275h[] c0275hArr = layoutInflater$Factory2C0266j.f971D;
            if (c0275hArr != null) {
                i = c0275hArr.length;
            } else {
                i = 0;
            }
            while (true) {
                if (i2 < i) {
                    c0275h = c0275hArr[i2];
                    if (c0275h != null && c0275h.f1029h == c0068f) {
                        break;
                    }
                    i2++;
                } else {
                    c0275h = null;
                    break;
                }
            }
            if (c0275h != null) {
                if (z2) {
                    layoutInflater$Factory2C0266j.m1038k(c0275h.f1022a, c0275h, mo1326k);
                    layoutInflater$Factory2C0266j.m1036m(c0275h, true);
                    return;
                }
                layoutInflater$Factory2C0266j.m1036m(c0275h, z);
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: b */
        public final boolean mo1014b(C0068f c0068f) {
            Window.Callback m1030s;
            if (c0068f == null) {
                LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = LayoutInflater$Factory2C0266j.this;
                if (!layoutInflater$Factory2C0266j.f1007x || (m1030s = layoutInflater$Factory2C0266j.m1030s()) == null || layoutInflater$Factory2C0266j.f974G) {
                    return true;
                }
                m1030s.onMenuOpened(108, c0068f);
                return true;
            }
            return true;
        }
    }

    public LayoutInflater$Factory2C0266j(Context context, Window window, InterfaceC0264h interfaceC0264h) {
        int resourceId;
        Drawable drawable = null;
        this.f985b = context;
        this.f986c = window;
        this.f989f = interfaceC0264h;
        Window.Callback callback = window.getCallback();
        this.f987d = callback;
        if (!(callback instanceof C0272e)) {
            C0272e c0272e = new C0272e(callback);
            this.f988e = c0272e;
            window.setCallback(c0272e);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f967R);
            if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
                drawable = C0516i.m610g().m607j(context, resourceId, true);
            }
            if (drawable != null) {
                window.setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
    /* renamed from: a */
    public final boolean mo853a(C0068f c0068f, MenuItem menuItem) {
        int i;
        C0275h c0275h;
        Window.Callback m1030s = m1030s();
        if (m1030s != null && !this.f974G) {
            C0068f mo1326k = c0068f.mo1326k();
            C0275h[] c0275hArr = this.f971D;
            if (c0275hArr != null) {
                i = c0275hArr.length;
            } else {
                i = 0;
            }
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    c0275h = c0275hArr[i2];
                    if (c0275h != null && c0275h.f1029h == mo1326k) {
                        break;
                    }
                    i2++;
                } else {
                    c0275h = null;
                    break;
                }
            }
            if (c0275h != null) {
                return m1030s.onMenuItemSelected(c0275h.f1022a, menuItem);
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
    /* renamed from: b */
    public final void mo852b(C0068f c0068f) {
        InterfaceC0565z interfaceC0565z = this.f993j;
        if (interfaceC0565z == null || !interfaceC0565z.mo527g() || (ViewConfiguration.get(this.f985b).hasPermanentMenuKey() && !this.f993j.mo533a())) {
            C0275h m1031r = m1031r(0);
            m1031r.f1035n = true;
            m1036m(m1031r, false);
            m1028u(m1031r, null);
            return;
        }
        Window.Callback m1030s = m1030s();
        if (this.f993j.mo531c()) {
            this.f993j.mo530d();
            if (this.f974G) {
                return;
            }
            m1030s.onPanelClosed(108, m1031r(0).f1029h);
        } else if (m1030s == null || this.f974G) {
        } else {
            if (this.f978K && (1 & this.f979L) != 0) {
                View decorView = this.f986c.getDecorView();
                RunnableC0267a runnableC0267a = this.f980M;
                decorView.removeCallbacks(runnableC0267a);
                runnableC0267a.run();
            }
            C0275h m1031r2 = m1031r(0);
            C0068f c0068f2 = m1031r2.f1029h;
            if (c0068f2 == null || m1031r2.f1036o || !m1030s.onPreparePanel(0, m1031r2.f1028g, c0068f2)) {
                return;
            }
            m1030s.onMenuOpened(108, m1031r2.f1029h);
            this.f993j.mo529e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
        if (((android.app.UiModeManager) r1).getNightMode() == 0) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0070, code lost:
        if ((r5.getPackageManager().getActivityInfo(new android.content.ComponentName(r5, r5.getClass()), 0).configChanges & 512) == 0) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0137  */
    @Override // p004b.AbstractC0265i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo1046c() {
        int i;
        boolean z;
        int i2;
        Map map;
        Object obj;
        Object obj2;
        Object obj3;
        Object systemService;
        int i3 = this.f975H;
        if (i3 == -100) {
            i3 = -1;
        }
        Context context = this.f985b;
        if (i3 != -100) {
            if (i3 != 0) {
                i = i3;
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    systemService = context.getSystemService(UiModeManager.class);
                }
                m1033p();
                C0273f c0273f = this.f977J;
                boolean m1012a = c0273f.f1016a.m1012a();
                c0273f.f1017b = m1012a;
                if (m1012a) {
                    i = 2;
                } else {
                    i = 1;
                }
            }
            z = false;
            if (i != -1) {
                Resources resources = context.getResources();
                Configuration configuration = resources.getConfiguration();
                int i4 = configuration.uiMode & 48;
                if (i == 2) {
                    i2 = 32;
                } else {
                    i2 = 16;
                }
                if (i4 != i2) {
                    if (this.f976I && (context instanceof Activity)) {
                        try {
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                        }
                    }
                    if (!z) {
                        ((Activity) context).recreate();
                    } else {
                        Configuration configuration2 = new Configuration(configuration);
                        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
                        resources.updateConfiguration(configuration2, displayMetrics);
                        int i5 = Build.VERSION.SDK_INT;
                        if (i5 < 26 && i5 < 28) {
                            if (i5 >= 24) {
                                if (!C0285q.f1055h) {
                                    try {
                                        Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                                        C0285q.f1054g = declaredField;
                                        declaredField.setAccessible(true);
                                    } catch (NoSuchFieldException e2) {
                                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
                                    }
                                    C0285q.f1055h = true;
                                }
                                Field field = C0285q.f1054g;
                                if (field != null) {
                                    try {
                                        obj2 = field.get(resources);
                                    } catch (IllegalAccessException e3) {
                                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
                                        obj2 = null;
                                    }
                                    if (obj2 != null) {
                                        if (!C0285q.f1049b) {
                                            try {
                                                Field declaredField2 = obj2.getClass().getDeclaredField("mDrawableCache");
                                                C0285q.f1048a = declaredField2;
                                                declaredField2.setAccessible(true);
                                            } catch (NoSuchFieldException e4) {
                                                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
                                            }
                                            C0285q.f1049b = true;
                                        }
                                        Field field2 = C0285q.f1048a;
                                        if (field2 != null) {
                                            try {
                                                obj3 = field2.get(obj2);
                                            } catch (IllegalAccessException e5) {
                                                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                                            }
                                            if (obj3 != null) {
                                                C0285q.m1022a(obj3);
                                            }
                                        }
                                        obj3 = null;
                                        if (obj3 != null) {
                                        }
                                    }
                                }
                            } else if (i5 >= 23) {
                                if (!C0285q.f1049b) {
                                    try {
                                        Field declaredField3 = Resources.class.getDeclaredField("mDrawableCache");
                                        C0285q.f1048a = declaredField3;
                                        declaredField3.setAccessible(true);
                                    } catch (NoSuchFieldException e6) {
                                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e6);
                                    }
                                    C0285q.f1049b = true;
                                }
                                Field field3 = C0285q.f1048a;
                                if (field3 != null) {
                                    try {
                                        obj = field3.get(resources);
                                    } catch (IllegalAccessException e7) {
                                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e7);
                                    }
                                    if (obj != null) {
                                        C0285q.m1022a(obj);
                                    }
                                }
                                obj = null;
                                if (obj != null) {
                                }
                            } else {
                                if (!C0285q.f1049b) {
                                    try {
                                        Field declaredField4 = Resources.class.getDeclaredField("mDrawableCache");
                                        C0285q.f1048a = declaredField4;
                                        declaredField4.setAccessible(true);
                                    } catch (NoSuchFieldException e8) {
                                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e8);
                                    }
                                    C0285q.f1049b = true;
                                }
                                Field field4 = C0285q.f1048a;
                                if (field4 != null) {
                                    try {
                                        map = (Map) field4.get(resources);
                                    } catch (IllegalAccessException e9) {
                                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e9);
                                        map = null;
                                    }
                                    if (map != null) {
                                        map.clear();
                                    }
                                }
                            }
                        }
                    }
                    z = true;
                }
            }
            if (i3 == 0) {
                m1033p();
                C0273f c0273f2 = this.f977J;
                C0282o c0282o = c0273f2.f1018c;
                if (c0282o != null) {
                    LayoutInflater$Factory2C0266j.this.f985b.unregisterReceiver(c0282o);
                    c0273f2.f1018c = null;
                }
                if (c0273f2.f1018c == null) {
                    c0273f2.f1018c = new C0282o(c0273f2);
                }
                if (c0273f2.f1019d == null) {
                    IntentFilter intentFilter = new IntentFilter();
                    c0273f2.f1019d = intentFilter;
                    intentFilter.addAction("android.intent.action.TIME_SET");
                    c0273f2.f1019d.addAction("android.intent.action.TIMEZONE_CHANGED");
                    c0273f2.f1019d.addAction("android.intent.action.TIME_TICK");
                }
                LayoutInflater$Factory2C0266j.this.f985b.registerReceiver(c0273f2.f1018c, c0273f2.f1019d);
            }
            this.f976I = true;
            return z;
        }
        i = -1;
        z = false;
        if (i != -1) {
        }
        if (i3 == 0) {
        }
        this.f976I = true;
        return z;
        z = true;
        if (!z) {
        }
        z = true;
        if (i3 == 0) {
        }
        this.f976I = true;
        return z;
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: d */
    public final void mo1045d() {
        LayoutInflater from = LayoutInflater.from(this.f985b);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (!(from.getFactory2() instanceof LayoutInflater$Factory2C0266j)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: e */
    public final void mo1044e() {
        m1029t();
        AbstractC0254a abstractC0254a = this.f990g;
        if (abstractC0254a != null && abstractC0254a.mo1020f()) {
            return;
        }
        this.f979L |= 1;
        if (!this.f978K) {
            View decorView = this.f986c.getDecorView();
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            decorView.postOnAnimation(this.f980M);
            this.f978K = true;
        }
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: f */
    public final void mo1043f(Bundle bundle) {
        String str;
        Window.Callback callback = this.f987d;
        if (callback instanceof Activity) {
            try {
                Activity activity = (Activity) callback;
                try {
                    str = C0791d.m218b(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                AbstractC0254a abstractC0254a = this.f990g;
                if (abstractC0254a == null) {
                    this.f981N = true;
                } else {
                    abstractC0254a.mo1005l(true);
                }
            }
        }
        if (bundle != null && this.f975H == -100) {
            this.f975H = bundle.getInt("appcompat:local_night_mode", -100);
        }
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: g */
    public final boolean mo1042g(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.f969B && i == 108) {
            return false;
        }
        if (this.f1007x && i == 1) {
            this.f1007x = false;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 5) {
                    if (i != 10) {
                        if (i != 108) {
                            if (i != 109) {
                                return this.f986c.requestFeature(i);
                            }
                            m1025x();
                            this.f1008y = true;
                            return true;
                        }
                        m1025x();
                        this.f1007x = true;
                        return true;
                    }
                    m1025x();
                    this.f1009z = true;
                    return true;
                }
                m1025x();
                this.f1006w = true;
                return true;
            }
            m1025x();
            this.f1005v = true;
            return true;
        }
        m1025x();
        this.f969B = true;
        return true;
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: h */
    public final void mo1041h(int i) {
        m1032q();
        ViewGroup viewGroup = (ViewGroup) this.f1002s.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f985b).inflate(i, viewGroup);
        this.f987d.onContentChanged();
    }

    @Override // p004b.AbstractC0265i
    /* renamed from: i */
    public final void mo1040i(CharSequence charSequence) {
        this.f992i = charSequence;
        InterfaceC0565z interfaceC0565z = this.f993j;
        if (interfaceC0565z != null) {
            interfaceC0565z.setWindowTitle(charSequence);
            return;
        }
        AbstractC0254a abstractC0254a = this.f990g;
        if (abstractC0254a != null) {
            abstractC0254a.mo1003n(charSequence);
            return;
        }
        TextView textView = this.f1003t;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
        if (r9.isLaidOut() != false) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004a  */
    @Override // p004b.AbstractC0265i
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0393a mo1039j(AbstractC0393a.InterfaceC0394a interfaceC0394a) {
        AbstractC0393a abstractC0393a;
        AbstractC0393a abstractC0393a2;
        if (interfaceC0394a != null) {
            AbstractC0393a abstractC0393a3 = this.f996m;
            if (abstractC0393a3 != null) {
                abstractC0393a3.mo851c();
            }
            C0270d c0270d = new C0270d(interfaceC0394a);
            m1029t();
            AbstractC0254a abstractC0254a = this.f990g;
            InterfaceC0264h interfaceC0264h = this.f989f;
            if (abstractC0254a != null) {
                AbstractC0393a mo1002o = abstractC0254a.mo1002o(c0270d);
                this.f996m = mo1002o;
                if (mo1002o != null && interfaceC0264h != null) {
                    interfaceC0264h.onSupportActionModeStarted(mo1002o);
                }
            }
            if (this.f996m == null) {
                C0960q c0960q = this.f1000q;
                if (c0960q != null) {
                    c0960q.m23b();
                }
                AbstractC0393a abstractC0393a4 = this.f996m;
                if (abstractC0393a4 != null) {
                    abstractC0393a4.mo851c();
                }
                if (interfaceC0264h != null && !this.f974G) {
                    try {
                        abstractC0393a = interfaceC0264h.onWindowStartingSupportActionMode(c0270d);
                    } catch (AbstractMethodError unused) {
                    }
                    if (abstractC0393a == null) {
                        this.f996m = abstractC0393a;
                    } else {
                        boolean z = true;
                        if (this.f997n == null) {
                            boolean z2 = this.f968A;
                            Context context = this.f985b;
                            if (z2) {
                                TypedValue typedValue = new TypedValue();
                                Resources.Theme theme = context.getTheme();
                                theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                                if (typedValue.resourceId != 0) {
                                    Resources.Theme newTheme = context.getResources().newTheme();
                                    newTheme.setTo(theme);
                                    newTheme.applyStyle(typedValue.resourceId, true);
                                    C0396c c0396c = new C0396c(context, 0);
                                    c0396c.getTheme().setTo(newTheme);
                                    context = c0396c;
                                }
                                this.f997n = new ActionBarContextView(context, null);
                                PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, (int) R.attr.actionModePopupWindowStyle);
                                this.f998o = popupWindow;
                                C0007f.m1406b(popupWindow, 2);
                                this.f998o.setContentView(this.f997n);
                                this.f998o.setWidth(-1);
                                context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                                this.f997n.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                                this.f998o.setHeight(-2);
                                this.f999p = new RunnableC0279m(this);
                            } else {
                                ViewStubCompat viewStubCompat = (ViewStubCompat) this.f1002s.findViewById(R.id.action_mode_bar_stub);
                                if (viewStubCompat != null) {
                                    m1029t();
                                    AbstractC0254a abstractC0254a2 = this.f990g;
                                    Context mo1008e = abstractC0254a2 != null ? abstractC0254a2.mo1008e() : null;
                                    if (mo1008e != null) {
                                        context = mo1008e;
                                    }
                                    viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                                    this.f997n = (ActionBarContextView) viewStubCompat.m1282a();
                                }
                            }
                        }
                        if (this.f997n != null) {
                            C0960q c0960q2 = this.f1000q;
                            if (c0960q2 != null) {
                                c0960q2.m23b();
                            }
                            ActionBarContextView actionBarContextView = this.f997n;
                            actionBarContextView.removeAllViews();
                            actionBarContextView.f329m = null;
                            actionBarContextView.f1871d = null;
                            C0397d c0397d = new C0397d(this.f997n.getContext(), this.f997n, c0270d);
                            if (c0270d.mo837a(c0397d, c0397d.f1466i)) {
                                c0397d.mo845i();
                                this.f997n.m1321f(c0397d);
                                this.f996m = c0397d;
                                if (this.f1001r && (r9 = this.f1002s) != null) {
                                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                                }
                                z = false;
                                ActionBarContextView actionBarContextView2 = this.f997n;
                                if (z) {
                                    actionBarContextView2.setAlpha(0.0f);
                                    C0960q m35a = C0954m.m35a(this.f997n);
                                    m35a.m24a(1.0f);
                                    this.f1000q = m35a;
                                    m35a.m21d(new C0281n(this));
                                } else {
                                    actionBarContextView2.setAlpha(1.0f);
                                    this.f997n.setVisibility(0);
                                    this.f997n.sendAccessibilityEvent(32);
                                    if (this.f997n.getParent() instanceof View) {
                                        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                                        ((View) this.f997n.getParent()).requestApplyInsets();
                                    }
                                }
                                if (this.f998o != null) {
                                    this.f986c.getDecorView().post(this.f999p);
                                }
                            } else {
                                this.f996m = null;
                            }
                        }
                    }
                    abstractC0393a2 = this.f996m;
                    if (abstractC0393a2 != null && interfaceC0264h != null) {
                        interfaceC0264h.onSupportActionModeStarted(abstractC0393a2);
                    }
                    this.f996m = this.f996m;
                }
                abstractC0393a = null;
                if (abstractC0393a == null) {
                }
                abstractC0393a2 = this.f996m;
                if (abstractC0393a2 != null) {
                    interfaceC0264h.onSupportActionModeStarted(abstractC0393a2);
                }
                this.f996m = this.f996m;
            }
            return this.f996m;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* renamed from: k */
    public final void m1038k(int i, C0275h c0275h, C0068f c0068f) {
        if (c0068f == null) {
            if (c0275h == null && i >= 0) {
                C0275h[] c0275hArr = this.f971D;
                if (i < c0275hArr.length) {
                    c0275h = c0275hArr[i];
                }
            }
            if (c0275h != null) {
                c0068f = c0275h.f1029h;
            }
        }
        if ((c0275h == null || c0275h.f1034m) && !this.f974G) {
            this.f987d.onPanelClosed(i, c0068f);
        }
    }

    /* renamed from: l */
    public final void m1037l(C0068f c0068f) {
        if (this.f970C) {
            return;
        }
        this.f970C = true;
        this.f993j.mo525i();
        Window.Callback m1030s = m1030s();
        if (m1030s != null && !this.f974G) {
            m1030s.onPanelClosed(108, c0068f);
        }
        this.f970C = false;
    }

    /* renamed from: m */
    public final void m1036m(C0275h c0275h, boolean z) {
        C0274g c0274g;
        InterfaceC0565z interfaceC0565z;
        if (z && c0275h.f1022a == 0 && (interfaceC0565z = this.f993j) != null && interfaceC0565z.mo531c()) {
            m1037l(c0275h.f1029h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f985b.getSystemService("window");
        if (windowManager != null && c0275h.f1034m && (c0274g = c0275h.f1026e) != null) {
            windowManager.removeView(c0274g);
            if (z) {
                m1038k(c0275h.f1022a, c0275h, null);
            }
        }
        c0275h.f1032k = false;
        c0275h.f1033l = false;
        c0275h.f1034m = false;
        c0275h.f1027f = null;
        c0275h.f1035n = true;
        if (this.f972E == c0275h) {
            this.f972E = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m1035n(KeyEvent keyEvent) {
        View decorView;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Window.Callback callback = this.f987d;
        boolean z5 = true;
        if (((callback instanceof C0943c.InterfaceC0944a) || (callback instanceof DialogC0283p)) && (decorView = this.f986c.getDecorView()) != null && C0943c.m57a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && callback.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (keyCode != 4) {
                if (keyCode == 82) {
                    if (keyEvent.getRepeatCount() != 0) {
                        return true;
                    }
                    C0275h m1031r = m1031r(0);
                    if (m1031r.f1034m) {
                        return true;
                    }
                    m1026w(m1031r, keyEvent);
                    return true;
                }
            } else {
                if ((keyEvent.getFlags() & 128) == 0) {
                    z5 = false;
                }
                this.f973F = z5;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f996m != null) {
                    return true;
                }
                C0275h m1031r2 = m1031r(0);
                InterfaceC0565z interfaceC0565z = this.f993j;
                Context context = this.f985b;
                if (interfaceC0565z != null && interfaceC0565z.mo527g() && !ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    if (!this.f993j.mo531c()) {
                        if (!this.f974G && m1026w(m1031r2, keyEvent)) {
                            z3 = this.f993j.mo529e();
                        }
                        z3 = false;
                    } else {
                        z3 = this.f993j.mo530d();
                    }
                } else {
                    boolean z6 = m1031r2.f1034m;
                    if (!z6 && !m1031r2.f1033l) {
                        if (m1031r2.f1032k) {
                            if (m1031r2.f1036o) {
                                m1031r2.f1032k = false;
                                z4 = m1026w(m1031r2, keyEvent);
                            } else {
                                z4 = true;
                            }
                            if (z4) {
                                m1028u(m1031r2, keyEvent);
                                z3 = true;
                            }
                        }
                        z3 = false;
                    } else {
                        m1036m(m1031r2, true);
                        z3 = z6;
                    }
                }
                if (!z3) {
                    return true;
                }
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                if (audioManager != null) {
                    audioManager.playSoundEffect(0);
                    return true;
                }
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                return true;
            }
        } else {
            boolean z7 = this.f973F;
            this.f973F = false;
            C0275h m1031r3 = m1031r(0);
            if (m1031r3.f1034m) {
                if (z7) {
                    return true;
                }
                m1036m(m1031r3, true);
                return true;
            }
            AbstractC0393a abstractC0393a = this.f996m;
            if (abstractC0393a != null) {
                abstractC0393a.mo851c();
            } else {
                m1029t();
                AbstractC0254a abstractC0254a = this.f990g;
                if (abstractC0254a == null || !abstractC0254a.mo1011b()) {
                    z2 = false;
                    if (!z2) {
                        return true;
                    }
                }
            }
            z2 = true;
            if (!z2) {
            }
        }
        return false;
    }

    /* renamed from: o */
    public final void m1034o(int i) {
        C0275h m1031r = m1031r(i);
        if (m1031r.f1029h != null) {
            Bundle bundle = new Bundle();
            m1031r.f1029h.m1342t(bundle);
            if (bundle.size() > 0) {
                m1031r.f1037p = bundle;
            }
            m1031r.f1029h.m1339w();
            m1031r.f1029h.clear();
        }
        m1031r.f1036o = true;
        m1031r.f1035n = true;
        if ((i == 108 || i == 0) && this.f993j != null) {
            C0275h m1031r2 = m1031r(0);
            m1031r2.f1032k = false;
            m1026w(m1031r2, null);
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        AppCompatViewInflater appCompatViewInflater;
        if (this.f984Q == null) {
            String string = this.f985b.obtainStyledAttributes(C0736h.f2576p).getString(110);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                appCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.f984Q = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    appCompatViewInflater = new AppCompatViewInflater();
                }
            }
            this.f984Q = appCompatViewInflater;
        }
        AppCompatViewInflater appCompatViewInflater2 = this.f984Q;
        int i = C0562x0.f2108a;
        return appCompatViewInflater2.createView(view, str, context, attributeSet, false, false, true, false);
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public final void m1033p() {
        if (this.f977J == null) {
            if (C0293t.f1073d == null) {
                Context applicationContext = this.f985b.getApplicationContext();
                C0293t.f1073d = new C0293t(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f977J = new C0273f(C0293t.f1073d);
        }
    }

    /* renamed from: q */
    public final void m1032q() {
        ViewGroup viewGroup;
        if (this.f1001r) {
            return;
        }
        int[] iArr = C0736h.f2576p;
        Context context = this.f985b;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(111)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(120, false)) {
            mo1042g(1);
        } else if (obtainStyledAttributes.getBoolean(111, false)) {
            mo1042g(108);
        }
        if (obtainStyledAttributes.getBoolean(112, false)) {
            mo1042g(109);
        }
        if (obtainStyledAttributes.getBoolean(113, false)) {
            mo1042g(10);
        }
        this.f968A = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        Window window = this.f986c;
        window.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.f969B) {
            viewGroup = (ViewGroup) from.inflate(this.f1009z ? R.layout.abc_screen_simple_overlay_action_mode : R.layout.abc_screen_simple, (ViewGroup) null);
            C0277k c0277k = new C0277k(this);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            viewGroup.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0953l(c0277k));
        } else if (this.f968A) {
            viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f1008y = false;
            this.f1007x = false;
        } else if (this.f1007x) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0396c(context, typedValue.resourceId) : context).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC0565z interfaceC0565z = (InterfaceC0565z) viewGroup.findViewById(R.id.decor_content_parent);
            this.f993j = interfaceC0565z;
            interfaceC0565z.setWindowCallback(m1030s());
            if (this.f1008y) {
                this.f993j.mo526h(109);
            }
            if (this.f1005v) {
                this.f993j.mo526h(2);
            }
            if (this.f1006w) {
                this.f993j.mo526h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            if (this.f993j == null) {
                this.f1003t = (TextView) viewGroup.findViewById(R.id.title);
            }
            Method method = C0564y0.f2121a;
            try {
                Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method2.isAccessible()) {
                    method2.setAccessible(true);
                }
                method2.invoke(viewGroup, new Object[0]);
            } catch (IllegalAccessException e) {
                e = e;
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
            } catch (NoSuchMethodException unused) {
                Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (InvocationTargetException e2) {
                e = e2;
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
            }
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
            ViewGroup viewGroup2 = (ViewGroup) window.findViewById(16908290);
            if (viewGroup2 != null) {
                while (viewGroup2.getChildCount() > 0) {
                    View childAt = viewGroup2.getChildAt(0);
                    viewGroup2.removeViewAt(0);
                    contentFrameLayout.addView(childAt);
                }
                viewGroup2.setId(-1);
                contentFrameLayout.setId(16908290);
                if (viewGroup2 instanceof FrameLayout) {
                    ((FrameLayout) viewGroup2).setForeground(null);
                }
            }
            window.setContentView(viewGroup);
            contentFrameLayout.setAttachListener(new C0278l(this));
            this.f1002s = viewGroup;
            Window.Callback callback = this.f987d;
            CharSequence title = callback instanceof Activity ? ((Activity) callback).getTitle() : this.f992i;
            if (!TextUtils.isEmpty(title)) {
                InterfaceC0565z interfaceC0565z2 = this.f993j;
                if (interfaceC0565z2 != null) {
                    interfaceC0565z2.setWindowTitle(title);
                } else {
                    AbstractC0254a abstractC0254a = this.f990g;
                    if (abstractC0254a != null) {
                        abstractC0254a.mo1003n(title);
                    } else {
                        TextView textView = this.f1003t;
                        if (textView != null) {
                            textView.setText(title);
                        }
                    }
                }
            }
            ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f1002s.findViewById(16908290);
            View decorView = window.getDecorView();
            contentFrameLayout2.f397h.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
            if (contentFrameLayout2.isLaidOut()) {
                contentFrameLayout2.requestLayout();
            }
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
            obtainStyledAttributes2.getValue(118, contentFrameLayout2.getMinWidthMajor());
            obtainStyledAttributes2.getValue(119, contentFrameLayout2.getMinWidthMinor());
            if (obtainStyledAttributes2.hasValue(116)) {
                obtainStyledAttributes2.getValue(116, contentFrameLayout2.getFixedWidthMajor());
            }
            if (obtainStyledAttributes2.hasValue(117)) {
                obtainStyledAttributes2.getValue(117, contentFrameLayout2.getFixedWidthMinor());
            }
            if (obtainStyledAttributes2.hasValue(114)) {
                obtainStyledAttributes2.getValue(114, contentFrameLayout2.getFixedHeightMajor());
            }
            if (obtainStyledAttributes2.hasValue(115)) {
                obtainStyledAttributes2.getValue(115, contentFrameLayout2.getFixedHeightMinor());
            }
            obtainStyledAttributes2.recycle();
            contentFrameLayout2.requestLayout();
            this.f1001r = true;
            C0275h m1031r = m1031r(0);
            if (this.f974G || m1031r.f1029h != null) {
                return;
            }
            this.f979L |= 4096;
            if (this.f978K) {
                return;
            }
            window.getDecorView().postOnAnimation(this.f980M);
            this.f978K = true;
            return;
        }
        throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f1007x + ", windowActionBarOverlay: " + this.f1008y + ", android:windowIsFloating: " + this.f968A + ", windowActionModeOverlay: " + this.f1009z + ", windowNoTitle: " + this.f969B + " }");
    }

    /* renamed from: r */
    public final C0275h m1031r(int i) {
        C0275h[] c0275hArr = this.f971D;
        if (c0275hArr == null || c0275hArr.length <= i) {
            C0275h[] c0275hArr2 = new C0275h[i + 1];
            if (c0275hArr != null) {
                System.arraycopy(c0275hArr, 0, c0275hArr2, 0, c0275hArr.length);
            }
            this.f971D = c0275hArr2;
            c0275hArr = c0275hArr2;
        }
        C0275h c0275h = c0275hArr[i];
        if (c0275h == null) {
            C0275h c0275h2 = new C0275h(i);
            c0275hArr[i] = c0275h2;
            return c0275h2;
        }
        return c0275h;
    }

    /* renamed from: s */
    public final Window.Callback m1030s() {
        return this.f986c.getCallback();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1029t() {
        C0295u c0295u;
        AbstractC0254a abstractC0254a;
        m1032q();
        if (!this.f1007x || this.f990g != null) {
            return;
        }
        Window.Callback callback = this.f987d;
        if (!(callback instanceof Activity)) {
            if (callback instanceof Dialog) {
                c0295u = new C0295u((Dialog) callback);
            }
            abstractC0254a = this.f990g;
            if (abstractC0254a == null) {
                abstractC0254a.mo1005l(this.f981N);
                return;
            }
            return;
        }
        c0295u = new C0295u((Activity) callback, this.f1008y);
        this.f990g = c0295u;
        abstractC0254a = this.f990g;
        if (abstractC0254a == null) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x014d, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0171, code lost:
        if (r15.f212g.getCount() > 0) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0179  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1028u(C0275h c0275h, KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        Context context;
        int i;
        ViewGroup.LayoutParams layoutParams;
        boolean z3;
        if (!c0275h.f1034m && !this.f974G) {
            Context context2 = this.f985b;
            int i2 = c0275h.f1022a;
            if (i2 == 0) {
                if ((context2.getResources().getConfiguration().screenLayout & 15) == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    return;
                }
            }
            Window.Callback m1030s = m1030s();
            if (m1030s != null && !m1030s.onMenuOpened(i2, c0275h.f1029h)) {
                m1036m(c0275h, true);
                return;
            }
            WindowManager windowManager = (WindowManager) context2.getSystemService("window");
            if (windowManager == null || !m1026w(c0275h, keyEvent)) {
                return;
            }
            C0274g c0274g = c0275h.f1026e;
            if (c0274g != null && !c0275h.f1035n) {
                View view = c0275h.f1028g;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i = -1;
                    c0275h.f1033l = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
                    layoutParams2.gravity = c0275h.f1024c;
                    layoutParams2.windowAnimations = c0275h.f1025d;
                    windowManager.addView(c0275h.f1026e, layoutParams2);
                    c0275h.f1034m = true;
                }
            } else {
                if (c0274g == null) {
                    m1029t();
                    AbstractC0254a abstractC0254a = this.f990g;
                    if (abstractC0254a != null) {
                        context = abstractC0254a.mo1008e();
                    } else {
                        context = null;
                    }
                    if (context != null) {
                        context2 = context;
                    }
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme newTheme = context2.getResources().newTheme();
                    newTheme.setTo(context2.getTheme());
                    newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
                    int i3 = typedValue.resourceId;
                    if (i3 != 0) {
                        newTheme.applyStyle(i3, true);
                    }
                    newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
                    int i4 = typedValue.resourceId;
                    if (i4 == 0) {
                        i4 = 2131624245;
                    }
                    newTheme.applyStyle(i4, true);
                    C0396c c0396c = new C0396c(context2, 0);
                    c0396c.getTheme().setTo(newTheme);
                    c0275h.f1031j = c0396c;
                    TypedArray obtainStyledAttributes = c0396c.obtainStyledAttributes(C0736h.f2576p);
                    c0275h.f1023b = obtainStyledAttributes.getResourceId(80, 0);
                    c0275h.f1025d = obtainStyledAttributes.getResourceId(1, 0);
                    obtainStyledAttributes.recycle();
                    c0275h.f1026e = new C0274g(c0275h.f1031j);
                    c0275h.f1024c = 81;
                } else if (c0275h.f1035n && c0274g.getChildCount() > 0) {
                    c0275h.f1026e.removeAllViews();
                }
                View view2 = c0275h.f1028g;
                if (view2 != null) {
                    c0275h.f1027f = view2;
                } else {
                    if (c0275h.f1029h != null) {
                        if (this.f995l == null) {
                            this.f995l = new C0276i();
                        }
                        C0276i c0276i = this.f995l;
                        if (c0275h.f1030i == null) {
                            C0065d c0065d = new C0065d(c0275h.f1031j);
                            c0275h.f1030i = c0065d;
                            c0065d.f211f = c0276i;
                            C0068f c0068f = c0275h.f1029h;
                            c0068f.m1352b(c0065d, c0068f.f222a);
                        }
                        C0065d c0065d2 = c0275h.f1030i;
                        C0274g c0274g2 = c0275h.f1026e;
                        if (c0065d2.f210e == null) {
                            c0065d2.f210e = (ExpandedMenuView) c0065d2.f208c.inflate(R.layout.abc_expanded_menu_layout, (ViewGroup) c0274g2, false);
                            if (c0065d2.f212g == null) {
                                c0065d2.f212g = new C0065d.C0066a();
                            }
                            c0065d2.f210e.setAdapter((ListAdapter) c0065d2.f212g);
                            c0065d2.f210e.setOnItemClickListener(c0065d2);
                        }
                        ExpandedMenuView expandedMenuView = c0065d2.f210e;
                        c0275h.f1027f = expandedMenuView;
                    }
                    z = false;
                    if (!z) {
                        if (c0275h.f1027f != null) {
                            if (c0275h.f1028g == null) {
                                C0065d c0065d3 = c0275h.f1030i;
                                if (c0065d3.f212g == null) {
                                    c0065d3.f212g = new C0065d.C0066a();
                                }
                            }
                            z2 = true;
                            if (!z2) {
                                ViewGroup.LayoutParams layoutParams3 = c0275h.f1027f.getLayoutParams();
                                if (layoutParams3 == null) {
                                    layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                                }
                                c0275h.f1026e.setBackgroundResource(c0275h.f1023b);
                                ViewParent parent = c0275h.f1027f.getParent();
                                if (parent != null && (parent instanceof ViewGroup)) {
                                    ((ViewGroup) parent).removeView(c0275h.f1027f);
                                }
                                c0275h.f1026e.addView(c0275h.f1027f, layoutParams3);
                                if (!c0275h.f1027f.hasFocus()) {
                                    c0275h.f1027f.requestFocus();
                                }
                            } else {
                                return;
                            }
                        }
                        z2 = false;
                        if (!z2) {
                        }
                    } else {
                        return;
                    }
                }
                z = true;
                if (!z) {
                }
            }
            i = -2;
            c0275h.f1033l = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
            layoutParams22.gravity = c0275h.f1024c;
            layoutParams22.windowAnimations = c0275h.f1025d;
            windowManager.addView(c0275h.f1026e, layoutParams22);
            c0275h.f1034m = true;
        }
    }

    /* renamed from: v */
    public final boolean m1027v(C0275h c0275h, int i, KeyEvent keyEvent) {
        C0068f c0068f;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c0275h.f1032k || m1026w(c0275h, keyEvent)) && (c0068f = c0275h.f1029h) != null) {
            return c0068f.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    /* renamed from: w */
    public final boolean m1026w(C0275h c0275h, KeyEvent keyEvent) {
        boolean z;
        InterfaceC0565z interfaceC0565z;
        InterfaceC0565z interfaceC0565z2;
        Resources.Theme theme;
        int i;
        boolean z2;
        InterfaceC0565z interfaceC0565z3;
        InterfaceC0565z interfaceC0565z4;
        if (this.f974G) {
            return false;
        }
        if (c0275h.f1032k) {
            return true;
        }
        C0275h c0275h2 = this.f972E;
        if (c0275h2 != null && c0275h2 != c0275h) {
            m1036m(c0275h2, false);
        }
        Window.Callback m1030s = m1030s();
        int i2 = c0275h.f1022a;
        if (m1030s != null) {
            c0275h.f1028g = m1030s.onCreatePanelView(i2);
        }
        if (i2 != 0 && i2 != 108) {
            z = false;
        } else {
            z = true;
        }
        if (z && (interfaceC0565z4 = this.f993j) != null) {
            interfaceC0565z4.mo528f();
        }
        if (c0275h.f1028g == null && (!z || !(this.f990g instanceof C0286r))) {
            C0068f c0068f = c0275h.f1029h;
            if (c0068f == null || c0275h.f1036o) {
                if (c0068f == null) {
                    Context context = this.f985b;
                    if ((i2 == 0 || i2 == 108) && this.f993j != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            C0396c c0396c = new C0396c(context, 0);
                            c0396c.getTheme().setTo(theme);
                            context = c0396c;
                        }
                    }
                    C0068f c0068f2 = new C0068f(context);
                    c0068f2.f226e = this;
                    C0068f c0068f3 = c0275h.f1029h;
                    if (c0068f2 != c0068f3) {
                        if (c0068f3 != null) {
                            c0068f3.m1344r(c0275h.f1030i);
                        }
                        c0275h.f1029h = c0068f2;
                        C0065d c0065d = c0275h.f1030i;
                        if (c0065d != null) {
                            c0068f2.m1352b(c0065d, c0068f2.f222a);
                        }
                    }
                    if (c0275h.f1029h == null) {
                        return false;
                    }
                }
                if (z && (interfaceC0565z2 = this.f993j) != null) {
                    if (this.f994k == null) {
                        this.f994k = new C0269c();
                    }
                    interfaceC0565z2.mo532b(c0275h.f1029h, this.f994k);
                }
                c0275h.f1029h.m1339w();
                if (!m1030s.onCreatePanelMenu(i2, c0275h.f1029h)) {
                    C0068f c0068f4 = c0275h.f1029h;
                    if (c0068f4 != null) {
                        if (c0068f4 != null) {
                            c0068f4.m1344r(c0275h.f1030i);
                        }
                        c0275h.f1029h = null;
                    }
                    if (z && (interfaceC0565z = this.f993j) != null) {
                        interfaceC0565z.mo532b(null, this.f994k);
                    }
                    return false;
                }
                c0275h.f1036o = false;
            }
            c0275h.f1029h.m1339w();
            Bundle bundle = c0275h.f1037p;
            if (bundle != null) {
                c0275h.f1029h.m1343s(bundle);
                c0275h.f1037p = null;
            }
            if (!m1030s.onPreparePanel(0, c0275h.f1028g, c0275h.f1029h)) {
                if (z && (interfaceC0565z3 = this.f993j) != null) {
                    interfaceC0565z3.mo532b(null, this.f994k);
                }
                c0275h.f1029h.m1340v();
                return false;
            }
            if (keyEvent != null) {
                i = keyEvent.getDeviceId();
            } else {
                i = -1;
            }
            if (KeyCharacterMap.load(i).getKeyboardType() != 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            c0275h.f1029h.setQwertyMode(z2);
            c0275h.f1029h.m1340v();
        }
        c0275h.f1032k = true;
        c0275h.f1033l = false;
        this.f972E = c0275h;
        return true;
    }

    /* renamed from: x */
    public final void m1025x() {
        if (this.f1001r) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }
}
