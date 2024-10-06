package p067u1;

import java.io.UnsupportedEncodingException;
import p057q1.C0844h;
import p067u1.AbstractC0890b;
/* renamed from: u1.a */
/* loaded from: classes.dex */
public final class C0889a extends AbstractC0890b {

    /* renamed from: f */
    public static final byte[] f2804f = {13, 10};

    /* renamed from: g */
    public static final byte[] f2805g = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: h */
    public static final byte[] f2806h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: i */
    public static final byte[] f2807i = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: b */
    public final byte[] f2808b;

    /* renamed from: c */
    public final byte[] f2809c;

    /* renamed from: d */
    public final int f2810d;

    /* renamed from: e */
    public final int f2811e;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0029 A[LOOP:0: B:9:0x000e->B:21:0x0029, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x002c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0889a(int i, byte[] bArr, boolean z) {
        super(i, r1);
        int length;
        byte[] bArr2;
        boolean z2;
        boolean z3;
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        if (bArr != null) {
            for (byte b : bArr) {
                if (61 != b) {
                    if (b >= 0) {
                        byte[] bArr3 = f2807i;
                        if (b < 123 && bArr3[b] != -1) {
                            z3 = true;
                            if (z3) {
                            }
                        }
                    }
                    z3 = false;
                    if (z3) {
                    }
                }
                z2 = true;
                break;
            }
            z2 = false;
            if (!z2) {
                if (i > 0) {
                    this.f2811e = bArr.length + 4;
                    byte[] bArr4 = new byte[bArr.length];
                    this.f2809c = bArr4;
                    System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
                    this.f2810d = this.f2811e - 1;
                    if (!z) {
                        bArr2 = f2806h;
                    } else {
                        bArr2 = f2805g;
                    }
                    this.f2808b = bArr2;
                }
            } else {
                try {
                    throw new IllegalArgumentException(C0844h.m187a("lineSeparator must not contain base64 characters: [", new String(bArr, "UTF-8"), "]"));
                } catch (UnsupportedEncodingException unused) {
                    throw new IllegalStateException("Unknown or unsupported character set name: UTF-8");
                }
            }
        }
        this.f2811e = 4;
        this.f2809c = null;
        this.f2810d = this.f2811e - 1;
        if (!z) {
        }
        this.f2808b = bArr2;
    }

    @Override // p067u1.AbstractC0890b
    /* renamed from: a */
    public final void mo115a(byte[] bArr, int i, AbstractC0890b.C0891a c0891a) {
        int i2;
        byte b;
        if (c0891a.f2817e) {
            return;
        }
        if (i < 0) {
            c0891a.f2817e = true;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = this.f2810d;
            if (i3 >= i) {
                break;
            }
            byte[] m111e = AbstractC0890b.m111e(i2, c0891a);
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            if (b2 == 61) {
                c0891a.f2817e = true;
                break;
            }
            if (b2 >= 0 && b2 < 123 && (b = f2807i[b2]) >= 0) {
                int i6 = (c0891a.f2819g + 1) % 4;
                c0891a.f2819g = i6;
                int i7 = (c0891a.f2813a << 6) + b;
                c0891a.f2813a = i7;
                if (i6 == 0) {
                    int i8 = c0891a.f2815c;
                    int i9 = i8 + 1;
                    m111e[i8] = (byte) ((i7 >> 16) & 255);
                    int i10 = i9 + 1;
                    m111e[i9] = (byte) ((i7 >> 8) & 255);
                    c0891a.f2815c = i10 + 1;
                    m111e[i10] = (byte) (i7 & 255);
                }
            }
            i3++;
            i4 = i5;
        }
        if (!c0891a.f2817e || c0891a.f2819g == 0) {
            return;
        }
        byte[] m111e2 = AbstractC0890b.m111e(i2, c0891a);
        int i11 = c0891a.f2819g;
        if (i11 != 1) {
            if (i11 == 2) {
                int i12 = c0891a.f2813a >> 4;
                c0891a.f2813a = i12;
                int i13 = c0891a.f2815c;
                c0891a.f2815c = i13 + 1;
                m111e2[i13] = (byte) (i12 & 255);
            } else if (i11 != 3) {
                throw new IllegalStateException("Impossible modulus " + c0891a.f2819g);
            } else {
                int i14 = c0891a.f2813a >> 2;
                c0891a.f2813a = i14;
                int i15 = c0891a.f2815c;
                int i16 = i15 + 1;
                m111e2[i15] = (byte) ((i14 >> 8) & 255);
                c0891a.f2815c = i16 + 1;
                m111e2[i16] = (byte) (i14 & 255);
            }
        }
    }

    @Override // p067u1.AbstractC0890b
    /* renamed from: c */
    public final void mo113c(byte[] bArr, int i, AbstractC0890b.C0891a c0891a) {
        if (c0891a.f2817e) {
            return;
        }
        int i2 = this.f2811e;
        byte[] bArr2 = this.f2808b;
        int i3 = this.f2812a;
        byte[] bArr3 = this.f2809c;
        if (i >= 0) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                byte[] m111e = AbstractC0890b.m111e(i2, c0891a);
                int i6 = (c0891a.f2819g + 1) % 3;
                c0891a.f2819g = i6;
                int i7 = i5 + 1;
                int i8 = bArr[i5];
                if (i8 < 0) {
                    i8 += 256;
                }
                int i9 = (c0891a.f2813a << 8) + i8;
                c0891a.f2813a = i9;
                if (i6 == 0) {
                    int i10 = c0891a.f2815c;
                    int i11 = i10 + 1;
                    m111e[i10] = bArr2[(i9 >> 18) & 63];
                    int i12 = i11 + 1;
                    m111e[i11] = bArr2[(i9 >> 12) & 63];
                    int i13 = i12 + 1;
                    m111e[i12] = bArr2[(i9 >> 6) & 63];
                    int i14 = i13 + 1;
                    c0891a.f2815c = i14;
                    m111e[i13] = bArr2[i9 & 63];
                    int i15 = c0891a.f2818f + 4;
                    c0891a.f2818f = i15;
                    if (i3 > 0 && i3 <= i15) {
                        System.arraycopy(bArr3, 0, m111e, i14, bArr3.length);
                        c0891a.f2815c += bArr3.length;
                        c0891a.f2818f = 0;
                    }
                }
                i4++;
                i5 = i7;
            }
            return;
        }
        c0891a.f2817e = true;
        if (c0891a.f2819g == 0 && i3 == 0) {
            return;
        }
        byte[] m111e2 = AbstractC0890b.m111e(i2, c0891a);
        int i16 = c0891a.f2815c;
        int i17 = c0891a.f2819g;
        if (i17 != 0) {
            byte[] bArr4 = f2805g;
            if (i17 == 1) {
                int i18 = i16 + 1;
                int i19 = c0891a.f2813a;
                m111e2[i16] = bArr2[(i19 >> 2) & 63];
                int i20 = i18 + 1;
                c0891a.f2815c = i20;
                m111e2[i18] = bArr2[(i19 << 4) & 63];
                if (bArr2 == bArr4) {
                    int i21 = i20 + 1;
                    m111e2[i20] = 61;
                    c0891a.f2815c = i21 + 1;
                    m111e2[i21] = 61;
                }
            } else if (i17 != 2) {
                throw new IllegalStateException("Impossible modulus " + c0891a.f2819g);
            } else {
                int i22 = i16 + 1;
                int i23 = c0891a.f2813a;
                m111e2[i16] = bArr2[(i23 >> 10) & 63];
                int i24 = i22 + 1;
                m111e2[i22] = bArr2[(i23 >> 4) & 63];
                int i25 = i24 + 1;
                c0891a.f2815c = i25;
                m111e2[i24] = bArr2[(i23 << 2) & 63];
                if (bArr2 == bArr4) {
                    c0891a.f2815c = i25 + 1;
                    m111e2[i25] = 61;
                }
            }
        }
        int i26 = c0891a.f2818f;
        int i27 = c0891a.f2815c;
        int i28 = (i27 - i16) + i26;
        c0891a.f2818f = i28;
        if (i3 <= 0 || i28 <= 0) {
            return;
        }
        System.arraycopy(bArr3, 0, m111e2, i27, bArr3.length);
        c0891a.f2815c += bArr3.length;
    }
}
