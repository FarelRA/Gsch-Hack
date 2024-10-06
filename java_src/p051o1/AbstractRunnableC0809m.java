package p051o1;

import p066u0.C0880d;
/* renamed from: o1.m */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0809m implements Runnable {

    /* renamed from: b */
    public final C0880d f2686b;

    public AbstractRunnableC0809m() {
        this.f2686b = null;
    }

    public AbstractRunnableC0809m(C0880d c0880d) {
        this.f2686b = c0880d;
    }

    /* renamed from: a */
    public void mo212a(Exception exc) {
        C0880d c0880d = this.f2686b;
        if (c0880d != null) {
            c0880d.m126a(exc);
        }
    }

    /* renamed from: b */
    public abstract void mo211b();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo211b();
        } catch (Exception e) {
            mo212a(e);
        }
    }
}
