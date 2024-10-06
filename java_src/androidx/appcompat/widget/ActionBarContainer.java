package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p024g.C0493b;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: b */
    public boolean f316b;

    /* renamed from: c */
    public C0132c f317c;

    /* renamed from: d */
    public View f318d;

    /* renamed from: e */
    public View f319e;

    /* renamed from: f */
    public Drawable f320f;

    /* renamed from: g */
    public Drawable f321g;

    /* renamed from: h */
    public Drawable f322h;

    /* renamed from: i */
    public final boolean f323i;

    /* renamed from: j */
    public boolean f324j;

    /* renamed from: k */
    public final int f325k;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0493b c0493b = new C0493b(this);
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        setBackground(c0493b);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2560d);
        boolean z = false;
        this.f320f = obtainStyledAttributes.getDrawable(0);
        this.f321g = obtainStyledAttributes.getDrawable(2);
        this.f325k = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f323i = true;
            this.f322h = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f323i ? !(this.f320f != null || this.f321g != null) : this.f322h == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    public static int m1322a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f320f;
        if (drawable != null && drawable.isStateful()) {
            this.f320f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f321g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f321g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f322h;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f322h.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f317c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f320f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f321g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f322h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f318d = findViewById(R.id.action_bar);
        this.f319e = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f316b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        Drawable drawable2;
        int left;
        int top;
        int right;
        View view;
        super.onLayout(z, i, i2, i3, i4);
        C0132c c0132c = this.f317c;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (c0132c == null || c0132c.getVisibility() == 8) ? false : true;
        if (c0132c != null && c0132c.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            int i5 = ((FrameLayout.LayoutParams) c0132c.getLayoutParams()).bottomMargin;
            c0132c.layout(i, (measuredHeight - c0132c.getMeasuredHeight()) - i5, i3, measuredHeight - i5);
        }
        if (this.f323i) {
            Drawable drawable3 = this.f322h;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f320f != null) {
                if (this.f318d.getVisibility() == 0) {
                    drawable2 = this.f320f;
                    left = this.f318d.getLeft();
                    top = this.f318d.getTop();
                    right = this.f318d.getRight();
                    view = this.f318d;
                } else {
                    View view2 = this.f319e;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f320f.setBounds(0, 0, 0, 0);
                        z3 = true;
                    } else {
                        drawable2 = this.f320f;
                        left = this.f319e.getLeft();
                        top = this.f319e.getTop();
                        right = this.f319e.getRight();
                        view = this.f319e;
                    }
                }
                drawable2.setBounds(left, top, right, view.getBottom());
                z3 = true;
            }
            this.f324j = z4;
            if (!z4 || (drawable = this.f321g) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(c0132c.getLeft(), c0132c.getTop(), c0132c.getRight(), c0132c.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0074  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        boolean z;
        View view;
        int i3;
        int i4;
        if (this.f318d == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i4 = this.f325k) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f318d == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        C0132c c0132c = this.f317c;
        if (c0132c != null && c0132c.getVisibility() != 8 && mode != 1073741824) {
            View view2 = this.f318d;
            boolean z2 = true;
            int i5 = 0;
            if (view2 != null && view2.getVisibility() != 8 && view2.getMeasuredHeight() != 0) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                view = this.f318d;
            } else {
                View view3 = this.f319e;
                if (view3 != null && view3.getVisibility() != 8 && view3.getMeasuredHeight() != 0) {
                    z2 = false;
                }
                if (!z2) {
                    view = this.f319e;
                }
                if (mode != Integer.MIN_VALUE) {
                    i3 = View.MeasureSpec.getSize(i2);
                } else {
                    i3 = Integer.MAX_VALUE;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(m1322a(this.f317c) + i5, i3));
            }
            i5 = m1322a(view);
            if (mode != Integer.MIN_VALUE) {
            }
            setMeasuredDimension(getMeasuredWidth(), Math.min(m1322a(this.f317c) + i5, i3));
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f320f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f320f);
        }
        this.f320f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f318d;
            if (view != null) {
                this.f320f.setBounds(view.getLeft(), this.f318d.getTop(), this.f318d.getRight(), this.f318d.getBottom());
            }
        }
        boolean z = true;
        if (!this.f323i ? this.f320f != null || this.f321g != null : this.f322h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f322h;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f322h);
        }
        this.f322h = drawable;
        boolean z = this.f323i;
        boolean z2 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z && (drawable2 = this.f322h) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z ? !(this.f320f != null || this.f321g != null) : this.f322h == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f321g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f321g);
        }
        this.f321g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f324j && (drawable2 = this.f321g) != null) {
                drawable2.setBounds(this.f317c.getLeft(), this.f317c.getTop(), this.f317c.getRight(), this.f317c.getBottom());
            }
        }
        setWillNotDraw(!this.f323i ? !(this.f320f == null && this.f321g == null) : this.f322h != null);
        invalidate();
    }

    public void setTabContainer(C0132c c0132c) {
        C0132c c0132c2 = this.f317c;
        if (c0132c2 != null) {
            removeView(c0132c2);
        }
        this.f317c = c0132c;
        if (c0132c != null) {
            addView(c0132c);
            ViewGroup.LayoutParams layoutParams = c0132c.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0132c.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f316b = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f320f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f321g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f322h;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f320f;
        boolean z = this.f323i;
        return (drawable == drawable2 && !z) || (drawable == this.f321g && this.f324j) || ((drawable == this.f322h && z) || super.verifyDrawable(drawable));
    }
}
