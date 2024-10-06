package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.appcompat.widget.C0122a;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p008c.C0315a;
import p016e.AbstractC0393a;
import p024g.AbstractC0490a;
import p024g.C0564y0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC0490a {

    /* renamed from: j */
    public CharSequence f326j;

    /* renamed from: k */
    public CharSequence f327k;

    /* renamed from: l */
    public View f328l;

    /* renamed from: m */
    public View f329m;

    /* renamed from: n */
    public LinearLayout f330n;

    /* renamed from: o */
    public TextView f331o;

    /* renamed from: p */
    public TextView f332p;

    /* renamed from: q */
    public final int f333q;

    /* renamed from: r */
    public final int f334r;

    /* renamed from: s */
    public boolean f335s;

    /* renamed from: t */
    public final int f336t;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0084a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC0393a f337b;

        public View$OnClickListenerC0084a(AbstractC0393a abstractC0393a) {
            this.f337b = abstractC0393a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f337b.mo851c();
        }
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.actionModeStyle);
        Drawable drawable;
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2566g, R.attr.actionModeStyle, 0);
        if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
            drawable = C0315a.m994c(context, resourceId);
        } else {
            drawable = obtainStyledAttributes.getDrawable(0);
        }
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        setBackground(drawable);
        this.f333q = obtainStyledAttributes.getResourceId(5, 0);
        this.f334r = obtainStyledAttributes.getResourceId(4, 0);
        this.f1873f = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f336t = obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0088  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1321f(AbstractC0393a abstractC0393a) {
        View view;
        C0122a c0122a;
        InterfaceC0078k interfaceC0078k;
        InterfaceC0078k interfaceC0078k2;
        View view2 = this.f328l;
        if (view2 == null) {
            view = LayoutInflater.from(getContext()).inflate(this.f336t, (ViewGroup) this, false);
            this.f328l = view;
        } else {
            if (view2.getParent() == null) {
                view = this.f328l;
            }
            this.f328l.findViewById(R.id.action_mode_close_button).setOnClickListener(new View$OnClickListenerC0084a(abstractC0393a));
            C0068f mo849e = abstractC0393a.mo849e();
            c0122a = this.f1872e;
            if (c0122a != null) {
                c0122a.m1277g();
                C0122a.C0123a c0123a = c0122a.f530v;
                if (c0123a != null && c0123a.m1333b()) {
                    c0123a.f288j.dismiss();
                }
            }
            C0122a c0122a2 = new C0122a(getContext());
            this.f1872e = c0122a2;
            c0122a2.f521m = true;
            c0122a2.f522n = true;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
            mo849e.m1352b(this.f1872e, this.f1870c);
            C0122a c0122a3 = this.f1872e;
            interfaceC0078k = c0122a3.f170i;
            if (interfaceC0078k == null) {
                InterfaceC0078k interfaceC0078k3 = (InterfaceC0078k) c0122a3.f166e.inflate(c0122a3.f168g, (ViewGroup) this, false);
                c0122a3.f170i = interfaceC0078k3;
                interfaceC0078k3.mo938c(c0122a3.f165d);
                c0122a3.mo1278f();
            }
            interfaceC0078k2 = c0122a3.f170i;
            if (interfaceC0078k != interfaceC0078k2) {
                ((ActionMenuView) interfaceC0078k2).setPresenter(c0122a3);
            }
            ActionMenuView actionMenuView = (ActionMenuView) interfaceC0078k2;
            this.f1871d = actionMenuView;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            actionMenuView.setBackground(null);
            addView(this.f1871d, layoutParams);
        }
        addView(view);
        this.f328l.findViewById(R.id.action_mode_close_button).setOnClickListener(new View$OnClickListenerC0084a(abstractC0393a));
        C0068f mo849e2 = abstractC0393a.mo849e();
        c0122a = this.f1872e;
        if (c0122a != null) {
        }
        C0122a c0122a22 = new C0122a(getContext());
        this.f1872e = c0122a22;
        c0122a22.f521m = true;
        c0122a22.f522n = true;
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-2, -1);
        mo849e2.m1352b(this.f1872e, this.f1870c);
        C0122a c0122a32 = this.f1872e;
        interfaceC0078k = c0122a32.f170i;
        if (interfaceC0078k == null) {
        }
        interfaceC0078k2 = c0122a32.f170i;
        if (interfaceC0078k != interfaceC0078k2) {
        }
        ActionMenuView actionMenuView2 = (ActionMenuView) interfaceC0078k2;
        this.f1871d = actionMenuView2;
        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
        actionMenuView2.setBackground(null);
        addView(this.f1871d, layoutParams2);
    }

    /* renamed from: g */
    public final void m1320g() {
        if (this.f330n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f330n = linearLayout;
            this.f331o = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f332p = (TextView) this.f330n.findViewById(R.id.action_bar_subtitle);
            int i = this.f333q;
            if (i != 0) {
                this.f331o.setTextAppearance(getContext(), i);
            }
            int i2 = this.f334r;
            if (i2 != 0) {
                this.f332p.setTextAppearance(getContext(), i2);
            }
        }
        this.f331o.setText(this.f326j);
        this.f332p.setText(this.f327k);
        boolean z = !TextUtils.isEmpty(this.f326j);
        boolean z2 = !TextUtils.isEmpty(this.f327k);
        int i3 = 0;
        this.f332p.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.f330n;
        if (!z && !z2) {
            i3 = 8;
        }
        linearLayout2.setVisibility(i3);
        if (this.f330n.getParent() == null) {
            addView(this.f330n);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // p024g.AbstractC0490a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // p024g.AbstractC0490a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f327k;
    }

    public CharSequence getTitle() {
        return this.f326j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0122a c0122a = this.f1872e;
        if (c0122a != null) {
            c0122a.m1277g();
            C0122a.C0123a c0123a = this.f1872e.f530v;
            if (c0123a != null && c0123a.m1333b()) {
                c0123a.f288j.dismiss();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f326j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m534a = C0564y0.m534a(this);
        int paddingRight = m534a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f328l;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f328l.getLayoutParams();
            int i5 = m534a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = m534a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = m534a ? paddingRight - i5 : paddingRight + i5;
            int m661d = AbstractC0490a.m661d(this.f328l, i7, paddingTop, paddingTop2, m534a) + i7;
            paddingRight = m534a ? m661d - i6 : m661d + i6;
        }
        LinearLayout linearLayout = this.f330n;
        if (linearLayout != null && this.f329m == null && linearLayout.getVisibility() != 8) {
            paddingRight += AbstractC0490a.m661d(this.f330n, paddingRight, paddingTop, paddingTop2, m534a);
        }
        View view2 = this.f329m;
        if (view2 != null) {
            AbstractC0490a.m661d(view2, paddingRight, paddingTop, paddingTop2, m534a);
        }
        int paddingLeft = m534a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1871d;
        if (actionMenuView != null) {
            AbstractC0490a.m661d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !m534a);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.f1873f;
        if (i3 <= 0) {
            i3 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i4 = i3 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        View view = this.f328l;
        if (view != null) {
            int m662c = AbstractC0490a.m662c(view, paddingLeft, makeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f328l.getLayoutParams();
            paddingLeft = m662c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1871d;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = AbstractC0490a.m662c(this.f1871d, paddingLeft, makeMeasureSpec);
        }
        LinearLayout linearLayout = this.f330n;
        if (linearLayout != null && this.f329m == null) {
            if (this.f335s) {
                this.f330n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f330n.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f330n.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = AbstractC0490a.m662c(linearLayout, paddingLeft, makeMeasureSpec);
            }
        }
        View view2 = this.f329m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width;
            int i6 = i5 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i7 = layoutParams.height;
            int i8 = i7 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i7 >= 0) {
                i4 = Math.min(i7, i4);
            }
            this.f329m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(i4, i8));
        }
        if (this.f1873f <= 0) {
            int childCount = getChildCount();
            i3 = 0;
            for (int i9 = 0; i9 < childCount; i9++) {
                int measuredHeight = getChildAt(i9).getMeasuredHeight() + paddingBottom;
                if (measuredHeight > i3) {
                    i3 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(size, i3);
    }

    @Override // p024g.AbstractC0490a
    public void setContentHeight(int i) {
        this.f1873f = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f329m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f329m = view;
        if (view != null && (linearLayout = this.f330n) != null) {
            removeView(linearLayout);
            this.f330n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f327k = charSequence;
        m1320g();
    }

    public void setTitle(CharSequence charSequence) {
        this.f326j = charSequence;
        m1320g();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f335s) {
            requestLayout();
        }
        this.f335s = z;
    }

    @Override // p024g.AbstractC0490a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
