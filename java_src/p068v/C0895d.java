package p068v;

import java.util.ArrayList;
import p039k.C0666h;
import p068v.C0896e;
import p068v.C0901f;
/* renamed from: v.d */
/* loaded from: classes.dex */
public final class C0895d implements C0901f.InterfaceC0903b<C0896e.C0900d> {

    /* renamed from: a */
    public final /* synthetic */ String f2831a;

    public C0895d(String str) {
        this.f2831a = str;
    }

    @Override // p068v.C0901f.InterfaceC0903b
    /* renamed from: b */
    public final void mo103a(C0896e.C0900d c0900d) {
        synchronized (C0896e.f2834c) {
            C0666h<String, ArrayList<C0901f.InterfaceC0903b<C0896e.C0900d>>> c0666h = C0896e.f2835d;
            ArrayList<C0901f.InterfaceC0903b<C0896e.C0900d>> orDefault = c0666h.getOrDefault(this.f2831a, null);
            if (orDefault == null) {
                return;
            }
            c0666h.remove(this.f2831a);
            for (int i = 0; i < orDefault.size(); i++) {
                orDefault.get(i).mo103a(c0900d);
            }
        }
    }
}
