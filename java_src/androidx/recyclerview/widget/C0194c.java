package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0212k;
import java.util.ArrayList;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes.dex */
public final class C0194c extends AbstractC0247p {

    /* renamed from: e */
    public final ArrayList<C0212k.AbstractC0241v> f764e = new ArrayList<>();

    /* renamed from: f */
    public final ArrayList<C0212k.AbstractC0241v> f765f = new ArrayList<>();

    /* renamed from: g */
    public final ArrayList<C0196b> f766g = new ArrayList<>();

    /* renamed from: h */
    public final ArrayList<C0195a> f767h = new ArrayList<>();

    /* renamed from: i */
    public final ArrayList<ArrayList<C0212k.AbstractC0241v>> f768i = new ArrayList<>();

    /* renamed from: j */
    public final ArrayList<ArrayList<C0196b>> f769j = new ArrayList<>();

    /* renamed from: k */
    public final ArrayList<ArrayList<C0195a>> f770k = new ArrayList<>();

    /* renamed from: l */
    public final ArrayList<C0212k.AbstractC0241v> f771l = new ArrayList<>();

    /* renamed from: m */
    public final ArrayList<C0212k.AbstractC0241v> f772m = new ArrayList<>();

    /* renamed from: n */
    public final ArrayList<C0212k.AbstractC0241v> f773n = new ArrayList<>();

    /* renamed from: o */
    public final ArrayList<C0212k.AbstractC0241v> f774o = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes.dex */
    public static class C0195a {

        /* renamed from: a */
        public C0212k.AbstractC0241v f775a;

        /* renamed from: b */
        public C0212k.AbstractC0241v f776b;

        public C0195a() {
            throw null;
        }

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f775a + ", newHolder=" + this.f776b + ", fromX=0, fromY=0, toX=0, toY=0}";
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes.dex */
    public static class C0196b {
        public C0196b() {
            throw null;
        }
    }

    /* renamed from: d */
    public static void m1157d(ArrayList arrayList) {
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        ((C0212k.AbstractC0241v) arrayList.get(size)).getClass();
        throw null;
    }

    /* renamed from: e */
    public static void m1156e(C0195a c0195a, C0212k.AbstractC0241v abstractC0241v) {
        if (c0195a.f776b == abstractC0241v) {
            c0195a.f776b = null;
        } else if (c0195a.f775a != abstractC0241v) {
            return;
        } else {
            c0195a.f775a = null;
        }
        abstractC0241v.getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0219g
    /* renamed from: b */
    public final void mo1119b() {
        ArrayList<C0212k.AbstractC0241v> arrayList;
        int size;
        ArrayList<C0196b> arrayList2;
        int size2;
        ArrayList<C0196b> arrayList3 = this.f766g;
        int size3 = arrayList3.size() - 1;
        if (size3 < 0) {
            ArrayList<C0212k.AbstractC0241v> arrayList4 = this.f764e;
            int size4 = arrayList4.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                }
                m1120a(arrayList4.get(size4));
                arrayList4.remove(size4);
            }
            ArrayList<C0212k.AbstractC0241v> arrayList5 = this.f765f;
            int size5 = arrayList5.size() - 1;
            if (size5 < 0) {
                ArrayList<C0195a> arrayList6 = this.f767h;
                int size6 = arrayList6.size();
                while (true) {
                    size6--;
                    if (size6 < 0) {
                        break;
                    }
                    C0195a c0195a = arrayList6.get(size6);
                    C0212k.AbstractC0241v abstractC0241v = c0195a.f775a;
                    if (abstractC0241v != null) {
                        m1156e(c0195a, abstractC0241v);
                    }
                    C0212k.AbstractC0241v abstractC0241v2 = c0195a.f776b;
                    if (abstractC0241v2 != null) {
                        m1156e(c0195a, abstractC0241v2);
                    }
                }
                arrayList6.clear();
                if (!mo1118c()) {
                    return;
                }
                ArrayList<ArrayList<C0196b>> arrayList7 = this.f769j;
                int size7 = arrayList7.size();
                do {
                    size7--;
                    if (size7 >= 0) {
                        arrayList2 = arrayList7.get(size7);
                        size2 = arrayList2.size() - 1;
                    } else {
                        ArrayList<ArrayList<C0212k.AbstractC0241v>> arrayList8 = this.f768i;
                        int size8 = arrayList8.size();
                        do {
                            size8--;
                            if (size8 >= 0) {
                                arrayList = arrayList8.get(size8);
                                size = arrayList.size() - 1;
                            } else {
                                ArrayList<ArrayList<C0195a>> arrayList9 = this.f770k;
                                int size9 = arrayList9.size();
                                while (true) {
                                    size9--;
                                    if (size9 < 0) {
                                        break;
                                    }
                                    ArrayList<C0195a> arrayList10 = arrayList9.get(size9);
                                    int size10 = arrayList10.size();
                                    while (true) {
                                        size10--;
                                        if (size10 >= 0) {
                                            C0195a c0195a2 = arrayList10.get(size10);
                                            C0212k.AbstractC0241v abstractC0241v3 = c0195a2.f775a;
                                            if (abstractC0241v3 != null) {
                                                m1156e(c0195a2, abstractC0241v3);
                                            }
                                            C0212k.AbstractC0241v abstractC0241v4 = c0195a2.f776b;
                                            if (abstractC0241v4 != null) {
                                                m1156e(c0195a2, abstractC0241v4);
                                            }
                                            if (arrayList10.isEmpty()) {
                                                arrayList9.remove(arrayList10);
                                            }
                                        }
                                    }
                                }
                                m1157d(this.f773n);
                                m1157d(this.f772m);
                                m1157d(this.f771l);
                                m1157d(this.f774o);
                                ArrayList<C0212k.AbstractC0219g.InterfaceC0220a> arrayList11 = this.f887b;
                                int size11 = arrayList11.size();
                                for (int i = 0; i < size11; i++) {
                                    arrayList11.get(i).m1117a();
                                }
                                arrayList11.clear();
                                return;
                            }
                        } while (size < 0);
                        arrayList.get(size).getClass();
                        throw null;
                    }
                } while (size2 < 0);
                arrayList2.get(size2).getClass();
                throw null;
            }
            arrayList5.get(size5).getClass();
            throw null;
        }
        arrayList3.get(size3).getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.C0212k.AbstractC0219g
    /* renamed from: c */
    public final boolean mo1118c() {
        return (this.f765f.isEmpty() && this.f767h.isEmpty() && this.f766g.isEmpty() && this.f764e.isEmpty() && this.f772m.isEmpty() && this.f773n.isEmpty() && this.f771l.isEmpty() && this.f774o.isEmpty() && this.f769j.isEmpty() && this.f768i.isEmpty() && this.f770k.isEmpty()) ? false : true;
    }
}
