package p015d2;

import java.security.Key;
import javax.crypto.SecretKey;
import p027g2.C0569a;
import p046m1.C0736h;
import p069v1.C0907a;
import p081z1.AbstractC0989f;
import p081z1.C0985b;
/* renamed from: d2.c */
/* loaded from: classes.dex */
public class C0379c extends AbstractC0989f implements InterfaceC0384e {

    /* renamed from: d */
    public final int f1450d;

    /* renamed from: d2.c$a */
    /* loaded from: classes.dex */
    public static class C0380a extends C0379c {
        public C0380a() {
            super(256, "HS256", "HmacSHA256");
        }
    }

    /* renamed from: d2.c$b */
    /* loaded from: classes.dex */
    public static class C0381b extends C0379c {
        public C0381b() {
            super(384, "HS384", "HmacSHA384");
        }
    }

    /* renamed from: d2.c$c */
    /* loaded from: classes.dex */
    public static class C0382c extends C0379c {
        public C0382c() {
            super(512, "HS512", "HmacSHA512");
        }
    }

    public C0379c(int i, String str, String str2) {
        this.f3007b = str;
        this.f3008c = str2;
        this.f1450d = i;
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: d */
    public final boolean mo857d(byte[] bArr, Key key, byte[] bArr2, C0907a c0907a) {
        if (key instanceof SecretKey) {
            c0907a.f2861a.getClass();
            return C0736h.m306G(bArr, C0736h.m276x(this.f3008c, key).doFinal(bArr2));
        }
        throw new C0569a(key.getClass() + " cannot be used for HMAC verification.");
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return C0985b.m5a("Mac", this.f3008c);
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: g */
    public final void mo856g(Key key) {
        int length;
        int i;
        if (key != null) {
            if (key.getEncoded() != null && (length = key.getEncoded().length * 8) < (i = this.f1450d)) {
                throw new C0569a("A key of the same size as the hash output (i.e. " + i + " bits for " + this.f3007b + ") or larger MUST be used with the HMAC SHA algorithms but this key is only " + length + " bits");
            }
            return;
        }
        throw new C0569a("key is null");
    }
}
