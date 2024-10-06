package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: b */
    public boolean f389b;

    /* renamed from: c */
    public int f390c;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f390c = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2577q);
        this.f389b = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(R.id.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(0, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        int i4;
        int paddingBottom;
        boolean z3;
        boolean z4;
        boolean z5;
        int size = View.MeasureSpec.getSize(i);
        int i5 = 0;
        if (this.f389b) {
            if (size > this.f390c) {
                if (getOrientation() == 1) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z5) {
                    setStacked(false);
                }
            }
            this.f390c = size;
        }
        if (getOrientation() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z && View.MeasureSpec.getMode(i) == 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z2 = true;
        } else {
            i3 = i;
            z2 = false;
        }
        super.onMeasure(i3, i2);
        if (this.f389b) {
            if (getOrientation() == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3) {
                if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    setStacked(true);
                    z2 = true;
                }
            }
        }
        if (z2) {
            super.onMeasure(i, i2);
        }
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            i4 = -1;
            if (i6 < childCount) {
                if (getChildAt(i6).getVisibility() == 0) {
                    break;
                }
                i6++;
            } else {
                i6 = -1;
                break;
            }
        }
        if (i6 >= 0) {
            View childAt = getChildAt(i6);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (getOrientation() == 1) {
                i5 = 1;
            }
            if (i5 != 0) {
                int i7 = i6 + 1;
                int childCount2 = getChildCount();
                while (true) {
                    if (i7 >= childCount2) {
                        break;
                    } else if (getChildAt(i7).getVisibility() == 0) {
                        i4 = i7;
                        break;
                    } else {
                        i7++;
                    }
                }
                if (i4 >= 0) {
                    paddingBottom = getChildAt(i4).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                } else {
                    i5 = measuredHeight;
                }
            } else {
                paddingBottom = getPaddingBottom();
            }
            i5 = paddingBottom + measuredHeight;
        }
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getMinimumHeight() != i5) {
            setMinimumHeight(i5);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f389b != z) {
            this.f389b = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
