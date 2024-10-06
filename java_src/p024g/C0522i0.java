package p024g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0067e;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: g.i0 */
/* loaded from: classes.dex */
public final class C0522i0 extends C0508g0 implements InterfaceC0515h0 {

    /* renamed from: E */
    public static final Method f1976E;

    /* renamed from: D */
    public InterfaceC0515h0 f1977D;

    /* renamed from: g.i0$a */
    /* loaded from: classes.dex */
    public static class C0523a extends C0496c0 {

        /* renamed from: o */
        public final int f1978o;

        /* renamed from: p */
        public final int f1979p;

        /* renamed from: q */
        public InterfaceC0515h0 f1980q;

        /* renamed from: r */
        public C0072h f1981r;

        public C0523a(Context context, boolean z) {
            super(context, z);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f1978o = 21;
                this.f1979p = 22;
                return;
            }
            this.f1978o = 22;
            this.f1979p = 21;
        }

        @Override // p024g.C0496c0, android.view.View
        public final boolean onHoverEvent(MotionEvent motionEvent) {
            C0067e c0067e;
            int i;
            C0072h c0072h;
            int pointToPosition;
            int i2;
            if (this.f1980q != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0067e = (C0067e) headerViewListAdapter.getWrappedAdapter();
                } else {
                    c0067e = (C0067e) adapter;
                    i = 0;
                }
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < c0067e.getCount()) {
                    c0072h = c0067e.getItem(i2);
                } else {
                    c0072h = null;
                }
                C0072h c0072h2 = this.f1981r;
                if (c0072h2 != c0072h) {
                    C0068f c0068f = c0067e.f215b;
                    if (c0072h2 != null) {
                        this.f1980q.mo600a(c0068f, c0072h2);
                    }
                    this.f1981r = c0072h;
                    if (c0072h != null) {
                        this.f1980q.mo599b(c0068f, c0072h);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1978o) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView != null && i == this.f1979p) {
                setSelection(-1);
                ((C0067e) getAdapter()).f215b.m1351c(false);
                return true;
            } else {
                return super.onKeyDown(i, keyEvent);
            }
        }

        public void setHoverListener(InterfaceC0515h0 interfaceC0515h0) {
            this.f1980q = interfaceC0515h0;
        }

        @Override // p024g.C0496c0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            f1976E = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0522i0(Context context, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // p024g.InterfaceC0515h0
    /* renamed from: a */
    public final void mo600a(C0068f c0068f, MenuItem menuItem) {
        InterfaceC0515h0 interfaceC0515h0 = this.f1977D;
        if (interfaceC0515h0 != null) {
            interfaceC0515h0.mo600a(c0068f, menuItem);
        }
    }

    @Override // p024g.InterfaceC0515h0
    /* renamed from: b */
    public final void mo599b(C0068f c0068f, C0072h c0072h) {
        InterfaceC0515h0 interfaceC0515h0 = this.f1977D;
        if (interfaceC0515h0 != null) {
            interfaceC0515h0.mo599b(c0068f, c0072h);
        }
    }

    @Override // p024g.C0508g0
    /* renamed from: d */
    public final C0496c0 mo598d(Context context, boolean z) {
        C0523a c0523a = new C0523a(context, z);
        c0523a.setHoverListener(this);
        return c0523a;
    }
}
