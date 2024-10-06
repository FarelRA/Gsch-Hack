package p068v;

import android.content.Context;
import android.graphics.Typeface;
import java.util.concurrent.Callable;
import p068v.C0896e;
/* renamed from: v.b */
/* loaded from: classes.dex */
public final class CallableC0893b implements Callable<C0896e.C0900d> {

    /* renamed from: a */
    public final /* synthetic */ Context f2825a;

    /* renamed from: b */
    public final /* synthetic */ C0892a f2826b;

    /* renamed from: c */
    public final /* synthetic */ int f2827c;

    /* renamed from: d */
    public final /* synthetic */ String f2828d;

    public CallableC0893b(Context context, C0892a c0892a, int i, String str) {
        this.f2825a = context;
        this.f2826b = c0892a;
        this.f2827c = i;
        this.f2828d = str;
    }

    @Override // java.util.concurrent.Callable
    public final C0896e.C0900d call() {
        C0896e.C0900d m107b = C0896e.m107b(this.f2825a, this.f2826b, this.f2827c);
        Typeface typeface = m107b.f2844a;
        if (typeface != null) {
            C0896e.f2832a.m420b(this.f2828d, typeface);
        }
        return m107b;
    }
}
