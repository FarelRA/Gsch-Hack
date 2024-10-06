package p024g;

import android.view.View;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.widget.Toolbar;
/* renamed from: g.s0 */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0544s0 implements View.OnClickListener {

    /* renamed from: b */
    public final /* synthetic */ Toolbar f2042b;

    public View$OnClickListenerC0544s0(Toolbar toolbar) {
        this.f2042b = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0072h c0072h;
        Toolbar.C0116c c0116c = this.f2042b.f476L;
        if (c0116c == null) {
            c0072h = null;
        } else {
            c0072h = c0116c.f509c;
        }
        if (c0072h != null) {
            c0072h.collapseActionView();
        }
    }
}
