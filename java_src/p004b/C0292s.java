package p004b;
/* renamed from: b.s */
/* loaded from: classes.dex */
public final class C0292s {

    /* renamed from: d */
    public static C0292s f1069d;

    /* renamed from: a */
    public long f1070a;

    /* renamed from: b */
    public long f1071b;

    /* renamed from: c */
    public int f1072c;

    /* renamed from: a */
    public final void m1013a(long j, double d, double d2) {
        float f;
        float f2;
        double d3;
        double d4 = (0.01720197f * (((float) (j - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(f2 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * f2) * 3.4906598739326E-4d) + (Math.sin(d4) * 0.03341960161924362d) + d4 + 1.796593063d + 3.141592653589793d;
        double sin2 = (Math.sin(2.0d * sin) * (-0.0069d)) + (Math.sin(d4) * 0.0053d) + ((float) Math.round((f - 9.0E-4f) - d3)) + 9.0E-4f + ((-d2) / 360.0d);
        double asin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(sin));
        double d5 = 0.01745329238474369d * d;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(asin) * Math.sin(d5))) / (Math.cos(asin) * Math.cos(d5));
        if (sin3 >= 1.0d) {
            this.f1072c = 1;
        } else if (sin3 > -1.0d) {
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f1070a = Math.round((sin2 + acos) * 8.64E7d) + 946728000000L;
            long round = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            this.f1071b = round;
            if (round >= j || this.f1070a <= j) {
                this.f1072c = 1;
                return;
            } else {
                this.f1072c = 0;
                return;
            }
        } else {
            this.f1072c = 0;
        }
        this.f1070a = -1L;
        this.f1071b = -1L;
    }
}
