package p020f;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0067e;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.view.menu.View$OnKeyListenerC0059b;
/* renamed from: f.f */
/* loaded from: classes.dex */
public abstract class AbstractC0468f implements InterfaceC0470h, InterfaceC0076j, AdapterView.OnItemClickListener {

    /* renamed from: b */
    public Rect f1805b;

    /* renamed from: m */
    public static int m690m(C0067e c0067e, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = c0067e.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = c0067e.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = c0067e.getView(i4, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    /* renamed from: u */
    public static boolean m682u(C0068f c0068f) {
        int size = c0068f.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0068f.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: b */
    public final boolean mo694b(C0072h c0072h) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: e */
    public final void mo693e(Context context, C0068f c0068f) {
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: j */
    public final boolean mo692j(C0072h c0072h) {
        return false;
    }

    /* renamed from: l */
    public abstract void mo691l(C0068f c0068f);

    /* renamed from: n */
    public abstract void mo689n(View view);

    /* renamed from: o */
    public abstract void mo688o(boolean z);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        C0067e c0067e;
        int i2;
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        if (listAdapter instanceof HeaderViewListAdapter) {
            c0067e = (C0067e) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        } else {
            c0067e = (C0067e) listAdapter;
        }
        C0068f c0068f = c0067e.f215b;
        MenuItem menuItem = (MenuItem) listAdapter.getItem(i);
        if (!(this instanceof View$OnKeyListenerC0059b)) {
            i2 = 0;
        } else {
            i2 = 4;
        }
        c0068f.m1345q(menuItem, this, i2);
    }

    /* renamed from: p */
    public abstract void mo687p(int i);

    /* renamed from: q */
    public abstract void mo686q(int i);

    /* renamed from: r */
    public abstract void mo685r(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: s */
    public abstract void mo684s(boolean z);

    /* renamed from: t */
    public abstract void mo683t(int i);
}
