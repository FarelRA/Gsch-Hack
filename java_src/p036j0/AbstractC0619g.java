package p036j0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import p028h.AbstractC0574c;
import p039k.C0655b;
import p039k.C0658e;
import p044m.C0696a;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: j0.g */
/* loaded from: classes.dex */
public abstract class AbstractC0619g implements Cloneable {

    /* renamed from: t */
    public static final int[] f2178t = {2, 1, 3, 4};

    /* renamed from: u */
    public static final C0620a f2179u = new C0620a();

    /* renamed from: v */
    public static final ThreadLocal<C0655b<Animator, C0621b>> f2180v = new ThreadLocal<>();

    /* renamed from: k */
    public ArrayList<C0634n> f2191k;

    /* renamed from: l */
    public ArrayList<C0634n> f2192l;

    /* renamed from: a */
    public final String f2181a = getClass().getName();

    /* renamed from: b */
    public long f2182b = -1;

    /* renamed from: c */
    public long f2183c = -1;

    /* renamed from: d */
    public TimeInterpolator f2184d = null;

    /* renamed from: e */
    public final ArrayList<Integer> f2185e = new ArrayList<>();

    /* renamed from: f */
    public final ArrayList<View> f2186f = new ArrayList<>();

    /* renamed from: g */
    public C0696a f2187g = new C0696a(1);

    /* renamed from: h */
    public C0696a f2188h = new C0696a(1);

    /* renamed from: i */
    public C0630l f2189i = null;

    /* renamed from: j */
    public final int[] f2190j = f2178t;

    /* renamed from: m */
    public final ArrayList<Animator> f2193m = new ArrayList<>();

    /* renamed from: n */
    public int f2194n = 0;

    /* renamed from: o */
    public boolean f2195o = false;

    /* renamed from: p */
    public boolean f2196p = false;

    /* renamed from: q */
    public ArrayList<InterfaceC0623d> f2197q = null;

    /* renamed from: r */
    public ArrayList<Animator> f2198r = new ArrayList<>();

    /* renamed from: s */
    public AbstractC0574c f2199s = f2179u;

    /* renamed from: j0.g$a */
    /* loaded from: classes.dex */
    public static class C0620a extends AbstractC0574c {
        @Override // p028h.AbstractC0574c
        /* renamed from: b */
        public final Path mo478b(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: j0.g$b */
    /* loaded from: classes.dex */
    public static class C0621b {

        /* renamed from: a */
        public final View f2200a;

        /* renamed from: b */
        public final String f2201b;

        /* renamed from: c */
        public final C0634n f2202c;

        /* renamed from: d */
        public final InterfaceC0648x f2203d;

        /* renamed from: e */
        public final AbstractC0619g f2204e;

        public C0621b(View view, String str, AbstractC0619g abstractC0619g, C0647w c0647w, C0634n c0634n) {
            this.f2200a = view;
            this.f2201b = str;
            this.f2202c = c0634n;
            this.f2203d = c0647w;
            this.f2204e = abstractC0619g;
        }
    }

    /* renamed from: j0.g$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0622c {
    }

    /* renamed from: j0.g$d */
    /* loaded from: classes.dex */
    public interface InterfaceC0623d {
        /* renamed from: a */
        void mo444a();

        /* renamed from: b */
        void mo443b();

        /* renamed from: c */
        void mo442c(AbstractC0619g abstractC0619g);

        /* renamed from: d */
        void mo441d();
    }

    /* renamed from: c */
    public static void m488c(C0696a c0696a, View view, C0634n c0634n) {
        ((C0655b) c0696a.f2439a).put(view, c0634n);
        int id = view.getId();
        if (id >= 0) {
            if (((SparseArray) c0696a.f2440b).indexOfKey(id) >= 0) {
                ((SparseArray) c0696a.f2440b).put(id, null);
            } else {
                ((SparseArray) c0696a.f2440b).put(id, view);
            }
        }
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (((C0655b) c0696a.f2442d).containsKey(transitionName)) {
                ((C0655b) c0696a.f2442d).put(transitionName, null);
            } else {
                ((C0655b) c0696a.f2442d).put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                C0658e c0658e = (C0658e) c0696a.f2441c;
                if (c0658e.f2276a) {
                    c0658e.m425d();
                }
                if (C0736h.m293g(c0658e.f2277b, c0658e.f2279d, itemIdAtPosition) >= 0) {
                    View view2 = (View) ((C0658e) c0696a.f2441c).m424e(itemIdAtPosition, null);
                    if (view2 != null) {
                        view2.setHasTransientState(false);
                        ((C0658e) c0696a.f2441c).m423f(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                ((C0658e) c0696a.f2441c).m423f(itemIdAtPosition, view);
            }
        }
    }

    /* renamed from: o */
    public static C0655b<Animator, C0621b> m482o() {
        ThreadLocal<C0655b<Animator, C0621b>> threadLocal = f2180v;
        C0655b<Animator, C0621b> c0655b = threadLocal.get();
        if (c0655b == null) {
            C0655b<Animator, C0621b> c0655b2 = new C0655b<>();
            threadLocal.set(c0655b2);
            return c0655b2;
        }
        return c0655b;
    }

    /* renamed from: t */
    public static boolean m479t(C0634n c0634n, C0634n c0634n2, String str) {
        Object obj = c0634n.f2224a.get(str);
        Object obj2 = c0634n2.f2224a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    /* renamed from: A */
    public void mo476A(AbstractC0622c abstractC0622c) {
    }

    /* renamed from: B */
    public void mo475B(TimeInterpolator timeInterpolator) {
        this.f2184d = timeInterpolator;
    }

    /* renamed from: C */
    public void mo474C(AbstractC0574c abstractC0574c) {
        if (abstractC0574c == null) {
            abstractC0574c = f2179u;
        }
        this.f2199s = abstractC0574c;
    }

    /* renamed from: D */
    public void mo473D() {
    }

    /* renamed from: E */
    public void mo472E(long j) {
        this.f2182b = j;
    }

    /* renamed from: F */
    public final void m489F() {
        if (this.f2194n == 0) {
            ArrayList<InterfaceC0623d> arrayList = this.f2197q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2197q.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((InterfaceC0623d) arrayList2.get(i)).mo444a();
                }
            }
            this.f2196p = false;
        }
        this.f2194n++;
    }

    /* renamed from: G */
    public String mo471G(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f2183c != -1) {
            str2 = str2 + "dur(" + this.f2183c + ") ";
        }
        if (this.f2182b != -1) {
            str2 = str2 + "dly(" + this.f2182b + ") ";
        }
        if (this.f2184d != null) {
            str2 = str2 + "interp(" + this.f2184d + ") ";
        }
        ArrayList<Integer> arrayList = this.f2185e;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f2186f;
        if (size > 0 || arrayList2.size() > 0) {
            String str3 = str2 + "tgts(";
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + arrayList.get(i);
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + arrayList2.get(i2);
                }
            }
            return str3 + ")";
        }
        return str2;
    }

    /* renamed from: a */
    public void mo469a(InterfaceC0623d interfaceC0623d) {
        if (this.f2197q == null) {
            this.f2197q = new ArrayList<>();
        }
        this.f2197q.add(interfaceC0623d);
    }

    /* renamed from: b */
    public void mo468b(View view) {
        this.f2186f.add(view);
    }

    /* renamed from: d */
    public abstract void mo448d(C0634n c0634n);

    /* renamed from: e */
    public final void m487e(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C0634n c0634n = new C0634n();
            c0634n.f2225b = view;
            if (z) {
                mo466g(c0634n);
            } else {
                mo448d(c0634n);
            }
            c0634n.f2226c.add(this);
            mo467f(c0634n);
            m488c(z ? this.f2187g : this.f2188h, view, c0634n);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m487e(viewGroup.getChildAt(i), z);
            }
        }
    }

    /* renamed from: f */
    public void mo467f(C0634n c0634n) {
    }

    /* renamed from: g */
    public abstract void mo466g(C0634n c0634n);

    /* renamed from: h */
    public final void m486h(ViewGroup viewGroup, boolean z) {
        m485i(z);
        ArrayList<Integer> arrayList = this.f2185e;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f2186f;
        if (size <= 0 && arrayList2.size() <= 0) {
            m487e(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(arrayList.get(i).intValue());
            if (findViewById != null) {
                C0634n c0634n = new C0634n();
                c0634n.f2225b = findViewById;
                if (z) {
                    mo466g(c0634n);
                } else {
                    mo448d(c0634n);
                }
                c0634n.f2226c.add(this);
                mo467f(c0634n);
                m488c(z ? this.f2187g : this.f2188h, findViewById, c0634n);
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = arrayList2.get(i2);
            C0634n c0634n2 = new C0634n();
            c0634n2.f2225b = view;
            if (z) {
                mo466g(c0634n2);
            } else {
                mo448d(c0634n2);
            }
            c0634n2.f2226c.add(this);
            mo467f(c0634n2);
            m488c(z ? this.f2187g : this.f2188h, view, c0634n2);
        }
    }

    /* renamed from: i */
    public final void m485i(boolean z) {
        C0696a c0696a;
        if (z) {
            ((C0655b) this.f2187g.f2439a).clear();
            ((SparseArray) this.f2187g.f2440b).clear();
            c0696a = this.f2187g;
        } else {
            ((C0655b) this.f2188h.f2439a).clear();
            ((SparseArray) this.f2188h.f2440b).clear();
            c0696a = this.f2188h;
        }
        ((C0658e) c0696a.f2441c).m427b();
    }

    @Override // 
    /* renamed from: j */
    public AbstractC0619g clone() {
        try {
            AbstractC0619g abstractC0619g = (AbstractC0619g) super.clone();
            abstractC0619g.f2198r = new ArrayList<>();
            abstractC0619g.f2187g = new C0696a(1);
            abstractC0619g.f2188h = new C0696a(1);
            abstractC0619g.f2191k = null;
            abstractC0619g.f2192l = null;
            return abstractC0619g;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* renamed from: k */
    public Animator mo447k(ViewGroup viewGroup, C0634n c0634n, C0634n c0634n2) {
        return null;
    }

    /* renamed from: l */
    public void mo464l(ViewGroup viewGroup, C0696a c0696a, C0696a c0696a2, ArrayList<C0634n> arrayList, ArrayList<C0634n> arrayList2) {
        boolean z;
        Animator mo447k;
        View view;
        Animator animator;
        C0634n c0634n;
        Animator animator2;
        C0634n c0634n2;
        ViewGroup viewGroup2 = viewGroup;
        C0655b<Animator, C0621b> m482o = m482o();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C0634n c0634n3 = arrayList.get(i);
            C0634n c0634n4 = arrayList2.get(i);
            if (c0634n3 != null && !c0634n3.f2226c.contains(this)) {
                c0634n3 = null;
            }
            if (c0634n4 != null && !c0634n4.f2226c.contains(this)) {
                c0634n4 = null;
            }
            if (c0634n3 != null || c0634n4 != null) {
                if (c0634n3 != null && c0634n4 != null && !mo445r(c0634n3, c0634n4)) {
                    z = false;
                } else {
                    z = true;
                }
                if (z && (mo447k = mo447k(viewGroup2, c0634n3, c0634n4)) != null) {
                    if (c0634n4 != null) {
                        View view2 = c0634n4.f2225b;
                        String[] mo446p = mo446p();
                        if (view2 != null && mo446p != null && mo446p.length > 0) {
                            c0634n2 = new C0634n();
                            c0634n2.f2225b = view2;
                            C0634n c0634n5 = (C0634n) ((C0655b) c0696a2.f2439a).getOrDefault(view2, null);
                            if (c0634n5 != null) {
                                int i2 = 0;
                                while (i2 < mo446p.length) {
                                    HashMap hashMap = c0634n2.f2224a;
                                    Animator animator3 = mo447k;
                                    String str = mo446p[i2];
                                    hashMap.put(str, c0634n5.f2224a.get(str));
                                    i2++;
                                    mo447k = animator3;
                                    mo446p = mo446p;
                                }
                            }
                            Animator animator4 = mo447k;
                            int i3 = m482o.f2306c;
                            int i4 = 0;
                            while (true) {
                                if (i4 < i3) {
                                    C0621b orDefault = m482o.getOrDefault(m482o.m399h(i4), null);
                                    if (orDefault.f2202c != null && orDefault.f2200a == view2 && orDefault.f2201b.equals(this.f2181a) && orDefault.f2202c.equals(c0634n2)) {
                                        animator2 = null;
                                        break;
                                    }
                                    i4++;
                                } else {
                                    animator2 = animator4;
                                    break;
                                }
                            }
                        } else {
                            animator2 = mo447k;
                            c0634n2 = null;
                        }
                        view = view2;
                        animator = animator2;
                        c0634n = c0634n2;
                    } else {
                        view = c0634n3.f2225b;
                        animator = mo447k;
                        c0634n = null;
                    }
                    if (animator != null) {
                        String str2 = this.f2181a;
                        C0641s c0641s = C0637q.f2227a;
                        m482o.put(animator, new C0621b(view, str2, this, new C0647w(viewGroup2), c0634n));
                        this.f2198r.add(animator);
                    }
                    i++;
                    viewGroup2 = viewGroup;
                }
            }
            i++;
            viewGroup2 = viewGroup;
        }
        for (int i5 = 0; i5 < sparseIntArray.size(); i5++) {
            Animator animator5 = this.f2198r.get(sparseIntArray.keyAt(i5));
            animator5.setStartDelay(animator5.getStartDelay() + (sparseIntArray.valueAt(i5) - Long.MAX_VALUE));
        }
    }

    /* renamed from: m */
    public final void m484m() {
        int i = this.f2194n - 1;
        this.f2194n = i;
        if (i == 0) {
            ArrayList<InterfaceC0623d> arrayList = this.f2197q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2197q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((InterfaceC0623d) arrayList2.get(i2)).mo442c(this);
                }
            }
            int i3 = 0;
            while (true) {
                C0658e c0658e = (C0658e) this.f2187g.f2441c;
                if (c0658e.f2276a) {
                    c0658e.m425d();
                }
                if (i3 >= c0658e.f2279d) {
                    break;
                }
                View view = (View) ((C0658e) this.f2187g.f2441c).m422g(i3);
                if (view != null) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    view.setHasTransientState(false);
                }
                i3++;
            }
            int i4 = 0;
            while (true) {
                C0658e c0658e2 = (C0658e) this.f2188h.f2441c;
                if (c0658e2.f2276a) {
                    c0658e2.m425d();
                }
                if (i4 < c0658e2.f2279d) {
                    View view2 = (View) ((C0658e) this.f2188h.f2441c).m422g(i4);
                    if (view2 != null) {
                        WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                        view2.setHasTransientState(false);
                    }
                    i4++;
                } else {
                    this.f2196p = true;
                    return;
                }
            }
        }
    }

    /* renamed from: n */
    public final C0634n m483n(View view, boolean z) {
        C0630l c0630l = this.f2189i;
        if (c0630l != null) {
            return c0630l.m483n(view, z);
        }
        ArrayList<C0634n> arrayList = z ? this.f2191k : this.f2192l;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            C0634n c0634n = arrayList.get(i);
            if (c0634n == null) {
                return null;
            }
            if (c0634n.f2225b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (z ? this.f2192l : this.f2191k).get(i);
        }
        return null;
    }

    /* renamed from: p */
    public String[] mo446p() {
        return null;
    }

    /* renamed from: q */
    public final C0634n m481q(View view, boolean z) {
        C0696a c0696a;
        C0630l c0630l = this.f2189i;
        if (c0630l != null) {
            return c0630l.m481q(view, z);
        }
        if (z) {
            c0696a = this.f2187g;
        } else {
            c0696a = this.f2188h;
        }
        return (C0634n) ((C0655b) c0696a.f2439a).getOrDefault(view, null);
    }

    /* renamed from: r */
    public boolean mo445r(C0634n c0634n, C0634n c0634n2) {
        if (c0634n == null || c0634n2 == null) {
            return false;
        }
        String[] mo446p = mo446p();
        if (mo446p == null) {
            for (String str : c0634n.f2224a.keySet()) {
                if (m479t(c0634n, c0634n2, str)) {
                }
            }
            return false;
        }
        for (String str2 : mo446p) {
            if (!m479t(c0634n, c0634n2, str2)) {
            }
        }
        return false;
        return true;
    }

    /* renamed from: s */
    public final boolean m480s(View view) {
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f2185e;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f2186f;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final String toString() {
        return mo471G("");
    }

    /* renamed from: u */
    public void mo463u(View view) {
        int i;
        if (!this.f2196p) {
            C0655b<Animator, C0621b> m482o = m482o();
            int i2 = m482o.f2306c;
            C0641s c0641s = C0637q.f2227a;
            WindowId windowId = view.getWindowId();
            int i3 = i2 - 1;
            while (true) {
                i = 0;
                if (i3 < 0) {
                    break;
                }
                C0621b m397j = m482o.m397j(i3);
                if (m397j.f2200a != null) {
                    InterfaceC0648x interfaceC0648x = m397j.f2203d;
                    if ((interfaceC0648x instanceof C0647w) && ((C0647w) interfaceC0648x).f2257a.equals(windowId)) {
                        i = 1;
                    }
                    if (i != 0) {
                        m482o.m399h(i3).pause();
                    }
                }
                i3--;
            }
            ArrayList<InterfaceC0623d> arrayList = this.f2197q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2197q.clone();
                int size = arrayList2.size();
                while (i < size) {
                    ((InterfaceC0623d) arrayList2.get(i)).mo443b();
                    i++;
                }
            }
            this.f2195o = true;
        }
    }

    /* renamed from: v */
    public void mo462v(InterfaceC0623d interfaceC0623d) {
        ArrayList<InterfaceC0623d> arrayList = this.f2197q;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(interfaceC0623d);
        if (this.f2197q.size() == 0) {
            this.f2197q = null;
        }
    }

    /* renamed from: w */
    public void mo461w(View view) {
        this.f2186f.remove(view);
    }

    /* renamed from: x */
    public void mo460x(ViewGroup viewGroup) {
        boolean z;
        if (this.f2195o) {
            if (!this.f2196p) {
                C0655b<Animator, C0621b> m482o = m482o();
                int i = m482o.f2306c;
                C0641s c0641s = C0637q.f2227a;
                WindowId windowId = viewGroup.getWindowId();
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    C0621b m397j = m482o.m397j(i2);
                    if (m397j.f2200a != null) {
                        InterfaceC0648x interfaceC0648x = m397j.f2203d;
                        if ((interfaceC0648x instanceof C0647w) && ((C0647w) interfaceC0648x).f2257a.equals(windowId)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            m482o.m399h(i2).resume();
                        }
                    }
                }
                ArrayList<InterfaceC0623d> arrayList = this.f2197q;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f2197q.clone();
                    int size = arrayList2.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ((InterfaceC0623d) arrayList2.get(i3)).mo441d();
                    }
                }
            }
            this.f2195o = false;
        }
    }

    /* renamed from: y */
    public void mo459y() {
        m489F();
        C0655b<Animator, C0621b> m482o = m482o();
        Iterator<Animator> it = this.f2198r.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m482o.containsKey(next)) {
                m489F();
                if (next != null) {
                    next.addListener(new C0624h(this, m482o));
                    long j = this.f2183c;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.f2182b;
                    if (j2 >= 0) {
                        next.setStartDelay(j2);
                    }
                    TimeInterpolator timeInterpolator = this.f2184d;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new C0625i(this));
                    next.start();
                }
            }
        }
        this.f2198r.clear();
        m484m();
    }

    /* renamed from: z */
    public void mo458z(long j) {
        this.f2183c = j;
    }
}
