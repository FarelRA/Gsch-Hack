package p028h;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.b */
/* loaded from: classes.dex */
public final class C0572b extends AbstractC0574c {

    /* renamed from: a */
    public final Object f2127a = new Object();

    /* renamed from: h.b$a */
    /* loaded from: classes.dex */
    public class ThreadFactoryC0573a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f2128a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f2128a.getAndIncrement())));
            return thread;
        }
    }

    public C0572b() {
        Executors.newFixedThreadPool(2, new ThreadFactoryC0573a());
    }
}
