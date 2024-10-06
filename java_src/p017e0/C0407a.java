package p017e0;

import java.util.ArrayList;
import p017e0.ComponentCallbacksC0411c;
import p028h.AbstractC0574c;
/* renamed from: e0.a */
/* loaded from: classes.dex */
public final class C0407a extends AbstractC0574c {

    /* renamed from: a */
    public final LayoutInflater$Factory2C0421g f1523a;

    /* renamed from: c */
    public int f1525c;

    /* renamed from: d */
    public int f1526d;

    /* renamed from: e */
    public int f1527e;

    /* renamed from: f */
    public int f1528f;

    /* renamed from: g */
    public int f1529g;

    /* renamed from: h */
    public int f1530h;

    /* renamed from: i */
    public boolean f1531i;

    /* renamed from: j */
    public String f1532j;

    /* renamed from: l */
    public int f1534l;

    /* renamed from: m */
    public CharSequence f1535m;

    /* renamed from: n */
    public int f1536n;

    /* renamed from: o */
    public CharSequence f1537o;

    /* renamed from: p */
    public ArrayList<String> f1538p;

    /* renamed from: q */
    public ArrayList<String> f1539q;

    /* renamed from: b */
    public final ArrayList<C0408a> f1524b = new ArrayList<>();

    /* renamed from: k */
    public int f1533k = -1;

    /* renamed from: r */
    public boolean f1540r = false;

    /* renamed from: e0.a$a */
    /* loaded from: classes.dex */
    public static final class C0408a {

        /* renamed from: a */
        public int f1541a;

        /* renamed from: b */
        public ComponentCallbacksC0411c f1542b;

        /* renamed from: c */
        public int f1543c;

        /* renamed from: d */
        public int f1544d;

        /* renamed from: e */
        public int f1545e;

        /* renamed from: f */
        public int f1546f;

        public C0408a() {
        }

        public C0408a(int i, ComponentCallbacksC0411c componentCallbacksC0411c) {
            this.f1541a = i;
            this.f1542b = componentCallbacksC0411c;
        }
    }

    public C0407a(LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g) {
        this.f1523a = layoutInflater$Factory2C0421g;
    }

    /* renamed from: f */
    public final void m806f(int i) {
        if (this.f1531i) {
            int i2 = LayoutInflater$Factory2C0421g.f1630y;
            ArrayList<C0408a> arrayList = this.f1524b;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i3).f1542b;
                if (componentCallbacksC0411c != null) {
                    componentCallbacksC0411c.f1591q += i;
                    int i4 = LayoutInflater$Factory2C0421g.f1630y;
                }
            }
        }
    }

    /* renamed from: g */
    public final void m805g() {
        ArrayList<C0408a> arrayList = this.f1524b;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = this.f1523a;
            if (i < size) {
                C0408a c0408a = arrayList.get(i);
                ComponentCallbacksC0411c componentCallbacksC0411c = c0408a.f1542b;
                if (componentCallbacksC0411c != null) {
                    int i2 = this.f1529g;
                    int i3 = this.f1530h;
                    if (componentCallbacksC0411c.f1571K != null || i2 != 0 || i3 != 0) {
                        componentCallbacksC0411c.m802a();
                        ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
                        c0413b.f1606e = i2;
                        c0413b.f1607f = i3;
                    }
                }
                switch (c0408a.f1541a) {
                    case 1:
                        componentCallbacksC0411c.m793j(c0408a.f1543c);
                        layoutInflater$Factory2C0421g.m762b(componentCallbacksC0411c, false);
                        break;
                    case 2:
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + c0408a.f1541a);
                    case 3:
                        componentCallbacksC0411c.m793j(c0408a.f1544d);
                        layoutInflater$Factory2C0421g.m772Q(componentCallbacksC0411c);
                        break;
                    case 4:
                        componentCallbacksC0411c.m793j(c0408a.f1544d);
                        layoutInflater$Factory2C0421g.getClass();
                        if (!componentCallbacksC0411c.f1561A) {
                            componentCallbacksC0411c.f1561A = true;
                            componentCallbacksC0411c.f1572L = !componentCallbacksC0411c.f1572L;
                            break;
                        }
                        break;
                    case 5:
                        componentCallbacksC0411c.m793j(c0408a.f1543c);
                        layoutInflater$Factory2C0421g.getClass();
                        if (componentCallbacksC0411c.f1561A) {
                            componentCallbacksC0411c.f1561A = false;
                            componentCallbacksC0411c.f1572L = !componentCallbacksC0411c.f1572L;
                            break;
                        }
                        break;
                    case 6:
                        componentCallbacksC0411c.m793j(c0408a.f1544d);
                        layoutInflater$Factory2C0421g.getClass();
                        if (!componentCallbacksC0411c.f1562B) {
                            componentCallbacksC0411c.f1562B = true;
                            if (componentCallbacksC0411c.f1585k) {
                                synchronized (layoutInflater$Factory2C0421g.f1633d) {
                                    layoutInflater$Factory2C0421g.f1633d.remove(componentCallbacksC0411c);
                                }
                                componentCallbacksC0411c.f1585k = false;
                                break;
                            }
                        }
                        break;
                    case 7:
                        componentCallbacksC0411c.m793j(c0408a.f1543c);
                        layoutInflater$Factory2C0421g.m761c(componentCallbacksC0411c);
                        break;
                    case 8:
                        layoutInflater$Factory2C0421g.m767V(componentCallbacksC0411c);
                        break;
                    case 9:
                        layoutInflater$Factory2C0421g.m767V(null);
                        break;
                }
                if (!this.f1540r && c0408a.f1541a != 1 && componentCallbacksC0411c != null) {
                    layoutInflater$Factory2C0421g.m777L(componentCallbacksC0411c);
                }
                i++;
            } else if (!this.f1540r) {
                layoutInflater$Factory2C0421g.m776M(layoutInflater$Factory2C0421g.f1640k, true);
                return;
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    public final void m804h(boolean z) {
        ArrayList<C0408a> arrayList = this.f1524b;
        int size = arrayList.size() - 1;
        while (true) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = this.f1523a;
            if (size >= 0) {
                C0408a c0408a = arrayList.get(size);
                ComponentCallbacksC0411c componentCallbacksC0411c = c0408a.f1542b;
                if (componentCallbacksC0411c != null) {
                    int i = this.f1529g;
                    int i2 = LayoutInflater$Factory2C0421g.f1630y;
                    int i3 = 8194;
                    if (i != 4097) {
                        if (i != 4099) {
                            if (i != 8194) {
                                i3 = 0;
                            } else {
                                i3 = 4097;
                            }
                        } else {
                            i3 = 4099;
                        }
                    }
                    int i4 = this.f1530h;
                    if (componentCallbacksC0411c.f1571K != null || i3 != 0 || i4 != 0) {
                        componentCallbacksC0411c.m802a();
                        ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
                        c0413b.f1606e = i3;
                        c0413b.f1607f = i4;
                    }
                }
                switch (c0408a.f1541a) {
                    case 1:
                        componentCallbacksC0411c.m793j(c0408a.f1546f);
                        layoutInflater$Factory2C0421g.m772Q(componentCallbacksC0411c);
                        break;
                    case 2:
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + c0408a.f1541a);
                    case 3:
                        componentCallbacksC0411c.m793j(c0408a.f1545e);
                        layoutInflater$Factory2C0421g.m762b(componentCallbacksC0411c, false);
                        break;
                    case 4:
                        componentCallbacksC0411c.m793j(c0408a.f1545e);
                        layoutInflater$Factory2C0421g.getClass();
                        if (componentCallbacksC0411c.f1561A) {
                            componentCallbacksC0411c.f1561A = false;
                            componentCallbacksC0411c.f1572L = !componentCallbacksC0411c.f1572L;
                            break;
                        }
                        break;
                    case 5:
                        componentCallbacksC0411c.m793j(c0408a.f1546f);
                        layoutInflater$Factory2C0421g.getClass();
                        if (!componentCallbacksC0411c.f1561A) {
                            componentCallbacksC0411c.f1561A = true;
                            componentCallbacksC0411c.f1572L = !componentCallbacksC0411c.f1572L;
                            break;
                        }
                        break;
                    case 6:
                        componentCallbacksC0411c.m793j(c0408a.f1545e);
                        layoutInflater$Factory2C0421g.m761c(componentCallbacksC0411c);
                        break;
                    case 7:
                        componentCallbacksC0411c.m793j(c0408a.f1546f);
                        layoutInflater$Factory2C0421g.getClass();
                        if (!componentCallbacksC0411c.f1562B) {
                            componentCallbacksC0411c.f1562B = true;
                            if (componentCallbacksC0411c.f1585k) {
                                synchronized (layoutInflater$Factory2C0421g.f1633d) {
                                    layoutInflater$Factory2C0421g.f1633d.remove(componentCallbacksC0411c);
                                }
                                componentCallbacksC0411c.f1585k = false;
                                break;
                            }
                        }
                        break;
                    case 8:
                        layoutInflater$Factory2C0421g.m767V(null);
                        break;
                    case 9:
                        layoutInflater$Factory2C0421g.m767V(componentCallbacksC0411c);
                        break;
                }
                if (!this.f1540r && c0408a.f1541a != 3 && componentCallbacksC0411c != null) {
                    layoutInflater$Factory2C0421g.m777L(componentCallbacksC0411c);
                }
                size--;
            } else if (!this.f1540r && z) {
                layoutInflater$Factory2C0421g.m776M(layoutInflater$Factory2C0421g.f1640k, true);
                return;
            } else {
                return;
            }
        }
    }

    /* renamed from: i */
    public final boolean m803i(ArrayList<C0407a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        ArrayList<C0408a> arrayList2 = this.f1524b;
        int size = arrayList2.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList2.get(i4).f1542b;
            int i5 = componentCallbacksC0411c != null ? componentCallbacksC0411c.f1599y : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    C0407a c0407a = arrayList.get(i6);
                    int size2 = c0407a.f1524b.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        ComponentCallbacksC0411c componentCallbacksC0411c2 = c0407a.f1524b.get(i7).f1542b;
                        if ((componentCallbacksC0411c2 != null ? componentCallbacksC0411c2.f1599y : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f1533k >= 0) {
            sb.append(" #");
            sb.append(this.f1533k);
        }
        if (this.f1532j != null) {
            sb.append(" ");
            sb.append(this.f1532j);
        }
        sb.append("}");
        return sb.toString();
    }
}
