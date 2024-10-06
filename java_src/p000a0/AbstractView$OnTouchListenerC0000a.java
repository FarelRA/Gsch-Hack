package p000a0;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: a0.a */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC0000a implements View.OnTouchListener {

    /* renamed from: r */
    public static final int f0r = ViewConfiguration.getTapTimeout();

    /* renamed from: b */
    public final C0001a f1b;

    /* renamed from: c */
    public final AccelerateInterpolator f2c;

    /* renamed from: d */
    public final View f3d;

    /* renamed from: e */
    public RunnableC0002b f4e;

    /* renamed from: f */
    public final float[] f5f;

    /* renamed from: g */
    public final float[] f6g;

    /* renamed from: h */
    public int f7h;

    /* renamed from: i */
    public int f8i;

    /* renamed from: j */
    public final float[] f9j;

    /* renamed from: k */
    public final float[] f10k;

    /* renamed from: l */
    public final float[] f11l;

    /* renamed from: m */
    public boolean f12m;

    /* renamed from: n */
    public boolean f13n;

    /* renamed from: o */
    public boolean f14o;

    /* renamed from: p */
    public boolean f15p;

    /* renamed from: q */
    public boolean f16q;

    /* renamed from: a0.a$a */
    /* loaded from: classes.dex */
    public static class C0001a {

        /* renamed from: a */
        public int f17a;

        /* renamed from: b */
        public int f18b;

        /* renamed from: c */
        public float f19c;

        /* renamed from: d */
        public float f20d;

        /* renamed from: h */
        public float f24h;

        /* renamed from: i */
        public int f25i;

        /* renamed from: e */
        public long f21e = Long.MIN_VALUE;

        /* renamed from: g */
        public long f23g = -1;

        /* renamed from: f */
        public long f22f = 0;

        /* renamed from: a */
        public final float m1438a(long j) {
            long j2 = this.f21e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f23g;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0000a.m1442b(((float) (j - j2)) / this.f17a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f24h;
            return (AbstractView$OnTouchListenerC0000a.m1442b(((float) (j - j3)) / this.f25i, 0.0f, 1.0f) * f) + (1.0f - f);
        }
    }

    /* renamed from: a0.a$b */
    /* loaded from: classes.dex */
    public class RunnableC0002b implements Runnable {
        public RunnableC0002b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            AbstractView$OnTouchListenerC0000a abstractView$OnTouchListenerC0000a = AbstractView$OnTouchListenerC0000a.this;
            if (!abstractView$OnTouchListenerC0000a.f15p) {
                return;
            }
            boolean z2 = abstractView$OnTouchListenerC0000a.f13n;
            C0001a c0001a = abstractView$OnTouchListenerC0000a.f1b;
            if (z2) {
                abstractView$OnTouchListenerC0000a.f13n = false;
                c0001a.getClass();
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                c0001a.f21e = currentAnimationTimeMillis;
                c0001a.f23g = -1L;
                c0001a.f22f = currentAnimationTimeMillis;
                c0001a.f24h = 0.5f;
            }
            if (c0001a.f23g > 0 && AnimationUtils.currentAnimationTimeMillis() > c0001a.f23g + c0001a.f25i) {
                z = true;
            } else {
                z = false;
            }
            if (!z && abstractView$OnTouchListenerC0000a.m1439e()) {
                boolean z3 = abstractView$OnTouchListenerC0000a.f14o;
                View view = abstractView$OnTouchListenerC0000a.f3d;
                if (z3) {
                    abstractView$OnTouchListenerC0000a.f14o = false;
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                }
                if (c0001a.f22f != 0) {
                    long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float m1438a = c0001a.m1438a(currentAnimationTimeMillis2);
                    c0001a.f22f = currentAnimationTimeMillis2;
                    ListView listView = ((C0006e) abstractView$OnTouchListenerC0000a).f30s;
                    listView.scrollListBy((int) (((float) (currentAnimationTimeMillis2 - c0001a.f22f)) * ((m1438a * 4.0f) + ((-4.0f) * m1438a * m1438a)) * c0001a.f20d));
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    view.postOnAnimation(this);
                    return;
                }
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            abstractView$OnTouchListenerC0000a.f15p = false;
        }
    }

    public AbstractView$OnTouchListenerC0000a(View view) {
        C0001a c0001a = new C0001a();
        this.f1b = c0001a;
        this.f2c = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f5f = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f6g = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f9j = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f10k = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f11l = fArr5;
        this.f3d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.f7h = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f8i = f0r;
        c0001a.f17a = 500;
        c0001a.f18b = 500;
    }

    /* renamed from: b */
    public static float m1442b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float m1443a(int i, float f, float f2, float f3) {
        float f4;
        float interpolation;
        int i2;
        float m1442b = m1442b(this.f5f[i] * f2, 0.0f, this.f6g[i]);
        float m1441c = m1441c(f2 - f, m1442b) - m1441c(f, m1442b);
        AccelerateInterpolator accelerateInterpolator = this.f2c;
        if (m1441c < 0.0f) {
            interpolation = -accelerateInterpolator.getInterpolation(-m1441c);
        } else if (m1441c > 0.0f) {
            interpolation = accelerateInterpolator.getInterpolation(m1441c);
        } else {
            f4 = 0.0f;
            i2 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
            if (i2 != 0) {
                return 0.0f;
            }
            float f5 = this.f9j[i];
            float f6 = this.f10k[i];
            float f7 = this.f11l[i];
            float f8 = f5 * f3;
            if (i2 > 0) {
                return m1442b(f4 * f8, f6, f7);
            }
            return -m1442b((-f4) * f8, f6, f7);
        }
        f4 = m1442b(interpolation, -1.0f, 1.0f);
        i2 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
        if (i2 != 0) {
        }
    }

    /* renamed from: c */
    public final float m1441c(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f7h;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.f15p && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    /* renamed from: d */
    public final void m1440d() {
        int i = 0;
        if (this.f13n) {
            this.f15p = false;
            return;
        }
        C0001a c0001a = this.f1b;
        c0001a.getClass();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - c0001a.f21e);
        int i3 = c0001a.f18b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        c0001a.f25i = i;
        c0001a.f24h = c0001a.m1438a(currentAnimationTimeMillis);
        c0001a.f23g = currentAnimationTimeMillis;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m1439e() {
        boolean z;
        C0001a c0001a = this.f1b;
        float f = c0001a.f20d;
        int abs = (int) (f / Math.abs(f));
        float f2 = c0001a.f19c;
        int abs2 = (int) (f2 / Math.abs(f2));
        if (abs == 0) {
            return false;
        }
        ListView listView = ((C0006e) this).f30s;
        int count = listView.getCount();
        if (count != 0) {
            int childCount = listView.getChildCount();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs <= 0 ? !(abs >= 0 || (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0)) : !(i >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight())) {
                z = true;
                if (z) {
                    return false;
                }
                return true;
            }
        }
        z = false;
        if (z) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        if (!this.f16q) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                }
            }
            m1440d();
            return false;
        }
        this.f14o = true;
        this.f12m = false;
        View view2 = this.f3d;
        float m1443a = m1443a(0, motionEvent.getX(), view.getWidth(), view2.getWidth());
        float m1443a2 = m1443a(1, motionEvent.getY(), view.getHeight(), view2.getHeight());
        C0001a c0001a = this.f1b;
        c0001a.f19c = m1443a;
        c0001a.f20d = m1443a2;
        if (!this.f15p && m1439e()) {
            if (this.f4e == null) {
                this.f4e = new RunnableC0002b();
            }
            this.f15p = true;
            this.f13n = true;
            if (!this.f12m && (i = this.f8i) > 0) {
                RunnableC0002b runnableC0002b = this.f4e;
                long j = i;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                view2.postOnAnimationDelayed(runnableC0002b, j);
            } else {
                this.f4e.run();
            }
            this.f12m = true;
        }
        return false;
    }
}
