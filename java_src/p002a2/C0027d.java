package p002a2;

import java.security.Key;
import p046m1.C0736h;
import p081z1.C0985b;
/* renamed from: a2.d */
/* loaded from: classes.dex */
public class C0027d extends AbstractC0049n {

    /* renamed from: g */
    public final int f72g;

    /* renamed from: a2.d$a */
    /* loaded from: classes.dex */
    public static class C0028a extends C0027d {
        public C0028a() {
            super(16, "A128KW");
        }
    }

    /* renamed from: a2.d$b */
    /* loaded from: classes.dex */
    public static class C0029b extends C0027d {
        public C0029b() {
            super(24, "A192KW");
        }
    }

    /* renamed from: a2.d$c */
    /* loaded from: classes.dex */
    public static class C0030c extends C0027d {
        public C0030c() {
            super(32, "A256KW");
        }
    }

    public C0027d(int i, String str) {
        super("AESWrap", str);
        this.f72g = i;
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        String str = this.f3008c;
        if (C0985b.m5a("Cipher", str) && C0031e.m1370a(this.f72g, str)) {
            return true;
        }
        return false;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        C0736h.m300M(key, this.f3007b, this.f72g);
    }
}
