package p058r;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
import p057q1.C0844h;
/* renamed from: r.b */
/* loaded from: classes.dex */
public final class C0848b {

    /* renamed from: r.b$a */
    /* loaded from: classes.dex */
    public static class C0849a {

        /* renamed from: a */
        public char f2747a;

        /* renamed from: b */
        public final float[] f2748b;

        public C0849a(char c, float[] fArr) {
            this.f2747a = c;
            this.f2748b = fArr;
        }

        public C0849a(C0849a c0849a) {
            this.f2747a = c0849a.f2747a;
            float[] fArr = c0849a.f2748b;
            this.f2748b = C0848b.m179b(fArr, fArr.length);
        }

        /* renamed from: a */
        public static void m175a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = (d4 * sin) + (d3 * cos);
            double d6 = d3;
            double d7 = f5;
            double d8 = d5 / d7;
            double d9 = f6;
            double d10 = ((d4 * cos) + ((-f) * sin)) / d9;
            double d11 = d4;
            double d12 = f4;
            double d13 = ((d12 * sin) + (f3 * cos)) / d7;
            double d14 = ((d12 * cos) + ((-f3) * sin)) / d9;
            double d15 = d8 - d13;
            double d16 = d10 - d14;
            double d17 = (d8 + d13) / 2.0d;
            double d18 = (d10 + d14) / 2.0d;
            double d19 = (d16 * d16) + (d15 * d15);
            if (d19 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d20 = (1.0d / d19) - 0.25d;
            if (d20 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d19);
                float sqrt = (float) (Math.sqrt(d19) / 1.99999d);
                m175a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d20);
            double d21 = d15 * sqrt2;
            double d22 = sqrt2 * d16;
            if (z == z2) {
                d = d17 - d22;
                d2 = d18 + d21;
            } else {
                d = d17 + d22;
                d2 = d18 - d21;
            }
            double atan2 = Math.atan2(d10 - d2, d8 - d);
            double atan22 = Math.atan2(d14 - d2, d13 - d) - atan2;
            int i = 0;
            int i2 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
            if (z2 != (i2 >= 0)) {
                atan22 = i2 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d23 = d * d7;
            double d24 = d2 * d9;
            double d25 = (d23 * cos) - (d24 * sin);
            double d26 = (d24 * cos) + (d23 * sin);
            int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
            double cos2 = Math.cos(radians);
            double sin2 = Math.sin(radians);
            double cos3 = Math.cos(atan2);
            double sin3 = Math.sin(atan2);
            double d27 = -d7;
            double d28 = d27 * cos2;
            double d29 = d9 * sin2;
            double d30 = (d28 * sin3) - (d29 * cos3);
            double d31 = d27 * sin2;
            double d32 = d9 * cos2;
            double d33 = (cos3 * d32) + (sin3 * d31);
            double d34 = atan22 / ceil;
            double d35 = atan2;
            while (i < ceil) {
                double d36 = d35 + d34;
                double sin4 = Math.sin(d36);
                double cos4 = Math.cos(d36);
                double d37 = d34;
                double d38 = (((d7 * cos2) * cos4) + d25) - (d29 * sin4);
                double d39 = d25;
                double d40 = (d32 * sin4) + (d7 * sin2 * cos4) + d26;
                double d41 = (d28 * sin4) - (d29 * cos4);
                double d42 = (cos4 * d32) + (sin4 * d31);
                double d43 = d36 - d35;
                double tan = Math.tan(d43 / 2.0d);
                double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d43)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d30 * sqrt3) + d6), (float) ((d33 * sqrt3) + d11), (float) (d38 - (sqrt3 * d41)), (float) (d40 - (sqrt3 * d42)), (float) d38, (float) d40);
                i++;
                d32 = d32;
                d31 = d31;
                ceil = ceil;
                cos2 = cos2;
                d35 = d36;
                d7 = d7;
                d33 = d42;
                d30 = d41;
                d6 = d38;
                d11 = d40;
                d34 = d37;
                d25 = d39;
            }
        }

        /* renamed from: b */
        public static void m174b(C0849a[] c0849aArr, Path path) {
            int i;
            int i2;
            char c;
            C0849a c0849a;
            int i3;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            float f19;
            float f20;
            float f21;
            C0849a[] c0849aArr2 = c0849aArr;
            float[] fArr = new float[6];
            char c2 = 'm';
            char c3 = 0;
            char c4 = 'm';
            int i4 = 0;
            while (i4 < c0849aArr2.length) {
                C0849a c0849a2 = c0849aArr2[i4];
                char c5 = c0849a2.f2747a;
                float f22 = fArr[c3];
                float f23 = fArr[1];
                float f24 = fArr[2];
                float f25 = fArr[3];
                float f26 = fArr[4];
                float f27 = fArr[5];
                switch (c5) {
                    case 'A':
                    case 'a':
                        i = 7;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i = 1;
                        break;
                    case 'Q':
                    case 'S':
                    case 'q':
                    case 's':
                        i = 4;
                        break;
                    case 'Z':
                    case 'z':
                        path.close();
                        path.moveTo(f26, f27);
                        f22 = f26;
                        f24 = f22;
                        f23 = f27;
                        f25 = f23;
                    default:
                        i = 2;
                        break;
                }
                float f28 = f26;
                float f29 = f27;
                float f30 = f22;
                float f31 = f23;
                int i5 = 0;
                while (true) {
                    float[] fArr2 = c0849a2.f2748b;
                    if (i5 < fArr2.length) {
                        if (c5 != 'A') {
                            if (c5 != 'C') {
                                if (c5 == 'H') {
                                    i2 = i5;
                                    c = c5;
                                    c0849a = c0849a2;
                                    i3 = i4;
                                    int i6 = i2 + 0;
                                    path.lineTo(fArr2[i6], f31);
                                    f30 = fArr2[i6];
                                } else if (c5 == 'Q') {
                                    i2 = i5;
                                    c = c5;
                                    c0849a = c0849a2;
                                    i3 = i4;
                                    int i7 = i2 + 0;
                                    int i8 = i2 + 1;
                                    int i9 = i2 + 2;
                                    int i10 = i2 + 3;
                                    path.quadTo(fArr2[i7], fArr2[i8], fArr2[i9], fArr2[i10]);
                                    f = fArr2[i7];
                                    f2 = fArr2[i8];
                                    f30 = fArr2[i9];
                                    f31 = fArr2[i10];
                                } else if (c5 == 'V') {
                                    i2 = i5;
                                    c = c5;
                                    c0849a = c0849a2;
                                    i3 = i4;
                                    int i11 = i2 + 0;
                                    path.lineTo(f30, fArr2[i11]);
                                    f31 = fArr2[i11];
                                } else if (c5 != 'a') {
                                    if (c5 != 'c') {
                                        if (c5 == 'h') {
                                            i2 = i5;
                                            int i12 = i2 + 0;
                                            path.rLineTo(fArr2[i12], 0.0f);
                                            f30 += fArr2[i12];
                                        } else if (c5 != 'q') {
                                            if (c5 != 'v') {
                                                if (c5 != 'L') {
                                                    if (c5 == 'M') {
                                                        i2 = i5;
                                                        f12 = fArr2[i2 + 0];
                                                        f13 = fArr2[i2 + 1];
                                                        if (i2 > 0) {
                                                            path.lineTo(f12, f13);
                                                        } else {
                                                            path.moveTo(f12, f13);
                                                            f28 = f12;
                                                            f29 = f13;
                                                        }
                                                    } else if (c5 == 'S') {
                                                        i2 = i5;
                                                        float f32 = f31;
                                                        float f33 = f30;
                                                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                                            f14 = (f32 * 2.0f) - f25;
                                                            f15 = (f33 * 2.0f) - f24;
                                                        } else {
                                                            f15 = f33;
                                                            f14 = f32;
                                                        }
                                                        int i13 = i2 + 0;
                                                        int i14 = i2 + 1;
                                                        int i15 = i2 + 2;
                                                        int i16 = i2 + 3;
                                                        path.cubicTo(f15, f14, fArr2[i13], fArr2[i14], fArr2[i15], fArr2[i16]);
                                                        float f34 = fArr2[i13];
                                                        float f35 = fArr2[i14];
                                                        f9 = fArr2[i15];
                                                        f8 = fArr2[i16];
                                                        f24 = f34;
                                                        f25 = f35;
                                                        f30 = f9;
                                                        f31 = f8;
                                                    } else if (c5 == 'T') {
                                                        i2 = i5;
                                                        float f36 = f31;
                                                        float f37 = f30;
                                                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                                            f16 = (f37 * 2.0f) - f24;
                                                            f17 = (f36 * 2.0f) - f25;
                                                        } else {
                                                            f16 = f37;
                                                            f17 = f36;
                                                        }
                                                        int i17 = i2 + 0;
                                                        int i18 = i2 + 1;
                                                        path.quadTo(f16, f17, fArr2[i17], fArr2[i18]);
                                                        f25 = f17;
                                                        f24 = f16;
                                                        c = c5;
                                                        c0849a = c0849a2;
                                                        i3 = i4;
                                                        f30 = fArr2[i17];
                                                        f31 = fArr2[i18];
                                                    } else if (c5 == 'l') {
                                                        i2 = i5;
                                                        f10 = f31;
                                                        int i19 = i2 + 0;
                                                        float f38 = fArr2[i19];
                                                        int i20 = i2 + 1;
                                                        path.rLineTo(f38, fArr2[i20]);
                                                        f30 += fArr2[i19];
                                                        f11 = fArr2[i20];
                                                    } else if (c5 == c2) {
                                                        i2 = i5;
                                                        float f39 = fArr2[i2 + 0];
                                                        f30 += f39;
                                                        float f40 = fArr2[i2 + 1];
                                                        f31 += f40;
                                                        if (i2 > 0) {
                                                            path.rLineTo(f39, f40);
                                                        } else {
                                                            path.rMoveTo(f39, f40);
                                                            f29 = f31;
                                                            f28 = f30;
                                                        }
                                                    } else if (c5 != 's') {
                                                        if (c5 == 't') {
                                                            if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                                                f20 = f30 - f24;
                                                                f21 = f31 - f25;
                                                            } else {
                                                                f21 = 0.0f;
                                                                f20 = 0.0f;
                                                            }
                                                            int i21 = i5 + 0;
                                                            int i22 = i5 + 1;
                                                            path.rQuadTo(f20, f21, fArr2[i21], fArr2[i22]);
                                                            float f41 = f20 + f30;
                                                            float f42 = f21 + f31;
                                                            f30 += fArr2[i21];
                                                            f31 += fArr2[i22];
                                                            f25 = f42;
                                                            f24 = f41;
                                                        }
                                                        i2 = i5;
                                                    } else {
                                                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                                            float f43 = f30 - f24;
                                                            f18 = f31 - f25;
                                                            f19 = f43;
                                                        } else {
                                                            f18 = 0.0f;
                                                            f19 = 0.0f;
                                                        }
                                                        int i23 = i5 + 0;
                                                        int i24 = i5 + 1;
                                                        int i25 = i5 + 2;
                                                        int i26 = i5 + 3;
                                                        i2 = i5;
                                                        f3 = f31;
                                                        float f44 = f30;
                                                        path.rCubicTo(f19, f18, fArr2[i23], fArr2[i24], fArr2[i25], fArr2[i26]);
                                                        f4 = fArr2[i23] + f44;
                                                        f5 = fArr2[i24] + f3;
                                                        f6 = f44 + fArr2[i25];
                                                        f7 = fArr2[i26];
                                                    }
                                                    f30 = f28;
                                                    f31 = f29;
                                                } else {
                                                    i2 = i5;
                                                    int i27 = i2 + 0;
                                                    int i28 = i2 + 1;
                                                    path.lineTo(fArr2[i27], fArr2[i28]);
                                                    f12 = fArr2[i27];
                                                    f13 = fArr2[i28];
                                                }
                                                f30 = f12;
                                                f31 = f13;
                                            } else {
                                                i2 = i5;
                                                f10 = f31;
                                                int i29 = i2 + 0;
                                                path.rLineTo(0.0f, fArr2[i29]);
                                                f11 = fArr2[i29];
                                            }
                                            f31 = f10 + f11;
                                        } else {
                                            i2 = i5;
                                            f3 = f31;
                                            float f45 = f30;
                                            int i30 = i2 + 0;
                                            float f46 = fArr2[i30];
                                            int i31 = i2 + 1;
                                            int i32 = i2 + 2;
                                            int i33 = i2 + 3;
                                            path.rQuadTo(f46, fArr2[i31], fArr2[i32], fArr2[i33]);
                                            f4 = fArr2[i30] + f45;
                                            f5 = fArr2[i31] + f3;
                                            float f47 = f45 + fArr2[i32];
                                            float f48 = fArr2[i33];
                                            f6 = f47;
                                            f7 = f48;
                                        }
                                        c = c5;
                                        c0849a = c0849a2;
                                        i3 = i4;
                                    } else {
                                        i2 = i5;
                                        f3 = f31;
                                        float f49 = f30;
                                        int i34 = i2 + 2;
                                        int i35 = i2 + 3;
                                        int i36 = i2 + 4;
                                        int i37 = i2 + 5;
                                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i34], fArr2[i35], fArr2[i36], fArr2[i37]);
                                        f4 = fArr2[i34] + f49;
                                        f5 = fArr2[i35] + f3;
                                        f6 = f49 + fArr2[i36];
                                        f7 = fArr2[i37];
                                    }
                                    f8 = f3 + f7;
                                    f24 = f4;
                                    f25 = f5;
                                    f9 = f6;
                                    f30 = f9;
                                    f31 = f8;
                                    c = c5;
                                    c0849a = c0849a2;
                                    i3 = i4;
                                } else {
                                    i2 = i5;
                                    float f50 = f31;
                                    float f51 = f30;
                                    int i38 = i2 + 5;
                                    int i39 = i2 + 6;
                                    c = c5;
                                    c0849a = c0849a2;
                                    i3 = i4;
                                    m175a(path, f51, f50, fArr2[i38] + f51, fArr2[i39] + f50, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                                    f30 = f51 + fArr2[i38];
                                    f31 = f50 + fArr2[i39];
                                }
                                i5 = i2 + i;
                                c0849a2 = c0849a;
                                c4 = c;
                                c5 = c4;
                                i4 = i3;
                                c2 = 'm';
                            } else {
                                i2 = i5;
                                c = c5;
                                c0849a = c0849a2;
                                i3 = i4;
                                int i40 = i2 + 2;
                                int i41 = i2 + 3;
                                int i42 = i2 + 4;
                                int i43 = i2 + 5;
                                path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i40], fArr2[i41], fArr2[i42], fArr2[i43]);
                                float f52 = fArr2[i42];
                                float f53 = fArr2[i43];
                                f = fArr2[i40];
                                f30 = f52;
                                f31 = f53;
                                f2 = fArr2[i41];
                            }
                            f24 = f;
                            f25 = f2;
                            i5 = i2 + i;
                            c0849a2 = c0849a;
                            c4 = c;
                            c5 = c4;
                            i4 = i3;
                            c2 = 'm';
                        } else {
                            i2 = i5;
                            c = c5;
                            c0849a = c0849a2;
                            i3 = i4;
                            int i44 = i2 + 5;
                            int i45 = i2 + 6;
                            m175a(path, f30, f31, fArr2[i44], fArr2[i45], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                            f30 = fArr2[i44];
                            f31 = fArr2[i45];
                        }
                        f25 = f31;
                        f24 = f30;
                        i5 = i2 + i;
                        c0849a2 = c0849a;
                        c4 = c;
                        c5 = c4;
                        i4 = i3;
                        c2 = 'm';
                    }
                }
                int i46 = i4;
                fArr[0] = f30;
                fArr[1] = f31;
                fArr[2] = f24;
                fArr[3] = f25;
                fArr[4] = f28;
                fArr[5] = f29;
                i4 = i46 + 1;
                c4 = c0849aArr[i46].f2747a;
                c2 = 'm';
                c3 = 0;
                c0849aArr2 = c0849aArr;
            }
        }
    }

    /* renamed from: a */
    public static boolean m180a(C0849a[] c0849aArr, C0849a[] c0849aArr2) {
        if (c0849aArr == null || c0849aArr2 == null || c0849aArr.length != c0849aArr2.length) {
            return false;
        }
        for (int i = 0; i < c0849aArr.length; i++) {
            C0849a c0849a = c0849aArr[i];
            char c = c0849a.f2747a;
            C0849a c0849a2 = c0849aArr2[i];
            if (c != c0849a2.f2747a || c0849a.f2748b.length != c0849a2.f2748b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static float[] m179b(float[] fArr, int i) {
        if (i >= 0) {
            int length = fArr.length;
            if (length >= 0) {
                int i2 = i - 0;
                int min = Math.min(i2, length - 0);
                float[] fArr2 = new float[i2];
                System.arraycopy(fArr, 0, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
        if (r13 == false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[Catch: NumberFormatException -> 0x00b9, LOOP:3: B:29:0x006d->B:49:0x0098, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00b9, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b1), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009d A[Catch: NumberFormatException -> 0x00b9, TryCatch #0 {NumberFormatException -> 0x00b9, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b1), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ad A[Catch: NumberFormatException -> 0x00b9, TryCatch #0 {NumberFormatException -> 0x00b9, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b1), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0097 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0849a[] m178c(String str) {
        String trim;
        float[] fArr;
        int i;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i3 < str.length()) {
            while (i3 < str.length()) {
                char charAt = str.charAt(i3);
                if ((charAt - 'Z') * (charAt - 'A') > 0) {
                    if ((charAt - 'z') * (charAt - 'a') > 0) {
                        continue;
                        i3++;
                    }
                }
                if (charAt != 'e' && charAt != 'E') {
                    trim = str.substring(i4, i3).trim();
                    if (trim.length() > 0) {
                        if (trim.charAt(i2) != 'z' && trim.charAt(i2) != 'Z') {
                            try {
                                float[] fArr2 = new float[trim.length()];
                                int length = trim.length();
                                int i5 = 0;
                                for (int i6 = 1; i6 < length; i6 = i) {
                                    boolean z = false;
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    boolean z4 = false;
                                    i = i6;
                                    while (i < trim.length()) {
                                        char charAt2 = trim.charAt(i);
                                        if (charAt2 != ' ') {
                                            if (charAt2 != 'E' && charAt2 != 'e') {
                                                switch (charAt2) {
                                                    case '-':
                                                        if (i != i6) {
                                                        }
                                                        break;
                                                    case '.':
                                                        if (!z3) {
                                                            z3 = true;
                                                            break;
                                                        }
                                                        z2 = true;
                                                        break;
                                                }
                                                z4 = false;
                                                if (!z) {
                                                }
                                            } else {
                                                z4 = true;
                                                if (!z) {
                                                    i++;
                                                } else {
                                                    if (i6 < i) {
                                                        fArr2[i5] = Float.parseFloat(trim.substring(i6, i));
                                                        i5++;
                                                    }
                                                    if (z2) {
                                                        i++;
                                                    }
                                                }
                                            }
                                        }
                                        z = true;
                                        z4 = false;
                                        if (!z) {
                                        }
                                    }
                                    if (i6 < i) {
                                    }
                                    if (z2) {
                                    }
                                }
                                fArr = m179b(fArr2, i5);
                                i2 = 0;
                            } catch (NumberFormatException e) {
                                throw new RuntimeException(C0844h.m187a("error in parsing \"", trim, "\""), e);
                            }
                        } else {
                            fArr = new float[i2];
                        }
                        arrayList.add(new C0849a(trim.charAt(i2), fArr));
                    }
                    i4 = i3;
                    i3++;
                    i2 = 0;
                }
                i3++;
            }
            trim = str.substring(i4, i3).trim();
            if (trim.length() > 0) {
            }
            i4 = i3;
            i3++;
            i2 = 0;
        }
        if (i3 - i4 == 1 && i4 < str.length()) {
            arrayList.add(new C0849a(str.charAt(i4), new float[0]));
        }
        return (C0849a[]) arrayList.toArray(new C0849a[arrayList.size()]);
    }

    /* renamed from: d */
    public static Path m177d(String str) {
        Path path = new Path();
        C0849a[] m178c = m178c(str);
        if (m178c != null) {
            try {
                C0849a.m174b(m178c, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    /* renamed from: e */
    public static C0849a[] m176e(C0849a[] c0849aArr) {
        if (c0849aArr == null) {
            return null;
        }
        C0849a[] c0849aArr2 = new C0849a[c0849aArr.length];
        for (int i = 0; i < c0849aArr.length; i++) {
            c0849aArr2[i] = new C0849a(c0849aArr[i]);
        }
        return c0849aArr2;
    }
}
