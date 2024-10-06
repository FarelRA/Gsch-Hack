package p017e0;

import android.view.View;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: e0.q */
/* loaded from: classes.dex */
public final class RunnableC0440q implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ int f1720b;

    /* renamed from: c */
    public final /* synthetic */ ArrayList f1721c;

    /* renamed from: d */
    public final /* synthetic */ ArrayList f1722d;

    /* renamed from: e */
    public final /* synthetic */ ArrayList f1723e;

    /* renamed from: f */
    public final /* synthetic */ ArrayList f1724f;

    public RunnableC0440q(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f1720b = i;
        this.f1721c = arrayList;
        this.f1722d = arrayList2;
        this.f1723e = arrayList3;
        this.f1724f = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < this.f1720b; i++) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            ((View) this.f1721c.get(i)).setTransitionName((String) this.f1722d.get(i));
            ((View) this.f1723e.get(i)).setTransitionName((String) this.f1724f.get(i));
        }
    }
}
