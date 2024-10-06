package p072w1;

import java.io.IOException;
import java.io.StringReader;
import java.util.LinkedHashMap;
import p027g2.C0570b;
import p057q1.C0844h;
import p078y1.C0965a;
import p078y1.C0966b;
/* renamed from: w1.a */
/* loaded from: classes.dex */
public final class C0924a {

    /* renamed from: w1.a$a */
    /* loaded from: classes.dex */
    public static class C0925a {
    }

    /* renamed from: w1.a$b */
    /* loaded from: classes.dex */
    public static class C0926b extends LinkedHashMap<String, Object> {
        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            String str = (String) obj;
            if (!containsKey(str)) {
                return super.put(str, obj2);
            }
            throw new IllegalArgumentException(C0844h.m187a("An entry for '", str, "' already exists. Names must be unique."));
        }
    }

    static {
        new C0925a();
    }

    /* renamed from: a */
    public static C0926b m94a(String str) {
        try {
            try {
                return (C0926b) new C0965a().m15b(new StringReader(str));
            } catch (IOException e) {
                throw new C0966b(-1, 2, e);
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            throw new C0570b("Parsing error: " + e, e);
        } catch (C0966b e3) {
            e = e3;
            throw new C0570b("Parsing error: " + e, e);
        }
    }
}
