package p036j0;

import android.view.View;
import android.view.WindowId;
/* renamed from: j0.w */
/* loaded from: classes.dex */
public final class C0647w implements InterfaceC0648x {

    /* renamed from: a */
    public final WindowId f2257a;

    public C0647w(View view) {
        this.f2257a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0647w) && ((C0647w) obj).f2257a.equals(this.f2257a);
    }

    public final int hashCode() {
        return this.f2257a.hashCode();
    }
}
