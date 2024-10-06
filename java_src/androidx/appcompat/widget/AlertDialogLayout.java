package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.C0130b;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class AlertDialogLayout extends C0130b {
    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: j */
    public static int m1312j(View view) {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        int minimumHeight = view.getMinimumHeight();
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return m1312j(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int intrinsicHeight;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i8 = gravity & 112;
        int i9 = gravity & 8388615;
        if (i8 != 16) {
            if (i8 != 80) {
                paddingTop = getPaddingTop();
            } else {
                paddingTop = ((getPaddingTop() + i4) - i2) - measuredHeight;
            }
        } else {
            paddingTop = (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
        }
        Drawable dividerDrawable = getDividerDrawable();
        if (dividerDrawable == null) {
            intrinsicHeight = 0;
        } else {
            intrinsicHeight = dividerDrawable.getIntrinsicHeight();
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                C0130b.C0131a c0131a = (C0130b.C0131a) childAt.getLayoutParams();
                int i11 = c0131a.f558b;
                if (i11 < 0) {
                    i11 = i9;
                }
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                int absoluteGravity = Gravity.getAbsoluteGravity(i11, getLayoutDirection()) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i6 = ((ViewGroup.MarginLayoutParams) c0131a).leftMargin + paddingLeft;
                        if (m1265i(i10)) {
                            paddingTop += intrinsicHeight;
                        }
                        int i12 = paddingTop + ((ViewGroup.MarginLayoutParams) c0131a).topMargin;
                        childAt.layout(i6, i12, measuredWidth + i6, measuredHeight2 + i12);
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin + i12;
                    } else {
                        i5 = paddingRight - measuredWidth;
                    }
                } else {
                    i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((ViewGroup.MarginLayoutParams) c0131a).leftMargin;
                }
                i6 = i5 - ((ViewGroup.MarginLayoutParams) c0131a).rightMargin;
                if (m1265i(i10)) {
                }
                int i122 = paddingTop + ((ViewGroup.MarginLayoutParams) c0131a).topMargin;
                childAt.layout(i6, i122, measuredWidth + i6, measuredHeight2 + i122);
                paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) c0131a).bottomMargin + i122;
            }
        }
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int makeMeasureSpec;
        int childCount = getChildCount();
        boolean z = false;
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == R.id.topPanel) {
                    view = childAt;
                } else if (id == R.id.buttonPanel) {
                    view2 = childAt;
                } else if ((id != R.id.contentPanel && id != R.id.customPanel) || view3 != null) {
                    break;
                } else {
                    view3 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i, 0);
            paddingBottom += view.getMeasuredHeight();
            i3 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i3 = 0;
        }
        if (view2 != null) {
            view2.measure(i, 0);
            i4 = m1312j(view2);
            i5 = view2.getMeasuredHeight() - i4;
            paddingBottom += i4;
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (view3 != null) {
            if (mode == 0) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode);
            }
            view3.measure(i, makeMeasureSpec);
            i6 = view3.getMeasuredHeight();
            paddingBottom += i6;
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        } else {
            i6 = 0;
        }
        int i8 = size - paddingBottom;
        if (view2 != null) {
            int i9 = paddingBottom - i4;
            int min = Math.min(i8, i5);
            if (min > 0) {
                i8 -= min;
                i4 += min;
            }
            view2.measure(i, View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
            paddingBottom = i9 + view2.getMeasuredHeight();
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        }
        if (view3 != null && i8 > 0) {
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i8, mode));
            paddingBottom = (paddingBottom - i6) + view3.getMeasuredHeight();
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        }
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8) {
                i10 = Math.max(i10, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + i10, i, i3), View.resolveSizeAndState(paddingBottom, i2, 0));
        if (mode2 != 1073741824) {
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt3 = getChildAt(i12);
                if (childAt3.getVisibility() != 8) {
                    C0130b.C0131a c0131a = (C0130b.C0131a) childAt3.getLayoutParams();
                    if (((ViewGroup.MarginLayoutParams) c0131a).width == -1) {
                        int i13 = ((ViewGroup.MarginLayoutParams) c0131a).height;
                        ((ViewGroup.MarginLayoutParams) c0131a).height = childAt3.getMeasuredHeight();
                        measureChildWithMargins(childAt3, makeMeasureSpec2, 0, i2, 0);
                        ((ViewGroup.MarginLayoutParams) c0131a).height = i13;
                    }
                }
            }
        }
        z = true;
        if (!z) {
            super.onMeasure(i, i2);
        }
    }
}
