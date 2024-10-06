package androidx.lifecycle;

import java.util.HashMap;
/* renamed from: androidx.lifecycle.m */
/* loaded from: classes.dex */
public final class C0171m {

    /* renamed from: a */
    public final HashMap<String, AbstractC0170l> f702a = new HashMap<>();

    /* renamed from: a */
    public final void m1202a() {
        HashMap<String, AbstractC0170l> hashMap = this.f702a;
        for (AbstractC0170l abstractC0170l : hashMap.values()) {
            abstractC0170l.mo516a();
        }
        hashMap.clear();
    }
}
