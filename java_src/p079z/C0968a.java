package p079z;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: z.a */
/* loaded from: classes.dex */
public final class C0968a extends ClickableSpan {

    /* renamed from: a */
    public final int f2973a;

    /* renamed from: b */
    public final C0971d f2974b;

    /* renamed from: c */
    public final int f2975c;

    public C0968a(int i, C0971d c0971d, int i2) {
        this.f2973a = i;
        this.f2974b = c0971d;
        this.f2975c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f2973a);
        this.f2974b.f2978a.performAction(this.f2975c, bundle);
    }
}
