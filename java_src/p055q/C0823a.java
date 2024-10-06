package p055q;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import java.lang.reflect.Array;
import net.geschool.app.secure.R;
import org.xmlpull.v1.XmlPullParserException;
import p046m1.C0736h;
/* renamed from: q.a */
/* loaded from: classes.dex */
public final class C0823a {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.lang.Object[], java.lang.Object] */
    /* renamed from: a */
    public static ColorStateList m205a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        TypedArray obtainStyledAttributes;
        int i;
        String name = xmlResourceParser.getName();
        if (name.equals("selector")) {
            int i2 = 1;
            int depth2 = xmlResourceParser.getDepth() + 1;
            int[][] iArr = new int[20];
            int[] iArr2 = new int[20];
            int i3 = 0;
            while (true) {
                int next = xmlResourceParser.next();
                if (next == i2 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                    break;
                }
                if (next == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                    int[] iArr3 = C0736h.f2543P;
                    if (theme == null) {
                        obtainStyledAttributes = resources.obtainAttributes(attributeSet, iArr3);
                    } else {
                        obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr3, 0, 0);
                    }
                    int color = obtainStyledAttributes.getColor(0, -65281);
                    float f = 1.0f;
                    if (obtainStyledAttributes.hasValue(i2)) {
                        f = obtainStyledAttributes.getFloat(i2, 1.0f);
                    } else if (obtainStyledAttributes.hasValue(2)) {
                        f = obtainStyledAttributes.getFloat(2, 1.0f);
                    }
                    obtainStyledAttributes.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr4 = new int[attributeCount];
                    int i4 = 0;
                    for (int i5 = 0; i5 < attributeCount; i5++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i5);
                        if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha) {
                            int i6 = i4 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i5, false)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr4[i4] = attributeNameResource;
                            i4 = i6;
                        }
                    }
                    int[] trimStateSet = StateSet.trimStateSet(iArr4, i4);
                    int round = (Math.round(Color.alpha(color) * f) << 24) | (16777215 & color);
                    int i7 = i3 + 1;
                    int i8 = 8;
                    if (i7 > iArr2.length) {
                        if (i3 <= 4) {
                            i = 8;
                        } else {
                            i = i3 * 2;
                        }
                        int[] iArr5 = new int[i];
                        System.arraycopy(iArr2, 0, iArr5, 0, i3);
                        iArr2 = iArr5;
                    }
                    iArr2[i3] = round;
                    if (i7 > iArr.length) {
                        Class<?> componentType = iArr.getClass().getComponentType();
                        if (i3 > 4) {
                            i8 = i3 * 2;
                        }
                        ?? r8 = (Object[]) Array.newInstance(componentType, i8);
                        System.arraycopy(iArr, 0, r8, 0, i3);
                        iArr = r8;
                    }
                    iArr[i3] = trimStateSet;
                    iArr = iArr;
                    i3 = i7;
                }
                i2 = 1;
            }
            int[] iArr6 = new int[i3];
            int[][] iArr7 = new int[i3];
            System.arraycopy(iArr2, 0, iArr6, 0, i3);
            System.arraycopy(iArr, 0, iArr7, 0, i3);
            return new ColorStateList(iArr7, iArr6);
        }
        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
    }
}
