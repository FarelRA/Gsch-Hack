package p055q;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: q.f */
/* loaded from: classes.dex */
public final class C0834f {
    /* renamed from: a */
    public static C0824b m197a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        C0824b c0824b;
        if (m193e(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new C0824b(null, null, typedValue.data);
            }
            try {
                c0824b = C0824b.m204a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
                c0824b = null;
            }
            if (c0824b != null) {
                return c0824b;
            }
        }
        return new C0824b(null, null, 0);
    }

    /* renamed from: b */
    public static float m196b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m193e(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: c */
    public static int m195c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m193e(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: d */
    public static String m194d(TypedArray typedArray, XmlResourceParser xmlResourceParser, String str, int i) {
        if (m193e(xmlResourceParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    /* renamed from: e */
    public static boolean m193e(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: f */
    public static TypedArray m192f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
