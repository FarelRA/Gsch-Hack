package p024g;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import p020f.InterfaceC0470h;
/* renamed from: g.e0 */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC0502e0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: b */
    public final float f1907b;

    /* renamed from: c */
    public final int f1908c;

    /* renamed from: d */
    public final int f1909d;

    /* renamed from: e */
    public final View f1910e;

    /* renamed from: f */
    public RunnableC0503a f1911f;

    /* renamed from: g */
    public RunnableC0504b f1912g;

    /* renamed from: h */
    public boolean f1913h;

    /* renamed from: i */
    public int f1914i;

    /* renamed from: j */
    public final int[] f1915j = new int[2];

    /* renamed from: g.e0$a */
    /* loaded from: classes.dex */
    public class RunnableC0503a implements Runnable {
        public RunnableC0503a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0502e0.this.f1910e.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: g.e0$b */
    /* loaded from: classes.dex */
    public class RunnableC0504b implements Runnable {
        public RunnableC0504b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractView$OnTouchListenerC0502e0 abstractView$OnTouchListenerC0502e0 = AbstractView$OnTouchListenerC0502e0.this;
            abstractView$OnTouchListenerC0502e0.m623a();
            View view = abstractView$OnTouchListenerC0502e0.f1910e;
            if (view.isEnabled() && !view.isLongClickable() && abstractView$OnTouchListenerC0502e0.mo563c()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
                abstractView$OnTouchListenerC0502e0.f1913h = true;
            }
        }
    }

    public AbstractView$OnTouchListenerC0502e0(View view) {
        this.f1910e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1907b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1908c = tapTimeout;
        this.f1909d = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    /* renamed from: a */
    public final void m623a() {
        RunnableC0504b runnableC0504b = this.f1912g;
        View view = this.f1910e;
        if (runnableC0504b != null) {
            view.removeCallbacks(runnableC0504b);
        }
        RunnableC0503a runnableC0503a = this.f1911f;
        if (runnableC0503a != null) {
            view.removeCallbacks(runnableC0503a);
        }
    }

    /* renamed from: b */
    public abstract InterfaceC0470h mo564b();

    /* renamed from: c */
    public abstract boolean mo563c();

    /* renamed from: d */
    public boolean mo622d() {
        InterfaceC0470h mo564b = mo564b();
        if (mo564b == null || !mo564b.mo620g()) {
            return true;
        }
        mo564b.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
        if (r4 != 3) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x010c  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        C0496c0 mo619h;
        boolean z5;
        boolean z6 = this.f1913h;
        View view2 = this.f1910e;
        if (z6) {
            InterfaceC0470h mo564b = mo564b();
            if (mo564b != null && mo564b.mo620g() && (mo619h = mo564b.mo619h()) != null && mo619h.isShown()) {
                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f1915j;
                view2.getLocationOnScreen(iArr);
                obtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                mo619h.getLocationOnScreen(iArr);
                obtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean m633b = mo619h.m633b(obtainNoHistory, this.f1914i);
                obtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (m633b && z5) {
                    z4 = true;
                    if (z4 && mo622d()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                }
            }
            z4 = false;
            if (z4) {
            }
            z2 = true;
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 != 0) {
                    if (actionMasked2 != 1) {
                        if (actionMasked2 == 2) {
                            int findPointerIndex = motionEvent.findPointerIndex(this.f1914i);
                            if (findPointerIndex >= 0) {
                                float x = motionEvent.getX(findPointerIndex);
                                float y = motionEvent.getY(findPointerIndex);
                                float f = this.f1907b;
                                float f2 = -f;
                                if (x >= f2 && y >= f2 && x < (view2.getRight() - view2.getLeft()) + f && y < (view2.getBottom() - view2.getTop()) + f) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (!z3) {
                                    m623a();
                                    view2.getParent().requestDisallowInterceptTouchEvent(true);
                                    z = true;
                                    if (!z && mo563c()) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        long uptimeMillis = SystemClock.uptimeMillis();
                                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                                        view2.onTouchEvent(obtain);
                                        obtain.recycle();
                                    }
                                }
                            }
                        }
                    }
                    m623a();
                } else {
                    this.f1914i = motionEvent.getPointerId(0);
                    if (this.f1911f == null) {
                        this.f1911f = new RunnableC0503a();
                    }
                    view2.postDelayed(this.f1911f, this.f1908c);
                    if (this.f1912g == null) {
                        this.f1912g = new RunnableC0504b();
                    }
                    view2.postDelayed(this.f1912g, this.f1909d);
                }
            }
            z = false;
            if (!z) {
            }
            z2 = false;
            if (z2) {
            }
        }
        this.f1913h = z2;
        if (!z2 && !z6) {
            return false;
        }
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f1913h = false;
        this.f1914i = -1;
        RunnableC0503a runnableC0503a = this.f1911f;
        if (runnableC0503a != null) {
            this.f1910e.removeCallbacks(runnableC0503a);
        }
    }
}
