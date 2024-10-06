package p074x0;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: x0.a */
/* loaded from: classes.dex */
public abstract class AbstractC0930a<V extends View> extends C0933c<V> {

    /* renamed from: c */
    public RunnableC0931a f2896c;

    /* renamed from: d */
    public OverScroller f2897d;

    /* renamed from: e */
    public boolean f2898e;

    /* renamed from: f */
    public int f2899f;

    /* renamed from: g */
    public int f2900g;

    /* renamed from: h */
    public int f2901h;

    /* renamed from: i */
    public VelocityTracker f2902i;

    /* renamed from: x0.a$a */
    /* loaded from: classes.dex */
    public class RunnableC0931a implements Runnable {

        /* renamed from: b */
        public final CoordinatorLayout f2903b;

        /* renamed from: c */
        public final V f2904c;

        public RunnableC0931a(CoordinatorLayout coordinatorLayout, V v) {
            this.f2903b = coordinatorLayout;
            this.f2904c = v;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0930a abstractC0930a;
            OverScroller overScroller;
            V v = this.f2904c;
            if (v != null && (overScroller = (abstractC0930a = AbstractC0930a.this).f2897d) != null) {
                boolean computeScrollOffset = overScroller.computeScrollOffset();
                CoordinatorLayout coordinatorLayout = this.f2903b;
                if (computeScrollOffset) {
                    abstractC0930a.m90A(coordinatorLayout, v, abstractC0930a.f2897d.getCurrY());
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    v.postOnAnimation(this);
                    return;
                }
                abstractC0930a.mo83y(v, coordinatorLayout);
            }
        }
    }

    public AbstractC0930a() {
        this.f2899f = -1;
        this.f2901h = -1;
    }

    public AbstractC0930a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2899f = -1;
        this.f2901h = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    public final void m90A(CoordinatorLayout coordinatorLayout, View view, int i) {
        mo82z(coordinatorLayout, view, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        if (r0 != 3) goto L17;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo89e(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f2901h < 0) {
            this.f2901h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f2898e) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f2899f;
                    if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                        int y = (int) motionEvent.getY(findPointerIndex);
                        if (Math.abs(y - this.f2900g) > this.f2901h) {
                            this.f2898e = true;
                            this.f2900g = y;
                        }
                    }
                }
            }
            this.f2898e = false;
            this.f2899f = -1;
            VelocityTracker velocityTracker = this.f2902i;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2902i = null;
            }
        } else {
            this.f2898e = false;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (mo87u(v) && coordinatorLayout.m1255o(v, x, y2)) {
                this.f2900g = y2;
                this.f2899f = motionEvent.getPointerId(0);
                if (this.f2902i == null) {
                    this.f2902i = VelocityTracker.obtain();
                }
            }
        }
        VelocityTracker velocityTracker2 = this.f2902i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.f2898e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r0 != 3) goto L15;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo88r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f2901h < 0) {
            this.f2901h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f2899f);
                    if (findPointerIndex == -1) {
                        return false;
                    }
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i = this.f2900g - y;
                    if (!this.f2898e) {
                        int abs = Math.abs(i);
                        int i2 = this.f2901h;
                        if (abs > i2) {
                            this.f2898e = true;
                            i = i > 0 ? i - i2 : i + i2;
                        }
                    }
                    if (this.f2898e) {
                        this.f2900g = y;
                        mo82z(coordinatorLayout, v, mo84x() - i, mo86v(v), 0);
                    }
                }
            } else {
                VelocityTracker velocityTracker = this.f2902i;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.f2902i.computeCurrentVelocity(1000);
                    float yVelocity = this.f2902i.getYVelocity(this.f2899f);
                    int i3 = -mo85w(v);
                    Runnable runnable = this.f2896c;
                    if (runnable != null) {
                        v.removeCallbacks(runnable);
                        this.f2896c = null;
                    }
                    if (this.f2897d == null) {
                        this.f2897d = new OverScroller(v.getContext());
                    }
                    this.f2897d.fling(0, m76s(), 0, Math.round(yVelocity), 0, 0, i3, 0);
                    if (this.f2897d.computeScrollOffset()) {
                        RunnableC0931a runnableC0931a = new RunnableC0931a(coordinatorLayout, v);
                        this.f2896c = runnableC0931a;
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        v.postOnAnimation(runnableC0931a);
                    } else {
                        mo83y(v, coordinatorLayout);
                    }
                }
            }
            this.f2898e = false;
            this.f2899f = -1;
            VelocityTracker velocityTracker2 = this.f2902i;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f2902i = null;
            }
        } else {
            int y2 = (int) motionEvent.getY();
            if (!coordinatorLayout.m1255o(v, (int) motionEvent.getX(), y2) || !mo87u(v)) {
                return false;
            }
            this.f2900g = y2;
            this.f2899f = motionEvent.getPointerId(0);
            if (this.f2902i == null) {
                this.f2902i = VelocityTracker.obtain();
            }
        }
        VelocityTracker velocityTracker3 = this.f2902i;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    /* renamed from: u */
    public boolean mo87u(V v) {
        return false;
    }

    /* renamed from: v */
    public int mo86v(V v) {
        return -v.getHeight();
    }

    /* renamed from: w */
    public int mo85w(V v) {
        return v.getHeight();
    }

    /* renamed from: x */
    public int mo84x() {
        return m76s();
    }

    /* renamed from: y */
    public void mo83y(View view, CoordinatorLayout coordinatorLayout) {
    }

    /* renamed from: z */
    public int mo82z(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int m285o;
        int m76s = m76s();
        if (i2 != 0 && m76s >= i2 && m76s <= i3 && m76s != (m285o = C0736h.m285o(i, i2, i3))) {
            C0934d c0934d = this.f2910a;
            if (c0934d != null) {
                if (c0934d.f2915d != m285o) {
                    c0934d.f2915d = m285o;
                    c0934d.m74a();
                }
            } else {
                this.f2911b = m285o;
            }
            return m76s - m285o;
        }
        return 0;
    }
}
