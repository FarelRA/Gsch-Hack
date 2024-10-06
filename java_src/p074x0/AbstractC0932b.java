package p074x0;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
import p076y.C0963t;
/* renamed from: x0.b */
/* loaded from: classes.dex */
public abstract class AbstractC0932b extends C0933c<View> {

    /* renamed from: c */
    public final Rect f2906c;

    /* renamed from: d */
    public final Rect f2907d;

    /* renamed from: e */
    public int f2908e;

    /* renamed from: f */
    public int f2909f;

    public AbstractC0932b() {
        this.f2906c = new Rect();
        this.f2907d = new Rect();
        this.f2908e = 0;
    }

    public AbstractC0932b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2906c = new Rect();
        this.f2907d = new Rect();
        this.f2908e = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: g */
    public final boolean mo81g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        AppBarLayout mo80u;
        int i4;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (mo80u = mo80u(coordinatorLayout.m1260j(view))) != null) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (mo80u.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                view.setFitsSystemWindows(true);
                if (view.getFitsSystemWindows()) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i3);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            int mo78w = mo78w(mo80u) + (size - mo80u.getMeasuredHeight());
            if (i5 == -1) {
                i4 = 1073741824;
            } else {
                i4 = Integer.MIN_VALUE;
            }
            coordinatorLayout.m1252r(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo78w, i4));
            return true;
        }
        return false;
    }

    @Override // p074x0.C0933c
    /* renamed from: t */
    public final void mo75t(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2;
        AppBarLayout mo80u = mo80u(coordinatorLayout.m1260j(view));
        int i3 = 0;
        if (mo80u != null) {
            CoordinatorLayout.C0141f c0141f = (CoordinatorLayout.C0141f) view.getLayoutParams();
            int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0141f).leftMargin;
            int bottom = mo80u.getBottom() + ((ViewGroup.MarginLayoutParams) c0141f).topMargin;
            int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0141f).rightMargin;
            int height = coordinatorLayout.getHeight();
            Rect rect = this.f2906c;
            rect.set(paddingLeft, bottom, width, ((mo80u.getBottom() + height) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0141f).bottomMargin);
            C0963t lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    int i4 = rect.left;
                    Object obj = lastWindowInsets.f2947a;
                    rect.left = ((WindowInsets) obj).getSystemWindowInsetLeft() + i4;
                    rect.right -= ((WindowInsets) obj).getSystemWindowInsetRight();
                }
            }
            Rect rect2 = this.f2907d;
            int i5 = c0141f.f607c;
            if (i5 == 0) {
                i2 = 8388659;
            } else {
                i2 = i5;
            }
            Gravity.apply(i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            if (this.f2909f != 0) {
                float mo79v = mo79v(mo80u);
                int i6 = this.f2909f;
                i3 = C0736h.m285o((int) (mo79v * i6), 0, i6);
            }
            view.layout(rect2.left, rect2.top - i3, rect2.right, rect2.bottom - i3);
            i3 = rect2.top - mo80u.getBottom();
        } else {
            coordinatorLayout.m1253q(view, i);
        }
        this.f2908e = i3;
    }

    /* renamed from: u */
    public abstract AppBarLayout mo80u(ArrayList arrayList);

    /* renamed from: v */
    public float mo79v(View view) {
        return 1.0f;
    }

    /* renamed from: w */
    public int mo78w(View view) {
        return view.getMeasuredHeight();
    }
}
