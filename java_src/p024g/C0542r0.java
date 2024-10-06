package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p008c.C0315a;
import p024g.C0558w;
import p039k.C0659f;
import p055q.C0825c;
import p058r.C0850c;
/* renamed from: g.r0 */
/* loaded from: classes.dex */
public final class C0542r0 {

    /* renamed from: a */
    public final Context f2038a;

    /* renamed from: b */
    public final TypedArray f2039b;

    /* renamed from: c */
    public TypedValue f2040c;

    public C0542r0(Context context, TypedArray typedArray) {
        this.f2038a = context;
        this.f2039b = typedArray;
    }

    /* renamed from: l */
    public static C0542r0 m569l(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new C0542r0(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    /* renamed from: a */
    public final boolean m580a(int i, boolean z) {
        return this.f2039b.getBoolean(i, z);
    }

    /* renamed from: b */
    public final ColorStateList m579b(int i) {
        int resourceId;
        ColorStateList m995b;
        TypedArray typedArray = this.f2039b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m995b = C0315a.m995b(this.f2038a, resourceId)) == null) ? typedArray.getColorStateList(i) : m995b;
    }

    /* renamed from: c */
    public final int m578c(int i, int i2) {
        return this.f2039b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: d */
    public final int m577d(int i, int i2) {
        return this.f2039b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: e */
    public final Drawable m576e(int i) {
        int resourceId;
        TypedArray typedArray = this.f2039b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : C0315a.m994c(this.f2038a, resourceId);
    }

    /* renamed from: f */
    public final Drawable m575f(int i) {
        int resourceId;
        TypedArray typedArray = this.f2039b;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0516i.m610g().m607j(this.f2038a, resourceId, true);
    }

    /* renamed from: g */
    public final Typeface m574g(int i, int i2, C0558w.C0559a c0559a) {
        String str;
        int resourceId = this.f2039b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f2040c == null) {
            this.f2040c = new TypedValue();
        }
        TypedValue typedValue = this.f2040c;
        Context context = this.f2038a;
        if (context.isRestricted()) {
            return null;
        }
        Resources resources = context.getResources();
        resources.getValue(resourceId, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            if (charSequence2.startsWith("res/")) {
                C0659f<String, Typeface> c0659f = C0850c.f2750b;
                Typeface m421a = c0659f.m421a(C0850c.m172b(resources, resourceId, i2));
                if (m421a != null) {
                    c0559a.m198b(m421a, null);
                } else {
                    try {
                        if (charSequence2.toLowerCase().endsWith(".xml")) {
                            C0825c.InterfaceC0826a m202a = C0825c.m202a(resources.getXml(resourceId), resources);
                            if (m202a == null) {
                                Log.e("ResourcesCompat", "Failed to find font-family tag");
                                c0559a.m199a(-3, null);
                                return null;
                            }
                            return C0850c.m173a(context, m202a, resources, resourceId, i2, c0559a);
                        }
                        m421a = C0850c.f2749a.mo158d(context, resources, resourceId, charSequence2, i2);
                        if (m421a != null) {
                            c0659f.m420b(C0850c.m172b(resources, resourceId, i2), m421a);
                        }
                        if (m421a != null) {
                            c0559a.m198b(m421a, null);
                        } else {
                            c0559a.m199a(-3, null);
                        }
                    } catch (IOException e) {
                        e = e;
                        str = "Failed to read xml resource ";
                        Log.e("ResourcesCompat", str.concat(charSequence2), e);
                        c0559a.m199a(-3, null);
                        return null;
                    } catch (XmlPullParserException e2) {
                        e = e2;
                        str = "Failed to parse xml resource ";
                        Log.e("ResourcesCompat", str.concat(charSequence2), e);
                        c0559a.m199a(-3, null);
                        return null;
                    }
                }
                return m421a;
            }
            c0559a.m199a(-3, null);
            return null;
        }
        throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(resourceId) + "\" (" + Integer.toHexString(resourceId) + ") is not a Font: " + typedValue);
    }

    /* renamed from: h */
    public final int m573h(int i, int i2) {
        return this.f2039b.getInt(i, i2);
    }

    /* renamed from: i */
    public final int m572i(int i, int i2) {
        return this.f2039b.getResourceId(i, i2);
    }

    /* renamed from: j */
    public final CharSequence m571j(int i) {
        return this.f2039b.getText(i);
    }

    /* renamed from: k */
    public final boolean m570k(int i) {
        return this.f2039b.hasValue(i);
    }

    /* renamed from: m */
    public final void m568m() {
        this.f2039b.recycle();
    }
}
