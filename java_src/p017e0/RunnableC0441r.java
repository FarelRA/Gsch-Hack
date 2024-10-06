package p017e0;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import p039k.C0655b;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: e0.r */
/* loaded from: classes.dex */
public final class RunnableC0441r implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ ArrayList f1725b;

    /* renamed from: c */
    public final /* synthetic */ Map f1726c;

    public RunnableC0441r(ArrayList arrayList, C0655b c0655b) {
        this.f1725b = arrayList;
        this.f1726c = c0655b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ArrayList arrayList = this.f1725b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                Iterator it = this.f1726c.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (transitionName.equals(entry.getValue())) {
                            str = (String) entry.getKey();
                            break;
                        }
                    } else {
                        str = null;
                        break;
                    }
                }
                view.setTransitionName(str);
            }
        }
    }
}
