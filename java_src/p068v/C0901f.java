package p068v;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: v.f */
/* loaded from: classes.dex */
public final class C0901f {

    /* renamed from: b */
    public HandlerThread f2847b;

    /* renamed from: c */
    public Handler f2848c;

    /* renamed from: a */
    public final Object f2846a = new Object();

    /* renamed from: d */
    public final C0902a f2849d = new C0902a();

    /* renamed from: v.f$a */
    /* loaded from: classes.dex */
    public class C0902a implements Handler.Callback {
        public C0902a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return true;
                }
                C0901f.this.m106a((Runnable) message.obj);
                return true;
            }
            C0901f c0901f = C0901f.this;
            synchronized (c0901f.f2846a) {
                if (!c0901f.f2848c.hasMessages(1)) {
                    c0901f.f2847b.quit();
                    c0901f.f2847b = null;
                    c0901f.f2848c = null;
                }
            }
            return true;
        }
    }

    /* renamed from: v.f$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0903b<T> {
        /* renamed from: a */
        void mo103a(T t);
    }

    /* renamed from: a */
    public final void m106a(Runnable runnable) {
        runnable.run();
        synchronized (this.f2846a) {
            this.f2848c.removeMessages(0);
            Handler handler = this.f2848c;
            handler.sendMessageDelayed(handler.obtainMessage(0), 10000);
        }
    }

    /* renamed from: b */
    public final void m105b(Runnable runnable) {
        synchronized (this.f2846a) {
            if (this.f2847b == null) {
                HandlerThread handlerThread = new HandlerThread("fonts", 10);
                this.f2847b = handlerThread;
                handlerThread.start();
                this.f2848c = new Handler(this.f2847b.getLooper(), this.f2849d);
            }
            this.f2848c.removeMessages(0);
            Handler handler = this.f2848c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    /* renamed from: c */
    public final Object m104c(CallableC0893b callableC0893b, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m105b(new RunnableC0906h(atomicReference, callableC0893b, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (atomicBoolean.get()) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(i);
                do {
                    try {
                        nanos = newCondition.awaitNanos(nanos);
                    } catch (InterruptedException unused) {
                    }
                    if (!atomicBoolean.get()) {
                        return atomicReference.get();
                    }
                } while (nanos > 0);
                throw new InterruptedException("timeout");
            }
            return atomicReference.get();
        } finally {
            reentrantLock.unlock();
        }
    }
}
