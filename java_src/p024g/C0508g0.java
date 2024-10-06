package p024g;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p000a0.C0007f;
import p020f.InterfaceC0470h;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: g.g0 */
/* loaded from: classes.dex */
public class C0508g0 implements InterfaceC0470h {

    /* renamed from: A */
    public static final Method f1922A;

    /* renamed from: B */
    public static final Method f1923B;

    /* renamed from: C */
    public static final Method f1924C;

    /* renamed from: b */
    public final Context f1925b;

    /* renamed from: c */
    public ListAdapter f1926c;

    /* renamed from: d */
    public C0496c0 f1927d;

    /* renamed from: g */
    public int f1930g;

    /* renamed from: h */
    public int f1931h;

    /* renamed from: j */
    public boolean f1933j;

    /* renamed from: k */
    public boolean f1934k;

    /* renamed from: l */
    public boolean f1935l;

    /* renamed from: o */
    public C0510b f1938o;

    /* renamed from: p */
    public View f1939p;

    /* renamed from: q */
    public AdapterView.OnItemClickListener f1940q;

    /* renamed from: v */
    public final Handler f1945v;

    /* renamed from: x */
    public Rect f1947x;

    /* renamed from: y */
    public boolean f1948y;

    /* renamed from: z */
    public final C0535o f1949z;

    /* renamed from: e */
    public final int f1928e = -2;

    /* renamed from: f */
    public int f1929f = -2;

    /* renamed from: i */
    public final int f1932i = 1002;

    /* renamed from: m */
    public int f1936m = 0;

    /* renamed from: n */
    public final int f1937n = Integer.MAX_VALUE;

    /* renamed from: r */
    public final RunnableC0513e f1941r = new RunnableC0513e();

    /* renamed from: s */
    public final View$OnTouchListenerC0512d f1942s = new View$OnTouchListenerC0512d();

    /* renamed from: t */
    public final C0511c f1943t = new C0511c();

    /* renamed from: u */
    public final RunnableC0509a f1944u = new RunnableC0509a();

    /* renamed from: w */
    public final Rect f1946w = new Rect();

    /* renamed from: g.g0$a */
    /* loaded from: classes.dex */
    public class RunnableC0509a implements Runnable {
        public RunnableC0509a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0496c0 c0496c0 = C0508g0.this.f1927d;
            if (c0496c0 != null) {
                c0496c0.setListSelectionHidden(true);
                c0496c0.requestLayout();
            }
        }
    }

    /* renamed from: g.g0$b */
    /* loaded from: classes.dex */
    public class C0510b extends DataSetObserver {
        public C0510b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            C0508g0 c0508g0 = C0508g0.this;
            if (c0508g0.mo620g()) {
                c0508g0.mo560c();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            C0508g0.this.dismiss();
        }
    }

    /* renamed from: g.g0$c */
    /* loaded from: classes.dex */
    public class C0511c implements AbsListView.OnScrollListener {
        public C0511c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            boolean z = true;
            if (i == 1) {
                C0508g0 c0508g0 = C0508g0.this;
                if (c0508g0.f1949z.getInputMethodMode() != 2) {
                    z = false;
                }
                if (!z && c0508g0.f1949z.getContentView() != null) {
                    Handler handler = c0508g0.f1945v;
                    RunnableC0513e runnableC0513e = c0508g0.f1941r;
                    handler.removeCallbacks(runnableC0513e);
                    runnableC0513e.run();
                }
            }
        }
    }

    /* renamed from: g.g0$d */
    /* loaded from: classes.dex */
    public class View$OnTouchListenerC0512d implements View.OnTouchListener {
        public View$OnTouchListenerC0512d() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C0535o c0535o;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            C0508g0 c0508g0 = C0508g0.this;
            if (action == 0 && (c0535o = c0508g0.f1949z) != null && c0535o.isShowing() && x >= 0) {
                C0535o c0535o2 = c0508g0.f1949z;
                if (x < c0535o2.getWidth() && y >= 0 && y < c0535o2.getHeight()) {
                    c0508g0.f1945v.postDelayed(c0508g0.f1941r, 250L);
                    return false;
                }
            }
            if (action == 1) {
                c0508g0.f1945v.removeCallbacks(c0508g0.f1941r);
                return false;
            }
            return false;
        }
    }

    /* renamed from: g.g0$e */
    /* loaded from: classes.dex */
    public class RunnableC0513e implements Runnable {
        public RunnableC0513e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0508g0 c0508g0 = C0508g0.this;
            C0496c0 c0496c0 = c0508g0.f1927d;
            if (c0496c0 != null) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (c0496c0.isAttachedToWindow() && c0508g0.f1927d.getCount() > c0508g0.f1927d.getChildCount() && c0508g0.f1927d.getChildCount() <= c0508g0.f1937n) {
                    c0508g0.f1949z.setInputMethodMode(2);
                    c0508g0.mo560c();
                }
            }
        }
    }

    static {
        try {
            f1922A = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        } catch (NoSuchMethodException unused) {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            f1923B = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
            Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            f1924C = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
        } catch (NoSuchMethodException unused3) {
            Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }

    public C0508g0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1925b = context;
        this.f1945v = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2581u, i, i2);
        this.f1930g = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f1931h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1933j = true;
        }
        obtainStyledAttributes.recycle();
        C0535o c0535o = new C0535o(context, attributeSet, i, i2);
        this.f1949z = c0535o;
        c0535o.setInputMethodMode(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015d  */
    @Override // p020f.InterfaceC0470h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo560c() {
        int i;
        int maxAvailableHeight;
        int i2;
        int paddingBottom;
        C0496c0 c0496c0;
        C0496c0 c0496c02 = this.f1927d;
        C0535o c0535o = this.f1949z;
        Context context = this.f1925b;
        if (c0496c02 == null) {
            C0496c0 mo598d = mo598d(context, !this.f1948y);
            this.f1927d = mo598d;
            mo598d.setAdapter(this.f1926c);
            this.f1927d.setOnItemClickListener(this.f1940q);
            this.f1927d.setFocusable(true);
            this.f1927d.setFocusableInTouchMode(true);
            this.f1927d.setOnItemSelectedListener(new C0506f0(this));
            this.f1927d.setOnScrollListener(this.f1943t);
            c0535o.setContentView(this.f1927d);
        } else {
            ViewGroup viewGroup = (ViewGroup) c0535o.getContentView();
        }
        Drawable background = c0535o.getBackground();
        Rect rect = this.f1946w;
        if (background != null) {
            background.getPadding(rect);
            int i3 = rect.top;
            i = rect.bottom + i3;
            if (!this.f1933j) {
                this.f1931h = -i3;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = c0535o.getInputMethodMode() == 2;
        View view = this.f1939p;
        int i4 = this.f1931h;
        Method method = f1923B;
        if (method != null) {
            try {
                maxAvailableHeight = ((Integer) method.invoke(c0535o, view, Integer.valueOf(i4), Boolean.valueOf(z))).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
            i2 = this.f1928e;
            if (i2 != -1) {
                paddingBottom = maxAvailableHeight + i;
            } else {
                int i5 = this.f1929f;
                int m634a = this.f1927d.m634a(i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), maxAvailableHeight + 0);
                paddingBottom = m634a + (m634a > 0 ? this.f1927d.getPaddingBottom() + this.f1927d.getPaddingTop() + i + 0 : 0);
            }
            boolean z2 = c0535o.getInputMethodMode() != 2;
            C0007f.m1406b(c0535o, this.f1932i);
            if (!c0535o.isShowing()) {
                View view2 = this.f1939p;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (view2.isAttachedToWindow()) {
                    int i6 = this.f1929f;
                    if (i6 == -1) {
                        i6 = -1;
                    } else if (i6 == -2) {
                        i6 = this.f1939p.getWidth();
                    }
                    if (i2 == -1) {
                        i2 = z2 ? paddingBottom : -1;
                        int i7 = this.f1929f;
                        if (z2) {
                            c0535o.setWidth(i7 == -1 ? -1 : 0);
                            c0535o.setHeight(0);
                        } else {
                            c0535o.setWidth(i7 == -1 ? -1 : 0);
                            c0535o.setHeight(-1);
                        }
                    } else if (i2 == -2) {
                        i2 = paddingBottom;
                    }
                    c0535o.setOutsideTouchable(true);
                    View view3 = this.f1939p;
                    int i8 = this.f1930g;
                    int i9 = this.f1931h;
                    if (i6 < 0) {
                        i6 = -1;
                    }
                    c0535o.update(view3, i8, i9, i6, i2 < 0 ? -1 : i2);
                    return;
                }
                return;
            }
            int i10 = this.f1929f;
            if (i10 == -1) {
                i10 = -1;
            } else if (i10 == -2) {
                i10 = this.f1939p.getWidth();
            }
            if (i2 == -1) {
                i2 = -1;
            } else if (i2 == -2) {
                i2 = paddingBottom;
            }
            c0535o.setWidth(i10);
            c0535o.setHeight(i2);
            Method method2 = f1922A;
            if (method2 != null) {
                try {
                    method2.invoke(c0535o, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
            c0535o.setOutsideTouchable(true);
            c0535o.setTouchInterceptor(this.f1942s);
            if (this.f1935l) {
                C0007f.m1407a(c0535o, this.f1934k);
            }
            Method method3 = f1924C;
            if (method3 != null) {
                try {
                    method3.invoke(c0535o, this.f1947x);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
            c0535o.showAsDropDown(this.f1939p, this.f1930g, this.f1931h, this.f1936m);
            this.f1927d.setSelection(-1);
            if ((!this.f1948y || this.f1927d.isInTouchMode()) && (c0496c0 = this.f1927d) != null) {
                c0496c0.setListSelectionHidden(true);
                c0496c0.requestLayout();
            }
            if (this.f1948y) {
                return;
            }
            this.f1945v.post(this.f1944u);
            return;
        }
        maxAvailableHeight = c0535o.getMaxAvailableHeight(view, i4);
        i2 = this.f1928e;
        if (i2 != -1) {
        }
        if (c0535o.getInputMethodMode() != 2) {
        }
        C0007f.m1406b(c0535o, this.f1932i);
        if (!c0535o.isShowing()) {
        }
    }

    /* renamed from: d */
    public C0496c0 mo598d(Context context, boolean z) {
        return new C0496c0(context, z);
    }

    @Override // p020f.InterfaceC0470h
    public final void dismiss() {
        C0535o c0535o = this.f1949z;
        c0535o.dismiss();
        c0535o.setContentView(null);
        this.f1927d = null;
        this.f1945v.removeCallbacks(this.f1941r);
    }

    /* renamed from: e */
    public void mo559e(ListAdapter listAdapter) {
        C0510b c0510b = this.f1938o;
        if (c0510b == null) {
            this.f1938o = new C0510b();
        } else {
            ListAdapter listAdapter2 = this.f1926c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c0510b);
            }
        }
        this.f1926c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1938o);
        }
        C0496c0 c0496c0 = this.f1927d;
        if (c0496c0 != null) {
            c0496c0.setAdapter(this.f1926c);
        }
    }

    /* renamed from: f */
    public final void m621f(int i) {
        Drawable background = this.f1949z.getBackground();
        if (background != null) {
            Rect rect = this.f1946w;
            background.getPadding(rect);
            this.f1929f = rect.left + rect.right + i;
            return;
        }
        this.f1929f = i;
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: g */
    public final boolean mo620g() {
        return this.f1949z.isShowing();
    }

    @Override // p020f.InterfaceC0470h
    /* renamed from: h */
    public final C0496c0 mo619h() {
        return this.f1927d;
    }
}
