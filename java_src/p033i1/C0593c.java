package p033i1;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
import p079z.InterfaceC0969b;
import p079z.accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c;
/* renamed from: i1.c */
/* loaded from: classes.dex */
public class C0593c extends FrameLayout {

    /* renamed from: b */
    public final AccessibilityManager f2138b;

    /* renamed from: c */
    public final C0594a f2139c;

    /* renamed from: i1.c$a */
    /* loaded from: classes.dex */
    public class C0594a implements InterfaceC0969b {
        public C0594a() {
        }
    }

    public C0593c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2563e0);
        if (obtainStyledAttributes.hasValue(1)) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            setElevation(obtainStyledAttributes.getDimensionPixelSize(1, 0));
        }
        obtainStyledAttributes.recycle();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.f2138b = accessibilityManager;
        C0594a c0594a = new C0594a();
        this.f2139c = c0594a;
        accessibilityManager.addTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c(c0594a));
        setClickableOrFocusableBasedOnAccessibility(accessibilityManager.isTouchExplorationEnabled());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
        setClickable(!z);
        setFocusable(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0594a c0594a = this.f2139c;
        if (c0594a != null) {
            this.f2138b.removeTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0970c(c0594a));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public void setOnAttachStateChangeListener(InterfaceC0591a interfaceC0591a) {
    }

    public void setOnLayoutChangeListener(InterfaceC0592b interfaceC0592b) {
    }
}
