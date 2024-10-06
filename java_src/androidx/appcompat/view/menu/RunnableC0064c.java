package androidx.appcompat.view.menu;

import android.view.MenuItem;
import androidx.appcompat.view.menu.View$OnKeyListenerC0059b;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes.dex */
public final class RunnableC0064c implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ View$OnKeyListenerC0059b.C0063d f203b;

    /* renamed from: c */
    public final /* synthetic */ MenuItem f204c;

    /* renamed from: d */
    public final /* synthetic */ C0068f f205d;

    /* renamed from: e */
    public final /* synthetic */ View$OnKeyListenerC0059b.C0062c f206e;

    public RunnableC0064c(View$OnKeyListenerC0059b.C0062c c0062c, View$OnKeyListenerC0059b.C0063d c0063d, C0072h c0072h, C0068f c0068f) {
        this.f206e = c0062c;
        this.f203b = c0063d;
        this.f204c = c0072h;
        this.f205d = c0068f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View$OnKeyListenerC0059b.C0063d c0063d = this.f203b;
        if (c0063d != null) {
            View$OnKeyListenerC0059b.C0062c c0062c = this.f206e;
            View$OnKeyListenerC0059b.this.f172B = true;
            c0063d.f201b.m1351c(false);
            View$OnKeyListenerC0059b.this.f172B = false;
        }
        MenuItem menuItem = this.f204c;
        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
            this.f205d.m1345q(menuItem, null, 4);
        }
    }
}
