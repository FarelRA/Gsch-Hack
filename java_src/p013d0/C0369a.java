package p013d0;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import p076y.C0954m;
/* renamed from: d0.a */
/* loaded from: classes.dex */
public final class C0369a {

    /* renamed from: v */
    public static final animationInterpolatorC0370a f1425v = new animationInterpolatorC0370a();

    /* renamed from: a */
    public int f1426a;

    /* renamed from: b */
    public int f1427b;

    /* renamed from: d */
    public float[] f1429d;

    /* renamed from: e */
    public float[] f1430e;

    /* renamed from: f */
    public float[] f1431f;

    /* renamed from: g */
    public float[] f1432g;

    /* renamed from: h */
    public int[] f1433h;

    /* renamed from: i */
    public int[] f1434i;

    /* renamed from: j */
    public int[] f1435j;

    /* renamed from: k */
    public int f1436k;

    /* renamed from: l */
    public VelocityTracker f1437l;

    /* renamed from: m */
    public final float f1438m;

    /* renamed from: n */
    public final float f1439n;

    /* renamed from: o */
    public final int f1440o;

    /* renamed from: p */
    public final OverScroller f1441p;

    /* renamed from: q */
    public final AbstractC0372c f1442q;

    /* renamed from: r */
    public View f1443r;

    /* renamed from: s */
    public boolean f1444s;

    /* renamed from: t */
    public final ViewGroup f1445t;

    /* renamed from: c */
    public int f1428c = -1;

    /* renamed from: u */
    public final RunnableC0371b f1446u = new RunnableC0371b();

    /* renamed from: d0.a$a  reason: invalid class name */
    /* loaded from: classes.dex */
    public static class animationInterpolatorC0370a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: d0.a$b */
    /* loaded from: classes.dex */
    public class RunnableC0371b implements Runnable {
        public RunnableC0371b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0369a.this.m876p(0);
        }
    }

    /* renamed from: d0.a$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0372c {
        /* renamed from: a */
        public abstract int mo872a(View view, int i);

        /* renamed from: b */
        public abstract int mo871b(View view, int i);

        /* renamed from: c */
        public int mo870c(View view) {
            return 0;
        }

        /* renamed from: d */
        public int mo869d() {
            return 0;
        }

        /* renamed from: e */
        public void mo868e(View view, int i) {
        }

        /* renamed from: f */
        public abstract void mo867f(int i);

        /* renamed from: g */
        public abstract void mo866g(View view, int i, int i2);

        /* renamed from: h */
        public abstract void mo865h(View view, float f, float f2);

        /* renamed from: i */
        public abstract boolean mo864i(View view, int i);
    }

    public C0369a(Context context, ViewGroup viewGroup, AbstractC0372c abstractC0372c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0372c == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f1445t = viewGroup;
        this.f1442q = abstractC0372c;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1440o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f1427b = viewConfiguration.getScaledTouchSlop();
        this.f1438m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1439n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1441p = new OverScroller(context, f1425v);
    }

    /* renamed from: a */
    public final void m891a() {
        this.f1428c = -1;
        float[] fArr = this.f1429d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f1430e, 0.0f);
            Arrays.fill(this.f1431f, 0.0f);
            Arrays.fill(this.f1432g, 0.0f);
            Arrays.fill(this.f1433h, 0);
            Arrays.fill(this.f1434i, 0);
            Arrays.fill(this.f1435j, 0);
            this.f1436k = 0;
        }
        VelocityTracker velocityTracker = this.f1437l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1437l = null;
        }
    }

    /* renamed from: b */
    public final void m890b(View view, int i) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f1445t;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f1443r = view;
        this.f1428c = i;
        this.f1442q.mo868e(view, i);
        m876p(1);
    }

    /* renamed from: c */
    public final boolean m889c(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f1433h[i] & i2) != i2 || (0 & i2) == 0 || (this.f1435j[i] & i2) == i2 || (this.f1434i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f1427b;
        if (abs > i3 || abs2 > i3) {
            if (abs < abs2 * 0.5f) {
                this.f1442q.getClass();
            }
            return (this.f1434i[i] & i2) == 0 && abs > ((float) this.f1427b);
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m888d(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        AbstractC0372c abstractC0372c = this.f1442q;
        boolean z = abstractC0372c.mo870c(view) > 0;
        boolean z2 = abstractC0372c.mo869d() > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f1427b) : z2 && Math.abs(f2) > ((float) this.f1427b);
        }
        float f3 = f2 * f2;
        int i = this.f1427b;
        return f3 + (f * f) > ((float) (i * i));
    }

    /* renamed from: e */
    public final void m887e(int i) {
        float[] fArr = this.f1429d;
        if (fArr != null) {
            int i2 = this.f1436k;
            boolean z = true;
            int i3 = 1 << i;
            if ((i3 & i2) == 0) {
                z = false;
            }
            if (z) {
                fArr[i] = 0.0f;
                this.f1430e[i] = 0.0f;
                this.f1431f[i] = 0.0f;
                this.f1432g[i] = 0.0f;
                this.f1433h[i] = 0;
                this.f1434i[i] = 0;
                this.f1435j[i] = 0;
                this.f1436k = (~i3) & i2;
            }
        }
    }

    /* renamed from: f */
    public final int m886f(int i, int i2, int i3) {
        int width;
        int abs;
        if (i == 0) {
            return 0;
        }
        float width2 = this.f1445t.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / width) - 0.5f) * 0.47123894f)) * width2) + width2;
        int abs2 = Math.abs(i2);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    /* renamed from: g */
    public final boolean m885g() {
        if (this.f1426a == 2) {
            OverScroller overScroller = this.f1441p;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f1443r.getLeft();
            int top = currY - this.f1443r.getTop();
            if (left != 0) {
                C0954m.m32d(this.f1443r, left);
            }
            if (top != 0) {
                C0954m.m31e(this.f1443r, top);
            }
            if (left != 0 || top != 0) {
                this.f1442q.mo866g(this.f1443r, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.f1445t.post(this.f1446u);
            }
        }
        return this.f1426a == 2;
    }

    /* renamed from: h */
    public final View m884h(int i, int i2) {
        ViewGroup viewGroup = this.f1445t;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f1442q.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: i */
    public final boolean m883i(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f1443r.getLeft();
        int top = this.f1443r.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.f1441p;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            m876p(0);
            return false;
        }
        View view = this.f1443r;
        int i7 = (int) this.f1439n;
        int i8 = (int) this.f1438m;
        int abs = Math.abs(i3);
        if (abs < i7) {
            i3 = 0;
        } else if (abs > i8) {
            if (i3 > 0) {
                i3 = i8;
            } else {
                i3 = -i8;
            }
        }
        int abs2 = Math.abs(i4);
        if (abs2 < i7) {
            i4 = 0;
        } else if (abs2 > i8) {
            if (i4 > 0) {
                i4 = i8;
            } else {
                i4 = -i8;
            }
        }
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int abs5 = Math.abs(i3);
        int abs6 = Math.abs(i4);
        int i9 = abs5 + abs6;
        int i10 = abs3 + abs4;
        if (i3 != 0) {
            f = abs5;
            f2 = i9;
        } else {
            f = abs3;
            f2 = i10;
        }
        float f5 = f / f2;
        if (i4 != 0) {
            f3 = abs6;
            f4 = i9;
        } else {
            f3 = abs4;
            f4 = i10;
        }
        float f6 = f3 / f4;
        AbstractC0372c abstractC0372c = this.f1442q;
        overScroller.startScroll(left, top, i5, i6, (int) ((m886f(i6, i4, abstractC0372c.mo869d()) * f6) + (m886f(i5, i3, abstractC0372c.mo870c(view)) * f5)));
        m876p(2);
        return true;
    }

    /* renamed from: j */
    public final boolean m882j(int i) {
        boolean z;
        if ((this.f1436k & (1 << i)) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: k */
    public final void m881k(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m891a();
        }
        if (this.f1437l == null) {
            this.f1437l = VelocityTracker.obtain();
        }
        this.f1437l.addMovement(motionEvent);
        int i2 = 0;
        AbstractC0372c abstractC0372c = this.f1442q;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f1426a != 1) {
                        int pointerCount = motionEvent.getPointerCount();
                        while (i2 < pointerCount) {
                            int pointerId = motionEvent.getPointerId(i2);
                            if (m882j(pointerId)) {
                                float x = motionEvent.getX(i2);
                                float y = motionEvent.getY(i2);
                                float f = x - this.f1429d[pointerId];
                                float f2 = y - this.f1430e[pointerId];
                                m879m(f, f2, pointerId);
                                if (this.f1426a != 1) {
                                    View m884h = m884h((int) x, (int) y);
                                    if (m888d(m884h, f, f2) && m873s(m884h, pointerId)) {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                            i2++;
                        }
                    } else if (!m882j(this.f1428c)) {
                        return;
                    } else {
                        int findPointerIndex = motionEvent.findPointerIndex(this.f1428c);
                        float x2 = motionEvent.getX(findPointerIndex);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float[] fArr = this.f1431f;
                        int i3 = this.f1428c;
                        int i4 = (int) (x2 - fArr[i3]);
                        int i5 = (int) (y2 - this.f1432g[i3]);
                        int left = this.f1443r.getLeft() + i4;
                        int top = this.f1443r.getTop() + i5;
                        int left2 = this.f1443r.getLeft();
                        int top2 = this.f1443r.getTop();
                        if (i4 != 0) {
                            left = abstractC0372c.mo872a(this.f1443r, left);
                            C0954m.m32d(this.f1443r, left - left2);
                        }
                        if (i5 != 0) {
                            top = abstractC0372c.mo871b(this.f1443r, top);
                            C0954m.m31e(this.f1443r, top - top2);
                        }
                        if (i4 != 0 || i5 != 0) {
                            abstractC0372c.mo866g(this.f1443r, left, top);
                        }
                    }
                    m877o(motionEvent);
                    return;
                } else if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return;
                        }
                        int pointerId2 = motionEvent.getPointerId(actionIndex);
                        if (this.f1426a == 1 && pointerId2 == this.f1428c) {
                            int pointerCount2 = motionEvent.getPointerCount();
                            while (true) {
                                if (i2 >= pointerCount2) {
                                    i = -1;
                                    break;
                                }
                                int pointerId3 = motionEvent.getPointerId(i2);
                                if (pointerId3 != this.f1428c) {
                                    View m884h2 = m884h((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                                    View view = this.f1443r;
                                    if (m884h2 == view && m873s(view, pointerId3)) {
                                        i = this.f1428c;
                                        break;
                                    }
                                }
                                i2++;
                            }
                            if (i == -1) {
                                m880l();
                            }
                        }
                        m887e(pointerId2);
                        return;
                    }
                    int pointerId4 = motionEvent.getPointerId(actionIndex);
                    float x3 = motionEvent.getX(actionIndex);
                    float y3 = motionEvent.getY(actionIndex);
                    m878n(x3, y3, pointerId4);
                    if (this.f1426a != 0) {
                        int i6 = (int) x3;
                        int i7 = (int) y3;
                        View view2 = this.f1443r;
                        if (view2 != null && i6 >= view2.getLeft() && i6 < view2.getRight() && i7 >= view2.getTop() && i7 < view2.getBottom()) {
                            i2 = 1;
                        }
                        if (i2 != 0) {
                            m873s(this.f1443r, pointerId4);
                            return;
                        }
                        return;
                    }
                    m873s(m884h((int) x3, (int) y3), pointerId4);
                    if ((this.f1433h[pointerId4] & 0) == 0) {
                        return;
                    }
                } else if (this.f1426a == 1) {
                    this.f1444s = true;
                    abstractC0372c.mo865h(this.f1443r, 0.0f, 0.0f);
                    this.f1444s = false;
                    if (this.f1426a == 1) {
                        m876p(0);
                    }
                }
            } else if (this.f1426a == 1) {
                m880l();
            }
            m891a();
            return;
        }
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        int pointerId5 = motionEvent.getPointerId(0);
        View m884h3 = m884h((int) x4, (int) y4);
        m878n(x4, y4, pointerId5);
        m873s(m884h3, pointerId5);
        if ((this.f1433h[pointerId5] & 0) == 0) {
            return;
        }
        abstractC0372c.getClass();
    }

    /* renamed from: l */
    public final void m880l() {
        VelocityTracker velocityTracker = this.f1437l;
        float f = this.f1438m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f1437l.getXVelocity(this.f1428c);
        float abs = Math.abs(xVelocity);
        float f2 = 0.0f;
        float f3 = this.f1439n;
        if (abs < f3) {
            xVelocity = 0.0f;
        } else if (abs > f) {
            if (xVelocity > 0.0f) {
                xVelocity = f;
            } else {
                xVelocity = -f;
            }
        }
        float yVelocity = this.f1437l.getYVelocity(this.f1428c);
        float abs2 = Math.abs(yVelocity);
        if (abs2 >= f3) {
            if (abs2 > f) {
                if (yVelocity <= 0.0f) {
                    f = -f;
                }
                f2 = f;
            } else {
                f2 = yVelocity;
            }
        }
        this.f1444s = true;
        this.f1442q.mo865h(this.f1443r, xVelocity, f2);
        this.f1444s = false;
        if (this.f1426a == 1) {
            m876p(0);
        }
    }

    /* renamed from: m */
    public final void m879m(float f, float f2, int i) {
        boolean m889c = m889c(f, f2, i, 1);
        if (m889c(f2, f, i, 4)) {
            m889c |= true;
        }
        if (m889c(f, f2, i, 2)) {
            m889c |= true;
        }
        if (m889c(f2, f, i, 8)) {
            m889c |= true;
        }
        if (m889c) {
            int[] iArr = this.f1434i;
            iArr[i] = iArr[i] | m889c;
            this.f1442q.getClass();
        }
    }

    /* renamed from: n */
    public final void m878n(float f, float f2, int i) {
        float[] fArr = this.f1429d;
        int i2 = 0;
        if (fArr == null || fArr.length <= i) {
            int i3 = i + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f1430e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f1431f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f1432g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f1433h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f1434i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f1435j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f1429d = fArr2;
            this.f1430e = fArr3;
            this.f1431f = fArr4;
            this.f1432g = fArr5;
            this.f1433h = iArr;
            this.f1434i = iArr2;
            this.f1435j = iArr3;
        }
        float[] fArr9 = this.f1429d;
        this.f1431f[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f1430e;
        this.f1432g[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f1433h;
        int i4 = (int) f;
        int i5 = (int) f2;
        ViewGroup viewGroup = this.f1445t;
        int left = viewGroup.getLeft();
        int i6 = this.f1440o;
        if (i4 < left + i6) {
            i2 = 1;
        }
        if (i5 < viewGroup.getTop() + i6) {
            i2 |= 4;
        }
        if (i4 > viewGroup.getRight() - i6) {
            i2 |= 2;
        }
        if (i5 > viewGroup.getBottom() - i6) {
            i2 |= 8;
        }
        iArr7[i] = i2;
        this.f1436k |= 1 << i;
    }

    /* renamed from: o */
    public final void m877o(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m882j(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f1431f[pointerId] = x;
                this.f1432g[pointerId] = y;
            }
        }
    }

    /* renamed from: p */
    public final void m876p(int i) {
        this.f1445t.removeCallbacks(this.f1446u);
        if (this.f1426a != i) {
            this.f1426a = i;
            this.f1442q.mo867f(i);
            if (this.f1426a == 0) {
                this.f1443r = null;
            }
        }
    }

    /* renamed from: q */
    public final boolean m875q(int i, int i2) {
        if (this.f1444s) {
            return m883i(i, i2, (int) this.f1437l.getXVelocity(this.f1428c), (int) this.f1437l.getYVelocity(this.f1428c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
        if ((r18.f1433h[r2] & 0) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
        if (r13 != r12) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0119, code lost:
        if ((r18.f1433h[r1] & 0) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x011b, code lost:
        r7.getClass();
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m874r(MotionEvent motionEvent) {
        View m884h;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m891a();
        }
        if (this.f1437l == null) {
            this.f1437l = VelocityTracker.obtain();
        }
        this.f1437l.addMovement(motionEvent);
        AbstractC0372c abstractC0372c = this.f1442q;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            int pointerId = motionEvent.getPointerId(actionIndex);
                            float x = motionEvent.getX(actionIndex);
                            float y = motionEvent.getY(actionIndex);
                            m878n(x, y, pointerId);
                            int i = this.f1426a;
                            if (i != 0) {
                                if (i == 2 && (m884h = m884h((int) x, (int) y)) == this.f1443r) {
                                    m873s(m884h, pointerId);
                                }
                            }
                        } else if (actionMasked == 6) {
                            m887e(motionEvent.getPointerId(actionIndex));
                        }
                    }
                } else if (this.f1429d != null && this.f1430e != null) {
                    int pointerCount = motionEvent.getPointerCount();
                    for (int i2 = 0; i2 < pointerCount; i2++) {
                        int pointerId2 = motionEvent.getPointerId(i2);
                        if (m882j(pointerId2)) {
                            float x2 = motionEvent.getX(i2);
                            float y2 = motionEvent.getY(i2);
                            float f = x2 - this.f1429d[pointerId2];
                            float f2 = y2 - this.f1430e[pointerId2];
                            View m884h2 = m884h((int) x2, (int) y2);
                            boolean z = m884h2 != null && m888d(m884h2, f, f2);
                            if (z) {
                                int left = m884h2.getLeft();
                                int mo872a = abstractC0372c.mo872a(m884h2, ((int) f) + left);
                                int top = m884h2.getTop();
                                int mo871b = abstractC0372c.mo871b(m884h2, ((int) f2) + top);
                                int mo870c = abstractC0372c.mo870c(m884h2);
                                int mo869d = abstractC0372c.mo869d();
                                if (mo870c != 0) {
                                    if (mo870c > 0) {
                                    }
                                }
                                if (mo869d == 0) {
                                    break;
                                } else if (mo869d > 0 && mo871b == top) {
                                    break;
                                }
                            }
                            m879m(f, f2, pointerId2);
                            if (this.f1426a != 1) {
                                if (z && m873s(m884h2, pointerId2)) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    m877o(motionEvent);
                }
            }
            m891a();
        } else {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId3 = motionEvent.getPointerId(0);
            m878n(x3, y3, pointerId3);
            View m884h3 = m884h((int) x3, (int) y3);
            if (m884h3 == this.f1443r && this.f1426a == 2) {
                m873s(m884h3, pointerId3);
            }
        }
        return this.f1426a == 1;
    }

    /* renamed from: s */
    public final boolean m873s(View view, int i) {
        if (view == this.f1443r && this.f1428c == i) {
            return true;
        }
        if (view == null || !this.f1442q.mo864i(view, i)) {
            return false;
        }
        this.f1428c = i;
        m890b(view, i);
        return true;
    }
}
