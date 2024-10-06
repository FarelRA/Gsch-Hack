package p068v;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: v.h */
/* loaded from: classes.dex */
public final class RunnableC0906h implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ AtomicReference f2856b;

    /* renamed from: c */
    public final /* synthetic */ Callable f2857c;

    /* renamed from: d */
    public final /* synthetic */ ReentrantLock f2858d;

    /* renamed from: e */
    public final /* synthetic */ AtomicBoolean f2859e;

    /* renamed from: f */
    public final /* synthetic */ Condition f2860f;

    public RunnableC0906h(AtomicReference atomicReference, CallableC0893b callableC0893b, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.f2856b = atomicReference;
        this.f2857c = callableC0893b;
        this.f2858d = reentrantLock;
        this.f2859e = atomicBoolean;
        this.f2860f = condition;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f2856b.set(this.f2857c.call());
        } catch (Exception unused) {
        }
        ReentrantLock reentrantLock = this.f2858d;
        reentrantLock.lock();
        try {
            this.f2859e.set(false);
            this.f2860f.signal();
        } finally {
            reentrantLock.unlock();
        }
    }
}
