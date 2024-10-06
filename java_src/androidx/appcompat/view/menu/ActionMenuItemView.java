package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.view.menu.InterfaceC0078k;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0122a;
import p020f.InterfaceC0470h;
import p024g.AbstractView$OnTouchListenerC0502e0;
import p024g.C0548u0;
import p024g.C0561x;
import p046m1.C0736h;
/* loaded from: classes.dex */
public class ActionMenuItemView extends C0561x implements InterfaceC0078k.InterfaceC0079a, View.OnClickListener, ActionMenuView.InterfaceC0090a {

    /* renamed from: e */
    public C0072h f132e;

    /* renamed from: f */
    public CharSequence f133f;

    /* renamed from: g */
    public Drawable f134g;

    /* renamed from: h */
    public C0068f.InterfaceC0070b f135h;

    /* renamed from: i */
    public C0056a f136i;

    /* renamed from: j */
    public AbstractC0057b f137j;

    /* renamed from: k */
    public boolean f138k;

    /* renamed from: l */
    public boolean f139l;

    /* renamed from: m */
    public final int f140m;

    /* renamed from: n */
    public int f141n;

    /* renamed from: o */
    public final int f142o;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes.dex */
    public class C0056a extends AbstractView$OnTouchListenerC0502e0 {
        public C0056a() {
            super(ActionMenuItemView.this);
        }

        @Override // p024g.AbstractView$OnTouchListenerC0502e0
        /* renamed from: b */
        public final InterfaceC0470h mo564b() {
            C0122a.C0123a c0123a;
            AbstractC0057b abstractC0057b = ActionMenuItemView.this.f137j;
            if (abstractC0057b == null || (c0123a = C0122a.this.f530v) == null) {
                return null;
            }
            return c0123a.m1334a();
        }

        @Override // p024g.AbstractView$OnTouchListenerC0502e0
        /* renamed from: c */
        public final boolean mo563c() {
            InterfaceC0470h mo564b;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0068f.InterfaceC0070b interfaceC0070b = actionMenuItemView.f135h;
            return interfaceC0070b != null && interfaceC0070b.mo1315a(actionMenuItemView.f132e) && (mo564b = mo564b()) != null && mo564b.mo620g();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0057b {
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f138k = m1360e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2564f, 0, 0);
        this.f140m = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f142o = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f141n = -1;
        setSaveEnabled(false);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0090a
    /* renamed from: a */
    public final boolean mo1273a() {
        return m1361d();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    /* renamed from: b */
    public final void mo939b(C0072h c0072h) {
        int i;
        this.f132e = c0072h;
        setIcon(c0072h.getIcon());
        setTitle(c0072h.getTitleCondensed());
        setId(c0072h.f252a);
        if (c0072h.isVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        setEnabled(c0072h.isEnabled());
        if (c0072h.hasSubMenu() && this.f136i == null) {
            this.f136i = new C0056a();
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0090a
    /* renamed from: c */
    public final boolean mo1272c() {
        return m1361d() && this.f132e.getIcon() == null;
    }

    /* renamed from: d */
    public final boolean m1361d() {
        return !TextUtils.isEmpty(getText());
    }

    /* renamed from: e */
    public final boolean m1360e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: f */
    public final void m1359f() {
        CharSequence charSequence;
        boolean z;
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f133f);
        if (this.f134g != null) {
            if ((this.f132e.f276y & 4) == 4) {
                z = true;
            } else {
                z = false;
            }
            if (!z || (!this.f138k && !this.f139l)) {
                z2 = false;
            }
        }
        boolean z4 = z3 & z2;
        CharSequence charSequence2 = null;
        if (z4) {
            charSequence = this.f133f;
        } else {
            charSequence = null;
        }
        setText(charSequence);
        CharSequence charSequence3 = this.f132e.f268q;
        if (TextUtils.isEmpty(charSequence3)) {
            if (z4) {
                charSequence3 = null;
            } else {
                charSequence3 = this.f132e.f256e;
            }
        }
        setContentDescription(charSequence3);
        CharSequence charSequence4 = this.f132e.f269r;
        if (TextUtils.isEmpty(charSequence4)) {
            if (!z4) {
                charSequence2 = this.f132e.f256e;
            }
            C0548u0.m562a(this, charSequence2);
            return;
        }
        C0548u0.m562a(this, charSequence4);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    public C0072h getItemData() {
        return this.f132e;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0068f.InterfaceC0070b interfaceC0070b = this.f135h;
        if (interfaceC0070b != null) {
            interfaceC0070b.mo1315a(this.f132e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f138k = m1360e();
        m1359f();
    }

    @Override // p024g.C0561x, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean m1361d = m1361d();
        if (m1361d && (i3 = this.f141n) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.f140m;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m1361d || this.f134g == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f134g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0056a c0056a;
        if (this.f132e.hasSubMenu() && (c0056a = this.f136i) != null && c0056a.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f139l != z) {
            this.f139l = z;
            C0072h c0072h = this.f132e;
            if (c0072h != null) {
                C0068f c0068f = c0072h.f265n;
                c0068f.f232k = true;
                c0068f.m1346p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f134g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f142o;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        m1359f();
    }

    public void setItemInvoker(C0068f.InterfaceC0070b interfaceC0070b) {
        this.f135h = interfaceC0070b;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.f141n = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0057b abstractC0057b) {
        this.f137j = abstractC0057b;
    }

    public void setTitle(CharSequence charSequence) {
        this.f133f = charSequence;
        m1359f();
    }
}
