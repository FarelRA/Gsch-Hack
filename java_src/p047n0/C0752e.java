package p047n0;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p045m0.C0708h;
/* renamed from: n0.e */
/* loaded from: classes.dex */
public final class C0752e {

    /* renamed from: a */
    public final int f2624a;

    /* renamed from: b */
    public final List<C0708h> f2625b;

    /* renamed from: c */
    public final int f2626c;

    /* renamed from: d */
    public final InputStream f2627d;

    public C0752e(int i, ArrayList arrayList) {
        this(i, arrayList, -1, null);
    }

    public C0752e(int i, ArrayList arrayList, int i2, InputStream inputStream) {
        this.f2624a = i;
        this.f2625b = arrayList;
        this.f2626c = i2;
        this.f2627d = inputStream;
    }

    /* renamed from: a */
    public final InputStream m246a() {
        InputStream inputStream = this.f2627d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    /* renamed from: b */
    public final List<C0708h> m245b() {
        return Collections.unmodifiableList(this.f2625b);
    }
}
