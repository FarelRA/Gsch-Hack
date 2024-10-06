package p073x;
/* renamed from: x.b */
/* loaded from: classes.dex */
public class C0928b {

    /* renamed from: a */
    public final /* synthetic */ int f2892a;

    /* renamed from: b */
    public int f2893b;

    /* renamed from: c */
    public final Object f2894c;

    public C0928b(int i) {
        this.f2892a = 0;
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f2894c = new Object[i];
    }

    /* renamed from: a */
    public Object mo92a() {
        int i = this.f2893b;
        if (i > 0) {
            int i2 = i - 1;
            Object obj = this.f2894c;
            Object obj2 = ((Object[]) obj)[i2];
            ((Object[]) obj)[i2] = null;
            this.f2893b = i - 1;
            return obj2;
        }
        return null;
    }

    /* renamed from: b */
    public boolean mo91b(Object obj) {
        int i;
        Object obj2;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.f2893b;
            obj2 = this.f2894c;
            if (i2 < i) {
                if (((Object[]) obj2)[i2] == obj) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            if (i >= ((Object[]) obj2).length) {
                return false;
            }
            ((Object[]) obj2)[i] = obj;
            this.f2893b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }

    public final String toString() {
        String str;
        switch (this.f2892a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                switch (this.f2893b) {
                    case -1:
                        str = "END OF FILE";
                        sb.append(str);
                        return sb.toString();
                    case 0:
                        sb.append("VALUE(");
                        sb.append(this.f2894c);
                        str = ")";
                        sb.append(str);
                        return sb.toString();
                    case 1:
                        str = "LEFT BRACE({)";
                        sb.append(str);
                        return sb.toString();
                    case 2:
                        str = "RIGHT BRACE(})";
                        sb.append(str);
                        return sb.toString();
                    case 3:
                        str = "LEFT SQUARE([)";
                        sb.append(str);
                        return sb.toString();
                    case 4:
                        str = "RIGHT SQUARE(])";
                        sb.append(str);
                        return sb.toString();
                    case 5:
                        str = "COMMA(,)";
                        sb.append(str);
                        return sb.toString();
                    case 6:
                        str = "COLON(:)";
                        sb.append(str);
                        return sb.toString();
                    default:
                        return sb.toString();
                }
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C0928b(int i, int i2, Object obj) {
        this.f2892a = i2;
        this.f2893b = i;
        this.f2894c = obj;
    }
}
