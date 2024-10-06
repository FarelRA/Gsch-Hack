package p011c2;

import java.util.LinkedHashMap;
import javax.crypto.spec.SecretKeySpec;
import p011c2.AbstractC0322b;
import p020f.C0460c;
import p072w1.C0924a;
/* renamed from: c2.c */
/* loaded from: classes.dex */
public final class C0325c extends AbstractC0322b {

    /* renamed from: e */
    public final byte[] f1153e;

    public C0325c(C0924a.C0926b c0926b) {
        super(c0926b);
        byte[] m699f = new C0460c(8).m699f(AbstractC0322b.m991c(c0926b, "k", true));
        this.f1153e = m699f;
        this.f1149d = new SecretKeySpec(m699f, "AES");
    }

    @Override // p011c2.AbstractC0322b
    /* renamed from: a */
    public final void mo988a(LinkedHashMap linkedHashMap) {
        if (AbstractC0322b.EnumC0324b.f1150a.compareTo(AbstractC0322b.EnumC0324b.f1151b) >= 0) {
            linkedHashMap.put("k", new C0460c(8).m698g(this.f1153e));
        }
    }

    @Override // p011c2.AbstractC0322b
    /* renamed from: b */
    public final String mo983b() {
        return "oct";
    }
}
