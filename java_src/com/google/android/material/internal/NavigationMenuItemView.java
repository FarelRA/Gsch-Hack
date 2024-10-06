package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.appcompat.widget.C0130b;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p000a0.C0010i;
import p022f1.C0480e;
import p024g.C0548u0;
import p061s.C0863a;
import p076y.C0939a;
import p076y.C0954m;
import p076y.C0960q;
import p079z.C0971d;
/* loaded from: classes.dex */
public class NavigationMenuItemView extends C0480e implements InterfaceC0078k.InterfaceC0079a {

    /* renamed from: G */
    public static final int[] f1256G = {16842912};

    /* renamed from: A */
    public FrameLayout f1257A;

    /* renamed from: B */
    public C0072h f1258B;

    /* renamed from: C */
    public ColorStateList f1259C;

    /* renamed from: D */
    public boolean f1260D;

    /* renamed from: E */
    public Drawable f1261E;

    /* renamed from: F */
    public final C0341a f1262F;

    /* renamed from: w */
    public final int f1263w;

    /* renamed from: x */
    public boolean f1264x;

    /* renamed from: y */
    public boolean f1265y;

    /* renamed from: z */
    public final CheckedTextView f1266z;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    /* loaded from: classes.dex */
    public class C0341a extends C0939a {
        public C0341a() {
        }

        @Override // p076y.C0939a
        /* renamed from: b */
        public final void mo68b(View view, C0971d c0971d) {
            View.AccessibilityDelegate accessibilityDelegate = this.f2918a;
            AccessibilityNodeInfo accessibilityNodeInfo = c0971d.f2978a;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCheckable(NavigationMenuItemView.this.f1265y);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        C0341a c0341a = new C0341a();
        this.f1262F = c0341a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f1263w = context.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R.id.design_menu_item_text);
        this.f1266z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C0954m.m30f(checkedTextView, c0341a);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f1257A == null) {
                this.f1257A = (FrameLayout) ((ViewStub) findViewById(R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f1257A.removeAllViews();
            this.f1257A.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    /* renamed from: b */
    public final void mo939b(C0072h c0072h) {
        int i;
        C0130b.C0131a c0131a;
        int i2;
        StateListDrawable stateListDrawable;
        this.f1258B = c0072h;
        if (c0072h.isVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f1256G, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            setBackground(stateListDrawable);
        }
        setCheckable(c0072h.isCheckable());
        setChecked(c0072h.isChecked());
        setEnabled(c0072h.isEnabled());
        setTitle(c0072h.f256e);
        setIcon(c0072h.getIcon());
        setActionView(c0072h.getActionView());
        setContentDescription(c0072h.f268q);
        C0548u0.m562a(this, c0072h.f269r);
        C0072h c0072h2 = this.f1258B;
        z = (c0072h2.f256e == null && c0072h2.getIcon() == null && this.f1258B.getActionView() != null) ? false : false;
        CheckedTextView checkedTextView = this.f1266z;
        if (z) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f1257A;
            if (frameLayout != null) {
                c0131a = (C0130b.C0131a) frameLayout.getLayoutParams();
                i2 = -1;
            } else {
                return;
            }
        } else {
            checkedTextView.setVisibility(0);
            FrameLayout frameLayout2 = this.f1257A;
            if (frameLayout2 != null) {
                c0131a = (C0130b.C0131a) frameLayout2.getLayoutParams();
                i2 = -2;
            } else {
                return;
            }
        }
        ((ViewGroup.MarginLayoutParams) c0131a).width = i2;
        this.f1257A.setLayoutParams(c0131a);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    public C0072h getItemData() {
        return this.f1258B;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0072h c0072h = this.f1258B;
        if (c0072h != null && c0072h.isCheckable() && this.f1258B.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f1256G);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f1265y != z) {
            this.f1265y = z;
            this.f1262F.f2918a.sendAccessibilityEvent(this.f1266z, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f1266z.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        int i = this.f1263w;
        if (drawable != null) {
            if (this.f1260D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = C0863a.m138f(drawable).mutate();
                drawable.setTintList(this.f1259C);
            }
            drawable.setBounds(0, 0, i, i);
        } else if (this.f1264x) {
            if (this.f1261E == null) {
                Drawable drawable2 = getResources().getDrawable(R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f1261E = drawable2;
                if (drawable2 != null) {
                    drawable2.setBounds(0, 0, i, i);
                }
            }
            drawable = this.f1261E;
        }
        this.f1266z.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f1266z.setCompoundDrawablePadding(i);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f1259C = colorStateList;
        this.f1260D = colorStateList != null;
        C0072h c0072h = this.f1258B;
        if (c0072h != null) {
            setIcon(c0072h.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f1264x = z;
    }

    public void setTextAppearance(int i) {
        C0010i.m1376e(this.f1266z, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f1266z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1266z.setText(charSequence);
    }
}
