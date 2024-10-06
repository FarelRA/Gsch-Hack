package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.C0212k;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes.dex */
public final class C0197d extends C0212k.AbstractC0223i implements C0212k.InterfaceC0230m {

    /* renamed from: x */
    public static final int[] f777x = {16842919};

    /* renamed from: y */
    public static final int[] f778y = new int[0];

    /* renamed from: a */
    public final int f779a;

    /* renamed from: b */
    public final StateListDrawable f780b;

    /* renamed from: c */
    public final Drawable f781c;

    /* renamed from: d */
    public final int f782d;

    /* renamed from: e */
    public final int f783e;

    /* renamed from: f */
    public final StateListDrawable f784f;

    /* renamed from: g */
    public final Drawable f785g;

    /* renamed from: h */
    public final int f786h;

    /* renamed from: i */
    public final int f787i;

    /* renamed from: j */
    public float f788j;

    /* renamed from: k */
    public float f789k;

    /* renamed from: n */
    public C0212k f792n;

    /* renamed from: u */
    public final ValueAnimator f799u;

    /* renamed from: v */
    public int f800v;

    /* renamed from: w */
    public final RunnableC0198a f801w;

    /* renamed from: l */
    public int f790l = 0;

    /* renamed from: m */
    public int f791m = 0;

    /* renamed from: o */
    public boolean f793o = false;

    /* renamed from: p */
    public boolean f794p = false;

    /* renamed from: q */
    public int f795q = 0;

    /* renamed from: r */
    public int f796r = 0;

    /* renamed from: s */
    public final int[] f797s = new int[2];

    /* renamed from: t */
    public final int[] f798t = new int[2];

    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes.dex */
    public class RunnableC0198a implements Runnable {
        public RunnableC0198a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0197d c0197d = C0197d.this;
            int i = c0197d.f800v;
            ValueAnimator valueAnimator = c0197d.f799u;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
            } else {
                valueAnimator.cancel();
            }
            c0197d.f800v = 3;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            valueAnimator.setDuration(500);
            valueAnimator.start();
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes.dex */
    public class C0199b extends C0212k.AbstractC0231n {
        public C0199b(C0197d c0197d) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$c */
    /* loaded from: classes.dex */
    public class C0200c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f803a = false;

        public C0200c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f803a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f803a) {
                this.f803a = false;
                return;
            }
            C0197d c0197d = C0197d.this;
            if (((Float) c0197d.f799u.getAnimatedValue()).floatValue() == 0.0f) {
                c0197d.f800v = 0;
                c0197d.m1152h(0);
                return;
            }
            c0197d.f800v = 2;
            c0197d.f792n.invalidate();
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$d */
    /* loaded from: classes.dex */
    public class C0201d implements ValueAnimator.AnimatorUpdateListener {
        public C0201d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0197d c0197d = C0197d.this;
            c0197d.f780b.setAlpha(floatValue);
            c0197d.f781c.setAlpha(floatValue);
            c0197d.f792n.invalidate();
        }
    }

    public C0197d(C0212k c0212k, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f799u = ofFloat;
        this.f800v = 0;
        RunnableC0198a runnableC0198a = new RunnableC0198a();
        this.f801w = runnableC0198a;
        C0199b c0199b = new C0199b(this);
        this.f780b = stateListDrawable;
        this.f781c = drawable;
        this.f784f = stateListDrawable2;
        this.f785g = drawable2;
        this.f782d = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f783e = Math.max(i, drawable.getIntrinsicWidth());
        this.f786h = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f787i = Math.max(i, drawable2.getIntrinsicWidth());
        this.f779a = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C0200c());
        ofFloat.addUpdateListener(new C0201d());
        C0212k c0212k2 = this.f792n;
        if (c0212k2 == c0212k) {
            return;
        }
        if (c0212k2 != null) {
            C0212k.AbstractC0224j abstractC0224j = c0212k2.f868j;
            if (abstractC0224j != null) {
                abstractC0224j.mo1105a("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList<C0212k.AbstractC0223i> arrayList = c0212k2.f869k;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                c0212k2.setWillNotDraw(c0212k2.getOverScrollMode() == 2);
            }
            c0212k2.m1130o();
            c0212k2.requestLayout();
            C0212k c0212k3 = this.f792n;
            c0212k3.f870l.remove(this);
            if (c0212k3.f871m == this) {
                c0212k3.f871m = null;
            }
            ArrayList arrayList2 = this.f792n.f851a0;
            if (arrayList2 != null) {
                arrayList2.remove(c0199b);
            }
            this.f792n.removeCallbacks(runnableC0198a);
        }
        this.f792n = c0212k;
        if (c0212k != null) {
            C0212k.AbstractC0224j abstractC0224j2 = c0212k.f868j;
            if (abstractC0224j2 != null) {
                abstractC0224j2.mo1105a("Cannot add item decoration during a scroll  or layout");
            }
            ArrayList<C0212k.AbstractC0223i> arrayList3 = c0212k.f869k;
            if (arrayList3.isEmpty()) {
                c0212k.setWillNotDraw(false);
            }
            arrayList3.add(this);
            c0212k.m1130o();
            c0212k.requestLayout();
            this.f792n.f870l.add(this);
            C0212k c0212k4 = this.f792n;
            if (c0212k4.f851a0 == null) {
                c0212k4.f851a0 = new ArrayList();
            }
            c0212k4.f851a0.add(c0199b);
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.InterfaceC0230m
    /* renamed from: a */
    public final boolean mo1079a(MotionEvent motionEvent) {
        int i = this.f795q;
        if (i == 1) {
            boolean m1154f = m1154f(motionEvent.getX(), motionEvent.getY());
            boolean m1155e = m1155e(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (m1154f || m1155e)) {
                if (m1155e) {
                    this.f796r = 1;
                    this.f789k = (int) motionEvent.getX();
                } else if (m1154f) {
                    this.f796r = 2;
                    this.f788j = (int) motionEvent.getY();
                }
                m1152h(2);
                return true;
            }
        } else if (i == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.C0212k.InterfaceC0230m
    /* renamed from: b */
    public final void mo1078b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ba, code lost:
        if (r9 >= 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0112, code lost:
        if (r5 >= 0) goto L49;
     */
    @Override // androidx.recyclerview.widget.C0212k.InterfaceC0230m
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void mo1077c(MotionEvent motionEvent) {
        int i;
        int i2;
        if (this.f795q == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m1154f = m1154f(motionEvent.getX(), motionEvent.getY());
            boolean m1155e = m1155e(motionEvent.getX(), motionEvent.getY());
            if (m1154f || m1155e) {
                if (m1155e) {
                    this.f796r = 1;
                    this.f789k = (int) motionEvent.getX();
                } else if (m1154f) {
                    this.f796r = 2;
                    this.f788j = (int) motionEvent.getY();
                }
                m1152h(2);
            }
        } else if (motionEvent.getAction() == 1 && this.f795q == 2) {
            this.f788j = 0.0f;
            this.f789k = 0.0f;
            m1152h(1);
            this.f796r = 0;
        } else if (motionEvent.getAction() == 2 && this.f795q == 2) {
            m1151i();
            int i3 = this.f796r;
            int i4 = this.f779a;
            if (i3 == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.f798t;
                iArr[0] = i4;
                int i5 = this.f790l - i4;
                iArr[1] = i5;
                float max = Math.max(i4, Math.min(i5, x));
                if (Math.abs(0 - max) >= 2.0f) {
                    float f = this.f789k;
                    int computeHorizontalScrollRange = this.f792n.computeHorizontalScrollRange();
                    int computeHorizontalScrollOffset = this.f792n.computeHorizontalScrollOffset();
                    int i6 = this.f790l;
                    int i7 = iArr[1] - iArr[0];
                    if (i7 != 0) {
                        int i8 = computeHorizontalScrollRange - i6;
                        i2 = (int) (((max - f) / i7) * i8);
                        int i9 = computeHorizontalScrollOffset + i2;
                        if (i9 < i8) {
                        }
                    }
                    i2 = 0;
                    if (i2 != 0) {
                        this.f792n.scrollBy(i2, 0);
                    }
                    this.f789k = max;
                }
            }
            if (this.f796r == 2) {
                float y = motionEvent.getY();
                int[] iArr2 = this.f797s;
                iArr2[0] = i4;
                int i10 = this.f791m - i4;
                iArr2[1] = i10;
                float max2 = Math.max(i4, Math.min(i10, y));
                if (Math.abs(0 - max2) >= 2.0f) {
                    float f2 = this.f788j;
                    int computeVerticalScrollRange = this.f792n.computeVerticalScrollRange();
                    int computeVerticalScrollOffset = this.f792n.computeVerticalScrollOffset();
                    int i11 = this.f791m;
                    int i12 = iArr2[1] - iArr2[0];
                    if (i12 != 0) {
                        int i13 = computeVerticalScrollRange - i11;
                        i = (int) (((max2 - f2) / i12) * i13);
                        int i14 = computeVerticalScrollOffset + i;
                        if (i14 < i13) {
                        }
                    }
                    i = 0;
                    if (i != 0) {
                        this.f792n.scrollBy(0, i);
                    }
                    this.f788j = max2;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0223i
    /* renamed from: d */
    public final void mo1116d(Canvas canvas) {
        int i;
        if (this.f790l == this.f792n.getWidth() && this.f791m == this.f792n.getHeight()) {
            if (this.f800v != 0) {
                if (this.f793o) {
                    int i2 = this.f790l;
                    int i3 = this.f782d;
                    int i4 = i2 - i3;
                    int i5 = 0 - (0 / 2);
                    StateListDrawable stateListDrawable = this.f780b;
                    stateListDrawable.setBounds(0, 0, i3, 0);
                    int i6 = this.f791m;
                    int i7 = this.f783e;
                    Drawable drawable = this.f781c;
                    drawable.setBounds(0, 0, i7, i6);
                    C0212k c0212k = this.f792n;
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    boolean z = true;
                    if (c0212k.getLayoutDirection() != 1) {
                        z = false;
                    }
                    if (z) {
                        drawable.draw(canvas);
                        canvas.translate(i3, i5);
                        canvas.scale(-1.0f, 1.0f);
                        stateListDrawable.draw(canvas);
                        canvas.scale(1.0f, 1.0f);
                        i = -i3;
                    } else {
                        canvas.translate(i4, 0.0f);
                        drawable.draw(canvas);
                        canvas.translate(0.0f, i5);
                        stateListDrawable.draw(canvas);
                        i = -i4;
                    }
                    canvas.translate(i, -i5);
                }
                if (this.f794p) {
                    int i8 = this.f791m;
                    int i9 = this.f786h;
                    int i10 = i8 - i9;
                    int i11 = 0 - (0 / 2);
                    StateListDrawable stateListDrawable2 = this.f784f;
                    stateListDrawable2.setBounds(0, 0, 0, i9);
                    int i12 = this.f790l;
                    int i13 = this.f787i;
                    Drawable drawable2 = this.f785g;
                    drawable2.setBounds(0, 0, i12, i13);
                    canvas.translate(0.0f, i10);
                    drawable2.draw(canvas);
                    canvas.translate(i11, 0.0f);
                    stateListDrawable2.draw(canvas);
                    canvas.translate(-i11, -i10);
                    return;
                }
                return;
            }
            return;
        }
        this.f790l = this.f792n.getWidth();
        this.f791m = this.f792n.getHeight();
        m1152h(0);
    }

    /* renamed from: e */
    public final boolean m1155e(float f, float f2) {
        return f2 >= ((float) (this.f791m - this.f786h)) && f >= ((float) (0 - (0 / 2))) && f <= ((float) ((0 / 2) + 0));
    }

    /* renamed from: f */
    public final boolean m1154f(float f, float f2) {
        boolean z;
        C0212k c0212k = this.f792n;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (c0212k.getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int i = this.f782d;
        if (z) {
            if (f > i / 2) {
                return false;
            }
        } else if (f < this.f790l - i) {
            return false;
        }
        int i2 = 0 / 2;
        if (f2 < 0 - i2 || f2 > i2 + 0) {
            return false;
        }
        return true;
    }

    /* renamed from: g */
    public final void m1153g(int i) {
        C0212k c0212k = this.f792n;
        RunnableC0198a runnableC0198a = this.f801w;
        c0212k.removeCallbacks(runnableC0198a);
        this.f792n.postDelayed(runnableC0198a, i);
    }

    /* renamed from: h */
    public final void m1152h(int i) {
        int i2;
        StateListDrawable stateListDrawable = this.f780b;
        if (i == 2 && this.f795q != 2) {
            stateListDrawable.setState(f777x);
            this.f792n.removeCallbacks(this.f801w);
        }
        if (i == 0) {
            this.f792n.invalidate();
        } else {
            m1151i();
        }
        if (this.f795q == 2 && i != 2) {
            stateListDrawable.setState(f778y);
            i2 = 1200;
        } else {
            i2 = i == 1 ? 1500 : 1500;
            this.f795q = i;
        }
        m1153g(i2);
        this.f795q = i;
    }

    /* renamed from: i */
    public final void m1151i() {
        int i = this.f800v;
        ValueAnimator valueAnimator = this.f799u;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            valueAnimator.cancel();
        }
        this.f800v = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
