package p059r0;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
/* renamed from: r0.a */
/* loaded from: classes.dex */
public final class C0860a {

    /* renamed from: r0.a$a */
    /* loaded from: classes.dex */
    public static final class C0861a {

        /* renamed from: a */
        public final ArrayList f2767a;

        /* renamed from: b */
        public final Object f2768b;

        public C0861a(Object obj) {
            if (obj != null) {
                this.f2768b = obj;
                this.f2767a = new ArrayList();
                return;
            }
            throw new NullPointerException("null reference");
        }

        @CanIgnoreReturnValue
        /* renamed from: a */
        public final void m147a(Object obj, String str) {
            ArrayList arrayList = this.f2767a;
            String valueOf = String.valueOf(obj);
            arrayList.add(str + "=" + valueOf);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f2768b.getClass().getSimpleName());
            sb.append('{');
            ArrayList arrayList = this.f2767a;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                sb.append((String) arrayList.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static boolean m148a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
