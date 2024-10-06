package p055q;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;
import p046m1.C0736h;
/* renamed from: q.b */
/* loaded from: classes.dex */
public final class C0824b {

    /* renamed from: a */
    public final Shader f2717a;

    /* renamed from: b */
    public final ColorStateList f2718b;

    /* renamed from: c */
    public int f2719c;

    public C0824b(Shader shader, ColorStateList colorStateList, int i) {
        this.f2717a = shader;
        this.f2718b = colorStateList;
        this.f2719c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x017e, code lost:
        if (r8.size() <= 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0180, code lost:
        r0 = new p055q.C0830d((java.util.ArrayList) r8, (java.util.ArrayList) r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0186, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0187, code lost:
        if (r0 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018c, code lost:
        if (r19 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018e, code lost:
        r0 = new p055q.C0830d(r5, r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0192, code lost:
        r0 = new p055q.C0830d(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0196, code lost:
        if (r11 == 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0199, code lost:
        if (r11 == 2) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019b, code lost:
        r4 = r0.f2730a;
        r0 = r0.f2731b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01a1, code lost:
        if (r7 == 1) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a3, code lost:
        if (r7 == 2) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a5, code lost:
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a8, code lost:
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01ab, code lost:
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01ad, code lost:
        r3 = new android.graphics.LinearGradient(r12, r26, r25, (float) r15, r4, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01be, code lost:
        r3 = new android.graphics.SweepGradient((float) r7, (float) r9, r0.f2730a, r0.f2731b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01d3, code lost:
        if (r8 <= 0.0f) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d5, code lost:
        r1 = r0.f2730a;
        r0 = r0.f2731b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01dc, code lost:
        if (r7 == 1) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01df, code lost:
        if (r7 == 2) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e1, code lost:
        r5 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e4, code lost:
        r5 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e7, code lost:
        r5 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e9, code lost:
        r3 = new android.graphics.RadialGradient((float) r7, (float) r9, (float) r8, r1, r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0201, code lost:
        return new p055q.C0824b(r3, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0209, code lost:
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Type inference failed for: r15v2, types: [float, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v9, types: [float, java.util.ArrayList] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0824b m204a(Resources resources, int i, Resources.Theme theme) {
        int next;
        int color;
        int color2;
        int color3;
        float f;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.getClass();
            if (!name.equals("gradient")) {
                if (name.equals("selector")) {
                    ColorStateList m205a = C0823a.m205a(resources, xml, asAttributeSet, theme);
                    return new C0824b(null, m205a, m205a.getDefaultColor());
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            }
            String name2 = xml.getName();
            if (name2.equals("gradient")) {
                TypedArray m192f = C0834f.m192f(resources, theme, asAttributeSet, C0736h.f2546S);
                float m196b = C0834f.m196b(m192f, xml, "startX", 8, 0.0f);
                float m196b2 = C0834f.m196b(m192f, xml, "startY", 9, 0.0f);
                float m196b3 = C0834f.m196b(m192f, xml, "endX", 10, 0.0f);
                C0834f.m196b(m192f, xml, "endY", 11, 0.0f);
                C0834f.m196b(m192f, xml, "centerX", 3, 0.0f);
                C0834f.m196b(m192f, xml, "centerY", 4, 0.0f);
                int m195c = C0834f.m195c(m192f, xml, "type", 2, 0);
                if (!C0834f.m193e(xml, "startColor")) {
                    color = 0;
                } else {
                    color = m192f.getColor(0, 0);
                }
                boolean m193e = C0834f.m193e(xml, "centerColor");
                if (!C0834f.m193e(xml, "centerColor")) {
                    color2 = 0;
                } else {
                    color2 = m192f.getColor(7, 0);
                }
                if (!C0834f.m193e(xml, "endColor")) {
                    color3 = 0;
                } else {
                    color3 = m192f.getColor(1, 0);
                }
                int m195c2 = C0834f.m195c(m192f, xml, "tileMode", 6, 0);
                C0834f.m196b(m192f, xml, "gradientRadius", 5, 0.0f);
                m192f.recycle();
                int depth = xml.getDepth() + 1;
                ?? arrayList = new ArrayList(20);
                ?? arrayList2 = new ArrayList(20);
                while (true) {
                    int next2 = xml.next();
                    float f2 = m196b3;
                    if (next2 != 1) {
                        int depth2 = xml.getDepth();
                        f = m196b2;
                        if (depth2 < depth && next2 == 3) {
                            break;
                        }
                        if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                            TypedArray m192f2 = C0834f.m192f(resources, theme, asAttributeSet, C0736h.f2547T);
                            boolean hasValue = m192f2.hasValue(0);
                            boolean hasValue2 = m192f2.hasValue(1);
                            if (!hasValue || !hasValue2) {
                                break;
                            }
                            int color4 = m192f2.getColor(0, 0);
                            float f3 = m192f2.getFloat(1, 0.0f);
                            m192f2.recycle();
                            arrayList2.add(Integer.valueOf(color4));
                            arrayList.add(Float.valueOf(f3));
                        }
                        m196b3 = f2;
                        m196b2 = f;
                    } else {
                        f = m196b2;
                        break;
                    }
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public final boolean m203b() {
        ColorStateList colorStateList;
        return this.f2717a == null && (colorStateList = this.f2718b) != null && colorStateList.isStateful();
    }
}
