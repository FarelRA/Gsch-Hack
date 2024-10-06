package p045m0;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Iterator;
import p045m0.C0717o;
import p045m0.C0720p;
import p045m0.C0725s;
import p045m0.InterfaceC0699b;
/* renamed from: m0.m */
/* loaded from: classes.dex */
public abstract class AbstractC0713m<T> implements Comparable<AbstractC0713m<T>> {

    /* renamed from: a */
    public final C0725s.C0726a f2480a;

    /* renamed from: b */
    public final int f2481b;

    /* renamed from: c */
    public final String f2482c;

    /* renamed from: d */
    public final int f2483d;

    /* renamed from: e */
    public final Object f2484e;

    /* renamed from: f */
    public final C0720p.InterfaceC0721a f2485f;

    /* renamed from: g */
    public Integer f2486g;

    /* renamed from: h */
    public C0717o f2487h;

    /* renamed from: i */
    public final boolean f2488i;

    /* renamed from: j */
    public boolean f2489j;

    /* renamed from: k */
    public C0704f f2490k;

    /* renamed from: l */
    public InterfaceC0699b.C0700a f2491l;

    /* renamed from: m */
    public InterfaceC0715b f2492m;

    /* renamed from: m0.m$a */
    /* loaded from: classes.dex */
    public class RunnableC0714a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ String f2493b;

        /* renamed from: c */
        public final /* synthetic */ long f2494c;

        public RunnableC0714a(String str, long j) {
            this.f2493b = str;
            this.f2494c = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0713m abstractC0713m = AbstractC0713m.this;
            abstractC0713m.f2480a.m320a(this.f2493b, this.f2494c);
            abstractC0713m.f2480a.m319b(abstractC0713m.toString());
        }
    }

    /* renamed from: m0.m$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0715b {
    }

    public AbstractC0713m(String str, C0720p.InterfaceC0721a interfaceC0721a) {
        C0725s.C0726a c0726a;
        Uri parse;
        String host;
        if (C0725s.C0726a.f2513c) {
            c0726a = new C0725s.C0726a();
        } else {
            c0726a = null;
        }
        this.f2480a = c0726a;
        this.f2484e = new Object();
        this.f2488i = true;
        int i = 0;
        this.f2489j = false;
        this.f2491l = null;
        this.f2481b = 0;
        this.f2482c = str;
        this.f2485f = interfaceC0721a;
        this.f2490k = new C0704f();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i = host.hashCode();
        }
        this.f2483d = i;
    }

    /* renamed from: a */
    public final void m340a(String str) {
        if (C0725s.C0726a.f2513c) {
            this.f2480a.m320a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: b */
    public abstract void mo238b(T t);

    /* renamed from: c */
    public final void m339c(String str) {
        C0717o c0717o = this.f2487h;
        if (c0717o != null) {
            synchronized (c0717o.f2497b) {
                c0717o.f2497b.remove(this);
            }
            synchronized (c0717o.f2505j) {
                Iterator it = c0717o.f2505j.iterator();
                while (it.hasNext()) {
                    ((C0717o.InterfaceC0719b) it.next()).m325a();
                }
            }
            c0717o.m327b(this, 5);
        }
        if (C0725s.C0726a.f2513c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0714a(str, id));
                return;
            }
            this.f2480a.m320a(str, id);
            this.f2480a.m319b(toString());
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        AbstractC0713m abstractC0713m = (AbstractC0713m) obj;
        abstractC0713m.getClass();
        return this.f2486g.intValue() - abstractC0713m.f2486g.intValue();
    }

    /* renamed from: d */
    public final String m338d() {
        String str = this.f2482c;
        int i = this.f2481b;
        if (i == 0 || i == -1) {
            return str;
        }
        return Integer.toString(i) + '-' + str;
    }

    /* renamed from: e */
    public final boolean m337e() {
        boolean z;
        synchronized (this.f2484e) {
            z = this.f2489j;
        }
        return z;
    }

    /* renamed from: f */
    public final void m336f() {
        synchronized (this.f2484e) {
        }
    }

    /* renamed from: g */
    public final void m335g() {
        synchronized (this.f2484e) {
            this.f2489j = true;
        }
    }

    /* renamed from: h */
    public final void m334h() {
        InterfaceC0715b interfaceC0715b;
        synchronized (this.f2484e) {
            interfaceC0715b = this.f2492m;
        }
        if (interfaceC0715b != null) {
            ((C0728t) interfaceC0715b).m317b(this);
        }
    }

    /* renamed from: i */
    public final void m333i(C0720p<?> c0720p) {
        InterfaceC0715b interfaceC0715b;
        synchronized (this.f2484e) {
            interfaceC0715b = this.f2492m;
        }
        if (interfaceC0715b != null) {
            ((C0728t) interfaceC0715b).m316c(this, c0720p);
        }
    }

    /* renamed from: j */
    public abstract C0720p<T> mo237j(C0712l c0712l);

    /* renamed from: k */
    public final void m332k(int i) {
        C0717o c0717o = this.f2487h;
        if (c0717o != null) {
            c0717o.m327b(this, i);
        }
    }

    /* renamed from: l */
    public final void m331l(InterfaceC0715b interfaceC0715b) {
        synchronized (this.f2484e) {
            this.f2492m = interfaceC0715b;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[ ] ");
        m336f();
        sb.append(this.f2482c);
        sb.append(" ");
        sb.append("0x" + Integer.toHexString(this.f2483d));
        sb.append(" ");
        sb.append(C0716n.m329b(2));
        sb.append(" ");
        sb.append(this.f2486g);
        return sb.toString();
    }
}
