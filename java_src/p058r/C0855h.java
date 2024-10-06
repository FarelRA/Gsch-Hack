package p058r;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import p055q.C0825c;
import p068v.C0896e;
/* renamed from: r.h */
/* loaded from: classes.dex */
public final class C0855h extends C0857j {
    @Override // p058r.C0857j
    /* renamed from: a */
    public final Typeface mo161a(Context context, C0825c.C0827b c0827b, Resources resources, int i) {
        int i2;
        C0825c.C0828c[] c0828cArr = c0827b.f2720a;
        int length = c0828cArr.length;
        int i3 = 0;
        FontFamily.Builder builder = null;
        int i4 = 0;
        while (true) {
            int i5 = 1;
            if (i4 >= length) {
                break;
            }
            C0825c.C0828c c0828c = c0828cArr[i4];
            try {
                Font.Builder weight = new Font.Builder(resources, c0828c.f2726f).setWeight(c0828c.f2722b);
                if (!c0828c.f2723c) {
                    i5 = 0;
                }
                Font build = weight.setSlant(i5).setTtcIndex(c0828c.f2725e).setFontVariationSettings(c0828c.f2724d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
            i4++;
        }
        if (builder == null) {
            return null;
        }
        if ((i & 1) != 0) {
            i2 = 700;
        } else {
            i2 = 400;
        }
        if ((i & 2) != 0) {
            i3 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i2, i3)).build();
    }

    @Override // p058r.C0857j
    /* renamed from: b */
    public final Typeface mo160b(Context context, C0896e.C0899c[] c0899cArr, int i) {
        int i2;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        int length = c0899cArr.length;
        int i3 = 0;
        FontFamily.Builder builder = null;
        int i4 = 0;
        while (true) {
            int i5 = 1;
            if (i4 >= length) {
                break;
            }
            C0896e.C0899c c0899c = c0899cArr[i4];
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(c0899c.f2839a, "r", null);
            } catch (IOException unused) {
            }
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                    i4++;
                }
            } else {
                Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(c0899c.f2841c);
                if (!c0899c.f2842d) {
                    i5 = 0;
                }
                Font build = weight.setSlant(i5).setTtcIndex(c0899c.f2840b).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            }
            openFileDescriptor.close();
            i4++;
        }
        if (builder == null) {
            return null;
        }
        if ((i & 1) != 0) {
            i2 = 700;
        } else {
            i2 = 400;
        }
        if ((i & 2) != 0) {
            i3 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i2, i3)).build();
    }

    @Override // p058r.C0857j
    /* renamed from: c */
    public final Typeface mo159c(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p058r.C0857j
    /* renamed from: d */
    public final Typeface mo158d(Context context, Resources resources, int i, String str, int i2) {
        try {
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(new Font.Builder(resources, i).build()).build()).setStyle(new FontStyle((i2 & 1) != 0 ? 700 : 400, (i2 & 2) != 0 ? 1 : 0)).build();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // p058r.C0857j
    /* renamed from: f */
    public final C0896e.C0899c mo156f(int i, C0896e.C0899c[] c0899cArr) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
