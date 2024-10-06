package p002a2;

import java.security.Key;
import p019e2.C0456a;
import p027g2.C0569a;
import p069v1.C0907a;
import p073x.C0928b;
import p081z1.AbstractC0989f;
/* renamed from: a2.g */
/* loaded from: classes.dex */
public final class C0033g extends AbstractC0989f implements InterfaceC0040k {
    public C0033g() {
        this.f3007b = "dir";
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: b */
    public final Key mo1365b(C0928b c0928b, Key key, C0907a c0907a, C0456a c0456a, byte[] bArr) {
        if (bArr.length == 0) {
            return key;
        }
        throw new C0569a("An empty octet sequence is to be used as the JWE Encrypted Key value when utilizing direct encryption but this JWE has " + bArr.length + " octets in the encrypted key part.");
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return true;
    }

    @Override // p002a2.InterfaceC0040k
    /* renamed from: i */
    public final void mo1366i(Key key, InterfaceC0032f interfaceC0032f) {
        int length;
        int i;
        if (key != null) {
            if (key.getEncoded() != null && (i = interfaceC0032f.mo1368h().f2893b) != (length = key.getEncoded().length)) {
                throw new C0569a("Invalid key for " + this.f3007b + " with " + interfaceC0032f.mo0c() + ", expected a " + (i * 8) + " bit key but a " + (length * 8) + " bit key was provided.");
            }
            return;
        }
        throw new C0569a("The key must not be null.");
    }
}
