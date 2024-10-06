package p031h2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import p027g2.C0570b;
/* renamed from: h2.b */
/* loaded from: classes.dex */
public final class C0583b implements InterfaceC0582a {
    @Override // p081z1.InterfaceC0984a
    /* renamed from: c */
    public final String mo0c() {
        return "DEF";
    }

    @Override // p031h2.InterfaceC0582a
    /* renamed from: e */
    public final byte[] mo515e(byte[] bArr) {
        Inflater inflater = new Inflater(true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr), inflater);
            byte[] bArr2 = new byte[256];
            while (true) {
                int read = inflaterInputStream.read(bArr2);
                if (read == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    inflaterInputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            throw new C0570b("Problem decompressing data.", e);
        }
    }

    @Override // p081z1.InterfaceC0984a
    /* renamed from: f */
    public final boolean mo6f() {
        return true;
    }
}
