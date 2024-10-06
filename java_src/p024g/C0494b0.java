package p024g;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import p012d.C0366c;
import p061s.InterfaceC0865c;
/* renamed from: g.b0 */
/* loaded from: classes.dex */
public final class C0494b0 {
    static {
        new Rect();
        try {
            Class.forName("android.graphics.Insets");
        } catch (ClassNotFoundException unused) {
        }
    }

    /* renamed from: a */
    public static boolean m637a(Drawable drawable) {
        Drawable drawable2;
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                for (Drawable drawable3 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                    if (!m637a(drawable3)) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }
        if (drawable instanceof InterfaceC0865c) {
            drawable2 = ((InterfaceC0865c) drawable).mo137a();
        } else if (drawable instanceof C0366c) {
            return m637a(((C0366c) drawable).f1421b);
        } else {
            if (drawable instanceof ScaleDrawable) {
                drawable2 = ((ScaleDrawable) drawable).getDrawable();
            } else {
                return true;
            }
        }
        return m637a(drawable2);
    }

    /* renamed from: b */
    public static void m636b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            int[] state = drawable.getState();
            if (state != null && state.length != 0) {
                drawable.setState(C0532m0.f2023f);
            } else {
                drawable.setState(C0532m0.f2022e);
            }
            drawable.setState(state);
        }
    }

    /* renamed from: c */
    public static PorterDuff.Mode m635c(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i != 9) {
                    switch (i) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
