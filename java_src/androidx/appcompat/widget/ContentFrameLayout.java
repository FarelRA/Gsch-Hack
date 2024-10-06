package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.C0068f;
import p004b.C0278l;
import p004b.LayoutInflater$Factory2C0266j;
import p024g.InterfaceC0565z;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: b */
    public TypedValue f391b;

    /* renamed from: c */
    public TypedValue f392c;

    /* renamed from: d */
    public TypedValue f393d;

    /* renamed from: e */
    public TypedValue f394e;

    /* renamed from: f */
    public TypedValue f395f;

    /* renamed from: g */
    public TypedValue f396g;

    /* renamed from: h */
    public final Rect f397h;

    /* renamed from: i */
    public InterfaceC0095a f398i;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0095a {
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f397h = new Rect();
    }

    /* renamed from: a */
    public final void m1311a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f395f == null) {
            this.f395f = new TypedValue();
        }
        return this.f395f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f396g == null) {
            this.f396g = new TypedValue();
        }
        return this.f396g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f393d == null) {
            this.f393d = new TypedValue();
        }
        return this.f393d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f394e == null) {
            this.f394e = new TypedValue();
        }
        return this.f394e;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f391b == null) {
            this.f391b = new TypedValue();
        }
        return this.f391b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f392c == null) {
            this.f392c = new TypedValue();
        }
        return this.f392c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0095a interfaceC0095a = this.f398i;
        if (interfaceC0095a != null) {
            interfaceC0095a.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0095a interfaceC0095a = this.f398i;
        if (interfaceC0095a != null) {
            LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = ((C0278l) interfaceC0095a).f1040a;
            InterfaceC0565z interfaceC0565z = layoutInflater$Factory2C0266j.f993j;
            if (interfaceC0565z != null) {
                interfaceC0565z.mo525i();
            }
            if (layoutInflater$Factory2C0266j.f998o != null) {
                layoutInflater$Factory2C0266j.f986c.getDecorView().removeCallbacks(layoutInflater$Factory2C0266j.f999p);
                if (layoutInflater$Factory2C0266j.f998o.isShowing()) {
                    try {
                        layoutInflater$Factory2C0266j.f998o.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                layoutInflater$Factory2C0266j.f998o = null;
            }
            C0960q c0960q = layoutInflater$Factory2C0266j.f1000q;
            if (c0960q != null) {
                c0960q.m23b();
            }
            C0068f c0068f = layoutInflater$Factory2C0266j.m1031r(0).f1029h;
            if (c0068f != null) {
                c0068f.m1351c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int measuredWidth;
        TypedValue typedValue;
        int i5;
        int i6;
        float fraction;
        int i7;
        int i8;
        float fraction2;
        int i9;
        int i10;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z2 = true;
        boolean z3 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        Rect rect = this.f397h;
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z3 ? this.f394e : this.f393d;
            if (typedValue2 != null && (i9 = typedValue2.type) != 0) {
                if (i9 == 5) {
                    fraction3 = typedValue2.getDimension(displayMetrics);
                } else if (i9 == 6) {
                    int i11 = displayMetrics.widthPixels;
                    fraction3 = typedValue2.getFraction(i11, i11);
                } else {
                    i10 = 0;
                    if (i10 > 0) {
                        i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i)), 1073741824);
                        z = true;
                        if (mode2 == Integer.MIN_VALUE) {
                            TypedValue typedValue3 = z3 ? this.f395f : this.f396g;
                            if (typedValue3 != null && (i7 = typedValue3.type) != 0) {
                                if (i7 == 5) {
                                    fraction2 = typedValue3.getDimension(displayMetrics);
                                } else if (i7 == 6) {
                                    int i12 = displayMetrics.heightPixels;
                                    fraction2 = typedValue3.getFraction(i12, i12);
                                } else {
                                    i8 = 0;
                                    if (i8 > 0) {
                                        i4 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i2)), 1073741824);
                                        super.onMeasure(i3, i4);
                                        measuredWidth = getMeasuredWidth();
                                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                                        if (!z && mode == Integer.MIN_VALUE) {
                                            typedValue = !z3 ? this.f392c : this.f391b;
                                            if (typedValue != null && (i5 = typedValue.type) != 0) {
                                                if (i5 != 5) {
                                                    fraction = typedValue.getDimension(displayMetrics);
                                                } else if (i5 == 6) {
                                                    int i13 = displayMetrics.widthPixels;
                                                    fraction = typedValue.getFraction(i13, i13);
                                                } else {
                                                    i6 = 0;
                                                    if (i6 > 0) {
                                                        i6 -= rect.left + rect.right;
                                                    }
                                                    if (measuredWidth < i6) {
                                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                                                        if (z2) {
                                                            return;
                                                        }
                                                        super.onMeasure(makeMeasureSpec, i4);
                                                        return;
                                                    }
                                                }
                                                i6 = (int) fraction;
                                                if (i6 > 0) {
                                                }
                                                if (measuredWidth < i6) {
                                                }
                                            }
                                        }
                                        z2 = false;
                                        if (z2) {
                                        }
                                    }
                                }
                                i8 = (int) fraction2;
                                if (i8 > 0) {
                                }
                            }
                        }
                        i4 = i2;
                        super.onMeasure(i3, i4);
                        measuredWidth = getMeasuredWidth();
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                        if (!z) {
                            if (!z3) {
                            }
                            if (typedValue != null) {
                                if (i5 != 5) {
                                }
                                i6 = (int) fraction;
                                if (i6 > 0) {
                                }
                                if (measuredWidth < i6) {
                                }
                            }
                        }
                        z2 = false;
                        if (z2) {
                        }
                    }
                }
                i10 = (int) fraction3;
                if (i10 > 0) {
                }
            }
        }
        i3 = i;
        z = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        i4 = i2;
        super.onMeasure(i3, i4);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec22 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (!z) {
        }
        z2 = false;
        if (z2) {
        }
    }

    public void setAttachListener(InterfaceC0095a interfaceC0095a) {
        this.f398i = interfaceC0095a;
    }
}
