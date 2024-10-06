package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0207g;
import java.util.ArrayList;
import p073x.C0928b;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes.dex */
public final class C0189a implements C0207g.InterfaceC0208a {

    /* renamed from: a */
    public final C0928b f755a = new C0928b(30);

    /* renamed from: b */
    public final ArrayList<C0190a> f756b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<C0190a> f757c = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes.dex */
    public static class C0190a {

        /* renamed from: a */
        public Object f758a;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0190a.class != obj.getClass()) {
                return false;
            }
            C0190a c0190a = (C0190a) obj;
            c0190a.getClass();
            c0190a.getClass();
            c0190a.getClass();
            Object obj2 = this.f758a;
            Object obj3 = c0190a.f758a;
            if (obj2 != null) {
                if (!obj2.equals(obj3)) {
                    return false;
                }
            } else if (obj3 != null) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((0 * 31) + 0) * 31) + 0;
        }

        public final String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[??,s:0c:0,p:" + this.f758a + "]";
        }
    }

    public C0189a(C0243m c0243m) {
        new C0207g(this);
    }

    /* renamed from: a */
    public final int m1172a(int i, int i2) {
        ArrayList<C0190a> arrayList = this.f757c;
        int size = arrayList.size();
        while (i2 < size) {
            C0190a c0190a = arrayList.get(i2);
            c0190a.getClass();
            c0190a.getClass();
            i2++;
        }
        return i;
    }

    /* renamed from: b */
    public final void m1171b(C0190a c0190a) {
        c0190a.f758a = null;
        this.f755a.mo91b(c0190a);
    }

    /* renamed from: c */
    public final void m1170c(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m1171b((C0190a) arrayList.get(i));
        }
        arrayList.clear();
    }
}
