package p017e0;

import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: e0.p */
/* loaded from: classes.dex */
public final class C0437p extends AbstractC0443t {

    /* renamed from: e0.p$a */
    /* loaded from: classes.dex */
    public class C0438a implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ View f1711a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1712b;

        public C0438a(View view, ArrayList arrayList) {
            this.f1711a = view;
            this.f1712b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f1711a.setVisibility(8);
            ArrayList arrayList = this.f1712b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((View) arrayList.get(i)).setVisibility(0);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionStart(Transition transition) {
        }
    }

    /* renamed from: e0.p$b */
    /* loaded from: classes.dex */
    public class C0439b implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Object f1713a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1714b;

        /* renamed from: c */
        public final /* synthetic */ Object f1715c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f1716d;

        /* renamed from: e */
        public final /* synthetic */ Object f1717e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f1718f;

        public C0439b(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f1713a = obj;
            this.f1714b = arrayList;
            this.f1715c = obj2;
            this.f1716d = arrayList2;
            this.f1717e = obj3;
            this.f1718f = arrayList3;
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionStart(Transition transition) {
            C0437p c0437p = C0437p.this;
            Object obj = this.f1713a;
            if (obj != null) {
                c0437p.mo494k(obj, this.f1714b, null);
            }
            Object obj2 = this.f1715c;
            if (obj2 != null) {
                c0437p.mo494k(obj2, this.f1716d, null);
            }
            Object obj3 = this.f1717e;
            if (obj3 != null) {
                c0437p.mo494k(obj3, this.f1718f, null);
            }
        }
    }

    /* renamed from: p */
    public static boolean m726p(Transition transition) {
        return (AbstractC0443t.m723h(transition.getTargetIds()) && AbstractC0443t.m723h(transition.getTargetNames()) && AbstractC0443t.m723h(transition.getTargetTypes())) ? false : true;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: a */
    public final void mo501a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: b */
    public final void mo500b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo500b(transitionSet.getTransitionAt(i), arrayList);
                i++;
            }
        } else if (m726p(transition) || !AbstractC0443t.m723h(transition.getTargets())) {
        } else {
            int size = arrayList.size();
            while (i < size) {
                transition.addTarget(arrayList.get(i));
                i++;
            }
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: c */
    public final void mo499c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: d */
    public final boolean mo498d(Object obj) {
        return obj instanceof Transition;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: e */
    public final Object mo497e(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: i */
    public final Object mo496i(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: j */
    public final void mo495j(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: k */
    public final void mo494k(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo494k(transitionSet.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
        } else if (!m726p(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                transition.addTarget(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: l */
    public final void mo493l(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C0438a(view, arrayList));
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: m */
    public final void mo492m(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C0439b(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: n */
    public final void mo491n(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo494k(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // p017e0.AbstractC0443t
    /* renamed from: o */
    public final Object mo490o(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }
}
