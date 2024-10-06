package p047n0;

import android.content.Context;
import java.io.File;
import p047n0.C0747c;
/* renamed from: n0.j */
/* loaded from: classes.dex */
public final class C0759j implements C0747c.InterfaceC0750c {

    /* renamed from: a */
    public File f2634a = null;

    /* renamed from: b */
    public final /* synthetic */ Context f2635b;

    public C0759j(Context context) {
        this.f2635b = context;
    }

    /* renamed from: a */
    public final File m236a() {
        if (this.f2634a == null) {
            this.f2634a = new File(this.f2635b.getCacheDir(), "volley");
        }
        return this.f2634a;
    }
}
