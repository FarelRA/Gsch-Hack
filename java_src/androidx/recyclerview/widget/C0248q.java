package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.q */
/* loaded from: classes.dex */
public final class C0248q {

    /* renamed from: a */
    public final InterfaceC0250b f947a;

    /* renamed from: b */
    public final C0249a f948b = new C0249a();

    /* renamed from: androidx.recyclerview.widget.q$a */
    /* loaded from: classes.dex */
    public static class C0249a {

        /* renamed from: a */
        public int f949a = 0;

        /* renamed from: b */
        public int f950b;

        /* renamed from: c */
        public int f951c;

        /* renamed from: d */
        public int f952d;

        /* renamed from: e */
        public int f953e;

        /* renamed from: a */
        public final boolean m1054a() {
            int i = this.f949a;
            int i2 = 2;
            if ((i & 7) != 0) {
                int i3 = this.f952d;
                int i4 = this.f950b;
                if ((((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) << 0) & i) == 0) {
                    return false;
                }
            }
            if ((i & 112) != 0) {
                int i5 = this.f952d;
                int i6 = this.f951c;
                if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                    return false;
                }
            }
            if ((i & 1792) != 0) {
                int i7 = this.f953e;
                int i8 = this.f950b;
                if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                    return false;
                }
            }
            if ((i & 28672) != 0) {
                int i9 = this.f953e;
                int i10 = this.f951c;
                if (i9 > i10) {
                    i2 = 1;
                } else if (i9 != i10) {
                    i2 = 4;
                }
                if ((i & (i2 << 12)) == 0) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.q$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0250b {
        /* renamed from: a */
        View mo1053a(int i);

        /* renamed from: b */
        int mo1052b();

        /* renamed from: c */
        int mo1051c();

        /* renamed from: d */
        int mo1050d(View view);

        /* renamed from: e */
        int mo1049e(View view);
    }

    public C0248q(InterfaceC0250b interfaceC0250b) {
        this.f947a = interfaceC0250b;
    }

    /* renamed from: a */
    public final View m1055a(int i, int i2, int i3, int i4) {
        int i5;
        InterfaceC0250b interfaceC0250b = this.f947a;
        int mo1051c = interfaceC0250b.mo1051c();
        int mo1052b = interfaceC0250b.mo1052b();
        if (i2 > i) {
            i5 = 1;
        } else {
            i5 = -1;
        }
        View view = null;
        while (i != i2) {
            View mo1053a = interfaceC0250b.mo1053a(i);
            int mo1049e = interfaceC0250b.mo1049e(mo1053a);
            int mo1050d = interfaceC0250b.mo1050d(mo1053a);
            C0249a c0249a = this.f948b;
            c0249a.f950b = mo1051c;
            c0249a.f951c = mo1052b;
            c0249a.f952d = mo1049e;
            c0249a.f953e = mo1050d;
            if (i3 != 0) {
                c0249a.f949a = i3 | 0;
                if (c0249a.m1054a()) {
                    return mo1053a;
                }
            }
            if (i4 != 0) {
                c0249a.f949a = i4 | 0;
                if (c0249a.m1054a()) {
                    view = mo1053a;
                }
            }
            i += i5;
        }
        return view;
    }
}
