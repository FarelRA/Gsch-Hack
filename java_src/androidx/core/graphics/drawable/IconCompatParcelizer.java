package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import java.nio.charset.Charset;
import p042l0.AbstractC0690a;
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008a, code lost:
        if (r8 != 5) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static IconCompat read(AbstractC0690a abstractC0690a) {
        Object obj;
        IconCompat iconCompat = new IconCompat();
        int i = iconCompat.f637a;
        if (abstractC0690a.mo359h(1)) {
            i = abstractC0690a.mo358i();
        }
        iconCompat.f637a = i;
        byte[] bArr = iconCompat.f639c;
        if (abstractC0690a.mo359h(2)) {
            bArr = abstractC0690a.mo361f();
        }
        iconCompat.f639c = bArr;
        Parcelable parcelable = iconCompat.f640d;
        if (abstractC0690a.mo359h(3)) {
            parcelable = abstractC0690a.mo357j();
        }
        iconCompat.f640d = parcelable;
        int i2 = iconCompat.f641e;
        if (abstractC0690a.mo359h(4)) {
            i2 = abstractC0690a.mo358i();
        }
        iconCompat.f641e = i2;
        int i3 = iconCompat.f642f;
        if (abstractC0690a.mo359h(5)) {
            i3 = abstractC0690a.mo358i();
        }
        iconCompat.f642f = i3;
        Parcelable parcelable2 = iconCompat.f643g;
        if (abstractC0690a.mo359h(6)) {
            parcelable2 = abstractC0690a.mo357j();
        }
        iconCompat.f643g = (ColorStateList) parcelable2;
        String str = iconCompat.f645i;
        if (abstractC0690a.mo359h(7)) {
            str = abstractC0690a.mo356k();
        }
        iconCompat.f645i = str;
        iconCompat.f644h = PorterDuff.Mode.valueOf(str);
        int i4 = iconCompat.f637a;
        if (i4 != -1) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                        }
                    } else {
                        iconCompat.f638b = iconCompat.f639c;
                    }
                    return iconCompat;
                }
                obj = new String(iconCompat.f639c, Charset.forName("UTF-16"));
            }
            obj = iconCompat.f640d;
            if (obj == null) {
                byte[] bArr2 = iconCompat.f639c;
                iconCompat.f638b = bArr2;
                iconCompat.f637a = 3;
                iconCompat.f641e = 0;
                iconCompat.f642f = bArr2.length;
                return iconCompat;
            }
        } else {
            obj = iconCompat.f640d;
            if (obj == null) {
                throw new IllegalArgumentException("Invalid icon");
            }
        }
        iconCompat.f638b = obj;
        return iconCompat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r0 != 5) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void write(IconCompat iconCompat, AbstractC0690a abstractC0690a) {
        int i;
        byte[] bArr;
        Parcelable parcelable;
        int i2;
        int i3;
        ColorStateList colorStateList;
        String str;
        abstractC0690a.getClass();
        iconCompat.f645i = iconCompat.f644h.name();
        int i4 = iconCompat.f637a;
        if (i4 != -1 && i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 == 4) {
                        iconCompat.f639c = iconCompat.f638b.toString().getBytes(Charset.forName("UTF-16"));
                    }
                } else {
                    iconCompat.f639c = (byte[]) iconCompat.f638b;
                }
            } else {
                iconCompat.f639c = ((String) iconCompat.f638b).getBytes(Charset.forName("UTF-16"));
            }
            i = iconCompat.f637a;
            if (-1 != i) {
                abstractC0690a.mo355m(1);
                abstractC0690a.mo351q(i);
            }
            bArr = iconCompat.f639c;
            if (bArr != null) {
                abstractC0690a.mo355m(2);
                abstractC0690a.mo353o(bArr);
            }
            parcelable = iconCompat.f640d;
            if (parcelable != null) {
                abstractC0690a.mo355m(3);
                abstractC0690a.mo350r(parcelable);
            }
            i2 = iconCompat.f641e;
            if (i2 != 0) {
                abstractC0690a.mo355m(4);
                abstractC0690a.mo351q(i2);
            }
            i3 = iconCompat.f642f;
            if (i3 != 0) {
                abstractC0690a.mo355m(5);
                abstractC0690a.mo351q(i3);
            }
            colorStateList = iconCompat.f643g;
            if (colorStateList != null) {
                abstractC0690a.mo355m(6);
                abstractC0690a.mo350r(colorStateList);
            }
            str = iconCompat.f645i;
            if (str == null) {
                abstractC0690a.mo355m(7);
                abstractC0690a.mo349s(str);
                return;
            }
            return;
        }
        iconCompat.f640d = (Parcelable) iconCompat.f638b;
        i = iconCompat.f637a;
        if (-1 != i) {
        }
        bArr = iconCompat.f639c;
        if (bArr != null) {
        }
        parcelable = iconCompat.f640d;
        if (parcelable != null) {
        }
        i2 = iconCompat.f641e;
        if (i2 != 0) {
        }
        i3 = iconCompat.f642f;
        if (i3 != 0) {
        }
        colorStateList = iconCompat.f643g;
        if (colorStateList != null) {
        }
        str = iconCompat.f645i;
        if (str == null) {
        }
    }
}
