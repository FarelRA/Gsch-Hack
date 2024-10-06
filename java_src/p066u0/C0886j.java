package p066u0;

import java.util.ArrayDeque;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: u0.j */
/* loaded from: classes.dex */
public final class C0886j {

    /* renamed from: a */
    public final Object f2795a = new Object();
    @GuardedBy("mLock")

    /* renamed from: b */
    public ArrayDeque f2796b;
    @GuardedBy("mLock")

    /* renamed from: c */
    public boolean f2797c;

    /* renamed from: a */
    public final void m122a(C0888l c0888l) {
        InterfaceC0885i interfaceC0885i;
        synchronized (this.f2795a) {
            if (this.f2796b != null && !this.f2797c) {
                this.f2797c = true;
                while (true) {
                    synchronized (this.f2795a) {
                        interfaceC0885i = (InterfaceC0885i) this.f2796b.poll();
                        if (interfaceC0885i == null) {
                            this.f2797c = false;
                            return;
                        }
                    }
                    interfaceC0885i.mo123a(c0888l);
                }
            }
        }
    }
}
