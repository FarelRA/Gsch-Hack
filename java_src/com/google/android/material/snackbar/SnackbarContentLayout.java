package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: b */
    public TextView f1269b;

    /* renamed from: c */
    public Button f1270c;

    /* renamed from: d */
    public final int f1271d;

    /* renamed from: e */
    public final int f1272e;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2563e0);
        this.f1271d = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f1272e = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final boolean m936a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f1269b.getPaddingTop() == i2 && this.f1269b.getPaddingBottom() == i3) {
            return z;
        }
        TextView textView = this.f1269b;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i2, textView.getPaddingEnd(), i3);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
        return true;
    }

    public Button getActionView() {
        return this.f1270c;
    }

    public TextView getMessageView() {
        return this.f1269b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f1269b = (TextView) findViewById(R.id.snackbar_text);
        this.f1270c = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (m936a(1, r0, r0 - r1) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
        if (m936a(0, r0, r0) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        r3 = true;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int i4 = this.f1271d;
        if (i4 > 0 && getMeasuredWidth() > i4) {
            i = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            super.onMeasure(i, i2);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z = false;
        boolean z2 = this.f1269b.getLayout().getLineCount() > 1;
        if (!z2 || (i3 = this.f1272e) <= 0 || this.f1270c.getMeasuredWidth() <= i3) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }
}
