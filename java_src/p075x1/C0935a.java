package p075x1;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import p046m1.C0736h;
/* renamed from: x1.a */
/* loaded from: classes.dex */
public final class C0935a extends ArrayList implements InterfaceC0936b, InterfaceC0938d {

    /* renamed from: a */
    public static final /* synthetic */ int f2916a = 0;

    /* renamed from: c */
    public static void m73c(Collection collection, StringWriter stringWriter) {
        if (collection == null) {
            stringWriter.write("null");
            return;
        }
        stringWriter.write(91);
        boolean z = true;
        for (Object obj : collection) {
            if (z) {
                z = false;
            } else {
                stringWriter.write(44);
            }
            if (obj == null) {
                stringWriter.write("null");
            } else {
                C0736h.m299N(obj, stringWriter);
            }
        }
        stringWriter.write(93);
    }
}
