package p075x1;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import p046m1.C0736h;
/* renamed from: x1.c */
/* loaded from: classes.dex */
public final class C0937c extends HashMap implements Map, InterfaceC0936b, InterfaceC0938d {
    /* renamed from: c */
    public static void m71c(Map map, StringWriter stringWriter) {
        if (map == null) {
            stringWriter.write("null");
            return;
        }
        stringWriter.write(123);
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (z) {
                z = false;
            } else {
                stringWriter.write(44);
            }
            stringWriter.write(34);
            stringWriter.write(C0736h.m281s(String.valueOf(entry.getKey())));
            stringWriter.write(34);
            stringWriter.write(58);
            C0736h.m299N(entry.getValue(), stringWriter);
        }
        stringWriter.write(125);
    }
}
