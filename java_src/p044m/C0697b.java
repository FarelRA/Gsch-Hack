package p044m;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewParent;
/* renamed from: m.b */
/* loaded from: classes.dex */
public final class C0697b {

    /* renamed from: a */
    public static final ThreadLocal<Matrix> f2443a = new ThreadLocal<>();

    /* renamed from: b */
    public static final ThreadLocal<RectF> f2444b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m345a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m345a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
