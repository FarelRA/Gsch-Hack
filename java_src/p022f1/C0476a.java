package p022f1;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.internal.CheckableImageButton;
import p076y.C0939a;
import p079z.C0971d;
/* renamed from: f1.a */
/* loaded from: classes.dex */
public final class C0476a extends C0939a {

    /* renamed from: d */
    public final /* synthetic */ CheckableImageButton f1811d;

    public C0476a(CheckableImageButton checkableImageButton) {
        this.f1811d = checkableImageButton;
    }

    @Override // p076y.C0939a
    /* renamed from: a */
    public final void mo69a(View view, AccessibilityEvent accessibilityEvent) {
        super.mo69a(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f1811d.isChecked());
    }

    @Override // p076y.C0939a
    /* renamed from: b */
    public final void mo68b(View view, C0971d c0971d) {
        View.AccessibilityDelegate accessibilityDelegate = this.f2918a;
        AccessibilityNodeInfo accessibilityNodeInfo = c0971d.f2978a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.f1811d.isChecked());
    }
}
