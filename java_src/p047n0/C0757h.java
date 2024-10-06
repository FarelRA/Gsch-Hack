package p047n0;

import java.io.ByteArrayOutputStream;
/* renamed from: n0.h */
/* loaded from: classes.dex */
public final class C0757h extends ByteArrayOutputStream {

    /* renamed from: a */
    public final C0745b f2631a;

    public C0757h(C0745b c0745b, int i) {
        this.f2631a = c0745b;
        ((ByteArrayOutputStream) this).buf = c0745b.m270a(Math.max(i, 256));
    }

    /* renamed from: a */
    public final void m239a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        C0745b c0745b = this.f2631a;
        byte[] m270a = c0745b.m270a((i2 + i) * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, m270a, 0, ((ByteArrayOutputStream) this).count);
        c0745b.m269b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = m270a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2631a.m269b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f2631a.m269b(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        m239a(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        m239a(i2);
        super.write(bArr, i, i2);
    }
}
