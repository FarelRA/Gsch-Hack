package p057q1;

import java.util.StringTokenizer;
import java.util.TreeMap;
/* renamed from: q1.d */
/* loaded from: classes.dex */
public final class C0840d extends C0843g {

    /* renamed from: b */
    public final TreeMap f2737b = new TreeMap();

    public C0840d() {
        this.f2744a = 4;
    }

    /* renamed from: a */
    public final C0846j m191a(String str) {
        C0843g c0843g;
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        boolean hasMoreTokens = stringTokenizer.hasMoreTokens();
        TreeMap treeMap = this.f2737b;
        if (hasMoreTokens) {
            TreeMap treeMap2 = treeMap;
            while (stringTokenizer.hasMoreTokens()) {
                Object obj = treeMap2.get(stringTokenizer.nextToken());
                if (obj instanceof C0840d) {
                    treeMap2 = ((C0840d) obj).f2737b;
                } else {
                    c0843g = (C0843g) obj;
                    break;
                }
            }
        }
        c0843g = (C0843g) treeMap.get(str);
        return (C0846j) c0843g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        TreeMap treeMap = this.f2737b;
        for (String str : treeMap.keySet()) {
            sb.append("key=");
            sb.append(str);
            sb.append(((C0843g) treeMap.get(str)).toString());
        }
        return sb.toString();
    }
}
