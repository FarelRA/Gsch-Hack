package p078y1;
/* renamed from: y1.b */
/* loaded from: classes.dex */
public final class C0966b extends Exception {

    /* renamed from: a */
    public final int f2952a;

    /* renamed from: b */
    public final Object f2953b;

    /* renamed from: c */
    public final int f2954c;

    public C0966b(int i, int i2, Object obj) {
        this.f2954c = i;
        this.f2952a = i2;
        this.f2953b = obj;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder();
        Object obj = this.f2953b;
        int i = this.f2954c;
        int i2 = this.f2952a;
        if (i2 == 0) {
            sb.append("Unexpected character (");
            sb.append(obj);
            str = ") at position ";
        } else if (i2 == 1) {
            sb.append("Unexpected token ");
            sb.append(obj);
            str = " at position ";
        } else if (i2 == 2) {
            sb.append("Unexpected exception at position ");
            sb.append(i);
            sb.append(": ");
            sb.append(obj);
            return sb.toString();
        } else {
            str = "Unknown error at position ";
        }
        sb.append(str);
        sb.append(i);
        sb.append(".");
        return sb.toString();
    }
}
