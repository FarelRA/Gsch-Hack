package p033i1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: i1.d */
/* loaded from: classes.dex */
public final class C0595d {

    /* renamed from: b */
    public static C0595d f2141b;

    /* renamed from: a */
    public final Object f2142a = new Object();

    /* renamed from: i1.d$a */
    /* loaded from: classes.dex */
    public class C0596a implements Handler.Callback {
        public C0596a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C0595d c0595d = C0595d.this;
            C0597b c0597b = (C0597b) message.obj;
            synchronized (c0595d.f2142a) {
                if (c0597b == null) {
                    c0597b.getClass();
                    throw null;
                }
            }
            return true;
        }
    }

    /* renamed from: i1.d$b */
    /* loaded from: classes.dex */
    public static class C0597b {
    }

    public C0595d() {
        new Handler(Looper.getMainLooper(), new C0596a());
    }

    /* renamed from: a */
    public final void m512a() {
        synchronized (this.f2142a) {
        }
    }
}
