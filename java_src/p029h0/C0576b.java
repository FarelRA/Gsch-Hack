package p029h0;

import androidx.lifecycle.AbstractC0170l;
import androidx.lifecycle.C0168j;
import androidx.lifecycle.C0171m;
import androidx.lifecycle.InterfaceC0163g;
import java.io.PrintWriter;
import p039k.C0667i;
import p046m1.C0736h;
/* renamed from: h0.b */
/* loaded from: classes.dex */
public final class C0576b extends AbstractC0575a {

    /* renamed from: a */
    public final InterfaceC0163g f2129a;

    /* renamed from: b */
    public final C0578b f2130b;

    /* renamed from: h0.b$a */
    /* loaded from: classes.dex */
    public static class C0577a<D> extends C0168j<D> {
        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #0 : ");
            C0736h.m292h(null, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: h0.b$b */
    /* loaded from: classes.dex */
    public static class C0578b extends AbstractC0170l {

        /* renamed from: a */
        public final C0667i<C0577a> f2131a = new C0667i<>();

        /* renamed from: h0.b$b$a */
        /* loaded from: classes.dex */
        public static class C0579a {
        }

        static {
            new C0579a();
        }

        @Override // androidx.lifecycle.AbstractC0170l
        /* renamed from: a */
        public final void mo516a() {
            C0667i<C0577a> c0667i = this.f2131a;
            if (c0667i.m391f() <= 0) {
                int i = c0667i.f2311d;
                Object[] objArr = c0667i.f2310c;
                for (int i2 = 0; i2 < i; i2++) {
                    objArr[i2] = null;
                }
                c0667i.f2311d = 0;
                c0667i.f2308a = false;
                return;
            }
            c0667i.m390g(0).getClass();
            throw null;
        }
    }

    public C0576b(InterfaceC0163g interfaceC0163g, C0171m c0171m) {
        AbstractC0170l put;
        this.f2129a = interfaceC0163g;
        String canonicalName = C0578b.class.getCanonicalName();
        if (canonicalName != null) {
            String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            AbstractC0170l abstractC0170l = c0171m.f702a.get(concat);
            if (!C0578b.class.isInstance(abstractC0170l) && (put = c0171m.f702a.put(concat, (abstractC0170l = new C0578b()))) != null) {
                put.mo516a();
            }
            this.f2130b = (C0578b) abstractC0170l;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Deprecated
    /* renamed from: b */
    public final void m517b(String str, PrintWriter printWriter) {
        C0667i<C0577a> c0667i = this.f2130b.f2131a;
        if (c0667i.m391f() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            if (c0667i.m391f() > 0) {
                C0577a m390g = c0667i.m390g(0);
                printWriter.print(str);
                printWriter.print("  #");
                if (c0667i.f2308a) {
                    c0667i.m394c();
                }
                printWriter.print(c0667i.f2309b[0]);
                printWriter.print(": ");
                printWriter.println(m390g.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println((Object) null);
                throw null;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0736h.m292h(this.f2129a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
