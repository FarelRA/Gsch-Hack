package p015d2;

import java.security.Key;
import p027g2.C0569a;
import p069v1.C0907a;
import p081z1.AbstractC0989f;
/* renamed from: d2.f */
/* loaded from: classes.dex */
public final class C0385f extends AbstractC0989f implements InterfaceC0384e {
    public C0385f() {
        this.f3007b = "none";
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: d */
    public final boolean mo857d(byte[] bArr, Key key, byte[] bArr2, C0907a c0907a) {
        if (key == null) {
            if (bArr.length == 0) {
                return true;
            }
            return false;
        }
        throw new C0569a("JWS Plaintext (alg=none) must not use a key.");
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return true;
    }

    @Override // p015d2.InterfaceC0384e
    /* renamed from: g */
    public final void mo856g(Key key) {
        if (key != null) {
            throw new C0569a("JWS Plaintext (alg=none) must not use a key.");
        }
    }
}
