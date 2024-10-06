package p023f2;

import javax.crypto.spec.SecretKeySpec;
/* renamed from: f2.a */
/* loaded from: classes.dex */
public final class C0486a extends SecretKeySpec {

    /* renamed from: a */
    public final /* synthetic */ int f1864a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0486a(int i, byte[] bArr) {
        super(bArr, "AES");
        this.f1864a = i;
        if (i != 1) {
        } else {
            super(bArr, "HMAC");
        }
    }

    public final String toString() {
        switch (this.f1864a) {
            case 0:
                return (getEncoded().length * 8) + " bit AES key";
            default:
                return super.toString();
        }
    }
}
