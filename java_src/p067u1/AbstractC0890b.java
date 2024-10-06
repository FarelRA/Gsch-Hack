package p067u1;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: u1.b */
/* loaded from: classes.dex */
public abstract class AbstractC0890b {

    /* renamed from: a */
    public final int f2812a;

    /* renamed from: u1.b$a */
    /* loaded from: classes.dex */
    public static class C0891a {

        /* renamed from: a */
        public int f2813a;

        /* renamed from: b */
        public byte[] f2814b;

        /* renamed from: c */
        public int f2815c;

        /* renamed from: d */
        public int f2816d;

        /* renamed from: e */
        public boolean f2817e;

        /* renamed from: f */
        public int f2818f;

        /* renamed from: g */
        public int f2819g;

        public final String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", C0891a.class.getSimpleName(), Arrays.toString(this.f2814b), Integer.valueOf(this.f2818f), Boolean.valueOf(this.f2817e), Integer.valueOf(this.f2813a), 0L, Integer.valueOf(this.f2819g), Integer.valueOf(this.f2815c), Integer.valueOf(this.f2816d));
        }
    }

    public AbstractC0890b(int i, int i2) {
        this.f2812a = i > 0 && i2 > 0 ? (i / 4) * 4 : 0;
    }

    /* renamed from: e */
    public static byte[] m111e(int i, C0891a c0891a) {
        byte[] bArr = c0891a.f2814b;
        if (bArr != null && bArr.length >= c0891a.f2815c + i) {
            return bArr;
        }
        if (bArr == null) {
            c0891a.f2814b = new byte[8192];
            c0891a.f2815c = 0;
            c0891a.f2816d = 0;
        } else {
            byte[] bArr2 = new byte[bArr.length * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            c0891a.f2814b = bArr2;
        }
        return c0891a.f2814b;
    }

    /* renamed from: f */
    public static void m110f(byte[] bArr, int i, C0891a c0891a) {
        if (c0891a.f2814b != null) {
            int min = Math.min(c0891a.f2815c - c0891a.f2816d, i);
            System.arraycopy(c0891a.f2814b, c0891a.f2816d, bArr, 0, min);
            int i2 = c0891a.f2816d + min;
            c0891a.f2816d = i2;
            if (i2 >= c0891a.f2815c) {
                c0891a.f2814b = null;
            }
        }
    }

    /* renamed from: a */
    public abstract void mo115a(byte[] bArr, int i, C0891a c0891a);

    /* renamed from: b */
    public final byte[] m114b(String str) {
        byte[] bytes;
        if (str == null) {
            bytes = null;
        } else {
            try {
                bytes = str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
            }
        }
        if (bytes != null && bytes.length != 0) {
            C0891a c0891a = new C0891a();
            mo115a(bytes, bytes.length, c0891a);
            mo115a(bytes, -1, c0891a);
            int i = c0891a.f2815c;
            byte[] bArr = new byte[i];
            m110f(bArr, i, c0891a);
            return bArr;
        }
        return bytes;
    }

    /* renamed from: c */
    public abstract void mo113c(byte[] bArr, int i, C0891a c0891a);

    /* renamed from: d */
    public final String m112d(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            C0891a c0891a = new C0891a();
            mo113c(bArr, bArr.length, c0891a);
            mo113c(bArr, -1, c0891a);
            int i = c0891a.f2815c - c0891a.f2816d;
            byte[] bArr2 = new byte[i];
            m110f(bArr2, i, c0891a);
            bArr = bArr2;
        }
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
        }
    }
}
