package p020f;

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.C0072h;
import p020f.MenuItemC0461d;
import p063t.InterfaceMenuItemC0873b;
import p076y.AbstractC0941b;
/* renamed from: f.e */
/* loaded from: classes.dex */
public final class C0466e extends MenuItemC0461d {

    /* renamed from: f.e$a */
    /* loaded from: classes.dex */
    public class ActionProvider$VisibilityListenerC0467a extends MenuItemC0461d.C0462a implements ActionProvider.VisibilityListener {

        /* renamed from: d */
        public AbstractC0941b.InterfaceC0942a f1804d;

        public ActionProvider$VisibilityListenerC0467a(C0466e c0466e, ActionProvider actionProvider) {
            super(actionProvider);
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: b */
        public final boolean mo64b() {
            return this.f1799b.isVisible();
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: d */
        public final View mo62d(MenuItem menuItem) {
            return this.f1799b.onCreateActionView(menuItem);
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: g */
        public final boolean mo59g() {
            return this.f1799b.overridesItemVisibility();
        }

        @Override // p076y.AbstractC0941b
        /* renamed from: h */
        public final void mo58h(C0072h.C0073a c0073a) {
            this.f1804d = c0073a;
            this.f1799b.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0941b.InterfaceC0942a interfaceC0942a = this.f1804d;
            if (interfaceC0942a != null) {
                C0068f c0068f = C0072h.this.f265n;
                c0068f.f229h = true;
                c0068f.m1346p(true);
            }
        }
    }

    public C0466e(Context context, InterfaceMenuItemC0873b interfaceMenuItemC0873b) {
        super(context, interfaceMenuItemC0873b);
    }

    @Override // p020f.MenuItemC0461d
    /* renamed from: l */
    public final MenuItemC0461d.C0462a mo695l(ActionProvider actionProvider) {
        return new ActionProvider$VisibilityListenerC0467a(this, actionProvider);
    }
}
