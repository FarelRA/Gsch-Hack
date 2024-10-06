package p017e0;

import android.view.View;
import java.util.ArrayList;
/* renamed from: e0.l */
/* loaded from: classes.dex */
public final class RunnableC0432l implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ Object f1678b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC0443t f1679c;

    /* renamed from: d */
    public final /* synthetic */ View f1680d;

    /* renamed from: e */
    public final /* synthetic */ ComponentCallbacksC0411c f1681e;

    /* renamed from: f */
    public final /* synthetic */ ArrayList f1682f;

    /* renamed from: g */
    public final /* synthetic */ ArrayList f1683g;

    /* renamed from: h */
    public final /* synthetic */ ArrayList f1684h;

    /* renamed from: i */
    public final /* synthetic */ Object f1685i;

    public RunnableC0432l(Object obj, AbstractC0443t abstractC0443t, View view, ComponentCallbacksC0411c componentCallbacksC0411c, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f1678b = obj;
        this.f1679c = abstractC0443t;
        this.f1680d = view;
        this.f1681e = componentCallbacksC0411c;
        this.f1682f = arrayList;
        this.f1683g = arrayList2;
        this.f1684h = arrayList3;
        this.f1685i = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0443t abstractC0443t = this.f1679c;
        View view = this.f1680d;
        Object obj = this.f1678b;
        if (obj != null) {
            abstractC0443t.mo495j(obj, view);
            this.f1683g.addAll(C0435o.m730f(abstractC0443t, obj, this.f1681e, this.f1682f, view));
        }
        ArrayList<View> arrayList = this.f1684h;
        if (arrayList != null) {
            Object obj2 = this.f1685i;
            if (obj2 != null) {
                ArrayList<View> arrayList2 = new ArrayList<>();
                arrayList2.add(view);
                abstractC0443t.mo494k(obj2, arrayList, arrayList2);
            }
            arrayList.clear();
            arrayList.add(view);
        }
    }
}
