package androidx.lifecycle;

import android.os.Looper;
import androidx.lifecycle.AbstractC0160f;
import java.util.Map;
import p028h.C0571a;
import p032i.C0585b;
import p057q1.C0844h;
/* loaded from: classes.dex */
public abstract class LiveData<T> {

    /* renamed from: h */
    public static final Object f675h = new Object();

    /* renamed from: a */
    public final Object f676a = new Object();

    /* renamed from: b */
    public final C0585b<Object, LiveData<T>.AbstractC0154a> f677b = new C0585b<>();

    /* renamed from: c */
    public volatile Object f678c;

    /* renamed from: d */
    public volatile Object f679d;

    /* renamed from: e */
    public int f680e;

    /* renamed from: f */
    public boolean f681f;

    /* renamed from: g */
    public boolean f682g;

    /* loaded from: classes.dex */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0154a implements InterfaceC0159e {
        public LifecycleBoundObserver() {
            throw null;
        }

        @Override // androidx.lifecycle.InterfaceC0159e
        /* renamed from: a */
        public final void mo1210a(InterfaceC0163g interfaceC0163g, AbstractC0160f.EnumC0161a enumC0161a) {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0154a
        /* renamed from: c */
        public final boolean mo1219c() {
            throw null;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes.dex */
    public abstract class AbstractC0154a {

        /* renamed from: a */
        public boolean f683a;

        /* renamed from: b */
        public int f684b;

        public AbstractC0154a() {
            throw null;
        }

        /* renamed from: b */
        public final void m1220b(boolean z) {
            if (z == this.f683a) {
                return;
            }
            this.f683a = z;
            throw null;
        }

        /* renamed from: c */
        public abstract boolean mo1219c();
    }

    public LiveData() {
        Object obj = f675h;
        this.f678c = obj;
        this.f679d = obj;
        this.f680e = -1;
    }

    /* renamed from: a */
    public static void m1222a(String str) {
        boolean z;
        C0571a.m522f().f2126a.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        throw new IllegalStateException(C0844h.m187a("Cannot invoke ", str, " on a background thread"));
    }

    /* renamed from: b */
    public final void m1221b(LiveData<T>.AbstractC0154a abstractC0154a) {
        if (this.f681f) {
            this.f682g = true;
            return;
        }
        this.f681f = true;
        do {
            this.f682g = false;
            if (abstractC0154a != null) {
                if (abstractC0154a.f683a) {
                    if (!abstractC0154a.mo1219c()) {
                        abstractC0154a.m1220b(false);
                    } else {
                        int i = abstractC0154a.f684b;
                        int i2 = this.f680e;
                        if (i < i2) {
                            abstractC0154a.f684b = i2;
                            throw null;
                        }
                    }
                }
                abstractC0154a = null;
            } else {
                C0585b<Object, LiveData<T>.AbstractC0154a> c0585b = this.f677b;
                c0585b.getClass();
                C0585b.C0589d c0589d = new C0585b.C0589d();
                c0585b.f2134a.put(c0589d, Boolean.FALSE);
                while (c0589d.hasNext()) {
                    AbstractC0154a abstractC0154a2 = (AbstractC0154a) ((Map.Entry) c0589d.next()).getValue();
                    if (abstractC0154a2.f683a) {
                        if (!abstractC0154a2.mo1219c()) {
                            abstractC0154a2.m1220b(false);
                        } else {
                            int i3 = abstractC0154a2.f684b;
                            int i4 = this.f680e;
                            if (i3 < i4) {
                                abstractC0154a2.f684b = i4;
                                throw null;
                            }
                        }
                    }
                    if (this.f682g) {
                        break;
                    }
                }
            }
        } while (this.f682g);
        this.f681f = false;
    }
}
