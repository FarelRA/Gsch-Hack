package p076y;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* renamed from: y.f */
/* loaded from: classes.dex */
public final class C0947f {

    /* renamed from: a */
    public ViewParent f2926a;

    /* renamed from: b */
    public ViewParent f2927b;

    /* renamed from: c */
    public final View f2928c;

    /* renamed from: d */
    public boolean f2929d;

    /* renamed from: e */
    public int[] f2930e;

    public C0947f(View view) {
        this.f2928c = view;
    }

    /* renamed from: a */
    public final boolean m54a(float f, float f2, boolean z) {
        ViewParent m50e;
        if (!this.f2929d || (m50e = m50e(0)) == null) {
            return false;
        }
        try {
            return m50e.onNestedFling(this.f2928c, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + m50e + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m53b(float f, float f2) {
        ViewParent m50e;
        if (!this.f2929d || (m50e = m50e(0)) == null) {
            return false;
        }
        try {
            return m50e.onNestedPreFling(this.f2928c, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + m50e + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }

    /* renamed from: c */
    public final boolean m52c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent m50e;
        int i4;
        int i5;
        int[] iArr3;
        if (!this.f2929d || (m50e = m50e(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        View view = this.f2928c;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.f2930e == null) {
                this.f2930e = new int[2];
            }
            iArr3 = this.f2930e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        View view2 = this.f2928c;
        if (m50e instanceof InterfaceC0948g) {
            ((InterfaceC0948g) m50e).mo45c(view2, i, i2, iArr3, i3);
        } else if (i3 == 0) {
            try {
                m50e.onNestedPreScroll(view2, i, i2, iArr3);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + m50e + " does not implement interface method onNestedPreScroll", e);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        if (iArr3[0] == 0 && iArr3[1] == 0) {
            return false;
        }
        return true;
    }

    /* renamed from: d */
    public final boolean m51d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m50e;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.f2929d || (m50e = m50e(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        View view = this.f2928c;
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.f2930e == null) {
                this.f2930e = new int[2];
            }
            iArr3 = this.f2930e;
            iArr3[0] = 0;
            iArr3[1] = 0;
        } else {
            iArr3 = iArr2;
        }
        View view2 = this.f2928c;
        if (m50e instanceof InterfaceC0949h) {
            ((InterfaceC0949h) m50e).mo42d(i4, i5, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i3;
            iArr3[1] = iArr3[1] + i4;
            if (m50e instanceof InterfaceC0948g) {
                ((InterfaceC0948g) m50e).mo44e(view2, i, i2, i3, i4, i5);
            } else if (i5 == 0) {
                try {
                    m50e.onNestedScroll(view2, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + m50e + " does not implement interface method onNestedScroll", e);
                }
            }
        }
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    /* renamed from: e */
    public final ViewParent m50e(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return this.f2927b;
        }
        return this.f2926a;
    }

    /* renamed from: f */
    public final boolean m49f(int i, int i2) {
        boolean z;
        boolean onStartNestedScroll;
        if (m50e(i2) != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        if (this.f2929d) {
            View view = this.f2928c;
            View view2 = view;
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                boolean z2 = parent instanceof InterfaceC0948g;
                if (z2) {
                    onStartNestedScroll = ((InterfaceC0948g) parent).mo43f(view2, view, i, i2);
                } else {
                    if (i2 == 0) {
                        try {
                            onStartNestedScroll = parent.onStartNestedScroll(view2, view, i);
                        } catch (AbstractMethodError e) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e);
                        }
                    }
                    onStartNestedScroll = false;
                }
                if (onStartNestedScroll) {
                    if (i2 != 0) {
                        if (i2 == 1) {
                            this.f2927b = parent;
                        }
                    } else {
                        this.f2926a = parent;
                    }
                    if (z2) {
                        ((InterfaceC0948g) parent).mo47a(view2, view, i, i2);
                    } else if (i2 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view2, view, i);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e2);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    public final void m48g(int i) {
        ViewParent m50e = m50e(i);
        if (m50e != null) {
            boolean z = m50e instanceof InterfaceC0948g;
            View view = this.f2928c;
            if (z) {
                ((InterfaceC0948g) m50e).mo46b(view, i);
            } else if (i == 0) {
                try {
                    m50e.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + m50e + " does not implement interface method onStopNestedScroll", e);
                }
            }
            if (i != 0) {
                if (i == 1) {
                    this.f2927b = null;
                    return;
                }
                return;
            }
            this.f2926a = null;
        }
    }
}
