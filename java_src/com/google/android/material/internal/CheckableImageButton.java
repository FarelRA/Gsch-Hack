package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import net.geschool.app.secure.R;
import p022f1.C0476a;
import p024g.C0526k;
import p076y.C0954m;
/* loaded from: classes.dex */
public class CheckableImageButton extends C0526k implements Checkable {

    /* renamed from: e */
    public static final int[] f1254e = {16842912};

    /* renamed from: d */
    public boolean f1255d;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.imageButtonStyle);
        C0954m.m30f(this, new C0476a(this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1255d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.f1255d ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), f1254e) : super.onCreateDrawableState(i);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f1255d != z) {
            this.f1255d = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1255d);
    }
}
