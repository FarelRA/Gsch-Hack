package p004b;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0134d;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p004b.AbstractC0254a;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.Window$CallbackC0406i;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: b.r */
/* loaded from: classes.dex */
public final class C0286r extends AbstractC0254a {

    /* renamed from: a */
    public final C0134d f1056a;

    /* renamed from: b */
    public boolean f1057b;

    /* renamed from: c */
    public final C0291e f1058c;

    /* renamed from: d */
    public boolean f1059d;

    /* renamed from: e */
    public boolean f1060e;

    /* renamed from: f */
    public final ArrayList<AbstractC0254a.InterfaceC0256b> f1061f = new ArrayList<>();

    /* renamed from: g */
    public final RunnableC0287a f1062g = new RunnableC0287a();

    /* renamed from: b.r$a */
    /* loaded from: classes.dex */
    public class RunnableC0287a implements Runnable {
        public RunnableC0287a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0068f c0068f;
            C0286r c0286r = C0286r.this;
            Menu m1016p = c0286r.m1016p();
            if (m1016p instanceof C0068f) {
                c0068f = (C0068f) m1016p;
            } else {
                c0068f = null;
            }
            if (c0068f != null) {
                c0068f.m1339w();
            }
            try {
                m1016p.clear();
                C0291e c0291e = c0286r.f1058c;
                if (!c0291e.onCreatePanelMenu(0, m1016p) || !c0291e.onPreparePanel(0, null, m1016p)) {
                    m1016p.clear();
                }
            } finally {
                if (c0068f != null) {
                    c0068f.m1340v();
                }
            }
        }
    }

    /* renamed from: b.r$b */
    /* loaded from: classes.dex */
    public class C0288b implements Toolbar.InterfaceC0118e {
        public C0288b() {
        }
    }

    /* renamed from: b.r$c */
    /* loaded from: classes.dex */
    public final class C0289c implements InterfaceC0076j.InterfaceC0077a {

        /* renamed from: b */
        public boolean f1065b;

        public C0289c() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: a */
        public final void mo1015a(C0068f c0068f, boolean z) {
            if (this.f1065b) {
                return;
            }
            this.f1065b = true;
            C0286r c0286r = C0286r.this;
            c0286r.f1056a.mo652h();
            C0291e c0291e = c0286r.f1058c;
            if (c0291e != null) {
                c0291e.onPanelClosed(108, c0068f);
            }
            this.f1065b = false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
        /* renamed from: b */
        public final boolean mo1014b(C0068f c0068f) {
            C0291e c0291e = C0286r.this.f1058c;
            if (c0291e != null) {
                c0291e.onMenuOpened(108, c0068f);
                return true;
            }
            return false;
        }
    }

    /* renamed from: b.r$d */
    /* loaded from: classes.dex */
    public final class C0290d implements C0068f.InterfaceC0069a {
        public C0290d() {
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: a */
        public final boolean mo853a(C0068f c0068f, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: b */
        public final void mo852b(C0068f c0068f) {
            C0286r c0286r = C0286r.this;
            if (c0286r.f1058c != null) {
                boolean mo657c = c0286r.f1056a.mo657c();
                C0291e c0291e = c0286r.f1058c;
                if (mo657c) {
                    c0291e.onPanelClosed(108, c0068f);
                } else if (c0291e.onPreparePanel(0, null, c0068f)) {
                    c0291e.onMenuOpened(108, c0068f);
                }
            }
        }
    }

    /* renamed from: b.r$e */
    /* loaded from: classes.dex */
    public class C0291e extends Window$CallbackC0406i {
        public C0291e(LayoutInflater$Factory2C0266j.C0272e c0272e) {
            super(c0272e);
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return i == 0 ? new View(C0286r.this.f1056a.mo645o()) : super.onCreatePanelView(i);
        }

        @Override // p016e.Window$CallbackC0406i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel) {
                C0286r c0286r = C0286r.this;
                if (!c0286r.f1057b) {
                    c0286r.f1056a.f571m = true;
                    c0286r.f1057b = true;
                }
            }
            return onPreparePanel;
        }
    }

    public C0286r(Toolbar toolbar, CharSequence charSequence, LayoutInflater$Factory2C0266j.C0272e c0272e) {
        C0288b c0288b = new C0288b();
        C0134d c0134d = new C0134d(toolbar, false);
        this.f1056a = c0134d;
        C0291e c0291e = new C0291e(c0272e);
        this.f1058c = c0291e;
        c0134d.f570l = c0291e;
        toolbar.setOnMenuItemClickListener(c0288b);
        c0134d.setWindowTitle(charSequence);
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: a */
    public final boolean mo1021a() {
        return this.f1056a.mo656d();
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: b */
    public final boolean mo1011b() {
        C0134d c0134d = this.f1056a;
        if (c0134d.mo641s()) {
            c0134d.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: c */
    public final void mo1010c(boolean z) {
        if (z == this.f1060e) {
            return;
        }
        this.f1060e = z;
        ArrayList<AbstractC0254a.InterfaceC0256b> arrayList = this.f1061f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m1048a();
        }
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: d */
    public final int mo1009d() {
        return this.f1056a.f560b;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: e */
    public final Context mo1008e() {
        return this.f1056a.mo645o();
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: f */
    public final boolean mo1020f() {
        C0134d c0134d = this.f1056a;
        Toolbar toolbar = c0134d.f559a;
        RunnableC0287a runnableC0287a = this.f1062g;
        toolbar.removeCallbacks(runnableC0287a);
        Toolbar toolbar2 = c0134d.f559a;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        toolbar2.postOnAnimation(runnableC0287a);
        return true;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: g */
    public final void mo1007g() {
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: h */
    public final void mo1019h() {
        this.f1056a.f559a.removeCallbacks(this.f1062g);
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: i */
    public final boolean mo1006i(int i, KeyEvent keyEvent) {
        Menu m1016p = m1016p();
        if (m1016p != null) {
            m1016p.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            return m1016p.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: j */
    public final boolean mo1018j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo1017k();
        }
        return true;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: k */
    public final boolean mo1017k() {
        return this.f1056a.mo655e();
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: l */
    public final void mo1005l(boolean z) {
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: m */
    public final void mo1004m(boolean z) {
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: n */
    public final void mo1003n(CharSequence charSequence) {
        this.f1056a.setWindowTitle(charSequence);
    }

    /* renamed from: p */
    public final Menu m1016p() {
        boolean z = this.f1059d;
        C0134d c0134d = this.f1056a;
        if (!z) {
            C0289c c0289c = new C0289c();
            C0290d c0290d = new C0290d();
            Toolbar toolbar = c0134d.f559a;
            toolbar.f477M = c0289c;
            toolbar.f478N = c0290d;
            ActionMenuView actionMenuView = toolbar.f481b;
            if (actionMenuView != null) {
                actionMenuView.f376v = c0289c;
                actionMenuView.f377w = c0290d;
            }
            this.f1059d = true;
        }
        return c0134d.f559a.getMenu();
    }
}
