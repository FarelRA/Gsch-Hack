package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.recyclerview.widget.C0212k;
import androidx.recyclerview.widget.LinearLayoutManager;
/* loaded from: classes.dex */
public class NavigationMenuView extends C0212k implements InterfaceC0078k {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager());
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k
    /* renamed from: c */
    public final void mo938c(C0068f c0068f) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
