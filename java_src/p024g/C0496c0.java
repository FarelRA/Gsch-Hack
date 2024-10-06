package p024g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import net.geschool.app.secure.R;
import p000a0.C0006e;
import p012d.C0366c;
/* renamed from: g.c0 */
/* loaded from: classes.dex */
public class C0496c0 extends ListView {

    /* renamed from: b */
    public final Rect f1884b;

    /* renamed from: c */
    public int f1885c;

    /* renamed from: d */
    public int f1886d;

    /* renamed from: e */
    public int f1887e;

    /* renamed from: f */
    public int f1888f;

    /* renamed from: g */
    public int f1889g;

    /* renamed from: h */
    public final Field f1890h;

    /* renamed from: i */
    public C0497a f1891i;

    /* renamed from: j */
    public boolean f1892j;

    /* renamed from: k */
    public final boolean f1893k;

    /* renamed from: l */
    public boolean f1894l;

    /* renamed from: m */
    public C0006e f1895m;

    /* renamed from: n */
    public RunnableC0498b f1896n;

    /* renamed from: g.c0$a */
    /* loaded from: classes.dex */
    public static class C0497a extends C0366c {

        /* renamed from: c */
        public boolean f1897c;

        public C0497a(Drawable drawable) {
            super(drawable);
            this.f1897c = true;
        }

        @Override // p012d.C0366c, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f1897c) {
                super.draw(canvas);
            }
        }

        @Override // p012d.C0366c, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.f1897c) {
                super.setHotspot(f, f2);
            }
        }

        @Override // p012d.C0366c, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1897c) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p012d.C0366c, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f1897c) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // p012d.C0366c, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.f1897c) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: g.c0$b */
    /* loaded from: classes.dex */
    public class RunnableC0498b implements Runnable {
        public RunnableC0498b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0496c0 c0496c0 = C0496c0.this;
            c0496c0.f1896n = null;
            c0496c0.drawableStateChanged();
        }
    }

    public C0496c0(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f1884b = new Rect();
        this.f1885c = 0;
        this.f1886d = 0;
        this.f1887e = 0;
        this.f1888f = 0;
        this.f1893k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1890h = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        C0497a c0497a = this.f1891i;
        if (c0497a != null) {
            c0497a.f1897c = z;
        }
    }

    /* renamed from: a */
    public final int m634a(int i, int i2) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i3 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i3;
        }
        dividerHeight = (dividerHeight <= 0 || divider == null) ? 0 : 0;
        int count = adapter.getCount();
        View view = null;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i6 = layoutParams.height;
            view.measure(i, i6 > 0 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                i3 += dividerHeight;
            }
            i3 += view.getMeasuredHeight();
            if (i3 >= i2) {
                return i2;
            }
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0126 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0159  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m633b(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        View childAt;
        View childAt2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z6 = false;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z = true;
                    if (z || z6) {
                        this.f1894l = false;
                        setPressed(false);
                        drawableStateChanged();
                        childAt2 = getChildAt(this.f1889g - getFirstVisiblePosition());
                        if (childAt2 != null) {
                            childAt2.setPressed(false);
                        }
                    }
                    if (!z) {
                        if (this.f1895m == null) {
                            this.f1895m = new C0006e(this);
                        }
                        C0006e c0006e = this.f1895m;
                        boolean z7 = c0006e.f16q;
                        c0006e.f16q = true;
                        c0006e.onTouch(this, motionEvent);
                    } else {
                        C0006e c0006e2 = this.f1895m;
                        if (c0006e2 != null) {
                            if (c0006e2.f16q) {
                                c0006e2.m1440d();
                            }
                            c0006e2.f16q = false;
                        }
                    }
                    return z;
                }
                z = false;
                if (z) {
                }
                this.f1894l = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.f1889g - getFirstVisiblePosition());
                if (childAt2 != null) {
                }
                if (!z) {
                }
                return z;
            }
            z = true;
        } else {
            z = false;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i);
        if (findPointerIndex >= 0) {
            int x = (int) motionEvent.getX(findPointerIndex);
            int y = (int) motionEvent.getY(findPointerIndex);
            int pointToPosition = pointToPosition(x, y);
            if (pointToPosition == -1) {
                z6 = true;
            } else {
                View childAt3 = getChildAt(pointToPosition - getFirstVisiblePosition());
                float f = x;
                float f2 = y;
                this.f1894l = true;
                drawableHotspotChanged(f, f2);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i2 = this.f1889g;
                if (i2 != -1 && (childAt = getChildAt(i2 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f1889g = pointToPosition;
                childAt3.drawableHotspotChanged(f - childAt3.getLeft(), f2 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                if (selector != null && pointToPosition != -1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    selector.setVisible(false, false);
                }
                Field field = this.f1890h;
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f1884b;
                rect.set(left, top, right, bottom);
                rect.left -= this.f1885c;
                rect.top -= this.f1886d;
                rect.right += this.f1887e;
                rect.bottom += this.f1888f;
                try {
                    boolean z8 = field.getBoolean(this);
                    if (childAt3.isEnabled() != z8) {
                        if (!z8) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        field.set(this, Boolean.valueOf(z5));
                        if (pointToPosition != -1) {
                            refreshDrawableState();
                        }
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
                if (z2) {
                    float exactCenterX = rect.exactCenterX();
                    float exactCenterY = rect.exactCenterY();
                    if (getVisibility() == 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z3 = false;
                    selector.setVisible(z4, false);
                    selector.setHotspot(exactCenterX, exactCenterY);
                } else {
                    z3 = false;
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && pointToPosition != -1) {
                    selector2.setHotspot(f, f2);
                }
                setSelectorEnabled(z3);
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, pointToPosition, getItemIdAtPosition(pointToPosition));
                }
                z = true;
                z6 = false;
            }
            if (z) {
            }
            this.f1894l = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f1889g - getFirstVisiblePosition());
            if (childAt2 != null) {
            }
            if (!z) {
            }
            return z;
        }
        z = false;
        if (z) {
        }
        this.f1894l = false;
        setPressed(false);
        drawableStateChanged();
        childAt2 = getChildAt(this.f1889g - getFirstVisiblePosition());
        if (childAt2 != null) {
        }
        if (!z) {
        }
        return z;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f1884b;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f1896n != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        Drawable selector = getSelector();
        if (selector != null && this.f1894l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f1893k || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f1893k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f1893k || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f1893k && this.f1892j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f1896n = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1896n == null) {
            RunnableC0498b runnableC0498b = new RunnableC0498b();
            this.f1896n = runnableC0498b;
            post(runnableC0498b);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                Drawable selector = getSelector();
                if (selector != null && this.f1894l && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1889g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0498b runnableC0498b = this.f1896n;
        if (runnableC0498b != null) {
            C0496c0 c0496c0 = C0496c0.this;
            c0496c0.f1896n = null;
            c0496c0.removeCallbacks(runnableC0498b);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f1892j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0497a c0497a = drawable != null ? new C0497a(drawable) : null;
        this.f1891i = c0497a;
        super.setSelector(c0497a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1885c = rect.left;
        this.f1886d = rect.top;
        this.f1887e = rect.right;
        this.f1888f = rect.bottom;
    }
}
