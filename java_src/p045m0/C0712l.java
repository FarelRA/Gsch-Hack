package p045m0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: m0.l */
/* loaded from: classes.dex */
public final class C0712l {

    /* renamed from: a */
    public final byte[] f2476a;

    /* renamed from: b */
    public final Map<String, String> f2477b;

    /* renamed from: c */
    public final List<C0708h> f2478c;

    /* renamed from: d */
    public final boolean f2479d;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0712l(int i, byte[] bArr, boolean z, long j, List<C0708h> list) {
        this(bArr, r2, list, z);
        ?? treeMap;
        if (list == null) {
            treeMap = 0;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (C0708h c0708h : list) {
                treeMap.put(c0708h.f2469a, c0708h.f2470b);
            }
        }
    }

    public C0712l(byte[] bArr, Map map, List list, boolean z) {
        this.f2476a = bArr;
        this.f2477b = map;
        this.f2478c = list == null ? null : Collections.unmodifiableList(list);
        this.f2479d = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0712l(byte[] bArr, Map<String, String> map) {
        this(bArr, map, r0, false);
        ?? arrayList;
        if (map == null) {
            arrayList = 0;
        } else if (map.isEmpty()) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new C0708h(entry.getKey(), entry.getValue()));
            }
        }
    }
}
