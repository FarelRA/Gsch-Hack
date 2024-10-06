package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.InterfaceC0078k;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes.dex */
public final class C0067e extends BaseAdapter {

    /* renamed from: b */
    public final C0068f f215b;

    /* renamed from: c */
    public int f216c = -1;

    /* renamed from: d */
    public boolean f217d;

    /* renamed from: e */
    public final boolean f218e;

    /* renamed from: f */
    public final LayoutInflater f219f;

    /* renamed from: g */
    public final int f220g;

    public C0067e(C0068f c0068f, LayoutInflater layoutInflater, boolean z, int i) {
        this.f218e = z;
        this.f219f = layoutInflater;
        this.f215b = c0068f;
        this.f220g = i;
        m1355b();
    }

    /* renamed from: b */
    public final void m1355b() {
        C0068f c0068f = this.f215b;
        C0072h c0072h = c0068f.f243v;
        if (c0072h != null) {
            c0068f.m1348i();
            ArrayList<C0072h> arrayList = c0068f.f231j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == c0072h) {
                    this.f216c = i;
                    return;
                }
            }
        }
        this.f216c = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public final C0072h getItem(int i) {
        ArrayList<C0072h> m1347l;
        boolean z = this.f218e;
        C0068f c0068f = this.f215b;
        if (z) {
            c0068f.m1348i();
            m1347l = c0068f.f231j;
        } else {
            m1347l = c0068f.m1347l();
        }
        int i2 = this.f216c;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return m1347l.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<C0072h> m1347l;
        boolean z = this.f218e;
        C0068f c0068f = this.f215b;
        if (z) {
            c0068f.m1348i();
            m1347l = c0068f.f231j;
        } else {
            m1347l = c0068f.m1347l();
        }
        int i = this.f216c;
        int size = m1347l.size();
        if (i < 0) {
            return size;
        }
        return size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z = false;
        if (view == null) {
            view = this.f219f.inflate(this.f220g, viewGroup, false);
        }
        int i3 = getItem(i).f253b;
        int i4 = i - 1;
        if (i4 >= 0) {
            i2 = getItem(i4).f253b;
        } else {
            i2 = i3;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f215b.mo1325m() && i3 != i2) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        InterfaceC0078k.InterfaceC0079a interfaceC0079a = (InterfaceC0078k.InterfaceC0079a) view;
        if (this.f217d) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC0079a.mo939b(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m1355b();
        super.notifyDataSetChanged();
    }
}
