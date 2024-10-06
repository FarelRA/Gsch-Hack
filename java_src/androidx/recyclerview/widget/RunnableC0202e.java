package androidx.recyclerview.widget;

import android.os.Trace;
import androidx.recyclerview.widget.C0212k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import p065u.C0876a;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes.dex */
public final class RunnableC0202e implements Runnable {

    /* renamed from: f */
    public static final ThreadLocal<RunnableC0202e> f806f = new ThreadLocal<>();

    /* renamed from: g */
    public static final C0203a f807g = new C0203a();

    /* renamed from: c */
    public long f809c;

    /* renamed from: d */
    public long f810d;

    /* renamed from: b */
    public final ArrayList<C0212k> f808b = new ArrayList<>();

    /* renamed from: e */
    public final ArrayList<C0205c> f811e = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes.dex */
    public static class C0203a implements Comparator<C0205c> {
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
            if (r0 == null) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
            if (r0 != false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0022, code lost:
            r1 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
            return r1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int compare(C0205c c0205c, C0205c c0205c2) {
            boolean z;
            boolean z2;
            C0205c c0205c3 = c0205c;
            C0205c c0205c4 = c0205c2;
            C0212k c0212k = c0205c3.f818d;
            int i = 1;
            if (c0212k == null) {
                z = true;
            } else {
                z = false;
            }
            if (c0205c4.f818d == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                boolean z3 = c0205c3.f815a;
                if (z3 == c0205c4.f815a) {
                    int i2 = c0205c4.f816b - c0205c3.f816b;
                    if (i2 != 0) {
                        return i2;
                    }
                    int i3 = c0205c3.f817c - c0205c4.f817c;
                    if (i3 == 0) {
                        return 0;
                    }
                    return i3;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes.dex */
    public static class C0204b {

        /* renamed from: a */
        public int f812a;

        /* renamed from: b */
        public int f813b;

        /* renamed from: c */
        public int f814c;
    }

    /* renamed from: androidx.recyclerview.widget.e$c */
    /* loaded from: classes.dex */
    public static class C0205c {

        /* renamed from: a */
        public boolean f815a;

        /* renamed from: b */
        public int f816b;

        /* renamed from: c */
        public int f817c;

        /* renamed from: d */
        public C0212k f818d;

        /* renamed from: e */
        public int f819e;
    }

    /* renamed from: a */
    public final void m1150a(C0212k c0212k, int i, int i2) {
        if (c0212k.isAttachedToWindow() && this.f809c == 0) {
            this.f809c = c0212k.getNanoTime();
            c0212k.post(this);
        }
        C0204b c0204b = c0212k.f849V;
        c0204b.f812a = i;
        c0204b.f813b = i2;
    }

    /* renamed from: b */
    public final void m1149b(long j) {
        C0205c c0205c;
        C0212k c0212k;
        ArrayList<C0212k> arrayList = this.f808b;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C0212k c0212k2 = arrayList.get(i2);
            if (c0212k2.getWindowVisibility() == 0) {
                C0204b c0204b = c0212k2.f849V;
                c0204b.f814c = 0;
                c0204b.getClass();
                i += c0204b.f814c;
            }
        }
        ArrayList<C0205c> arrayList2 = this.f811e;
        arrayList2.ensureCapacity(i);
        for (int i3 = 0; i3 < size; i3++) {
            C0212k c0212k3 = arrayList.get(i3);
            if (c0212k3.getWindowVisibility() == 0) {
                C0204b c0204b2 = c0212k3.f849V;
                Math.abs(c0204b2.f812a);
                Math.abs(c0204b2.f813b);
                if (c0204b2.f814c * 2 > 0) {
                    if (arrayList2.size() <= 0) {
                        arrayList2.add(new C0205c());
                    } else {
                        arrayList2.get(0);
                    }
                    c0204b2.getClass();
                    throw null;
                }
            }
        }
        Collections.sort(arrayList2, f807g);
        if (arrayList2.size() > 0 && (c0212k = (c0205c = arrayList2.get(0)).f818d) != null) {
            if (c0205c.f815a) {
                j = Long.MAX_VALUE;
            }
            int i4 = c0205c.f819e;
            if (c0212k.f858e.m1165e() <= 0) {
                C0212k.C0234p c0234p = c0212k.f852b;
                try {
                    c0212k.m1129p();
                    c0234p.m1072e(i4, j);
                    throw null;
                } catch (Throwable th) {
                    c0212k.m1128q(false);
                    throw th;
                }
            }
            C0212k.m1132m(c0212k.f858e.m1166d(0));
            throw null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i = C0876a.f2786a;
            Trace.beginSection("RV Prefetch");
            ArrayList<C0212k> arrayList = this.f808b;
            if (arrayList.isEmpty()) {
                this.f809c = 0L;
                Trace.endSection();
                return;
            }
            int size = arrayList.size();
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                C0212k c0212k = arrayList.get(i2);
                if (c0212k.getWindowVisibility() == 0) {
                    j = Math.max(c0212k.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                this.f809c = 0L;
                Trace.endSection();
                return;
            }
            m1149b(TimeUnit.MILLISECONDS.toNanos(j) + this.f810d);
            this.f809c = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.f809c = 0L;
            int i3 = C0876a.f2786a;
            Trace.endSection();
            throw th;
        }
    }
}
