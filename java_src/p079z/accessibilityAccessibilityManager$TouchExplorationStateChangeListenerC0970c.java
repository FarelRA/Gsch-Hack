package p079z;

import android.view.accessibility.AccessibilityManager;
import p033i1.C0593c;
/* renamed from: z.c  reason: invalid class name */
/* loaded from: classes.dex */
public final class accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a */
    public final InterfaceC0969b f2976a;

    public accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c(C0593c.C0594a c0594a) {
        this.f2976a = c0594a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c) {
            return this.f2976a.equals(((accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c) obj).f2976a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2976a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        C0593c.this.setClickableOrFocusableBasedOnAccessibility(z);
    }
}
