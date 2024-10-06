package p024g;

import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.C0134d;
import p020f.C0458a;
/* renamed from: g.t0 */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0546t0 implements View.OnClickListener {

    /* renamed from: b */
    public final C0458a f2049b;

    /* renamed from: c */
    public final /* synthetic */ C0134d f2050c;

    public View$OnClickListenerC0546t0(C0134d c0134d) {
        this.f2050c = c0134d;
        this.f2049b = new C0458a(c0134d.f559a.getContext(), c0134d.f567i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0134d c0134d = this.f2050c;
        Window.Callback callback = c0134d.f570l;
        if (callback == null || !c0134d.f571m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f2049b);
    }
}
