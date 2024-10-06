package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import p013d0.C0369a;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0138c<V> {

    /* renamed from: a */
    public C0369a f1190a;

    /* renamed from: b */
    public boolean f1191b;

    /* renamed from: c */
    public int f1192c = 2;

    /* renamed from: d */
    public final float f1193d = 0.5f;

    /* renamed from: e */
    public float f1194e = 0.0f;

    /* renamed from: f */
    public float f1195f = 0.5f;

    /* renamed from: g */
    public final C0332a f1196g = new C0332a();

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes.dex */
    public class C0332a extends C0369a.AbstractC0372c {

        /* renamed from: a */
        public int f1197a;

        /* renamed from: b */
        public int f1198b = -1;

        public C0332a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            if (r0 != false) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
            r0 = r3.f1197a;
            r4 = r4.getWidth() + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
            r0 = r3.f1197a - r4.getWidth();
            r4 = r3.f1197a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
            if (r0 != false) goto L11;
         */
        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int mo872a(View view, int i) {
            boolean z;
            int width;
            int width2;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (view.getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            int i2 = SwipeDismissBehavior.this.f1192c;
            if (i2 != 0) {
                if (i2 != 1) {
                    width = this.f1197a - view.getWidth();
                    width2 = view.getWidth() + this.f1197a;
                }
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: b */
        public final int mo871b(View view, int i) {
            return view.getTop();
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: c */
        public final int mo870c(View view) {
            return view.getWidth();
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: e */
        public final void mo868e(View view, int i) {
            this.f1198b = i;
            this.f1197a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: f */
        public final void mo867f(int i) {
            SwipeDismissBehavior.this.getClass();
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: g */
        public final void mo866g(View view, int i, int i2) {
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float width = (view.getWidth() * swipeDismissBehavior.f1194e) + this.f1197a;
            float width2 = (view.getWidth() * swipeDismissBehavior.f1195f) + this.f1197a;
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f - width) / (width2 - width))), 1.0f));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
            if (java.lang.Math.abs(r9.getLeft() - r8.f1197a) >= java.lang.Math.round(r9.getWidth() * r1.f1193d)) goto L31;
         */
        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void mo865h(View view, float f, float f2) {
            boolean z;
            int i;
            boolean z2;
            this.f1198b = -1;
            int width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            boolean z3 = true;
            int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
            if (i2 != 0) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (view.getLayoutDirection() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i3 = swipeDismissBehavior.f1192c;
                if (i3 != 2) {
                    z = i3 == 0 ? false : false;
                }
                z = true;
            }
            if (z) {
                int left = view.getLeft();
                int i4 = this.f1197a;
                if (left < i4) {
                    i = i4 - width;
                } else {
                    i = i4 + width;
                }
            } else {
                i = this.f1197a;
                z3 = false;
            }
            if (swipeDismissBehavior.f1190a.m875q(i, view.getTop())) {
                RunnableC0333b runnableC0333b = new RunnableC0333b(view, z3);
                WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                view.postOnAnimation(runnableC0333b);
            }
        }

        @Override // p013d0.C0369a.AbstractC0372c
        /* renamed from: i */
        public final boolean mo864i(View view, int i) {
            return this.f1198b == -1 && SwipeDismissBehavior.this.mo937s(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes.dex */
    public class RunnableC0333b implements Runnable {

        /* renamed from: b */
        public final View f1200b;

        public RunnableC0333b(View view, boolean z) {
            this.f1200b = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0369a c0369a = SwipeDismissBehavior.this.f1190a;
            if (c0369a != null && c0369a.m885g()) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                this.f1200b.postOnAnimation(this);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: e */
    public boolean mo89e(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f1191b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.f1191b = false;
            }
        } else {
            z = coordinatorLayout.m1255o(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f1191b = z;
        }
        if (!z) {
            return false;
        }
        if (this.f1190a == null) {
            this.f1190a = new C0369a(coordinatorLayout.getContext(), coordinatorLayout, this.f1196g);
        }
        return this.f1190a.m874r(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: r */
    public final boolean mo88r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0369a c0369a = this.f1190a;
        if (c0369a != null) {
            c0369a.m881k(motionEvent);
            return true;
        }
        return false;
    }

    /* renamed from: s */
    public boolean mo937s(View view) {
        return true;
    }
}
