package p024g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0122a;
import net.geschool.app.secure.R;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
import p076y.InterfaceC0961r;
/* renamed from: g.a */
/* loaded from: classes.dex */
public abstract class AbstractC0490a extends ViewGroup {

    /* renamed from: b */
    public final C0491a f1869b;

    /* renamed from: c */
    public final Context f1870c;

    /* renamed from: d */
    public ActionMenuView f1871d;

    /* renamed from: e */
    public C0122a f1872e;

    /* renamed from: f */
    public int f1873f;

    /* renamed from: g */
    public C0960q f1874g;

    /* renamed from: h */
    public boolean f1875h;

    /* renamed from: i */
    public boolean f1876i;

    /* renamed from: g.a$a */
    /* loaded from: classes.dex */
    public class C0491a implements InterfaceC0961r {

        /* renamed from: a */
        public boolean f1877a = false;

        /* renamed from: b */
        public int f1878b;

        public C0491a() {
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            if (this.f1877a) {
                return;
            }
            AbstractC0490a abstractC0490a = AbstractC0490a.this;
            abstractC0490a.f1874g = null;
            AbstractC0490a.super.setVisibility(this.f1878b);
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: d */
        public final void mo18d(View view) {
            this.f1877a = true;
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: e */
        public final void mo17e() {
            AbstractC0490a.super.setVisibility(0);
            this.f1877a = false;
        }
    }

    public AbstractC0490a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0490a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1869b = new C0491a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1870c = context;
        } else {
            this.f1870c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: c */
    public static int m662c(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - 0);
    }

    /* renamed from: d */
    public static int m661d(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: e */
    public final C0960q m660e(int i, long j) {
        C0960q c0960q = this.f1874g;
        if (c0960q != null) {
            c0960q.m23b();
        }
        C0491a c0491a = this.f1869b;
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            C0960q m35a = C0954m.m35a(this);
            m35a.m24a(1.0f);
            m35a.m22c(j);
            AbstractC0490a.this.f1874g = m35a;
            c0491a.f1878b = i;
            m35a.m21d(c0491a);
            return m35a;
        }
        C0960q m35a2 = C0954m.m35a(this);
        m35a2.m24a(0.0f);
        m35a2.m22c(j);
        AbstractC0490a.this.f1874g = m35a2;
        c0491a.f1878b = i;
        m35a2.m21d(c0491a);
        return m35a2;
    }

    public int getAnimatedVisibility() {
        return this.f1874g != null ? this.f1869b.f1878b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1873f;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0736h.f2560d, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        C0122a c0122a = this.f1872e;
        if (c0122a != null) {
            Configuration configuration2 = c0122a.f164c.getResources().getConfiguration();
            int i2 = configuration2.screenWidthDp;
            int i3 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp <= 600 && i2 <= 600 && ((i2 <= 960 || i3 <= 720) && (i2 <= 720 || i3 <= 960))) {
                if (i2 < 500 && ((i2 <= 640 || i3 <= 480) && (i2 <= 480 || i3 <= 640))) {
                    if (i2 >= 360) {
                        i = 3;
                    } else {
                        i = 2;
                    }
                } else {
                    i = 4;
                }
            } else {
                i = 5;
            }
            c0122a.f525q = i;
            C0068f c0068f = c0122a.f165d;
            if (c0068f != null) {
                c0068f.m1346p(true);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1876i = false;
        }
        if (!this.f1876i) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1876i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1876i = false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1875h = false;
        }
        if (!this.f1875h) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1875h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1875h = false;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f1873f = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C0960q c0960q = this.f1874g;
            if (c0960q != null) {
                c0960q.m23b();
            }
            super.setVisibility(i);
        }
    }
}
