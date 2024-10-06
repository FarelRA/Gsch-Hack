package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0068f;
import p008c.C0315a;
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements C0068f.InterfaceC0070b, InterfaceC0078k, AdapterView.OnItemClickListener {

    /* renamed from: c */
    public static final int[] f144c = {16842964, 16843049};

    /* renamed from: b */
    public C0068f f145b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Drawable drawable;
        int resourceId;
        Drawable drawable2;
        int resourceId2;
        setOnItemClickListener(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f144c, 16842868, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            if (obtainStyledAttributes.hasValue(0) && (resourceId2 = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
                drawable2 = C0315a.m994c(context, resourceId2);
            } else {
                drawable2 = obtainStyledAttributes.getDrawable(0);
            }
            setBackgroundDrawable(drawable2);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            if (obtainStyledAttributes.hasValue(1) && (resourceId = obtainStyledAttributes.getResourceId(1, 0)) != 0) {
                drawable = C0315a.m994c(context, resourceId);
            } else {
                drawable = obtainStyledAttributes.getDrawable(1);
            }
            setDivider(drawable);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0070b
    /* renamed from: a */
    public final boolean mo1315a(C0072h c0072h) {
        return this.f145b.m1345q(c0072h, null, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k
    /* renamed from: c */
    public final void mo938c(C0068f c0068f) {
        this.f145b = c0068f;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo1315a((C0072h) getAdapter().getItem(i));
    }
}
