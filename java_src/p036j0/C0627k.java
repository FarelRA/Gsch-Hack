package p036j0;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p036j0.AbstractC0619g;
import p039k.C0655b;
import p039k.C0658e;
import p044m.C0696a;
/* renamed from: j0.k */
/* loaded from: classes.dex */
public final class C0627k {

    /* renamed from: a */
    public static final ThreadLocal<WeakReference<C0655b<ViewGroup, ArrayList<AbstractC0619g>>>> f2208a;

    /* renamed from: b */
    public static final ArrayList<ViewGroup> f2209b;

    /* renamed from: j0.k$a */
    /* loaded from: classes.dex */
    public static class ViewTreeObserver$OnPreDrawListenerC0628a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: b */
        public final AbstractC0619g f2210b;

        /* renamed from: c */
        public final ViewGroup f2211c;

        /* renamed from: j0.k$a$a */
        /* loaded from: classes.dex */
        public class C0629a extends C0626j {

            /* renamed from: a */
            public final /* synthetic */ C0655b f2212a;

            public C0629a(C0655b c0655b) {
                this.f2212a = c0655b;
            }

            @Override // p036j0.AbstractC0619g.InterfaceC0623d
            /* renamed from: c */
            public final void mo442c(AbstractC0619g abstractC0619g) {
                ((ArrayList) this.f2212a.getOrDefault(ViewTreeObserver$OnPreDrawListenerC0628a.this.f2211c, null)).remove(abstractC0619g);
            }
        }

        public ViewTreeObserver$OnPreDrawListenerC0628a(ViewGroup viewGroup, AbstractC0619g abstractC0619g) {
            this.f2210b = abstractC0619g;
            this.f2211c = viewGroup;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x01f6  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0243  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x01f0 A[EDGE_INSN: B:145:0x01f0->B:97:0x01f0 ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x008c  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean onPreDraw() {
            ArrayList arrayList;
            AbstractC0619g abstractC0619g;
            C0655b c0655b;
            C0655b c0655b2;
            int i;
            int[] iArr;
            int i2;
            int i3;
            int i4;
            AbstractC0619g.C0621b orDefault;
            View view;
            AbstractC0619g abstractC0619g2;
            C0634n c0634n;
            View view2;
            View view3;
            View view4;
            AbstractC0619g abstractC0619g3;
            ViewGroup viewGroup = this.f2211c;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            int i5 = 1;
            if (C0627k.f2209b.remove(viewGroup)) {
                C0655b<ViewGroup, ArrayList<AbstractC0619g>> m477a = C0627k.m477a();
                Long l = null;
                ArrayList<AbstractC0619g> orDefault2 = m477a.getOrDefault(viewGroup, null);
                if (orDefault2 == null) {
                    orDefault2 = new ArrayList<>();
                    m477a.put(viewGroup, orDefault2);
                } else if (orDefault2.size() > 0) {
                    arrayList = new ArrayList(orDefault2);
                    abstractC0619g = this.f2210b;
                    orDefault2.add(abstractC0619g);
                    abstractC0619g.mo469a(new C0629a(m477a));
                    abstractC0619g.m486h(viewGroup, false);
                    if (arrayList != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((AbstractC0619g) it.next()).mo460x(viewGroup);
                        }
                    }
                    abstractC0619g.f2191k = new ArrayList<>();
                    abstractC0619g.f2192l = new ArrayList<>();
                    C0696a c0696a = abstractC0619g.f2187g;
                    C0696a c0696a2 = abstractC0619g.f2188h;
                    c0655b = new C0655b((C0655b) c0696a.f2439a);
                    c0655b2 = new C0655b((C0655b) c0696a2.f2439a);
                    i = 0;
                    while (true) {
                        iArr = abstractC0619g.f2190j;
                        if (i < iArr.length) {
                            break;
                        }
                        int i6 = iArr[i];
                        if (i6 == i5) {
                            abstractC0619g2 = abstractC0619g;
                            int i7 = c0655b.f2306c;
                            while (true) {
                                i7--;
                                if (i7 >= 0) {
                                    View view5 = (View) c0655b.m399h(i7);
                                    if (view5 != null && abstractC0619g2.m480s(view5) && (c0634n = (C0634n) c0655b2.remove(view5)) != null && (view2 = c0634n.f2225b) != null && abstractC0619g2.m480s(view2)) {
                                        abstractC0619g2.f2191k.add((C0634n) c0655b.m398i(i7));
                                        abstractC0619g2.f2192l.add(c0634n);
                                    }
                                }
                            }
                        } else if (i6 == 2) {
                            abstractC0619g2 = abstractC0619g;
                            C0655b c0655b3 = (C0655b) c0696a.f2442d;
                            C0655b c0655b4 = (C0655b) c0696a2.f2442d;
                            int i8 = c0655b3.f2306c;
                            for (int i9 = 0; i9 < i8; i9++) {
                                View view6 = (View) c0655b3.m397j(i9);
                                if (view6 != null && abstractC0619g2.m480s(view6) && (view3 = (View) c0655b4.getOrDefault(c0655b3.m399h(i9), null)) != null && abstractC0619g2.m480s(view3)) {
                                    C0634n c0634n2 = (C0634n) c0655b.getOrDefault(view6, null);
                                    C0634n c0634n3 = (C0634n) c0655b2.getOrDefault(view3, null);
                                    if (c0634n2 != null && c0634n3 != null) {
                                        abstractC0619g2.f2191k.add(c0634n2);
                                        abstractC0619g2.f2192l.add(c0634n3);
                                        c0655b.remove(view6);
                                        c0655b2.remove(view3);
                                    }
                                }
                            }
                        } else if (i6 != 3) {
                            if (i6 == 4) {
                                C0658e c0658e = (C0658e) c0696a.f2441c;
                                C0658e c0658e2 = (C0658e) c0696a2.f2441c;
                                if (c0658e.f2276a) {
                                    c0658e.m425d();
                                }
                                int i10 = c0658e.f2279d;
                                int i11 = 0;
                                while (i11 < i10) {
                                    View view7 = (View) c0658e.m422g(i11);
                                    if (view7 == null || !abstractC0619g.m480s(view7)) {
                                        abstractC0619g3 = abstractC0619g;
                                    } else {
                                        if (c0658e.f2276a) {
                                            c0658e.m425d();
                                        }
                                        View view8 = (View) c0658e2.m424e(c0658e.f2277b[i11], l);
                                        abstractC0619g3 = abstractC0619g;
                                        if (view8 != null && abstractC0619g3.m480s(view8)) {
                                            C0634n c0634n4 = (C0634n) c0655b.getOrDefault(view7, l);
                                            C0634n c0634n5 = (C0634n) c0655b2.getOrDefault(view8, l);
                                            if (c0634n4 != null && c0634n5 != null) {
                                                abstractC0619g3.f2191k.add(c0634n4);
                                                abstractC0619g3.f2192l.add(c0634n5);
                                                c0655b.remove(view7);
                                                c0655b2.remove(view8);
                                            }
                                        }
                                    }
                                    i11++;
                                    abstractC0619g = abstractC0619g3;
                                    l = null;
                                }
                            }
                            abstractC0619g2 = abstractC0619g;
                        } else {
                            abstractC0619g2 = abstractC0619g;
                            SparseArray sparseArray = (SparseArray) c0696a.f2440b;
                            SparseArray sparseArray2 = (SparseArray) c0696a2.f2440b;
                            int size = sparseArray.size();
                            for (int i12 = 0; i12 < size; i12++) {
                                View view9 = (View) sparseArray.valueAt(i12);
                                if (view9 != null && abstractC0619g2.m480s(view9) && (view4 = (View) sparseArray2.get(sparseArray.keyAt(i12))) != null && abstractC0619g2.m480s(view4)) {
                                    C0634n c0634n6 = (C0634n) c0655b.getOrDefault(view9, null);
                                    C0634n c0634n7 = (C0634n) c0655b2.getOrDefault(view4, null);
                                    if (c0634n6 != null && c0634n7 != null) {
                                        abstractC0619g2.f2191k.add(c0634n6);
                                        abstractC0619g2.f2192l.add(c0634n7);
                                        c0655b.remove(view9);
                                        c0655b2.remove(view4);
                                    }
                                }
                            }
                        }
                        i++;
                        abstractC0619g = abstractC0619g2;
                        l = null;
                        i5 = 1;
                    }
                    AbstractC0619g abstractC0619g4 = abstractC0619g;
                    for (i2 = 0; i2 < c0655b.f2306c; i2++) {
                        C0634n c0634n8 = (C0634n) c0655b.m397j(i2);
                        if (abstractC0619g4.m480s(c0634n8.f2225b)) {
                            abstractC0619g4.f2191k.add(c0634n8);
                            abstractC0619g4.f2192l.add(null);
                        }
                    }
                    for (i3 = 0; i3 < c0655b2.f2306c; i3++) {
                        C0634n c0634n9 = (C0634n) c0655b2.m397j(i3);
                        if (abstractC0619g4.m480s(c0634n9.f2225b)) {
                            abstractC0619g4.f2192l.add(c0634n9);
                            abstractC0619g4.f2191k.add(null);
                        }
                    }
                    C0655b<Animator, AbstractC0619g.C0621b> m482o = AbstractC0619g.m482o();
                    int i13 = m482o.f2306c;
                    C0641s c0641s = C0637q.f2227a;
                    WindowId windowId = viewGroup.getWindowId();
                    for (i4 = i13 - 1; i4 >= 0; i4--) {
                        Animator m399h = m482o.m399h(i4);
                        if (m399h != null && (orDefault = m482o.getOrDefault(m399h, null)) != null && (view = orDefault.f2200a) != null) {
                            InterfaceC0648x interfaceC0648x = orDefault.f2203d;
                            if ((interfaceC0648x instanceof C0647w) && ((C0647w) interfaceC0648x).f2257a.equals(windowId)) {
                                C0634n m481q = abstractC0619g4.m481q(view, true);
                                C0634n m483n = abstractC0619g4.m483n(view, true);
                                if (!(m481q == null && m483n == null) && orDefault.f2204e.mo445r(orDefault.f2202c, m483n)) {
                                    if (m399h.isRunning() || m399h.isStarted()) {
                                        m399h.cancel();
                                    } else {
                                        m482o.remove(m399h);
                                    }
                                }
                            }
                        }
                    }
                    abstractC0619g4.mo464l(viewGroup, abstractC0619g4.f2187g, abstractC0619g4.f2188h, abstractC0619g4.f2191k, abstractC0619g4.f2192l);
                    abstractC0619g4.mo459y();
                    return true;
                }
                arrayList = null;
                abstractC0619g = this.f2210b;
                orDefault2.add(abstractC0619g);
                abstractC0619g.mo469a(new C0629a(m477a));
                abstractC0619g.m486h(viewGroup, false);
                if (arrayList != null) {
                }
                abstractC0619g.f2191k = new ArrayList<>();
                abstractC0619g.f2192l = new ArrayList<>();
                C0696a c0696a3 = abstractC0619g.f2187g;
                C0696a c0696a22 = abstractC0619g.f2188h;
                c0655b = new C0655b((C0655b) c0696a3.f2439a);
                c0655b2 = new C0655b((C0655b) c0696a22.f2439a);
                i = 0;
                while (true) {
                    iArr = abstractC0619g.f2190j;
                    if (i < iArr.length) {
                    }
                    i++;
                    abstractC0619g = abstractC0619g2;
                    l = null;
                    i5 = 1;
                }
                AbstractC0619g abstractC0619g42 = abstractC0619g;
                while (i2 < c0655b.f2306c) {
                }
                while (i3 < c0655b2.f2306c) {
                }
                C0655b<Animator, AbstractC0619g.C0621b> m482o2 = AbstractC0619g.m482o();
                int i132 = m482o2.f2306c;
                C0641s c0641s2 = C0637q.f2227a;
                WindowId windowId2 = viewGroup.getWindowId();
                while (i4 >= 0) {
                }
                abstractC0619g42.mo464l(viewGroup, abstractC0619g42.f2187g, abstractC0619g42.f2188h, abstractC0619g42.f2191k, abstractC0619g42.f2192l);
                abstractC0619g42.mo459y();
                return true;
            }
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.f2211c;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            C0627k.f2209b.remove(viewGroup);
            ArrayList<AbstractC0619g> orDefault = C0627k.m477a().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<AbstractC0619g> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().mo460x(viewGroup);
                }
            }
            this.f2210b.m485i(true);
        }
    }

    static {
        new C0601a();
        f2208a = new ThreadLocal<>();
        f2209b = new ArrayList<>();
    }

    /* renamed from: a */
    public static C0655b<ViewGroup, ArrayList<AbstractC0619g>> m477a() {
        C0655b<ViewGroup, ArrayList<AbstractC0619g>> c0655b;
        ThreadLocal<WeakReference<C0655b<ViewGroup, ArrayList<AbstractC0619g>>>> threadLocal = f2208a;
        WeakReference<C0655b<ViewGroup, ArrayList<AbstractC0619g>>> weakReference = threadLocal.get();
        if (weakReference == null || (c0655b = weakReference.get()) == null) {
            C0655b<ViewGroup, ArrayList<AbstractC0619g>> c0655b2 = new C0655b<>();
            threadLocal.set(new WeakReference<>(c0655b2));
            return c0655b2;
        }
        return c0655b;
    }
}
