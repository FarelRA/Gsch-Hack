package p076y;

import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
/* renamed from: y.l */
/* loaded from: classes.dex */
public final class View$OnApplyWindowInsetsListenerC0953l implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0951j f2933a;

    public View$OnApplyWindowInsetsListenerC0953l(InterfaceC0951j interfaceC0951j) {
        this.f2933a = interfaceC0951j;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Objects.requireNonNull(windowInsets);
        return (WindowInsets) this.f2933a.mo41a(view, new C0963t(windowInsets)).f2947a;
    }
}
