package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0076j;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p020f.AbstractC0468f;
import p024g.C0496c0;
import p024g.C0522i0;
import p024g.C0535o;
import p024g.InterfaceC0515h0;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC0059b extends AbstractC0468f implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: A */
    public PopupWindow.OnDismissListener f171A;

    /* renamed from: B */
    public boolean f172B;

    /* renamed from: c */
    public final Context f173c;

    /* renamed from: d */
    public final int f174d;

    /* renamed from: e */
    public final int f175e;

    /* renamed from: f */
    public final int f176f;

    /* renamed from: g */
    public final boolean f177g;

    /* renamed from: h */
    public final Handler f178h;

    /* renamed from: p */
    public View f186p;

    /* renamed from: q */
    public View f187q;

    /* renamed from: r */
    public int f188r;

    /* renamed from: s */
    public boolean f189s;

    /* renamed from: t */
    public boolean f190t;

    /* renamed from: u */
    public int f191u;

    /* renamed from: v */
    public int f192v;

    /* renamed from: x */
    public boolean f194x;

    /* renamed from: y */
    public InterfaceC0076j.InterfaceC0077a f195y;

    /* renamed from: z */
    public ViewTreeObserver f196z;

    /* renamed from: i */
    public final ArrayList f179i = new ArrayList();

    /* renamed from: j */
    public final ArrayList f180j = new ArrayList();

    /* renamed from: k */
    public final ViewTreeObserver$OnGlobalLayoutListenerC0060a f181k = new ViewTreeObserver$OnGlobalLayoutListenerC0060a();

    /* renamed from: l */
    public final View$OnAttachStateChangeListenerC0061b f182l = new View$OnAttachStateChangeListenerC0061b();

    /* renamed from: m */
    public final C0062c f183m = new C0062c();

    /* renamed from: n */
    public int f184n = 0;

    /* renamed from: o */
    public int f185o = 0;

    /* renamed from: w */
    public boolean f193w = false;

    /* renamed from: androidx.appcompat.view.menu.b$a */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0060a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0060a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            View$OnKeyListenerC0059b view$OnKeyListenerC0059b = View$OnKeyListenerC0059b.this;
            if (view$OnKeyListenerC0059b.mo620g()) {
                ArrayList arrayList = view$OnKeyListenerC0059b.f180j;
                if (arrayList.size() > 0 && !((C0063d) arrayList.get(0)).f200a.f1948y) {
                    View view = view$OnKeyListenerC0059b.f187q;
                    if (view != null && view.isShown()) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((C0063d) it.next()).f200a.mo560c();
                        }
                        return;
                    }
                    view$OnKeyListenerC0059b.dismiss();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$b */
    /* loaded from: classes.dex */
    public class View$OnAttachStateChangeListenerC0061b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0061b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            View$OnKeyListenerC0059b view$OnKeyListenerC0059b = View$OnKeyListenerC0059b.this;
            ViewTreeObserver viewTreeObserver = view$OnKeyListenerC0059b.f196z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    view$OnKeyListenerC0059b.f196z = view.getViewTreeObserver();
                }
                view$OnKeyListenerC0059b.f196z.removeGlobalOnLayoutListener(view$OnKeyListenerC0059b.f181k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$c */
    /* loaded from: classes.dex */
    public class C0062c implements InterfaceC0515h0 {
        public C0062c() {
        }

        @Override // p024g.InterfaceC0515h0
        /* renamed from: a */
        public final void mo600a(C0068f c0068f, MenuItem menuItem) {
            View$OnKeyListenerC0059b.this.f178h.removeCallbacksAndMessages(c0068f);
        }

        @Override // p024g.InterfaceC0515h0
        /* renamed from: b */
        public final void mo599b(C0068f c0068f, C0072h c0072h) {
            View$OnKeyListenerC0059b view$OnKeyListenerC0059b = View$OnKeyListenerC0059b.this;
            view$OnKeyListenerC0059b.f178h.removeCallbacksAndMessages(null);
            ArrayList arrayList = view$OnKeyListenerC0059b.f180j;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0068f == ((C0063d) arrayList.get(i)).f201b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            view$OnKeyListenerC0059b.f178h.postAtTime(new RunnableC0064c(this, i2 < arrayList.size() ? (C0063d) arrayList.get(i2) : null, c0072h, c0068f), c0068f, SystemClock.uptimeMillis() + 200);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$d */
    /* loaded from: classes.dex */
    public static class C0063d {

        /* renamed from: a */
        public final C0522i0 f200a;

        /* renamed from: b */
        public final C0068f f201b;

        /* renamed from: c */
        public final int f202c;

        public C0063d(C0522i0 c0522i0, C0068f c0068f, int i) {
            this.f200a = c0522i0;
            this.f201b = c0068f;
            this.f202c = i;
        }
    }

    public View$OnKeyListenerC0059b(Context context, View view, int i, int i2, boolean z) {
        this.f173c = context;
        this.f186p = view;
        this.f175e = i;
        this.f176f = i2;
        this.f177g = z;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        this.f188r = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f174d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f178h = new Handler();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: a */
    public final void mo1281a(C0068f c0068f, boolean z) {
        int i;
        ArrayList arrayList = this.f180j;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                if (c0068f == ((C0063d) arrayList.get(i2)).f201b) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 < 0) {
            return;
        }
        int i3 = i2 + 1;
        if (i3 < arrayList.size()) {
            ((C0063d) arrayList.get(i3)).f201b.m1351c(false);
        }
        C0063d c0063d = (C0063d) arrayList.remove(i2);
        c0063d.f201b.m1344r(this);
        boolean z2 = this.f172B;
        C0522i0 c0522i0 = c0063d.f200a;
        if (z2) {
            if (Build.VERSION.SDK_INT >= 23) {
                c0522i0.f1949z.setExitTransition(null);
            } else {
                c0522i0.getClass();
            }
            c0522i0.f1949z.setAnimationStyle(0);
        }
        c0522i0.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            i = ((C0063d) arrayList.get(size2 - 1)).f202c;
        } else {
            View view = this.f186p;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (view.getLayoutDirection() == 1) {
                i = 0;
            } else {
                i = 1;
            }
        }
        this.f188r = i;
        if (size2 == 0) {
            dismiss();
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f195y;
            if (interfaceC0077a != null) {
                interfaceC0077a.mo1015a(c0068f, true);
            }
            ViewTreeObserver viewTreeObserver = this.f196z;
            if (viewTreeObserver != null) {
                if (viewTreeObserver.isAlive()) {
                    this.f196z.removeGlobalOnLayoutListener(this.f181k);
                }
                this.f196z = null;
            }
            this.f187q.removeOnAttachStateChangeListener(this.f182l);
            this.f171A.onDismiss();
        } else if (z) {
            ((C0063d) arrayList.get(0)).f201b.m1351c(false);
        }
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: c */
    public final void mo560c() {
        if (mo620g()) {
            return;
        }
        ArrayList arrayList = this.f179i;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m1358v((C0068f) it.next());
        }
        arrayList.clear();
        View view = this.f186p;
        this.f187q = view;
        if (view != null) {
            boolean z = this.f196z == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f196z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f181k);
            }
            this.f187q.addOnAttachStateChangeListener(this.f182l);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: d */
    public final boolean mo1279d() {
        return false;
    }

    @Override // p020f.InterfaceC0470h
    public final void dismiss() {
        ArrayList arrayList = this.f180j;
        int size = arrayList.size();
        if (size <= 0) {
            return;
        }
        C0063d[] c0063dArr = (C0063d[]) arrayList.toArray(new C0063d[size]);
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            C0063d c0063d = c0063dArr[size];
            if (c0063d.f200a.mo620g()) {
                c0063d.f200a.dismiss();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: f */
    public final void mo1278f() {
        Iterator it = this.f180j.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((C0063d) it.next()).f200a.f1927d.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((C0067e) adapter).notifyDataSetChanged();
        }
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: g */
    public final boolean mo620g() {
        ArrayList arrayList = this.f180j;
        return arrayList.size() > 0 && ((C0063d) arrayList.get(0)).f200a.mo620g();
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: h */
    public final C0496c0 mo619h() {
        ArrayList arrayList = this.f180j;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C0063d) arrayList.get(arrayList.size() - 1)).f200a.f1927d;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: i */
    public final void mo1331i(InterfaceC0076j.InterfaceC0077a interfaceC0077a) {
        this.f195y = interfaceC0077a;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: k */
    public final boolean mo1275k(SubMenuC0083m subMenuC0083m) {
        Iterator it = this.f180j.iterator();
        while (it.hasNext()) {
            C0063d c0063d = (C0063d) it.next();
            if (subMenuC0083m == c0063d.f201b) {
                c0063d.f200a.f1927d.requestFocus();
                return true;
            }
        }
        if (subMenuC0083m.hasVisibleItems()) {
            mo691l(subMenuC0083m);
            InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f195y;
            if (interfaceC0077a != null) {
                interfaceC0077a.mo1014b(subMenuC0083m);
            }
            return true;
        }
        return false;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: l */
    public final void mo691l(C0068f c0068f) {
        c0068f.m1352b(this, this.f173c);
        if (mo620g()) {
            m1358v(c0068f);
        } else {
            this.f179i.add(c0068f);
        }
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: n */
    public final void mo689n(View view) {
        if (this.f186p != view) {
            this.f186p = view;
            int i = this.f184n;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            this.f185o = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: o */
    public final void mo688o(boolean z) {
        this.f193w = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0063d c0063d;
        ArrayList arrayList = this.f180j;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0063d = null;
                break;
            }
            c0063d = (C0063d) arrayList.get(i);
            if (!c0063d.f200a.mo620g()) {
                break;
            }
            i++;
        }
        if (c0063d != null) {
            c0063d.f201b.m1351c(false);
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
        if (this.f184n != i) {
            this.f184n = i;
            View view = this.f186p;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            this.f185o = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: q */
    public final void mo686q(int i) {
        this.f189s = true;
        this.f191u = i;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: r */
    public final void mo685r(PopupWindow.OnDismissListener onDismissListener) {
        this.f171A = onDismissListener;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: s */
    public final void mo684s(boolean z) {
        this.f194x = z;
    }

    @Override // p020f.AbstractC0468f
    /* renamed from: t */
    public final void mo683t(int i) {
        this.f190t = true;
        this.f192v = i;
    }

    /* renamed from: v */
    public final void m1358v(C0068f c0068f) {
        View view;
        C0063d c0063d;
        char c;
        int i;
        int i2;
        int width;
        MenuItem menuItem;
        C0067e c0067e;
        int i3;
        int firstVisiblePosition;
        Context context = this.f173c;
        LayoutInflater from = LayoutInflater.from(context);
        C0067e c0067e2 = new C0067e(c0068f, from, this.f177g, R.layout.abc_cascading_menu_item_layout);
        if (!mo620g() && this.f193w) {
            c0067e2.f217d = true;
        } else if (mo620g()) {
            c0067e2.f217d = AbstractC0468f.m682u(c0068f);
        }
        int m690m = AbstractC0468f.m690m(c0067e2, context, this.f174d);
        C0522i0 c0522i0 = new C0522i0(context, this.f175e, this.f176f);
        c0522i0.f1977D = this.f183m;
        c0522i0.f1940q = this;
        C0535o c0535o = c0522i0.f1949z;
        c0535o.setOnDismissListener(this);
        c0522i0.f1939p = this.f186p;
        c0522i0.f1936m = this.f185o;
        c0522i0.f1948y = true;
        c0535o.setFocusable(true);
        c0535o.setInputMethodMode(2);
        c0522i0.mo559e(c0067e2);
        c0522i0.m621f(m690m);
        c0522i0.f1936m = this.f185o;
        ArrayList arrayList = this.f180j;
        if (arrayList.size() > 0) {
            c0063d = (C0063d) arrayList.get(arrayList.size() - 1);
            C0068f c0068f2 = c0063d.f201b;
            int size = c0068f2.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    menuItem = null;
                    break;
                }
                menuItem = c0068f2.getItem(i4);
                if (menuItem.hasSubMenu() && c0068f == menuItem.getSubMenu()) {
                    break;
                }
                i4++;
            }
            if (menuItem != null) {
                C0496c0 c0496c0 = c0063d.f200a.f1927d;
                ListAdapter adapter = c0496c0.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i3 = headerViewListAdapter.getHeadersCount();
                    c0067e = (C0067e) headerViewListAdapter.getWrappedAdapter();
                } else {
                    c0067e = (C0067e) adapter;
                    i3 = 0;
                }
                int count = c0067e.getCount();
                int i5 = 0;
                while (true) {
                    if (i5 >= count) {
                        i5 = -1;
                        break;
                    } else if (menuItem == c0067e.getItem(i5)) {
                        break;
                    } else {
                        i5++;
                    }
                }
                if (i5 != -1 && (firstVisiblePosition = (i5 + i3) - c0496c0.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < c0496c0.getChildCount()) {
                    view = c0496c0.getChildAt(firstVisiblePosition);
                }
            }
            view = null;
        } else {
            view = null;
            c0063d = null;
        }
        if (view != null) {
            Method method = C0522i0.f1976E;
            if (method != null) {
                try {
                    method.invoke(c0535o, Boolean.FALSE);
                } catch (Exception unused) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 23) {
                c0535o.setEnterTransition(null);
            }
            C0496c0 c0496c02 = ((C0063d) arrayList.get(arrayList.size() - 1)).f200a.f1927d;
            int[] iArr = new int[2];
            c0496c02.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.f187q.getWindowVisibleDisplayFrame(rect);
            int i7 = (this.f188r != 1 ? iArr[0] - m690m >= 0 : (c0496c02.getWidth() + iArr[0]) + m690m > rect.right) ? 0 : 1;
            boolean z = i7 == 1;
            this.f188r = i7;
            if (i6 >= 26) {
                c0522i0.f1939p = view;
                i2 = 0;
                i = 0;
            } else {
                int[] iArr2 = new int[2];
                this.f186p.getLocationOnScreen(iArr2);
                int[] iArr3 = new int[2];
                view.getLocationOnScreen(iArr3);
                if ((this.f185o & 7) == 5) {
                    c = 0;
                    iArr2[0] = this.f186p.getWidth() + iArr2[0];
                    iArr3[0] = view.getWidth() + iArr3[0];
                } else {
                    c = 0;
                }
                i = iArr3[c] - iArr2[c];
                i2 = iArr3[1] - iArr2[1];
            }
            if ((this.f185o & 5) != 5) {
                if (z) {
                    width = i + view.getWidth();
                    c0522i0.f1930g = width;
                    c0522i0.f1935l = true;
                    c0522i0.f1934k = true;
                    c0522i0.f1931h = i2;
                    c0522i0.f1933j = true;
                }
                width = i - m690m;
                c0522i0.f1930g = width;
                c0522i0.f1935l = true;
                c0522i0.f1934k = true;
                c0522i0.f1931h = i2;
                c0522i0.f1933j = true;
            } else if (z) {
                width = i + m690m;
                c0522i0.f1930g = width;
                c0522i0.f1935l = true;
                c0522i0.f1934k = true;
                c0522i0.f1931h = i2;
                c0522i0.f1933j = true;
            } else {
                m690m = view.getWidth();
                width = i - m690m;
                c0522i0.f1930g = width;
                c0522i0.f1935l = true;
                c0522i0.f1934k = true;
                c0522i0.f1931h = i2;
                c0522i0.f1933j = true;
            }
        } else {
            if (this.f189s) {
                c0522i0.f1930g = this.f191u;
            }
            if (this.f190t) {
                c0522i0.f1931h = this.f192v;
                c0522i0.f1933j = true;
            }
            c0522i0.f1947x = this.f1805b;
        }
        arrayList.add(new C0063d(c0522i0, c0068f, this.f188r));
        c0522i0.mo560c();
        C0496c0 c0496c03 = c0522i0.f1927d;
        c0496c03.setOnKeyListener(this);
        if (c0063d == null && this.f194x && c0068f.f234m != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0496c03, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(c0068f.f234m);
            c0496c03.addHeaderView(frameLayout, null, false);
            c0522i0.mo560c();
        }
    }
}
