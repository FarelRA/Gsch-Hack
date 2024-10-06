package p040k0;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import p055q.C0834f;
import p058r.C0848b;
/* renamed from: k0.c */
/* loaded from: classes.dex */
public final class C0673c {

    /* renamed from: k0.c$a */
    /* loaded from: classes.dex */
    public static class C0674a implements TypeEvaluator<C0848b.C0849a[]> {

        /* renamed from: a */
        public C0848b.C0849a[] f2332a;

        @Override // android.animation.TypeEvaluator
        public final C0848b.C0849a[] evaluate(float f, C0848b.C0849a[] c0849aArr, C0848b.C0849a[] c0849aArr2) {
            C0848b.C0849a[] c0849aArr3 = c0849aArr;
            C0848b.C0849a[] c0849aArr4 = c0849aArr2;
            if (C0848b.m180a(c0849aArr3, c0849aArr4)) {
                C0848b.C0849a[] c0849aArr5 = this.f2332a;
                if (c0849aArr5 == null || !C0848b.m180a(c0849aArr5, c0849aArr3)) {
                    this.f2332a = C0848b.m176e(c0849aArr3);
                }
                for (int i = 0; i < c0849aArr3.length; i++) {
                    C0848b.C0849a c0849a = this.f2332a[i];
                    C0848b.C0849a c0849a2 = c0849aArr3[i];
                    C0848b.C0849a c0849a3 = c0849aArr4[i];
                    c0849a.getClass();
                    c0849a.f2747a = c0849a2.f2747a;
                    int i2 = 0;
                    while (true) {
                        float[] fArr = c0849a2.f2748b;
                        if (i2 < fArr.length) {
                            c0849a.f2748b[i2] = (c0849a3.f2748b[i2] * f) + ((1.0f - f) * fArr[i2]);
                            i2++;
                        }
                    }
                }
                return this.f2332a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x0333, code lost:
        if (r32 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0335, code lost:
        if (r13 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0337, code lost:
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0346, code lost:
        if (r2.hasNext() == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0348, code lost:
        r1[r14] = (android.animation.Animator) r2.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0354, code lost:
        if (r33 != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0356, code lost:
        r32.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x035a, code lost:
        r32.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x035d, code lost:
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:164:0x030c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Animator m389a(Context context, Resources resources, Resources.Theme theme, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i) {
        PropertyValuesHolder[] propertyValuesHolderArr;
        AttributeSet attributeSet2;
        String str;
        PropertyValuesHolder propertyValuesHolder;
        int size;
        int i2;
        float f;
        String str2;
        int i3;
        ObjectAnimator objectAnimator;
        Resources resources2 = resources;
        Resources.Theme theme2 = theme;
        int depth = xmlResourceParser.getDepth();
        ValueAnimator valueAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlResourceParser.next();
            int i4 = 3;
            boolean z = false;
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                break;
            }
            int i5 = 1;
            if (next == 1) {
                break;
            }
            int i6 = 2;
            if (next == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("objectAnimator")) {
                    ObjectAnimator objectAnimator2 = new ObjectAnimator();
                    m385e(context, resources, theme, attributeSet, objectAnimator2, xmlResourceParser);
                    objectAnimator = objectAnimator2;
                } else if (name.equals("animator")) {
                    objectAnimator = m385e(context, resources, theme, attributeSet, null, xmlResourceParser);
                } else {
                    if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray m192f = C0834f.m192f(resources2, theme2, attributeSet, C0668a.f2319h);
                        m389a(context, resources, theme, xmlResourceParser, attributeSet, animatorSet2, C0834f.m195c(m192f, xmlResourceParser, "ordering", 0, 0));
                        m192f.recycle();
                        valueAnimator = animatorSet2;
                    } else {
                        String str3 = "propertyValuesHolder";
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlResourceParser.getName());
                        }
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                        ArrayList arrayList2 = null;
                        while (true) {
                            int eventType = xmlResourceParser.getEventType();
                            if (eventType == i4 || eventType == i5) {
                                break;
                            } else if (eventType != i6) {
                                xmlResourceParser.next();
                            } else {
                                if (xmlResourceParser.getName().equals(str3)) {
                                    TypedArray m192f2 = C0834f.m192f(resources2, theme2, asAttributeSet, C0668a.f2320i);
                                    String m194d = C0834f.m194d(m192f2, xmlResourceParser, "propertyName", i4);
                                    int m195c = C0834f.m195c(m192f2, xmlResourceParser, "valueType", i6, 4);
                                    int i7 = m195c;
                                    ArrayList arrayList3 = null;
                                    while (true) {
                                        int next2 = xmlResourceParser.next();
                                        attributeSet2 = asAttributeSet;
                                        if (next2 == i4 || next2 == 1) {
                                            break;
                                        }
                                        if (xmlResourceParser.getName().equals("keyframe")) {
                                            int[] iArr = C0668a.f2321j;
                                            if (i7 == 4) {
                                                TypedArray m192f3 = C0834f.m192f(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                                TypedValue peekValue = !C0834f.m193e(xmlResourceParser, "value") ? null : m192f3.peekValue(0);
                                                i7 = ((peekValue != null) && m386d(peekValue.type)) ? 3 : 0;
                                                m192f3.recycle();
                                            }
                                            TypedArray m192f4 = C0834f.m192f(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                            str2 = str3;
                                            float m196b = C0834f.m196b(m192f4, xmlResourceParser, "fraction", 3, -1.0f);
                                            TypedValue peekValue2 = !C0834f.m193e(xmlResourceParser, "value") ? null : m192f4.peekValue(0);
                                            boolean z2 = peekValue2 != null;
                                            if (i7 == 4) {
                                                i3 = (z2 && m386d(peekValue2.type)) ? 3 : 0;
                                            } else {
                                                i3 = i7;
                                            }
                                            Keyframe ofInt = z2 ? i3 != 0 ? (i3 == 1 || i3 == 3) ? Keyframe.ofInt(m196b, C0834f.m195c(m192f4, xmlResourceParser, "value", 0, 0)) : null : Keyframe.ofFloat(m196b, C0834f.m196b(m192f4, xmlResourceParser, "value", 0, 0.0f)) : i3 == 0 ? Keyframe.ofFloat(m196b) : Keyframe.ofInt(m196b);
                                            int resourceId = !C0834f.m193e(xmlResourceParser, "interpolator") ? 0 : m192f4.getResourceId(1, 0);
                                            if (resourceId > 0) {
                                                ofInt.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
                                            }
                                            m192f4.recycle();
                                            ArrayList arrayList4 = arrayList3;
                                            if (ofInt != null) {
                                                if (arrayList4 == null) {
                                                    arrayList4 = new ArrayList();
                                                }
                                                arrayList4.add(ofInt);
                                                arrayList3 = arrayList4;
                                            }
                                            xmlResourceParser.next();
                                        } else {
                                            str2 = str3;
                                        }
                                        resources2 = resources;
                                        theme2 = theme;
                                        asAttributeSet = attributeSet2;
                                        str3 = str2;
                                        i4 = 3;
                                    }
                                    str = str3;
                                    ArrayList arrayList5 = arrayList3;
                                    if (arrayList5 == null || (size = arrayList5.size()) <= 0) {
                                        i4 = 3;
                                        propertyValuesHolder = null;
                                    } else {
                                        Keyframe keyframe = (Keyframe) arrayList5.get(0);
                                        Keyframe keyframe2 = (Keyframe) arrayList5.get(size - 1);
                                        float fraction = keyframe2.getFraction();
                                        if (fraction < 1.0f) {
                                            if (fraction < 0.0f) {
                                                keyframe2.setFraction(1.0f);
                                            } else {
                                                arrayList5.add(arrayList5.size(), m388b(keyframe2, 1.0f));
                                                size++;
                                            }
                                        }
                                        float fraction2 = keyframe.getFraction();
                                        if (fraction2 != 0.0f) {
                                            if (fraction2 < 0.0f) {
                                                keyframe.setFraction(0.0f);
                                            } else {
                                                arrayList5.add(0, m388b(keyframe, 0.0f));
                                                size++;
                                            }
                                        }
                                        Keyframe[] keyframeArr = new Keyframe[size];
                                        arrayList5.toArray(keyframeArr);
                                        int i8 = 0;
                                        while (i8 < size) {
                                            Keyframe keyframe3 = keyframeArr[i8];
                                            if (keyframe3.getFraction() < 0.0f) {
                                                if (i8 == 0) {
                                                    f = 0.0f;
                                                } else {
                                                    int i9 = size - 1;
                                                    if (i8 == i9) {
                                                        f = 1.0f;
                                                    } else {
                                                        int i10 = i8 + 1;
                                                        int i11 = i8;
                                                        while (i10 < i9 && keyframeArr[i10].getFraction() < 0.0f) {
                                                            int i12 = i10;
                                                            i10++;
                                                            i11 = i12;
                                                        }
                                                        float fraction3 = (keyframeArr[i11 + 1].getFraction() - keyframeArr[i8 - 1].getFraction()) / ((i11 - i8) + 2);
                                                        int i13 = i8;
                                                        while (true) {
                                                            i2 = size;
                                                            if (i13 <= i11) {
                                                                keyframeArr[i13].setFraction(keyframeArr[i13 - 1].getFraction() + fraction3);
                                                                i13++;
                                                                size = i2;
                                                                i11 = i11;
                                                            }
                                                        }
                                                        i8++;
                                                        size = i2;
                                                    }
                                                }
                                                keyframe3.setFraction(f);
                                            }
                                            i2 = size;
                                            i8++;
                                            size = i2;
                                        }
                                        propertyValuesHolder = PropertyValuesHolder.ofKeyframe(m194d, keyframeArr);
                                        i4 = 3;
                                        if (i7 == 3) {
                                            propertyValuesHolder.setEvaluator(C0675d.f2333a);
                                        }
                                    }
                                    if (propertyValuesHolder == null) {
                                        propertyValuesHolder = m387c(m192f2, m195c, 0, 1, m194d);
                                    }
                                    if (propertyValuesHolder != null) {
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        arrayList2.add(propertyValuesHolder);
                                    }
                                    m192f2.recycle();
                                } else {
                                    attributeSet2 = asAttributeSet;
                                    str = str3;
                                }
                                xmlResourceParser.next();
                                resources2 = resources;
                                theme2 = theme;
                                asAttributeSet = attributeSet2;
                                str3 = str;
                                i5 = 1;
                                i6 = 2;
                            }
                        }
                        if (arrayList2 != null) {
                            int size2 = arrayList2.size();
                            propertyValuesHolderArr = new PropertyValuesHolder[size2];
                            for (int i14 = 0; i14 < size2; i14++) {
                                propertyValuesHolderArr[i14] = (PropertyValuesHolder) arrayList2.get(i14);
                            }
                        } else {
                            propertyValuesHolderArr = null;
                        }
                        if (propertyValuesHolderArr != null && valueAnimator != null && (valueAnimator instanceof ValueAnimator)) {
                            valueAnimator.setValues(propertyValuesHolderArr);
                        }
                        z = true;
                    }
                    if (animatorSet != null && !z) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(valueAnimator);
                    }
                    resources2 = resources;
                    theme2 = theme;
                }
                valueAnimator = objectAnimator;
                if (animatorSet != null) {
                    if (arrayList == null) {
                    }
                    arrayList.add(valueAnimator);
                }
                resources2 = resources;
                theme2 = theme;
            }
        }
    }

    /* renamed from: b */
    public static Keyframe m388b(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: c */
    public static PropertyValuesHolder m387c(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofFloat;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && m386d(i4)) || (z2 && m386d(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i != 2) {
            C0675d c0675d = i == 3 ? C0675d.f2333a : null;
            if (z3) {
                if (z) {
                    float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                    if (z2) {
                        ofFloat = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                    } else {
                        ofFloat = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                }
                propertyValuesHolder = ofFloat;
            } else if (z) {
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : m386d(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m386d(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z2) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m386d(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            }
            if (propertyValuesHolder == null || c0675d == null) {
                return propertyValuesHolder;
            }
            propertyValuesHolder.setEvaluator(c0675d);
            return propertyValuesHolder;
        }
        String string = typedArray.getString(i2);
        String string2 = typedArray.getString(i3);
        C0848b.C0849a[] m178c = C0848b.m178c(string);
        C0848b.C0849a[] m178c2 = C0848b.m178c(string2);
        if (m178c == null && m178c2 == null) {
            return null;
        }
        if (m178c == null) {
            if (m178c2 != null) {
                return PropertyValuesHolder.ofObject(str, new C0674a(), m178c2);
            }
            return null;
        }
        C0674a c0674a = new C0674a();
        if (m178c2 == null) {
            ofObject = PropertyValuesHolder.ofObject(str, c0674a, m178c);
        } else if (!C0848b.m180a(m178c, m178c2)) {
            throw new InflateException(" Can't morph from " + string + " to " + string2);
        } else {
            ofObject = PropertyValuesHolder.ofObject(str, c0674a, m178c, m178c2);
        }
        return ofObject;
    }

    /* renamed from: d */
    public static boolean m386d(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: e */
    public static ValueAnimator m385e(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        TypedArray typedArray2;
        ValueAnimator valueAnimator2;
        TypedArray m192f = C0834f.m192f(resources, theme, attributeSet, C0668a.f2318g);
        TypedArray m192f2 = C0834f.m192f(resources, theme, attributeSet, C0668a.f2322k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long m195c = C0834f.m195c(m192f, xmlResourceParser, "duration", 1, 300);
        int i = 0;
        long m195c2 = C0834f.m195c(m192f, xmlResourceParser, "startOffset", 2, 0);
        int m195c3 = C0834f.m195c(m192f, xmlResourceParser, "valueType", 7, 4);
        if (C0834f.m193e(xmlResourceParser, "valueFrom") && C0834f.m193e(xmlResourceParser, "valueTo")) {
            if (m195c3 == 4) {
                TypedValue peekValue = m192f.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = m192f.peekValue(6);
                boolean z2 = peekValue2 != null;
                m195c3 = ((z && m386d(i2)) || (z2 && m386d(z2 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder m387c = m387c(m192f, m195c3, 5, 6, "");
            if (m387c != null) {
                valueAnimator3.setValues(m387c);
            }
        }
        valueAnimator3.setDuration(m195c);
        valueAnimator3.setStartDelay(m195c2);
        valueAnimator3.setRepeatCount(C0834f.m195c(m192f, xmlResourceParser, "repeatCount", 3, 0));
        valueAnimator3.setRepeatMode(C0834f.m195c(m192f, xmlResourceParser, "repeatMode", 4, 1));
        if (m192f2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String m194d = C0834f.m194d(m192f2, xmlResourceParser, "pathData", 1);
            if (m194d != null) {
                String m194d2 = C0834f.m194d(m192f2, xmlResourceParser, "propertyXName", 2);
                String m194d3 = C0834f.m194d(m192f2, xmlResourceParser, "propertyYName", 3);
                if (m194d2 == null && m194d3 == null) {
                    throw new InflateException(m192f2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path m177d = C0848b.m177d(m194d);
                PathMeasure pathMeasure = new PathMeasure(m177d, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f = 0.0f;
                do {
                    f += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(m177d, false);
                int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f2 = f / (min - 1);
                valueAnimator = valueAnimator3;
                typedArray = m192f;
                int i3 = 0;
                float f3 = 0.0f;
                while (true) {
                    if (i >= min) {
                        break;
                    }
                    int i4 = min;
                    pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i3)).floatValue(), fArr3, null);
                    fArr[i] = fArr3[0];
                    fArr2[i] = fArr3[1];
                    f3 += f2;
                    int i5 = i3 + 1;
                    if (i5 < arrayList.size() && f3 > ((Float) arrayList.get(i5)).floatValue()) {
                        pathMeasure2.nextContour();
                        i3 = i5;
                    }
                    i++;
                    min = i4;
                }
                PropertyValuesHolder ofFloat = m194d2 != null ? PropertyValuesHolder.ofFloat(m194d2, fArr) : null;
                PropertyValuesHolder ofFloat2 = m194d3 != null ? PropertyValuesHolder.ofFloat(m194d3, fArr2) : null;
                if (ofFloat == null) {
                    i = 0;
                    objectAnimator2.setValues(ofFloat2);
                } else {
                    i = 0;
                    if (ofFloat2 == null) {
                        objectAnimator2.setValues(ofFloat);
                    } else {
                        objectAnimator2.setValues(ofFloat, ofFloat2);
                    }
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = m192f;
                objectAnimator2.setPropertyName(C0834f.m194d(m192f2, xmlResourceParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            typedArray = m192f;
        }
        if (C0834f.m193e(xmlResourceParser, "interpolator")) {
            typedArray2 = typedArray;
            i = typedArray2.getResourceId(i, i);
        } else {
            typedArray2 = typedArray;
        }
        if (i > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, i));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (m192f2 != null) {
            m192f2.recycle();
        }
        return valueAnimator2;
    }
}
