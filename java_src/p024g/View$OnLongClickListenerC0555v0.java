package p024g;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p076y.C0954m;
import p076y.C0957n;
import p076y.C0960q;
/* renamed from: g.v0 */
/* loaded from: classes.dex */
public final class View$OnLongClickListenerC0555v0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: k */
    public static View$OnLongClickListenerC0555v0 f2072k;

    /* renamed from: l */
    public static View$OnLongClickListenerC0555v0 f2073l;

    /* renamed from: b */
    public final View f2074b;

    /* renamed from: c */
    public final CharSequence f2075c;

    /* renamed from: d */
    public final int f2076d;

    /* renamed from: e */
    public final RunnableC0556a f2077e = new RunnableC0556a();

    /* renamed from: f */
    public final RunnableC0557b f2078f = new RunnableC0557b();

    /* renamed from: g */
    public int f2079g;

    /* renamed from: h */
    public int f2080h;

    /* renamed from: i */
    public C0560w0 f2081i;

    /* renamed from: j */
    public boolean f2082j;

    /* renamed from: g.v0$a */
    /* loaded from: classes.dex */
    public class RunnableC0556a implements Runnable {
        public RunnableC0556a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnLongClickListenerC0555v0.this.m554c(false);
        }
    }

    /* renamed from: g.v0$b */
    /* loaded from: classes.dex */
    public class RunnableC0557b implements Runnable {
        public RunnableC0557b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnLongClickListenerC0555v0.this.m556a();
        }
    }

    public View$OnLongClickListenerC0555v0(View view, CharSequence charSequence) {
        int scaledTouchSlop;
        this.f2074b = view;
        this.f2075c = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = C0957n.f2942a;
        if (Build.VERSION.SDK_INT >= 28) {
            scaledTouchSlop = viewConfiguration.getScaledHoverSlop();
        } else {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop() / 2;
        }
        this.f2076d = scaledTouchSlop;
        this.f2079g = Integer.MAX_VALUE;
        this.f2080h = Integer.MAX_VALUE;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: b */
    public static void m555b(View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v0) {
        View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v02 = f2072k;
        if (view$OnLongClickListenerC0555v02 != null) {
            view$OnLongClickListenerC0555v02.f2074b.removeCallbacks(view$OnLongClickListenerC0555v02.f2077e);
        }
        f2072k = view$OnLongClickListenerC0555v0;
        if (view$OnLongClickListenerC0555v0 != null) {
            view$OnLongClickListenerC0555v0.f2074b.postDelayed(view$OnLongClickListenerC0555v0.f2077e, ViewConfiguration.getLongPressTimeout());
        }
    }

    /* renamed from: a */
    public final void m556a() {
        boolean z;
        View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v0 = f2073l;
        View view = this.f2074b;
        if (view$OnLongClickListenerC0555v0 == this) {
            f2073l = null;
            C0560w0 c0560w0 = this.f2081i;
            if (c0560w0 != null) {
                View view2 = c0560w0.f2099b;
                if (view2.getParent() != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    ((WindowManager) c0560w0.f2098a.getSystemService("window")).removeView(view2);
                }
                this.f2081i = null;
                this.f2079g = Integer.MAX_VALUE;
                this.f2080h = Integer.MAX_VALUE;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f2072k == this) {
            m555b(null);
        }
        view.removeCallbacks(this.f2078f);
    }

    /* renamed from: c */
    public final void m554c(boolean z) {
        int height;
        int i;
        String str;
        int i2;
        String str2;
        long longPressTimeout;
        long j;
        long j2;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        View view = this.f2074b;
        if (view.isAttachedToWindow()) {
            m555b(null);
            View$OnLongClickListenerC0555v0 view$OnLongClickListenerC0555v0 = f2073l;
            if (view$OnLongClickListenerC0555v0 != null) {
                view$OnLongClickListenerC0555v0.m556a();
            }
            f2073l = this;
            this.f2082j = z;
            C0560w0 c0560w0 = new C0560w0(view.getContext());
            this.f2081i = c0560w0;
            int i3 = this.f2079g;
            int i4 = this.f2080h;
            boolean z2 = this.f2082j;
            View view2 = c0560w0.f2099b;
            boolean z3 = view2.getParent() != null;
            Context context = c0560w0.f2098a;
            if (z3) {
                if (view2.getParent() != null) {
                    ((WindowManager) context.getSystemService("window")).removeView(view2);
                }
            }
            c0560w0.f2100c.setText(this.f2075c);
            WindowManager.LayoutParams layoutParams = c0560w0.f2101d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i3 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i4 + dimensionPixelOffset2;
                i = i4 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z2 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    } else if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    } else {
                        context2 = ((ContextWrapper) context2).getBaseContext();
                    }
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                str2 = "window";
            } else {
                Rect rect = c0560w0.f2102e;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    str = "window";
                    i2 = 0;
                } else {
                    Resources resources = context.getResources();
                    str = "window";
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i2 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = c0560w0.f2104g;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = c0560w0.f2103f;
                view.getLocationOnScreen(iArr2);
                int i5 = iArr2[i2] - iArr[i2];
                iArr2[i2] = i5;
                iArr2[1] = iArr2[1] - iArr[1];
                layoutParams.x = (i5 + i3) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, i2);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i6 = iArr2[1];
                int i7 = ((i + i6) - dimensionPixelOffset3) - measuredHeight;
                int i8 = i6 + height + dimensionPixelOffset3;
                if (!z2 ? measuredHeight + i8 <= rect.height() : i7 < 0) {
                    layoutParams.y = i7;
                } else {
                    layoutParams.y = i8;
                }
                str2 = str;
            }
            ((WindowManager) context.getSystemService(str2)).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f2082j) {
                j2 = 2500;
            } else {
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            RunnableC0557b runnableC0557b = this.f2078f;
            view.removeCallbacks(runnableC0557b);
            view.postDelayed(runnableC0557b, j2);
        }
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.f2081i != null && this.f2082j) {
            return false;
        }
        View view2 = this.f2074b;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                this.f2079g = Integer.MAX_VALUE;
                this.f2080h = Integer.MAX_VALUE;
                m556a();
            }
        } else if (view2.isEnabled() && this.f2081i == null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int abs = Math.abs(x - this.f2079g);
            int i = this.f2076d;
            if (abs <= i && Math.abs(y - this.f2080h) <= i) {
                z = false;
            } else {
                this.f2079g = x;
                this.f2080h = y;
                z = true;
            }
            if (z) {
                m555b(this);
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f2079g = view.getWidth() / 2;
        this.f2080h = view.getHeight() / 2;
        m554c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m556a();
    }
}
