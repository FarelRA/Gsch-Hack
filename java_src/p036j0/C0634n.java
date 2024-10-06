package p036j0;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: j0.n */
/* loaded from: classes.dex */
public final class C0634n {

    /* renamed from: b */
    public View f2225b;

    /* renamed from: a */
    public final HashMap f2224a = new HashMap();

    /* renamed from: c */
    public final ArrayList<AbstractC0619g> f2226c = new ArrayList<>();

    public final boolean equals(Object obj) {
        if (obj instanceof C0634n) {
            C0634n c0634n = (C0634n) obj;
            return this.f2225b == c0634n.f2225b && this.f2224a.equals(c0634n.f2224a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2224a.hashCode() + (this.f2225b.hashCode() * 31);
    }

    public final String toString() {
        HashMap hashMap;
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2225b + "\n") + "    values:";
        for (String str2 : this.f2224a.keySet()) {
            str = str + "    " + str2 + ": " + hashMap.get(str2) + "\n";
        }
        return str;
    }
}
