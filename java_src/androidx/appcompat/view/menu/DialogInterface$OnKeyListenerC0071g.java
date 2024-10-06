package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.view.menu.C0065d;
import androidx.appcompat.view.menu.InterfaceC0076j;
import p004b.DialogInterfaceC0262f;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes.dex */
public final class DialogInterface$OnKeyListenerC0071g implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC0076j.InterfaceC0077a {

    /* renamed from: b */
    public final C0068f f246b;

    /* renamed from: c */
    public DialogInterfaceC0262f f247c;

    /* renamed from: d */
    public C0065d f248d;

    public DialogInterface$OnKeyListenerC0071g(C0068f c0068f) {
        this.f246b = c0068f;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
    /* renamed from: a */
    public final void mo1015a(C0068f c0068f, boolean z) {
        DialogInterfaceC0262f dialogInterfaceC0262f;
        if ((z || c0068f == this.f246b) && (dialogInterfaceC0262f = this.f247c) != null) {
            dialogInterfaceC0262f.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0076j.InterfaceC0077a
    /* renamed from: b */
    public final boolean mo1014b(C0068f c0068f) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C0065d c0065d = this.f248d;
        if (c0065d.f212g == null) {
            c0065d.f212g = new C0065d.C0066a();
        }
        this.f246b.m1345q(c0065d.f212g.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f248d.mo1281a(this.f246b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        C0068f c0068f = this.f246b;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f247c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f247c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                c0068f.m1351c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return c0068f.performShortcut(i, keyEvent, 0);
    }
}
