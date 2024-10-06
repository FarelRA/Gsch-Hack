package p051o1;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import p066u0.C0880d;
/* renamed from: o1.s */
/* loaded from: classes.dex */
public final class C0815s {

    /* renamed from: n */
    public static final HashMap f2694n = new HashMap();

    /* renamed from: a */
    public final Context f2695a;

    /* renamed from: b */
    public final C0808l f2696b;

    /* renamed from: g */
    public boolean f2701g;

    /* renamed from: h */
    public final Intent f2702h;

    /* renamed from: l */
    public ServiceConnectionC0814r f2706l;

    /* renamed from: m */
    public IInterface f2707m;

    /* renamed from: d */
    public final ArrayList f2698d = new ArrayList();

    /* renamed from: e */
    public final HashSet f2699e = new HashSet();

    /* renamed from: f */
    public final Object f2700f = new Object();

    /* renamed from: j */
    public final C0810n f2704j = new IBinder.DeathRecipient() { // from class: o1.n
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C0815s c0815s = C0815s.this;
            c0815s.f2696b.m214a("reportBinderDeath", new Object[0]);
            InterfaceC0813q interfaceC0813q = (InterfaceC0813q) c0815s.f2703i.get();
            C0808l c0808l = c0815s.f2696b;
            if (interfaceC0813q != null) {
                c0808l.m214a("calling onBinderDied", new Object[0]);
                interfaceC0813q.m210a();
            } else {
                String str = c0815s.f2697c;
                c0808l.m214a("%s : Binder has died.", str);
                ArrayList arrayList = c0815s.f2698d;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((AbstractRunnableC0809m) it.next()).mo212a(new RemoteException(String.valueOf(str).concat(" : Binder has died.")));
                }
                arrayList.clear();
            }
            c0815s.m208b();
        }
    };

    /* renamed from: k */
    public final AtomicInteger f2705k = new AtomicInteger(0);

    /* renamed from: c */
    public final String f2697c = "IntegrityService";

    /* renamed from: i */
    public final WeakReference f2703i = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r0v3, types: [o1.n] */
    public C0815s(Context context, C0808l c0808l, Intent intent) {
        this.f2695a = context;
        this.f2696b = c0808l;
        this.f2702h = intent;
    }

    /* renamed from: a */
    public final Handler m209a() {
        Handler handler;
        HashMap hashMap = f2694n;
        synchronized (hashMap) {
            if (!hashMap.containsKey(this.f2697c)) {
                HandlerThread handlerThread = new HandlerThread(this.f2697c, 10);
                handlerThread.start();
                hashMap.put(this.f2697c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) hashMap.get(this.f2697c);
        }
        return handler;
    }

    /* renamed from: b */
    public final void m208b() {
        synchronized (this.f2700f) {
            Iterator it = this.f2699e.iterator();
            while (it.hasNext()) {
                ((C0880d) it.next()).m126a(new RemoteException(String.valueOf(this.f2697c).concat(" : Binder has died.")));
            }
            this.f2699e.clear();
        }
    }
}
