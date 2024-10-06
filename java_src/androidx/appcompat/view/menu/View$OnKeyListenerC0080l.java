package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0076j;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p020f.AbstractC0468f;
import p024g.C0496c0;
import p024g.C0522i0;
import p024g.C0535o;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC0080l extends AbstractC0468f implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: c */
    public final Context f292c;

    /* renamed from: d */
    public final C0068f f293d;

    /* renamed from: e */
    public final C0067e f294e;

    /* renamed from: f */
    public final boolean f295f;

    /* renamed from: g */
    public final int f296g;

    /* renamed from: h */
    public final int f297h;

    /* renamed from: i */
    public final int f298i;

    /* renamed from: j */
    public final C0522i0 f299j;

    /* renamed from: m */
    public PopupWindow.OnDismissListener f302m;

    /* renamed from: n */
    public View f303n;

    /* renamed from: o */
    public View f304o;

    /* renamed from: p */
    public InterfaceC0076j.InterfaceC0077a f305p;

    /* renamed from: q */
    public ViewTreeObserver f306q;

    /* renamed from: r */
    public boolean f307r;

    /* renamed from: s */
    public boolean f308s;

    /* renamed from: t */
    public int f309t;

    /* renamed from: v */
    public boolean f311v;

    /* renamed from: k */
    public final ViewTreeObserver$OnGlobalLayoutListenerC0081a f300k = new ViewTreeObserver$OnGlobalLayoutListenerC0081a();

    /* renamed from: l */
    public final View$OnAttachStateChangeListenerC0082b f301l = new View$OnAttachStateChangeListenerC0082b();

    /* renamed from: u */
    public int f310u = 0;

    /* renamed from: androidx.appcompat.view.menu.l$a */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0081a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0081a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            View$OnKeyListenerC0080l view$OnKeyListenerC0080l = View$OnKeyListenerC0080l.this;
            if (view$OnKeyListenerC0080l.mo620g() && !view$OnKeyListenerC0080l.f299j.f1948y) {
                View view = view$OnKeyListenerC0080l.f304o;
                if (view != null && view.isShown()) {
                    view$OnKeyListenerC0080l.f299j.mo560c();
                } else {
                    view$OnKeyListenerC0080l.dismiss();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.l$b */
    /* loaded from: classes.dex */
    public class View$OnAttachStateChangeListenerC0082b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0082b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            View$OnKeyListenerC0080l view$OnKeyListenerC0080l = View$OnKeyListenerC0080l.this;
            ViewTreeObserver viewTreeObserver = view$OnKeyListenerC0080l.f306q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    view$OnKeyListenerC0080l.f306q = view.getViewTreeObserver();
                }
                view$OnKeyListenerC0080l.f306q.removeGlobalOnLayoutListener(view$OnKeyListenerC0080l.f300k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public View$OnKeyListenerC0080l(int i, int i2, Context context, View view, C0068f c0068f, boolean z) {
        this.f292c = context;
        this.f293d = c0068f;
        this.f295f = z;
        this.f294e = new C0067e(c0068f, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.f297h = i;
        this.f298i = i2;
        Resources resources = context.getResources();
        this.f296g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f303n = view;
        this.f299j = new C0522i0(context, i, i2);
        c0068f.m1352b(this, context);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: a */
    public final void mo1281a(C0068f c0068f, boolean z) {
        if (c0068f != this.f293d) {
            return;
        }
        dismiss();
        InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f305p;
        if (interfaceC0077a != null) {
            interfaceC0077a.mo1015a(c0068f, z);
        }
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: c */
    public final void mo560c() {
        View view;
        boolean z;
        boolean z2 = true;
        if (!mo620g()) {
            if (!this.f307r && (view = this.f303n) != null) {
                this.f304o = view;
                C0522i0 c0522i0 = this.f299j;
                c0522i0.f1949z.setOnDismissListener(this);
                c0522i0.f1940q = this;
                c0522i0.f1948y = true;
                C0535o c0535o = c0522i0.f1949z;
                c0535o.setFocusable(true);
                View view2 = this.f304o;
                if (this.f306q == null) {
                    z = true;
                } else {
                    z = false;
                }
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.f306q = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f300k);
                }
                view2.addOnAttachStateChangeListener(this.f301l);
                c0522i0.f1939p = view2;
                c0522i0.f1936m = this.f310u;
                boolean z3 = this.f308s;
                Context context = this.f292c;
                C0067e c0067e = this.f294e;
                if (!z3) {
                    this.f309t = AbstractC0468f.m690m(c0067e, context, this.f296g);
                    this.f308s = true;
                }
                c0522i0.m621f(this.f309t);
                c0535o.setInputMethodMode(2);
                c0522i0.f1947x = this.f1805b;
                c0522i0.mo560c();
                C0496c0 c0496c0 = c0522i0.f1927d;
                c0496c0.setOnKeyListener(this);
                if (this.f311v) {
                    C0068f c0068f = this.f293d;
                    if (c0068f.f234m != null) {
                        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0496c0, false);
                        TextView textView = (TextView) frameLayout.findViewById(16908310);
                        if (textView != null) {
                            textView.setText(c0068f.f234m);
                        }
                        frameLayout.setEnabled(false);
                        c0496c0.addHeaderView(frameLayout, null, false);
                    }
                }
                c0522i0.mo559e(c0067e);
                c0522i0.mo560c();
            } else {
                z2 = false;
            }
        }
        if (z2) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: d */
    public final boolean mo1279d() {
        return false;
    }

    @Override // p020f.InterfaceC0470h
    public final void dismiss() {
        if (mo620g()) {
            this.f299j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: f */
    public final void mo1278f() {
        this.f308s = false;
        C0067e c0067e = this.f294e;
        if (c0067e != null) {
            c0067e.notifyDataSetChanged();
        }
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: g */
    public final boolean mo620g() {
        return !this.f307r && this.f299j.mo620g();
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: h */
    public final C0496c0 mo619h() {
        return this.f299j.f1927d;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: i */
    public final void mo1331i(InterfaceC0076j.InterfaceC0077a interfaceC0077a) {
        this.f305p = interfaceC0077a;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo1275k(SubMenuC0083m subMenuC0083m) {
        int i;
        boolean z;
        if (subMenuC0083m.hasVisibleItems()) {
            C0074i c0074i = new C0074i(this.f297h, this.f298i, this.f292c, this.f304o, subMenuC0083m, this.f295f);
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f305p;
            c0074i.f287i = interfaceC0077a;
            AbstractC0468f abstractC0468f = c0074i.f288j;
            if (abstractC0468f != null) {
                abstractC0468f.mo1331i(interfaceC0077a);
            }
            boolean m682u = AbstractC0468f.m682u(subMenuC0083m);
            c0074i.f286h = m682u;
            AbstractC0468f abstractC0468f2 = c0074i.f288j;
            if (abstractC0468f2 != null) {
                abstractC0468f2.mo688o(m682u);
            }
            c0074i.f289k = this.f302m;
            this.f302m = null;
            this.f293d.m1351c(false);
            C0522i0 c0522i0 = this.f299j;
            int i2 = c0522i0.f1930g;
            if (!c0522i0.f1933j) {
                i = 0;
            } else {
                i = c0522i0.f1931h;
            }
            int i3 = this.f310u;
            View view = this.f303n;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if ((Gravity.getAbsoluteGravity(i3, view.getLayoutDirection()) & 7) == 5) {
                i2 += this.f303n.getWidth();
            }
            if (!c0074i.m1333b()) {
                if (c0074i.f284f == null) {
                    z = false;
                    if (z) {
                        InterfaceC0076j.InterfaceC0077a interfaceC0077a2 = this.f305p;
                        if (interfaceC0077a2 != null) {
                            interfaceC0077a2.mo1014b(subMenuC0083m);
                        }
                        return true;
                    }
                } else {
                    c0074i.m1332d(i2, i, true, true);
                }
            }
            z = true;
            if (z) {
            }
        }
        return false;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: l */
    public final void mo691l(C0068f c0068f) {
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: n */
    public final void mo689n(View view) {
        this.f303n = view;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: o */
    public final void mo688o(boolean z) {
        this.f294e.f217d = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f307r = true;
        this.f293d.m1351c(true);
        ViewTreeObserver viewTreeObserver = this.f306q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f306q = this.f304o.getViewTreeObserver();
            }
            this.f306q.removeGlobalOnLayoutListener(this.f300k);
            this.f306q = null;
        }
        this.f304o.removeOnAttachStateChangeListener(this.f301l);
        PopupWindow.OnDismissListener onDismissListener = this.f302m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: p */
    public final void mo687p(int i) {
        this.f310u = i;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: q */
    public final void mo686q(int i) {
        this.f299j.f1930g = i;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: r */
    public final void mo685r(PopupWindow.OnDismissListener onDismissListener) {
        this.f302m = onDismissListener;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: s */
    public final void mo684s(boolean z) {
        this.f311v = z;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: t */
    public final void mo683t(int i) {
        C0522i0 c0522i0 = this.f299j;
        c0522i0.f1931h = i;
        c0522i0.f1933j = true;
    }
}
