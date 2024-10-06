package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.C0212k;
import p076y.C0939a;
import p079z.C0971d;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes.dex */
public final class C0244n extends C0939a {

    /* renamed from: d */
    public final C0212k f945d;

    /* renamed from: androidx.recyclerview.widget.n$a */
    /* loaded from: classes.dex */
    public static class C0245a extends C0939a {

        /* renamed from: d */
        public final C0244n f946d;

        public C0245a(C0244n c0244n) {
            this.f946d = c0244n;
        }

        @Override // p076y.C0939a
        /* renamed from: b */
        public final void mo68b(View view, C0971d c0971d) {
            boolean z;
            this.f2918a.onInitializeAccessibilityNodeInfo(view, c0971d.f2978a);
            C0244n c0244n = this.f946d;
            C0212k c0212k = c0244n.f945d;
            boolean z2 = true;
            if (c0212k.f874p && !c0212k.f881w) {
                if (c0212k.f856d.f756b.size() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    z2 = false;
                }
            }
            if (!z2) {
                C0212k c0212k2 = c0244n.f945d;
                if (c0212k2.getLayoutManager() != null) {
                    c0212k2.getLayoutManager().getClass();
                    C0212k.m1132m(view);
                }
            }
        }

        @Override // p076y.C0939a
        /* renamed from: d */
        public final boolean mo66d(View view, int i, Bundle bundle) {
            boolean z;
            boolean mo66d = super.mo66d(view, i, bundle);
            boolean z2 = true;
            if (mo66d) {
                return true;
            }
            C0244n c0244n = this.f946d;
            C0212k c0212k = c0244n.f945d;
            if (c0212k.f874p && !c0212k.f881w) {
                if (c0212k.f856d.f756b.size() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    z2 = false;
                }
            }
            if (!z2) {
                C0212k c0212k2 = c0244n.f945d;
                if (c0212k2.getLayoutManager() != null) {
                    C0212k.C0234p c0234p = c0212k2.getLayoutManager().f892b.f852b;
                }
            }
            return false;
        }
    }

    public C0244n(C0212k c0212k) {
        this.f945d = c0212k;
        new C0245a(this);
    }

    @Override // p076y.C0939a
    /* renamed from: a */
    public final void mo69a(View view, AccessibilityEvent accessibilityEvent) {
        boolean z;
        super.mo69a(view, accessibilityEvent);
        accessibilityEvent.setClassName(C0212k.class.getName());
        if (view instanceof C0212k) {
            C0212k c0212k = this.f945d;
            boolean z2 = true;
            if (c0212k.f874p && !c0212k.f881w) {
                if (c0212k.f856d.f756b.size() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    z2 = false;
                }
            }
            if (!z2) {
                C0212k c0212k2 = (C0212k) view;
                if (c0212k2.getLayoutManager() != null) {
                    c0212k2.getLayoutManager().mo1114B(accessibilityEvent);
                }
            }
        }
    }

    @Override // p076y.C0939a
    /* renamed from: b */
    public final void mo68b(View view, C0971d c0971d) {
        boolean z;
        boolean z2;
        View.AccessibilityDelegate accessibilityDelegate = this.f2918a;
        AccessibilityNodeInfo accessibilityNodeInfo = c0971d.f2978a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(C0212k.class.getName());
        C0212k c0212k = this.f945d;
        if (c0212k.f874p && !c0212k.f881w) {
            if (c0212k.f856d.f756b.size() > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                z = false;
                if (z && c0212k.getLayoutManager() != null) {
                    C0212k.AbstractC0224j layoutManager = c0212k.getLayoutManager();
                    C0212k c0212k2 = layoutManager.f892b;
                    C0212k.C0234p c0234p = c0212k2.f852b;
                    if (c0212k2.canScrollVertically(-1) || layoutManager.f892b.canScrollHorizontally(-1)) {
                        accessibilityNodeInfo.addAction(8192);
                        accessibilityNodeInfo.setScrollable(true);
                    }
                    if (layoutManager.f892b.canScrollVertically(1) || layoutManager.f892b.canScrollHorizontally(1)) {
                        accessibilityNodeInfo.addAction(4096);
                        accessibilityNodeInfo.setScrollable(true);
                    }
                    C0212k.C0238s c0238s = c0212k2.f850W;
                    accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.mo1081y(c0234p, c0238s), layoutManager.mo1089q(c0234p, c0238s), false, 0));
                    return;
                }
            }
        }
        z = true;
        if (z) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0099 A[ADDED_TO_REGION] */
    @Override // p076y.C0939a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo66d(View view, int i, Bundle bundle) {
        boolean z;
        int i2;
        int m1086t;
        boolean z2;
        if (super.mo66d(view, i, bundle)) {
            return true;
        }
        C0212k c0212k = this.f945d;
        if (c0212k.f874p && !c0212k.f881w) {
            if (c0212k.f856d.f756b.size() > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                z = false;
                if (!z || c0212k.getLayoutManager() == null) {
                    return false;
                }
                C0212k.AbstractC0224j layoutManager = c0212k.getLayoutManager();
                C0212k c0212k2 = layoutManager.f892b;
                C0212k.C0234p c0234p = c0212k2.f852b;
                if (i != 4096) {
                    if (i != 8192) {
                        i2 = 0;
                    } else {
                        if (c0212k2.canScrollVertically(-1)) {
                            i2 = -((layoutManager.f897g - layoutManager.m1084v()) - layoutManager.m1087s());
                        } else {
                            i2 = 0;
                        }
                        if (layoutManager.f892b.canScrollHorizontally(-1)) {
                            m1086t = -((layoutManager.f896f - layoutManager.m1086t()) - layoutManager.m1085u());
                            if (i2 != 0 && m1086t == 0) {
                                return false;
                            }
                            layoutManager.f892b.m1123v(m1086t, i2);
                            return true;
                        }
                    }
                    m1086t = 0;
                    if (i2 != 0) {
                    }
                    layoutManager.f892b.m1123v(m1086t, i2);
                    return true;
                }
                if (c0212k2.canScrollVertically(1)) {
                    i2 = (layoutManager.f897g - layoutManager.m1084v()) - layoutManager.m1087s();
                } else {
                    i2 = 0;
                }
                if (layoutManager.f892b.canScrollHorizontally(1)) {
                    m1086t = (layoutManager.f896f - layoutManager.m1086t()) - layoutManager.m1085u();
                    if (i2 != 0) {
                    }
                    layoutManager.f892b.m1123v(m1086t, i2);
                    return true;
                }
                m1086t = 0;
                if (i2 != 0) {
                }
                layoutManager.f892b.m1123v(m1086t, i2);
                return true;
            }
        }
        z = true;
        if (!z) {
        }
        return false;
    }
}
