package p017e0;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import p039k.C0655b;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: e0.s */
/* loaded from: classes.dex */
public final class RunnableC0442s implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ ArrayList f1727b;

    /* renamed from: c */
    public final /* synthetic */ Map f1728c;

    public RunnableC0442s(ArrayList arrayList, C0655b c0655b) {
        this.f1727b = arrayList;
        this.f1728c = c0655b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f1727b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            view.setTransitionName((String) this.f1728c.get(view.getTransitionName()));
        }
    }
}
