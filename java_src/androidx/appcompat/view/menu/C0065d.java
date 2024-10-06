package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.C0055a;
import androidx.appcompat.view.menu.InterfaceC0076j;
import androidx.appcompat.view.menu.InterfaceC0078k;
import java.util.ArrayList;
import net.geschool.app.secure.R;
import p004b.DialogInterfaceC0262f;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes.dex */
public final class C0065d implements InterfaceC0076j, AdapterView.OnItemClickListener {

    /* renamed from: b */
    public Context f207b;

    /* renamed from: c */
    public LayoutInflater f208c;

    /* renamed from: d */
    public C0068f f209d;

    /* renamed from: e */
    public ExpandedMenuView f210e;

    /* renamed from: f */
    public InterfaceC0076j.InterfaceC0077a f211f;

    /* renamed from: g */
    public C0066a f212g;

    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes.dex */
    public class C0066a extends BaseAdapter {

        /* renamed from: b */
        public int f213b = -1;

        public C0066a() {
            m1357b();
        }

        /* renamed from: b */
        public final void m1357b() {
            C0068f c0068f = C0065d.this.f209d;
            C0072h c0072h = c0068f.f243v;
            if (c0072h != null) {
                c0068f.m1348i();
                ArrayList<C0072h> arrayList = c0068f.f231j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == c0072h) {
                        this.f213b = i;
                        return;
                    }
                }
            }
            this.f213b = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: c */
        public final C0072h getItem(int i) {
            C0065d c0065d = C0065d.this;
            C0068f c0068f = c0065d.f209d;
            c0068f.m1348i();
            ArrayList<C0072h> arrayList = c0068f.f231j;
            c0065d.getClass();
            int i2 = i + 0;
            int i3 = this.f213b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            C0065d c0065d = C0065d.this;
            C0068f c0068f = c0065d.f209d;
            c0068f.m1348i();
            int size = c0068f.f231j.size();
            c0065d.getClass();
            int i = size + 0;
            if (this.f213b < 0) {
                return i;
            }
            return i - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0065d.this.f208c.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
            }
            ((InterfaceC0078k.InterfaceC0079a) view).mo939b(getItem(i));
            return view;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            m1357b();
            super.notifyDataSetChanged();
        }
    }

    public C0065d(Context context) {
        this.f207b = context;
        this.f208c = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: a */
    public final void mo1281a(C0068f c0068f, boolean z) {
        InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f211f;
        if (interfaceC0077a != null) {
            interfaceC0077a.mo1015a(c0068f, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: b */
    public final boolean mo694b(C0072h c0072h) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: d */
    public final boolean mo1279d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: e */
    public final void mo693e(Context context, C0068f c0068f) {
        if (this.f207b != null) {
            this.f207b = context;
            if (this.f208c == null) {
                this.f208c = LayoutInflater.from(context);
            }
        }
        this.f209d = c0068f;
        C0066a c0066a = this.f212g;
        if (c0066a != null) {
            c0066a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: f */
    public final void mo1278f() {
        C0066a c0066a = this.f212g;
        if (c0066a != null) {
            c0066a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: i */
    public final void mo1331i(InterfaceC0076j.InterfaceC0077a interfaceC0077a) {
        this.f211f = interfaceC0077a;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: j */
    public final boolean mo692j(C0072h c0072h) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: k */
    public final boolean mo1275k(SubMenuC0083m subMenuC0083m) {
        if (!subMenuC0083m.hasVisibleItems()) {
            return false;
        }
        DialogInterface$OnKeyListenerC0071g dialogInterface$OnKeyListenerC0071g = new DialogInterface$OnKeyListenerC0071g(subMenuC0083m);
        Context context = subMenuC0083m.f222a;
        int m1047c = DialogInterfaceC0262f.m1047c(context, 0);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, DialogInterfaceC0262f.m1047c(context, m1047c));
        AlertController.C0051b c0051b = new AlertController.C0051b(contextThemeWrapper);
        C0065d c0065d = new C0065d(contextThemeWrapper);
        dialogInterface$OnKeyListenerC0071g.f248d = c0065d;
        c0065d.f211f = dialogInterface$OnKeyListenerC0071g;
        subMenuC0083m.m1352b(c0065d, context);
        C0065d c0065d2 = dialogInterface$OnKeyListenerC0071g.f248d;
        if (c0065d2.f212g == null) {
            c0065d2.f212g = new C0066a();
        }
        c0051b.f123f = c0065d2.f212g;
        c0051b.f124g = dialogInterface$OnKeyListenerC0071g;
        View view = subMenuC0083m.f236o;
        if (view != null) {
            c0051b.f121d = view;
        } else {
            c0051b.f119b = subMenuC0083m.f235n;
            c0051b.f120c = subMenuC0083m.f234m;
        }
        c0051b.f122e = dialogInterface$OnKeyListenerC0071g;
        DialogInterfaceC0262f dialogInterfaceC0262f = new DialogInterfaceC0262f(contextThemeWrapper, m1047c);
        View view2 = c0051b.f121d;
        AlertController alertController = dialogInterfaceC0262f.f964d;
        if (view2 != null) {
            alertController.f106o = view2;
        } else {
            CharSequence charSequence = c0051b.f120c;
            if (charSequence != null) {
                alertController.f95d = charSequence;
                TextView textView = alertController.f104m;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0051b.f119b;
            if (drawable != null) {
                alertController.f102k = drawable;
                alertController.f101j = 0;
                ImageView imageView = alertController.f103l;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    alertController.f103l.setImageDrawable(drawable);
                }
            }
        }
        if (c0051b.f123f != null) {
            AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) c0051b.f118a.inflate(alertController.f110s, (ViewGroup) null);
            ListAdapter listAdapter = c0051b.f123f;
            if (listAdapter == null) {
                listAdapter = new AlertController.C0053d(contextThemeWrapper, alertController.f111t);
            }
            alertController.f107p = listAdapter;
            alertController.f108q = -1;
            if (c0051b.f124g != null) {
                recycleListView.setOnItemClickListener(new C0055a(c0051b, alertController));
            }
            alertController.f96e = recycleListView;
        }
        dialogInterfaceC0262f.setCancelable(true);
        dialogInterfaceC0262f.setCanceledOnTouchOutside(true);
        dialogInterfaceC0262f.setOnCancelListener(null);
        dialogInterfaceC0262f.setOnDismissListener(null);
        DialogInterface.OnKeyListener onKeyListener = c0051b.f122e;
        if (onKeyListener != null) {
            dialogInterfaceC0262f.setOnKeyListener(onKeyListener);
        }
        dialogInterface$OnKeyListenerC0071g.f247c = dialogInterfaceC0262f;
        dialogInterfaceC0262f.setOnDismissListener(dialogInterface$OnKeyListenerC0071g);
        WindowManager.LayoutParams attributes = dialogInterface$OnKeyListenerC0071g.f247c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dialogInterface$OnKeyListenerC0071g.f247c.show();
        InterfaceC0076j.InterfaceC0077a interfaceC0077a = this.f211f;
        if (interfaceC0077a != null) {
            interfaceC0077a.mo1014b(subMenuC0083m);
        }
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f209d.m1345q(this.f212g.getItem(i), this, 0);
    }
}
