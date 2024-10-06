package p036j0;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p017e0.AbstractC0443t;
import p036j0.AbstractC0619g;
import p036j0.C0627k;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: j0.e */
/* loaded from: classes.dex */
public class C0615e extends AbstractC0443t {

    /* renamed from: j0.e$a */
    /* loaded from: classes.dex */
    public class C0616a implements AbstractC0619g.InterfaceC0623d {

        /* renamed from: a */
        public final /* synthetic */ View f2169a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f2170b;

        public C0616a(View view, ArrayList arrayList) {
            this.f2169a = view;
            this.f2170b = arrayList;
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: a */
        public final void mo444a() {
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: b */
        public final void mo443b() {
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
            abstractC0619g.mo462v(this);
            this.f2169a.setVisibility(8);
            ArrayList arrayList = this.f2170b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((View) arrayList.get(i)).setVisibility(0);
            }
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: d */
        public final void mo441d() {
        }
    }

    /* renamed from: j0.e$b */
    /* loaded from: classes.dex */
    public class C0617b implements AbstractC0619g.InterfaceC0623d {

        /* renamed from: a */
        public final /* synthetic */ Object f2171a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f2172b;

        /* renamed from: c */
        public final /* synthetic */ Object f2173c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f2174d;

        /* renamed from: e */
        public final /* synthetic */ Object f2175e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f2176f;

        public C0617b(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f2171a = obj;
            this.f2172b = arrayList;
            this.f2173c = obj2;
            this.f2174d = arrayList2;
            this.f2175e = obj3;
            this.f2176f = arrayList3;
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: a */
        public final void mo444a() {
            C0615e c0615e = C0615e.this;
            Object obj = this.f2171a;
            if (obj != null) {
                c0615e.mo494k(obj, this.f2172b, null);
            }
            Object obj2 = this.f2173c;
            if (obj2 != null) {
                c0615e.mo494k(obj2, this.f2174d, null);
            }
            Object obj3 = this.f2175e;
            if (obj3 != null) {
                c0615e.mo494k(obj3, this.f2176f, null);
            }
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: b */
        public final void mo443b() {
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: d */
        public final void mo441d() {
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: a */
    public final void mo501a(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0619g) obj).mo468b(view);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: b */
    public final void mo500b(Object obj, ArrayList<View> arrayList) {
        boolean z;
        AbstractC0619g abstractC0619g;
        AbstractC0619g abstractC0619g2 = (AbstractC0619g) obj;
        if (abstractC0619g2 == null) {
            return;
        }
        int i = 0;
        if (abstractC0619g2 instanceof C0630l) {
            C0630l c0630l = (C0630l) abstractC0619g2;
            int size = c0630l.f2215w.size();
            while (i < size) {
                if (i >= 0 && i < c0630l.f2215w.size()) {
                    abstractC0619g = c0630l.f2215w.get(i);
                } else {
                    abstractC0619g = null;
                }
                mo500b(abstractC0619g, arrayList);
                i++;
            }
            return;
        }
        if (AbstractC0443t.m723h(abstractC0619g2.f2185e) && AbstractC0443t.m723h(null) && AbstractC0443t.m723h(null)) {
            z = false;
        } else {
            z = true;
        }
        if (!z && AbstractC0443t.m723h(abstractC0619g2.f2186f)) {
            int size2 = arrayList.size();
            while (i < size2) {
                abstractC0619g2.mo468b(arrayList.get(i));
                i++;
            }
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: c */
    public final void mo499c(ViewGroup viewGroup, Object obj) {
        AbstractC0619g abstractC0619g = (AbstractC0619g) obj;
        ArrayList<ViewGroup> arrayList = C0627k.f2209b;
        if (!arrayList.contains(viewGroup)) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (viewGroup.isLaidOut()) {
                arrayList.add(viewGroup);
                AbstractC0619g clone = abstractC0619g.clone();
                ArrayList<AbstractC0619g> orDefault = C0627k.m477a().getOrDefault(viewGroup, null);
                if (orDefault != null && orDefault.size() > 0) {
                    Iterator<AbstractC0619g> it = orDefault.iterator();
                    while (it.hasNext()) {
                        it.next().mo463u(viewGroup);
                    }
                }
                if (clone != null) {
                    clone.m486h(viewGroup, true);
                }
                if (((C0618f) viewGroup.getTag(R.id.transition_current_scene)) == null) {
                    viewGroup.setTag(R.id.transition_current_scene, null);
                    if (clone != null) {
                        C0627k.ViewTreeObserver$OnPreDrawListenerC0628a viewTreeObserver$OnPreDrawListenerC0628a = new C0627k.ViewTreeObserver$OnPreDrawListenerC0628a(viewGroup, clone);
                        viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC0628a);
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0628a);
                        return;
                    }
                    return;
                }
                throw null;
            }
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: d */
    public final boolean mo498d(Object obj) {
        return obj instanceof AbstractC0619g;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: e */
    public final Object mo497e(Object obj) {
        if (obj != null) {
            return ((AbstractC0619g) obj).clone();
        }
        return null;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: i */
    public final Object mo496i(Object obj, Object obj2, Object obj3) {
        C0630l c0630l = new C0630l();
        if (obj != null) {
            c0630l.m470H((AbstractC0619g) obj);
        }
        if (obj2 != null) {
            c0630l.m470H((AbstractC0619g) obj2);
        }
        if (obj3 != null) {
            c0630l.m470H((AbstractC0619g) obj3);
        }
        return c0630l;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: j */
    public final void mo495j(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0619g) obj).mo461w(view);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: k */
    public final void mo494k(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        boolean z;
        int size;
        AbstractC0619g abstractC0619g;
        AbstractC0619g abstractC0619g2 = (AbstractC0619g) obj;
        int i = 0;
        if (abstractC0619g2 instanceof C0630l) {
            C0630l c0630l = (C0630l) abstractC0619g2;
            int size2 = c0630l.f2215w.size();
            while (i < size2) {
                if (i >= 0 && i < c0630l.f2215w.size()) {
                    abstractC0619g = c0630l.f2215w.get(i);
                } else {
                    abstractC0619g = null;
                }
                mo494k(abstractC0619g, arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (AbstractC0443t.m723h(abstractC0619g2.f2185e) && AbstractC0443t.m723h(null) && AbstractC0443t.m723h(null)) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            ArrayList<View> arrayList3 = abstractC0619g2.f2186f;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    size = 0;
                } else {
                    size = arrayList2.size();
                }
                while (i < size) {
                    abstractC0619g2.mo468b(arrayList2.get(i));
                    i++;
                }
                int size3 = arrayList.size();
                while (true) {
                    size3--;
                    if (size3 >= 0) {
                        abstractC0619g2.mo461w(arrayList.get(size3));
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: l */
    public final void mo493l(Object obj, View view, ArrayList<View> arrayList) {
        ((AbstractC0619g) obj).mo469a(new C0616a(view, arrayList));
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: m */
    public final void mo492m(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((AbstractC0619g) obj).mo469a(new C0617b(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: n */
    public final void mo491n(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C0630l c0630l = (C0630l) obj;
        if (c0630l != null) {
            ArrayList<View> arrayList3 = c0630l.f2186f;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            mo494k(c0630l, arrayList, arrayList2);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: o */
    public final Object mo490o(Object obj) {
        if (obj == null) {
            return null;
        }
        C0630l c0630l = new C0630l();
        c0630l.m470H((AbstractC0619g) obj);
        return c0630l;
    }
}
