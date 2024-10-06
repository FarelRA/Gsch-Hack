package p017e0;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.WeakHashMap;
import p017e0.C0407a;
import p017e0.ComponentCallbacksC0411c;
import p036j0.C0615e;
import p039k.C0655b;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: e0.o */
/* loaded from: classes.dex */
public final class C0435o {

    /* renamed from: a */
    public static final int[] f1703a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};

    /* renamed from: b */
    public static final C0437p f1704b = new C0437p();

    /* renamed from: c */
    public static final AbstractC0443t f1705c;

    /* renamed from: e0.o$a */
    /* loaded from: classes.dex */
    public static class C0436a {

        /* renamed from: a */
        public ComponentCallbacksC0411c f1706a;

        /* renamed from: b */
        public boolean f1707b;

        /* renamed from: c */
        public C0407a f1708c;

        /* renamed from: d */
        public ComponentCallbacksC0411c f1709d;

        /* renamed from: e */
        public boolean f1710e;
    }

    static {
        AbstractC0443t abstractC0443t;
        try {
            abstractC0443t = (AbstractC0443t) C0615e.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            abstractC0443t = null;
        }
        f1705c = abstractC0443t;
    }

    /* renamed from: a */
    public static void m735a(ArrayList<View> arrayList, C0655b<String, View> c0655b, Collection<String> collection) {
        int i = c0655b.f2306c;
        while (true) {
            i--;
            if (i >= 0) {
                View m397j = c0655b.m397j(i);
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (collection.contains(m397j.getTransitionName())) {
                    arrayList.add(m397j);
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0039, code lost:
        if (r6.f1585k != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0060, code lost:
        if (r6.f1561A != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0062, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0076, code lost:
        if (r6.f1561A == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0078, code lost:
        r12 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00c6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m734b(C0407a c0407a, C0407a.C0408a c0408a, SparseArray<C0436a> sparseArray, boolean z, boolean z2) {
        int i;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        C0436a c0436a;
        ComponentCallbacksC0411c componentCallbacksC0411c = c0408a.f1542b;
        if (componentCallbacksC0411c == null || (i = componentCallbacksC0411c.f1599y) == 0) {
            return;
        }
        if (z) {
            i2 = f1703a[c0408a.f1541a];
        } else {
            i2 = c0408a.f1541a;
        }
        boolean z8 = false;
        if (i2 != 1) {
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        if (i2 != 6) {
                            if (i2 != 7) {
                                z4 = false;
                                z8 = false;
                                z7 = z4;
                                z5 = false;
                                z6 = false;
                                C0436a c0436a2 = sparseArray.get(i);
                                if (z8) {
                                    if (c0436a2 == null) {
                                        C0436a c0436a3 = new C0436a();
                                        sparseArray.put(i, c0436a3);
                                        c0436a2 = c0436a3;
                                    }
                                    c0436a2.f1706a = componentCallbacksC0411c;
                                    c0436a2.f1707b = z;
                                    c0436a2.f1708c = c0407a;
                                }
                                c0436a = c0436a2;
                                if (!z2 && z7) {
                                    if (c0436a != null && c0436a.f1709d == componentCallbacksC0411c) {
                                        c0436a.f1709d = null;
                                    }
                                    if (componentCallbacksC0411c.f1576b < 1) {
                                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = c0407a.f1523a;
                                        if (layoutInflater$Factory2C0421g.f1640k >= 1 && !c0407a.f1540r) {
                                            layoutInflater$Factory2C0421g.m778K(componentCallbacksC0411c);
                                            layoutInflater$Factory2C0421g.m775N(componentCallbacksC0411c, 1, 0, 0, false);
                                        }
                                    }
                                }
                                if (z5 && (c0436a == null || c0436a.f1709d == null)) {
                                    if (c0436a == null) {
                                        C0436a c0436a4 = new C0436a();
                                        sparseArray.put(i, c0436a4);
                                        c0436a = c0436a4;
                                    }
                                    c0436a.f1709d = componentCallbacksC0411c;
                                    c0436a.f1710e = z;
                                    c0436a.getClass();
                                }
                                if (!z2 && z6 && c0436a != null && c0436a.f1706a == componentCallbacksC0411c) {
                                    c0436a.f1706a = null;
                                    return;
                                }
                                return;
                            }
                        }
                    } else if (z2) {
                        if (componentCallbacksC0411c.f1572L) {
                            if (!componentCallbacksC0411c.f1561A) {
                            }
                        }
                        z3 = false;
                        z8 = z3;
                        z4 = true;
                        z7 = z4;
                        z5 = false;
                        z6 = false;
                        C0436a c0436a22 = sparseArray.get(i);
                        if (z8) {
                        }
                        c0436a = c0436a22;
                        if (!z2) {
                            if (c0436a != null) {
                                c0436a.f1709d = null;
                            }
                            if (componentCallbacksC0411c.f1576b < 1) {
                            }
                        }
                        if (z5) {
                            if (c0436a == null) {
                            }
                            c0436a.f1709d = componentCallbacksC0411c;
                            c0436a.f1710e = z;
                            c0436a.getClass();
                        }
                        if (!z2) {
                            return;
                        }
                        return;
                    } else {
                        z3 = componentCallbacksC0411c.f1561A;
                        z8 = z3;
                        z4 = true;
                        z7 = z4;
                        z5 = false;
                        z6 = false;
                        C0436a c0436a222 = sparseArray.get(i);
                        if (z8) {
                        }
                        c0436a = c0436a222;
                        if (!z2) {
                        }
                        if (z5) {
                        }
                        if (!z2) {
                        }
                    }
                } else {
                    z5 = !z2 ? false : false;
                    z7 = false;
                    z6 = true;
                    C0436a c0436a2222 = sparseArray.get(i);
                    if (z8) {
                    }
                    c0436a = c0436a2222;
                    if (!z2) {
                    }
                    if (z5) {
                    }
                    if (!z2) {
                    }
                }
            }
            boolean z9 = componentCallbacksC0411c.f1585k;
            if (!z2) {
                if (z9) {
                }
            }
            z7 = false;
            z6 = true;
            C0436a c0436a22222 = sparseArray.get(i);
            if (z8) {
            }
            c0436a = c0436a22222;
            if (!z2) {
            }
            if (z5) {
            }
            if (!z2) {
            }
        }
        if (z2) {
            z3 = false;
            componentCallbacksC0411c.getClass();
            z8 = z3;
            z4 = true;
            z7 = z4;
            z5 = false;
            z6 = false;
            C0436a c0436a222222 = sparseArray.get(i);
            if (z8) {
            }
            c0436a = c0436a222222;
            if (!z2) {
            }
            if (z5) {
            }
            if (!z2) {
            }
        } else {
            if (!componentCallbacksC0411c.f1585k) {
            }
            z3 = false;
            z8 = z3;
            z4 = true;
            z7 = z4;
            z5 = false;
            z6 = false;
            C0436a c0436a2222222 = sparseArray.get(i);
            if (z8) {
            }
            c0436a = c0436a2222222;
            if (!z2) {
            }
            if (z5) {
            }
            if (!z2) {
            }
        }
    }

    /* renamed from: c */
    public static C0655b<String, View> m733c(AbstractC0443t abstractC0443t, C0655b<String, String> c0655b, Object obj, C0436a c0436a) {
        c0436a.f1706a.getClass();
        c0655b.isEmpty();
        c0655b.clear();
        return null;
    }

    /* renamed from: d */
    public static C0655b m732d(C0655b c0655b, Object obj, C0436a c0436a) {
        if (!c0655b.isEmpty() && obj != null) {
            ComponentCallbacksC0411c componentCallbacksC0411c = c0436a.f1709d;
            C0655b c0655b2 = new C0655b();
            componentCallbacksC0411c.getClass();
            AbstractC0443t.m725f(c0655b2, null);
            throw null;
        }
        c0655b.clear();
        return null;
    }

    /* renamed from: e */
    public static AbstractC0443t m731e(ComponentCallbacksC0411c componentCallbacksC0411c, ComponentCallbacksC0411c componentCallbacksC0411c2) {
        boolean z;
        Object obj;
        Object obj2;
        Object obj3;
        ArrayList arrayList = new ArrayList();
        if (componentCallbacksC0411c != null) {
            ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
            if (c0413b == null || (obj2 = c0413b.f1608g) == ComponentCallbacksC0411c.f1560Q) {
                obj2 = null;
            }
            if (obj2 != null) {
                arrayList.add(obj2);
            }
            ComponentCallbacksC0411c.C0413b c0413b2 = componentCallbacksC0411c.f1571K;
            if (c0413b2 == null || (obj3 = c0413b2.f1610i) == ComponentCallbacksC0411c.f1560Q) {
                obj3 = null;
            }
            if (obj3 != null) {
                arrayList.add(obj3);
            }
        }
        if (componentCallbacksC0411c2 != null) {
            ComponentCallbacksC0411c.C0413b c0413b3 = componentCallbacksC0411c2.f1571K;
            if (c0413b3 == null || (obj = c0413b3.f1609h) == ComponentCallbacksC0411c.f1560Q) {
                obj = null;
            }
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        boolean z2 = true;
        C0437p c0437p = f1704b;
        if (c0437p != null) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (!c0437p.mo498d(arrayList.get(i))) {
                        z = false;
                        break;
                    }
                    i++;
                } else {
                    z = true;
                    break;
                }
            }
            if (z) {
                return c0437p;
            }
        }
        AbstractC0443t abstractC0443t = f1705c;
        if (abstractC0443t != null) {
            int size2 = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    break;
                } else if (!abstractC0443t.mo498d(arrayList.get(i2))) {
                    z2 = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2) {
                return abstractC0443t;
            }
        }
        if (c0437p == null && abstractC0443t == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: f */
    public static ArrayList<View> m730f(AbstractC0443t abstractC0443t, Object obj, ComponentCallbacksC0411c componentCallbacksC0411c, ArrayList<View> arrayList, View view) {
        if (obj != null) {
            ArrayList<View> arrayList2 = new ArrayList<>();
            componentCallbacksC0411c.getClass();
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.add(view);
                abstractC0443t.mo500b(obj, arrayList2);
                return arrayList2;
            }
            return arrayList2;
        }
        return null;
    }

    /* renamed from: g */
    public static View m729g(C0655b<String, View> c0655b, C0436a c0436a, Object obj, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        C0407a c0407a = c0436a.f1708c;
        if (obj == null || c0655b == null || (arrayList = c0407a.f1538p) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            arrayList2 = c0407a.f1538p;
        } else {
            arrayList2 = c0407a.f1539q;
        }
        return c0655b.getOrDefault(arrayList2.get(0), null);
    }

    /* renamed from: h */
    public static void m728h(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:189:0x035b, code lost:
        if (r7 == p017e0.ComponentCallbacksC0411c.f1560Q) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01af, code lost:
        if (r14 == p017e0.ComponentCallbacksC0411c.f1560Q) goto L137;
     */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03d9  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m727i(LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g, ArrayList<C0407a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        SparseArray sparseArray;
        int i3;
        int i4;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2;
        ComponentCallbacksC0411c componentCallbacksC0411c;
        ComponentCallbacksC0411c componentCallbacksC0411c2;
        AbstractC0443t m731e;
        Object mo497e;
        ComponentCallbacksC0411c.C0413b c0413b;
        Object mo497e2;
        ComponentCallbacksC0411c.C0413b c0413b2;
        ArrayList<View> arrayList3;
        C0655b c0655b;
        ArrayList arrayList4;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object mo496i;
        boolean z2;
        Object obj5;
        Object mo490o;
        ComponentCallbacksC0411c.C0413b c0413b3;
        ComponentCallbacksC0411c componentCallbacksC0411c3;
        ComponentCallbacksC0411c componentCallbacksC0411c4;
        AbstractC0443t m731e2;
        Object mo497e3;
        ComponentCallbacksC0411c.C0413b c0413b4;
        Object mo497e4;
        ComponentCallbacksC0411c.C0413b c0413b5;
        Object obj6;
        Object mo490o2;
        ComponentCallbacksC0411c.C0413b c0413b6;
        boolean z3;
        ArrayList<C0407a> arrayList5 = arrayList;
        ArrayList<Boolean> arrayList6 = arrayList2;
        int i5 = i2;
        boolean z4 = z;
        if (layoutInflater$Factory2C0421g.f1640k < 1) {
            return;
        }
        SparseArray sparseArray2 = new SparseArray();
        for (int i6 = i; i6 < i5; i6++) {
            C0407a c0407a = arrayList5.get(i6);
            if (arrayList6.get(i6).booleanValue()) {
                if (c0407a.f1523a.f1642m.mo519e()) {
                    ArrayList<C0407a.C0408a> arrayList7 = c0407a.f1524b;
                    for (int size = arrayList7.size() - 1; size >= 0; size--) {
                        m734b(c0407a, arrayList7.get(size), sparseArray2, true, z4);
                    }
                }
            } else {
                int size2 = c0407a.f1524b.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    m734b(c0407a, c0407a.f1524b.get(i7), sparseArray2, false, z4);
                }
            }
        }
        if (sparseArray2.size() != 0) {
            View view = new View(layoutInflater$Factory2C0421g.f1641l.f1627b);
            int size3 = sparseArray2.size();
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g3 = layoutInflater$Factory2C0421g;
            int i8 = 0;
            while (i8 < size3) {
                int keyAt = sparseArray2.keyAt(i8);
                C0655b c0655b2 = new C0655b();
                int i9 = i5 - 1;
                while (i9 >= i) {
                    C0407a c0407a2 = arrayList5.get(i9);
                    ArrayList<C0407a.C0408a> arrayList8 = c0407a2.f1524b;
                    int size4 = arrayList8.size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size4) {
                            z3 = false;
                            break;
                        }
                        int i11 = size4;
                        ComponentCallbacksC0411c componentCallbacksC0411c5 = arrayList8.get(i10).f1542b;
                        int i12 = componentCallbacksC0411c5 != null ? componentCallbacksC0411c5.f1599y : 0;
                        if (i12 != 0 && i12 == keyAt) {
                            z3 = true;
                            break;
                        } else {
                            i10++;
                            size4 = i11;
                        }
                    }
                    if (z3) {
                        boolean booleanValue = arrayList6.get(i9).booleanValue();
                        ArrayList<String> arrayList9 = c0407a2.f1538p;
                        if (arrayList9 != null) {
                            int size5 = arrayList9.size();
                            ArrayList<String> arrayList10 = c0407a2.f1538p;
                            ArrayList<String> arrayList11 = c0407a2.f1539q;
                            if (booleanValue) {
                                arrayList10 = arrayList11;
                                arrayList11 = arrayList10;
                            }
                            int i13 = 0;
                            while (i13 < size5) {
                                int i14 = size5;
                                String str = arrayList10.get(i13);
                                String str2 = arrayList11.get(i13);
                                String str3 = (String) c0655b2.remove(str2);
                                if (str3 != null) {
                                    c0655b2.put(str, str3);
                                } else {
                                    c0655b2.put(str, str2);
                                }
                                i13++;
                                size5 = i14;
                            }
                        }
                    }
                    i9--;
                    arrayList5 = arrayList;
                    arrayList6 = arrayList2;
                }
                C0436a c0436a = (C0436a) sparseArray2.valueAt(i8);
                if (z4) {
                    ViewGroup viewGroup = layoutInflater$Factory2C0421g3.f1642m.mo519e() ? (ViewGroup) layoutInflater$Factory2C0421g3.f1642m.mo520d(keyAt) : null;
                    if (viewGroup == null || (m731e2 = m731e((componentCallbacksC0411c4 = c0436a.f1709d), (componentCallbacksC0411c3 = c0436a.f1706a))) == null) {
                        sparseArray = sparseArray2;
                        i3 = i8;
                        i4 = size3;
                    } else {
                        boolean z5 = c0436a.f1707b;
                        boolean z6 = c0436a.f1710e;
                        ArrayList<View> arrayList12 = new ArrayList<>();
                        ArrayList<View> arrayList13 = new ArrayList<>();
                        if (componentCallbacksC0411c3 == null) {
                            mo497e3 = null;
                        } else {
                            mo497e3 = m731e2.mo497e((!z5 || (c0413b4 = componentCallbacksC0411c3.f1571K) == null || (r8 = c0413b4.f1609h) == ComponentCallbacksC0411c.f1560Q) ? null : null);
                        }
                        if (componentCallbacksC0411c4 == null) {
                            mo497e4 = null;
                        } else {
                            mo497e4 = m731e2.mo497e((!z6 || (c0413b5 = componentCallbacksC0411c4.f1571K) == null || (r8 = c0413b5.f1608g) == ComponentCallbacksC0411c.f1560Q) ? null : null);
                        }
                        ComponentCallbacksC0411c componentCallbacksC0411c6 = c0436a.f1706a;
                        sparseArray = sparseArray2;
                        ComponentCallbacksC0411c componentCallbacksC0411c7 = c0436a.f1709d;
                        if (componentCallbacksC0411c6 != null) {
                            throw null;
                        }
                        if (componentCallbacksC0411c6 == null || componentCallbacksC0411c7 == null) {
                            i3 = i8;
                            i4 = size3;
                        } else {
                            boolean z7 = c0436a.f1707b;
                            if (c0655b2.isEmpty()) {
                                mo490o2 = null;
                                i3 = i8;
                                i4 = size3;
                            } else {
                                i3 = i8;
                                if (!z7 || (c0413b6 = componentCallbacksC0411c7.f1571K) == null) {
                                    i4 = size3;
                                } else {
                                    obj6 = c0413b6.f1610i;
                                    i4 = size3;
                                }
                                obj6 = null;
                                mo490o2 = m731e2.mo490o(m731e2.mo497e(obj6));
                            }
                            Object obj7 = mo490o2;
                            m732d(c0655b2, obj7, c0436a);
                            m733c(m731e2, c0655b2, obj7, c0436a);
                            if (!c0655b2.isEmpty()) {
                                m735a(arrayList13, null, c0655b2.keySet());
                                throw null;
                            } else if (mo497e3 != null || mo497e4 != null) {
                                ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup, new RunnableC0433m(componentCallbacksC0411c6, componentCallbacksC0411c7, z7, null, null, m731e2, null));
                            }
                        }
                        if (mo497e3 != null || mo497e4 != null) {
                            ArrayList<View> m730f = m730f(m731e2, mo497e4, componentCallbacksC0411c4, arrayList13, view);
                            ArrayList<View> m730f2 = m730f(m731e2, mo497e3, componentCallbacksC0411c3, arrayList12, view);
                            m728h(m730f2, 4);
                            Object mo496i2 = m731e2.mo496i(mo497e4, mo497e3, null);
                            if (mo496i2 != null) {
                                if (componentCallbacksC0411c4 != null && mo497e4 != null && componentCallbacksC0411c4.f1585k && componentCallbacksC0411c4.f1561A && componentCallbacksC0411c4.f1572L) {
                                    componentCallbacksC0411c4.m802a().getClass();
                                    m731e2.mo493l(mo497e4, null, m730f);
                                    ViewTreeObserver$OnPreDrawListenerC0444u.m722a(componentCallbacksC0411c4.f1567G, new RunnableC0431k(m730f));
                                }
                                ArrayList arrayList14 = new ArrayList();
                                int size6 = arrayList12.size();
                                for (int i15 = 0; i15 < size6; i15++) {
                                    View view2 = arrayList12.get(i15);
                                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                                    arrayList14.add(view2.getTransitionName());
                                    view2.setTransitionName(null);
                                }
                                m731e2.mo492m(mo496i2, mo497e3, m730f2, mo497e4, m730f, null, arrayList12);
                                m731e2.mo499c(viewGroup, mo496i2);
                                int size7 = arrayList12.size();
                                ArrayList arrayList15 = new ArrayList();
                                for (int i16 = 0; i16 < size7; i16++) {
                                    View view3 = arrayList13.get(i16);
                                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                                    String transitionName = view3.getTransitionName();
                                    arrayList15.add(transitionName);
                                    if (transitionName != null) {
                                        view3.setTransitionName(null);
                                        String str4 = (String) c0655b2.getOrDefault(transitionName, null);
                                        int i17 = 0;
                                        while (true) {
                                            if (i17 >= size7) {
                                                break;
                                            } else if (str4.equals(arrayList14.get(i17))) {
                                                arrayList12.get(i17).setTransitionName(transitionName);
                                                break;
                                            } else {
                                                i17++;
                                            }
                                        }
                                    }
                                }
                                ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup, new RunnableC0440q(size7, arrayList12, arrayList14, arrayList13, arrayList15));
                                m728h(m730f2, 0);
                                m731e2.mo491n(null, arrayList13, arrayList12);
                            }
                        }
                    }
                    layoutInflater$Factory2C0421g3 = layoutInflater$Factory2C0421g;
                } else {
                    sparseArray = sparseArray2;
                    i3 = i8;
                    i4 = size3;
                    ViewGroup viewGroup2 = layoutInflater$Factory2C0421g3.f1642m.mo519e() ? (ViewGroup) layoutInflater$Factory2C0421g3.f1642m.mo520d(keyAt) : null;
                    if (viewGroup2 == null || (m731e = m731e((componentCallbacksC0411c2 = c0436a.f1709d), (componentCallbacksC0411c = c0436a.f1706a))) == null) {
                        layoutInflater$Factory2C0421g2 = layoutInflater$Factory2C0421g3;
                    } else {
                        boolean z8 = c0436a.f1707b;
                        boolean z9 = c0436a.f1710e;
                        if (componentCallbacksC0411c == null) {
                            mo497e = null;
                        } else {
                            mo497e = m731e.mo497e((!z8 || (c0413b = componentCallbacksC0411c.f1571K) == null || (r5 = c0413b.f1609h) == ComponentCallbacksC0411c.f1560Q) ? null : null);
                        }
                        if (componentCallbacksC0411c2 == null) {
                            mo497e2 = null;
                        } else {
                            mo497e2 = m731e.mo497e((!z9 || (c0413b2 = componentCallbacksC0411c2.f1571K) == null || (r7 = c0413b2.f1608g) == ComponentCallbacksC0411c.f1560Q) ? null : null);
                        }
                        Object obj8 = mo497e2;
                        ArrayList arrayList16 = new ArrayList();
                        ArrayList<View> arrayList17 = new ArrayList<>();
                        ComponentCallbacksC0411c componentCallbacksC0411c8 = c0436a.f1706a;
                        ComponentCallbacksC0411c componentCallbacksC0411c9 = c0436a.f1709d;
                        if (componentCallbacksC0411c8 != null && componentCallbacksC0411c9 != null) {
                            boolean z10 = c0436a.f1707b;
                            if (c0655b2.isEmpty()) {
                                mo490o = null;
                                z2 = z10;
                            } else {
                                if (!z10 || (c0413b3 = componentCallbacksC0411c9.f1571K) == null) {
                                    z2 = z10;
                                } else {
                                    obj5 = c0413b3.f1610i;
                                    z2 = z10;
                                }
                                obj5 = null;
                                mo490o = m731e.mo490o(m731e.mo497e(obj5));
                            }
                            m732d(c0655b2, mo490o, c0436a);
                            if (!c0655b2.isEmpty()) {
                                throw null;
                            }
                            if (mo497e != null || obj8 != null) {
                                arrayList3 = arrayList17;
                                c0655b = c0655b2;
                                layoutInflater$Factory2C0421g2 = layoutInflater$Factory2C0421g3;
                                arrayList4 = arrayList16;
                                obj = obj8;
                                ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup2, new RunnableC0434n(m731e, c0655b2, null, c0436a, arrayList3, view, componentCallbacksC0411c8, componentCallbacksC0411c9, z2, arrayList4, mo497e, null));
                                obj2 = null;
                                obj3 = null;
                                obj4 = obj;
                                if (mo497e == null || obj4 != null) {
                                    ArrayList<View> m730f3 = m730f(m731e, obj4, componentCallbacksC0411c2, arrayList4, view);
                                    Object obj9 = (m730f3 != null || m730f3.isEmpty()) ? obj2 : obj4;
                                    m731e.mo501a(mo497e, view);
                                    mo496i = m731e.mo496i(obj9, mo497e, obj3);
                                    if (mo496i != null) {
                                        ArrayList<View> arrayList18 = new ArrayList<>();
                                        m731e.mo492m(mo496i, mo497e, arrayList18, obj9, m730f3, obj3, arrayList3);
                                        ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup2, new RunnableC0432l(mo497e, m731e, view, componentCallbacksC0411c, arrayList3, arrayList18, m730f3, obj9));
                                        ArrayList<View> arrayList19 = arrayList3;
                                        ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup2, new RunnableC0441r(arrayList19, c0655b));
                                        m731e.mo499c(viewGroup2, mo496i);
                                        ViewTreeObserver$OnPreDrawListenerC0444u.m722a(viewGroup2, new RunnableC0442s(arrayList19, c0655b));
                                    }
                                }
                            }
                        }
                        arrayList3 = arrayList17;
                        c0655b = c0655b2;
                        layoutInflater$Factory2C0421g2 = layoutInflater$Factory2C0421g3;
                        arrayList4 = arrayList16;
                        obj = obj8;
                        obj2 = null;
                        obj3 = null;
                        obj4 = obj;
                        if (mo497e == null) {
                        }
                        ArrayList<View> m730f32 = m730f(m731e, obj4, componentCallbacksC0411c2, arrayList4, view);
                        if (m730f32 != null) {
                        }
                        m731e.mo501a(mo497e, view);
                        mo496i = m731e.mo496i(obj9, mo497e, obj3);
                        if (mo496i != null) {
                        }
                    }
                    layoutInflater$Factory2C0421g3 = layoutInflater$Factory2C0421g2;
                }
                i8 = i3 + 1;
                arrayList5 = arrayList;
                arrayList6 = arrayList2;
                i5 = i2;
                z4 = z;
                sparseArray2 = sparseArray;
                size3 = i4;
            }
        }
    }
}
