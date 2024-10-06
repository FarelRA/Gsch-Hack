package p004b;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p024g.C0564y0;
import p076y.C0954m;
import p076y.C0960q;
import p076y.C0963t;
import p076y.InterfaceC0951j;
/* renamed from: b.k */
/* loaded from: classes.dex */
public final class C0277k implements InterfaceC0951j {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C0266j f1039a;

    public C0277k(LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j) {
        this.f1039a = layoutInflater$Factory2C0266j;
    }

    @Override // p076y.InterfaceC0951j
    /* renamed from: a */
    public final C0963t mo41a(View view, C0963t c0963t) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        Object obj = c0963t.f2947a;
        int systemWindowInsetTop = ((WindowInsets) obj).getSystemWindowInsetTop();
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = this.f1039a;
        ActionBarContextView actionBarContextView = layoutInflater$Factory2C0266j.f997n;
        int i3 = 0;
        if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutInflater$Factory2C0266j.f997n.getLayoutParams();
            boolean z3 = true;
            if (layoutInflater$Factory2C0266j.f997n.isShown()) {
                if (layoutInflater$Factory2C0266j.f982O == null) {
                    layoutInflater$Factory2C0266j.f982O = new Rect();
                    layoutInflater$Factory2C0266j.f983P = new Rect();
                }
                Rect rect = layoutInflater$Factory2C0266j.f982O;
                Rect rect2 = layoutInflater$Factory2C0266j.f983P;
                rect.set(0, systemWindowInsetTop, 0, 0);
                ViewGroup viewGroup = layoutInflater$Factory2C0266j.f1002s;
                Method method = C0564y0.f2121a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                    }
                }
                if (rect2.top == 0) {
                    i2 = systemWindowInsetTop;
                } else {
                    i2 = 0;
                }
                if (marginLayoutParams.topMargin != i2) {
                    marginLayoutParams.topMargin = systemWindowInsetTop;
                    View view2 = layoutInflater$Factory2C0266j.f1004u;
                    if (view2 == null) {
                        Context context = layoutInflater$Factory2C0266j.f985b;
                        View view3 = new View(context);
                        layoutInflater$Factory2C0266j.f1004u = view3;
                        view3.setBackgroundColor(context.getResources().getColor(R.color.abc_input_method_navigation_guard));
                        layoutInflater$Factory2C0266j.f1002s.addView(layoutInflater$Factory2C0266j.f1004u, -1, new ViewGroup.LayoutParams(-1, systemWindowInsetTop));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                        if (layoutParams.height != systemWindowInsetTop) {
                            layoutParams.height = systemWindowInsetTop;
                            layoutInflater$Factory2C0266j.f1004u.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (layoutInflater$Factory2C0266j.f1004u == null) {
                    z3 = false;
                }
                if (!layoutInflater$Factory2C0266j.f1009z && z3) {
                    i = 0;
                } else {
                    i = systemWindowInsetTop;
                }
                boolean z4 = z3;
                z3 = z2;
                z = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                i = systemWindowInsetTop;
                z = false;
            } else {
                i = systemWindowInsetTop;
                z = false;
                z3 = false;
            }
            if (z3) {
                layoutInflater$Factory2C0266j.f997n.setLayoutParams(marginLayoutParams);
            }
        } else {
            i = systemWindowInsetTop;
            z = false;
        }
        View view4 = layoutInflater$Factory2C0266j.f1004u;
        if (view4 != null) {
            if (!z) {
                i3 = 8;
            }
            view4.setVisibility(i3);
        }
        if (systemWindowInsetTop != i) {
            c0963t = new C0963t(((WindowInsets) obj).replaceSystemWindowInsets(((WindowInsets) obj).getSystemWindowInsetLeft(), i, ((WindowInsets) obj).getSystemWindowInsetRight(), ((WindowInsets) obj).getSystemWindowInsetBottom()));
        }
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        WindowInsets windowInsets = (WindowInsets) c0963t.f2947a;
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (!onApplyWindowInsets.equals(windowInsets)) {
            windowInsets = new WindowInsets(onApplyWindowInsets);
        }
        Objects.requireNonNull(windowInsets);
        return new C0963t(windowInsets);
    }
}
