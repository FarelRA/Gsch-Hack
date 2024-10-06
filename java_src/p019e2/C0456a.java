package p019e2;

import java.io.IOException;
import java.io.StringWriter;
import java.util.LinkedHashMap;
import p020f.C0460c;
import p046m1.C0736h;
/* renamed from: e2.a */
/* loaded from: classes.dex */
public final class C0456a {

    /* renamed from: a */
    public final C0460c f1764a = new C0460c(8);

    /* renamed from: b */
    public LinkedHashMap f1765b = new LinkedHashMap();

    /* renamed from: c */
    public String f1766c;

    /* renamed from: d */
    public String f1767d;

    /* renamed from: a */
    public final String m709a() {
        if (this.f1766c == null) {
            LinkedHashMap linkedHashMap = this.f1765b;
            StringWriter stringWriter = new StringWriter();
            try {
                C0736h.m299N(linkedHashMap, stringWriter);
                this.f1766c = stringWriter.toString();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return this.f1766c;
    }

    /* renamed from: b */
    public final String m708b(String str) {
        return (String) this.f1765b.get(str);
    }
}
