package p024g;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
/* renamed from: g.u0 */
/* loaded from: classes.dex */
public final class C0548u0 {
    /* renamed from: a */
    public static void m562a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v0 = View$OnLongClickListenerC0555v0.f2072k;
        if (view$OnLongClickListenerC0555v0 != null && view$OnLongClickListenerC0555v0.f2074b == view) {
            View$OnLongClickListenerC0555v0.m555b(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v02 = View$OnLongClickListenerC0555v0.f2073l;
            if (view$OnLongClickListenerC0555v02 != null && view$OnLongClickListenerC0555v02.f2074b == view) {
                view$OnLongClickListenerC0555v02.m556a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new View$OnLongClickListenerC0555v0(view, charSequence);
    }
}
