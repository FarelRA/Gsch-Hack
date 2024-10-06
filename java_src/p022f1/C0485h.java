package p022f1;

import android.widget.ImageButton;
/* renamed from: f1.h */
/* loaded from: classes.dex */
public class C0485h extends ImageButton {

    /* renamed from: b */
    public int f1863b;

    /* renamed from: b */
    public final void m667b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f1863b = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f1863b;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m667b(i, true);
    }
}
