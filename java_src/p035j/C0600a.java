package p035j;

import android.content.res.ColorStateList;
import android.widget.FrameLayout;
import p046m1.C0736h;
/* renamed from: j.a */
/* loaded from: classes.dex */
public class C0600a extends FrameLayout {

    /* renamed from: b */
    public boolean f2149b;

    /* renamed from: c */
    public boolean f2150c;

    static {
        new C0736h();
    }

    public ColorStateList getCardBackgroundColor() {
        throw null;
    }

    public float getCardElevation() {
        throw null;
    }

    public int getContentPaddingBottom() {
        throw null;
    }

    public int getContentPaddingLeft() {
        throw null;
    }

    public int getContentPaddingRight() {
        throw null;
    }

    public int getContentPaddingTop() {
        throw null;
    }

    public float getMaxCardElevation() {
        throw null;
    }

    public boolean getPreventCornerOverlap() {
        return this.f2150c;
    }

    public float getRadius() {
        throw null;
    }

    public boolean getUseCompatPadding() {
        return this.f2149b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        ColorStateList.valueOf(i);
        throw null;
    }

    public void setCardElevation(float f) {
        throw null;
    }

    public void setMaxCardElevation(float f) {
        throw null;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z == this.f2150c) {
            return;
        }
        this.f2150c = z;
        throw null;
    }

    public void setRadius(float f) {
        throw null;
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f2149b == z) {
            return;
        }
        this.f2149b = z;
        throw null;
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        throw null;
    }
}
