package p051o1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import p046m1.C0739k;
import p066u0.C0880d;
/* renamed from: o1.o */
/* loaded from: classes.dex */
public final class C0811o extends AbstractRunnableC0809m {

    /* renamed from: c */
    public final /* synthetic */ int f2688c = 1;

    /* renamed from: d */
    public final /* synthetic */ Object f2689d;

    /* renamed from: e */
    public final /* synthetic */ Object f2690e;

    public C0811o(ServiceConnectionC0814r serviceConnectionC0814r, IBinder iBinder) {
        this.f2690e = serviceConnectionC0814r;
        this.f2689d = iBinder;
    }

    @Override // p051o1.AbstractRunnableC0809m
    /* renamed from: b */
    public final void mo211b() {
        InterfaceC0806j c0804h;
        int i = this.f2688c;
        Object obj = this.f2689d;
        Object obj2 = this.f2690e;
        switch (i) {
            case 0:
                C0815s c0815s = (C0815s) obj2;
                AbstractRunnableC0809m abstractRunnableC0809m = (AbstractRunnableC0809m) obj;
                IInterface iInterface = c0815s.f2707m;
                ArrayList arrayList = c0815s.f2698d;
                C0808l c0808l = c0815s.f2696b;
                if (iInterface == null && !c0815s.f2701g) {
                    c0808l.m214a("Initiate binding to the service.", new Object[0]);
                    arrayList.add(abstractRunnableC0809m);
                    ServiceConnectionC0814r serviceConnectionC0814r = new ServiceConnectionC0814r(c0815s);
                    c0815s.f2706l = serviceConnectionC0814r;
                    c0815s.f2701g = true;
                    if (!c0815s.f2695a.bindService(c0815s.f2702h, serviceConnectionC0814r, 1)) {
                        c0808l.m214a("Failed to bind to the service.", new Object[0]);
                        c0815s.f2701g = false;
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((AbstractRunnableC0809m) it.next()).mo212a(new C0816t());
                        }
                        arrayList.clear();
                        return;
                    }
                    return;
                } else if (c0815s.f2701g) {
                    c0808l.m214a("Waiting to bind to the service.", new Object[0]);
                    arrayList.add(abstractRunnableC0809m);
                    return;
                } else {
                    abstractRunnableC0809m.run();
                    return;
                }
            default:
                ServiceConnectionC0814r serviceConnectionC0814r2 = (ServiceConnectionC0814r) obj2;
                C0815s c0815s2 = serviceConnectionC0814r2.f2693a;
                IBinder iBinder = (IBinder) obj;
                int i2 = AbstractBinderC0805i.f2684a;
                if (iBinder == null) {
                    c0804h = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
                    if (queryLocalInterface instanceof InterfaceC0806j) {
                        c0804h = (InterfaceC0806j) queryLocalInterface;
                    } else {
                        c0804h = new C0804h(iBinder);
                    }
                }
                c0815s2.f2707m = c0804h;
                C0815s c0815s3 = serviceConnectionC0814r2.f2693a;
                c0815s3.f2696b.m214a("linkToDeath", new Object[0]);
                try {
                    c0815s3.f2707m.asBinder().linkToDeath(c0815s3.f2704j, 0);
                } catch (RemoteException e) {
                    Object[] objArr = new Object[0];
                    C0808l c0808l2 = c0815s3.f2696b;
                    c0808l2.getClass();
                    if (Log.isLoggable("PlayCore", 6)) {
                        Log.e("PlayCore", C0808l.m213b(c0808l2.f2685a, "linkToDeath failed", objArr), e);
                    }
                }
                c0815s3.f2701g = false;
                Iterator it2 = c0815s3.f2698d.iterator();
                while (it2.hasNext()) {
                    ((Runnable) it2.next()).run();
                }
                c0815s3.f2698d.clear();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0811o(C0815s c0815s, C0880d c0880d, C0739k c0739k) {
        super(c0880d);
        this.f2690e = c0815s;
        this.f2689d = c0739k;
    }
}
