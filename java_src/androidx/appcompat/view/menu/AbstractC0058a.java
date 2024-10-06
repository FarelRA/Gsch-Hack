package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.appcompat.view.menu.InterfaceC0076j;
import net.geschool.app.secure.R;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes.dex */
public abstract class AbstractC0058a implements InterfaceC0076j {

    /* renamed from: b */
    public final Context f163b;

    /* renamed from: c */
    public Context f164c;

    /* renamed from: d */
    public C0068f f165d;

    /* renamed from: e */
    public final LayoutInflater f166e;

    /* renamed from: f */
    public InterfaceC0076j.InterfaceC0077a f167f;

    /* renamed from: g */
    public final int f168g = R.layout.abc_action_menu_layout;

    /* renamed from: h */
    public final int f169h = R.layout.abc_action_menu_item_layout;

    /* renamed from: i */
    public InterfaceC0078k f170i;

    public AbstractC0058a(Context context) {
        this.f163b = context;
        this.f166e = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: b */
    public final boolean mo694b(C0072h c0072h) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: i */
    public final void mo1331i(InterfaceC0076j.InterfaceC0077a interfaceC0077a) {
        this.f167f = interfaceC0077a;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j
    /* renamed from: j */
    public final boolean mo692j(C0072h c0072h) {
        return false;
    }
}
