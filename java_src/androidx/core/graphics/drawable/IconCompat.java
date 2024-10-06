package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: j */
    public static final PorterDuff.Mode f636j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public Object f638b;

    /* renamed from: a */
    public int f637a = -1;

    /* renamed from: c */
    public byte[] f639c = null;

    /* renamed from: d */
    public Parcelable f640d = null;

    /* renamed from: e */
    public int f641e = 0;

    /* renamed from: f */
    public int f642f = 0;

    /* renamed from: g */
    public ColorStateList f643g = null;

    /* renamed from: h */
    public PorterDuff.Mode f644h = f636j;

    /* renamed from: i */
    public String f645i = null;

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
        if (r2 != 5) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String str;
        int height;
        String str2;
        int i;
        int i2;
        int i3;
        if (this.f637a == -1) {
            return String.valueOf(this.f638b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        int i4 = this.f637a;
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        if (i4 != 5) {
                            str = "UNKNOWN";
                        } else {
                            str = "BITMAP_MASKABLE";
                        }
                    } else {
                        str = "URI";
                    }
                } else {
                    str = "DATA";
                }
            } else {
                str = "RESOURCE";
            }
        } else {
            str = "BITMAP";
        }
        sb.append(str);
        int i5 = this.f637a;
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 != 3) {
                    if (i5 == 4) {
                        sb.append(" uri=");
                        sb.append(this.f638b);
                    }
                } else {
                    sb.append(" len=");
                    sb.append(this.f641e);
                    if (this.f642f != 0) {
                        sb.append(" off=");
                        height = this.f642f;
                        sb.append(height);
                    }
                }
            } else {
                sb.append(" pkg=");
                int i6 = this.f637a;
                if (i6 == -1 && (i3 = Build.VERSION.SDK_INT) >= 23) {
                    Icon icon = (Icon) this.f638b;
                    if (i3 >= 28) {
                        str2 = icon.getResPackage();
                    } else {
                        try {
                            str2 = (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                            Log.e("IconCompat", "Unable to get icon package", e);
                            str2 = null;
                        }
                    }
                } else if (i6 == 2) {
                    str2 = ((String) this.f638b).split(":", -1)[0];
                } else {
                    throw new IllegalStateException("called getResPackage() on " + this);
                }
                sb.append(str2);
                sb.append(" id=");
                Object[] objArr = new Object[1];
                int i7 = this.f637a;
                if (i7 == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
                    Icon icon2 = (Icon) this.f638b;
                    if (i2 >= 28) {
                        i = icon2.getResId();
                    } else {
                        try {
                            i = ((Integer) icon2.getClass().getMethod("getResId", new Class[0]).invoke(icon2, new Object[0])).intValue();
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
                            Log.e("IconCompat", "Unable to get icon resource", e2);
                            i = 0;
                        }
                    }
                } else if (i7 == 2) {
                    i = this.f641e;
                } else {
                    throw new IllegalStateException("called getResId() on " + this);
                }
                objArr[0] = Integer.valueOf(i);
                sb.append(String.format("0x%08x", objArr));
            }
            if (this.f643g != null) {
                sb.append(" tint=");
                sb.append(this.f643g);
            }
            if (this.f644h != f636j) {
                sb.append(" mode=");
                sb.append(this.f644h);
            }
            sb.append(")");
            return sb.toString();
        }
        sb.append(" size=");
        sb.append(((Bitmap) this.f638b).getWidth());
        sb.append("x");
        height = ((Bitmap) this.f638b).getHeight();
        sb.append(height);
        if (this.f643g != null) {
        }
        if (this.f644h != f636j) {
        }
        sb.append(")");
        return sb.toString();
    }
}
