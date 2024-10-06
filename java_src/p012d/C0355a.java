package p012d;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import org.xmlpull.v1.XmlPullParserException;
import p008c.C0315a;
import p012d.C0362b;
import p012d.C0367d;
import p039k.C0658e;
import p039k.C0667i;
import p040k0.C0669b;
import p040k0.C0677f;
import p046m1.C0736h;
import p055q.C0834f;
/* renamed from: d.a */
/* loaded from: classes.dex */
public final class C0355a extends C0367d {

    /* renamed from: q */
    public C0357b f1359q;

    /* renamed from: r */
    public AbstractC0361f f1360r;

    /* renamed from: s */
    public int f1361s;

    /* renamed from: t */
    public int f1362t;

    /* renamed from: u */
    public boolean f1363u;

    /* renamed from: d.a$a */
    /* loaded from: classes.dex */
    public static class C0356a extends AbstractC0361f {

        /* renamed from: a */
        public final Animatable f1364a;

        public C0356a(Animatable animatable) {
            this.f1364a = animatable;
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: c */
        public final void mo905c() {
            this.f1364a.start();
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: d */
        public final void mo904d() {
            this.f1364a.stop();
        }
    }

    /* renamed from: d.a$b */
    /* loaded from: classes.dex */
    public static class C0357b extends C0367d.C0368a {

        /* renamed from: I */
        public C0658e<Long> f1365I;

        /* renamed from: J */
        public C0667i<Integer> f1366J;

        public C0357b(C0357b c0357b, C0355a c0355a, Resources resources) {
            super(c0357b, c0355a, resources);
            C0667i<Integer> c0667i;
            if (c0357b != null) {
                this.f1365I = c0357b.f1365I;
                c0667i = c0357b.f1366J;
            } else {
                this.f1365I = new C0658e<>();
                c0667i = new C0667i<>();
            }
            this.f1366J = c0667i;
        }

        @Override // p012d.C0367d.C0368a, p012d.C0362b.AbstractC0365c
        /* renamed from: e */
        public final void mo893e() {
            this.f1365I = this.f1365I.clone();
            this.f1366J = this.f1366J.clone();
        }

        @Override // p012d.C0367d.C0368a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0355a(this, null);
        }

        @Override // p012d.C0367d.C0368a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0355a(this, resources);
        }
    }

    /* renamed from: d.a$c */
    /* loaded from: classes.dex */
    public static class C0358c extends AbstractC0361f {

        /* renamed from: a */
        public final C0669b f1367a;

        public C0358c(C0669b c0669b) {
            this.f1367a = c0669b;
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: c */
        public final void mo905c() {
            this.f1367a.start();
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: d */
        public final void mo904d() {
            this.f1367a.stop();
        }
    }

    /* renamed from: d.a$d */
    /* loaded from: classes.dex */
    public static class C0359d extends AbstractC0361f {

        /* renamed from: a */
        public final ObjectAnimator f1368a;

        /* renamed from: b */
        public final boolean f1369b;

        public C0359d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            int i;
            int i2;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            if (z) {
                i = numberOfFrames - 1;
            } else {
                i = 0;
            }
            if (z) {
                i2 = 0;
            } else {
                i2 = numberOfFrames - 1;
            }
            C0360e c0360e = new C0360e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            ofInt.setAutoCancel(true);
            ofInt.setDuration(c0360e.f1372c);
            ofInt.setInterpolator(c0360e);
            this.f1369b = z2;
            this.f1368a = ofInt;
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: a */
        public final boolean mo907a() {
            return this.f1369b;
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: b */
        public final void mo906b() {
            this.f1368a.reverse();
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: c */
        public final void mo905c() {
            this.f1368a.start();
        }

        @Override // p012d.C0355a.AbstractC0361f
        /* renamed from: d */
        public final void mo904d() {
            this.f1368a.cancel();
        }
    }

    /* renamed from: d.a$e */
    /* loaded from: classes.dex */
    public static class C0360e implements TimeInterpolator {

        /* renamed from: a */
        public int[] f1370a;

        /* renamed from: b */
        public int f1371b;

        /* renamed from: c */
        public int f1372c;

        public C0360e(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f1371b = numberOfFrames;
            int[] iArr = this.f1370a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f1370a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f1370a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f1372c = i;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.f1372c) + 0.5f);
            int i2 = this.f1371b;
            int[] iArr = this.f1370a;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f1372c : 0.0f);
        }
    }

    /* renamed from: d.a$f */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0361f {
        /* renamed from: a */
        public boolean mo907a() {
            return false;
        }

        /* renamed from: b */
        public void mo906b() {
        }

        /* renamed from: c */
        public abstract void mo905c();

        /* renamed from: d */
        public abstract void mo904d();
    }

    public C0355a() {
        this(null, null);
    }

    public C0355a(C0357b c0357b, Resources resources) {
        this.f1361s = -1;
        this.f1362t = -1;
        mo895e(new C0357b(c0357b, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x023b, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0265, code lost:
        r4.onStateChange(r4.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x026c, code lost:
        return r4;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0355a m908g(Context context, Resources.Theme theme, Resources resources, AttributeSet attributeSet, XmlResourceParser xmlResourceParser) {
        int depth;
        Context context2;
        long j;
        int next;
        int next2;
        Resources.Theme theme2 = theme;
        Resources resources2 = resources;
        String name = xmlResourceParser.getName();
        if (name.equals("animated-selector")) {
            C0355a c0355a = new C0355a();
            TypedArray m192f = C0834f.m192f(resources2, theme2, attributeSet, C0736h.f2569i);
            int i = 1;
            c0355a.setVisible(m192f.getBoolean(1, true), true);
            C0357b c0357b = c0355a.f1359q;
            c0357b.f1398d |= m192f.getChangingConfigurations();
            int i2 = 2;
            c0357b.f1403i = m192f.getBoolean(2, c0357b.f1403i);
            int i3 = 3;
            c0357b.f1406l = m192f.getBoolean(3, c0357b.f1406l);
            c0357b.f1419y = m192f.getInt(4, c0357b.f1419y);
            c0357b.f1420z = m192f.getInt(5, c0357b.f1420z);
            boolean z = false;
            c0355a.setDither(m192f.getBoolean(0, c0357b.f1417w));
            C0362b.AbstractC0365c abstractC0365c = c0355a.f1374b;
            if (resources2 != null) {
                abstractC0365c.f1396b = resources2;
                int i4 = resources.getDisplayMetrics().densityDpi;
                if (i4 == 0) {
                    i4 = 160;
                }
                int i5 = abstractC0365c.f1397c;
                abstractC0365c.f1397c = i4;
                if (i5 != i4) {
                    abstractC0365c.f1407m = false;
                    abstractC0365c.f1404j = false;
                }
            } else {
                abstractC0365c.getClass();
            }
            m192f.recycle();
            int depth2 = xmlResourceParser.getDepth() + 1;
            Context context3 = context;
            Resources.Theme theme3 = theme2;
            while (true) {
                int next3 = xmlResourceParser.next();
                if (next3 == i || ((depth = xmlResourceParser.getDepth()) < depth2 && next3 == i3)) {
                    break;
                } else if (next3 == i2 && depth <= depth2) {
                    Drawable drawable = null;
                    if (xmlResourceParser.getName().equals("item")) {
                        TypedArray m192f2 = C0834f.m192f(resources2, theme3, attributeSet, C0736h.f2570j);
                        int resourceId = m192f2.getResourceId(z ? 1 : 0, z ? 1 : 0);
                        int resourceId2 = m192f2.getResourceId(i, -1);
                        if (resourceId2 > 0) {
                            drawable = C0315a.m994c(context3, resourceId2);
                        }
                        m192f2.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i6 = 0;
                        for (int i7 = 0; i7 < attributeCount; i7++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i7);
                            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                                int i8 = i6 + 1;
                                if (!attributeSet.getAttributeBooleanValue(i7, z)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr[i6] = attributeNameResource;
                                i6 = i8;
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr, i6);
                        if (drawable == null) {
                            do {
                                next2 = xmlResourceParser.next();
                            } while (next2 == 4);
                            if (next2 == 2) {
                                if (xmlResourceParser.getName().equals("vector")) {
                                    drawable = new C0677f();
                                    drawable.inflate(resources2, xmlResourceParser, attributeSet, theme3);
                                } else {
                                    drawable = Drawable.createFromXmlInner(resources2, xmlResourceParser, attributeSet, theme3);
                                }
                            } else {
                                throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                        }
                        if (drawable != null) {
                            C0357b c0357b2 = c0355a.f1359q;
                            int m900a = c0357b2.m900a(drawable);
                            c0357b2.f1424H[m900a] = trimStateSet;
                            c0357b2.f1366J.m392e(m900a, Integer.valueOf(resourceId));
                        } else {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                    } else {
                        if (xmlResourceParser.getName().equals("transition")) {
                            TypedArray m192f3 = C0834f.m192f(resources2, theme3, attributeSet, C0736h.f2571k);
                            int resourceId3 = m192f3.getResourceId(2, -1);
                            int resourceId4 = m192f3.getResourceId(1, -1);
                            int resourceId5 = m192f3.getResourceId(z ? 1 : 0, -1);
                            if (resourceId5 > 0) {
                                drawable = C0315a.m994c(context3, resourceId5);
                            }
                            boolean z2 = m192f3.getBoolean(3, z);
                            m192f3.recycle();
                            if (drawable == null) {
                                while (true) {
                                    next = xmlResourceParser.next();
                                    if (next != 4) {
                                        break;
                                    }
                                }
                                if (next == 2) {
                                    if (xmlResourceParser.getName().equals("animated-vector")) {
                                        context2 = context;
                                        drawable = new C0669b(context2);
                                        drawable.inflate(resources2, xmlResourceParser, attributeSet, theme2);
                                    } else {
                                        context2 = context;
                                        drawable = Drawable.createFromXmlInner(resources2, xmlResourceParser, attributeSet, theme3);
                                    }
                                } else {
                                    throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                                }
                            } else {
                                context2 = context;
                            }
                            if (drawable != null) {
                                if (resourceId3 == -1 || resourceId4 == -1) {
                                    break;
                                }
                                C0357b c0357b3 = c0355a.f1359q;
                                int m900a2 = c0357b3.m900a(drawable);
                                long j2 = resourceId3;
                                long j3 = resourceId4;
                                long j4 = j3 | (j2 << 32);
                                if (z2) {
                                    j = 8589934592L;
                                } else {
                                    j = 0;
                                }
                                long j5 = m900a2;
                                c0357b3.f1365I.m428a(j4, Long.valueOf(j5 | j));
                                if (z2) {
                                    c0357b3.f1365I.m428a((j3 << 32) | j2, Long.valueOf(j5 | 4294967296L | j));
                                }
                            } else {
                                throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                        } else {
                            context2 = context;
                        }
                        theme3 = theme;
                        context3 = context2;
                    }
                    theme2 = theme;
                    resources2 = resources;
                    i = 1;
                    z = false;
                    i2 = 2;
                    i3 = 3;
                }
            }
        } else {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
    }

    @Override // p012d.C0367d, p012d.C0362b
    /* renamed from: b */
    public final C0362b.AbstractC0365c mo896b() {
        return new C0357b(this.f1359q, this, null);
    }

    @Override // p012d.C0367d, p012d.C0362b
    /* renamed from: e */
    public final void mo895e(C0362b.AbstractC0365c abstractC0365c) {
        super.mo895e(abstractC0365c);
        if (abstractC0365c instanceof C0357b) {
            this.f1359q = (C0357b) abstractC0365c;
        }
    }

    @Override // p012d.C0367d
    /* renamed from: f */
    public final C0367d.C0368a mo894f() {
        return new C0357b(this.f1359q, this, null);
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f1359q;
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0361f abstractC0361f = this.f1360r;
        if (abstractC0361f != null) {
            abstractC0361f.mo904d();
            this.f1360r = null;
            m901d(this.f1361s);
            this.f1361s = -1;
            this.f1362t = -1;
        }
    }

    @Override // p012d.C0367d, p012d.C0362b, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f1363u) {
            super.mutate();
            this.f1359q.mo893e();
            this.f1363u = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0107  */
    @Override // p012d.C0367d, p012d.C0362b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onStateChange(int[] iArr) {
        int intValue;
        int intValue2;
        boolean z;
        boolean z2;
        AbstractC0361f c0356a;
        boolean z3;
        C0357b c0357b = this.f1359q;
        int m892f = c0357b.m892f(iArr);
        if (m892f < 0) {
            m892f = c0357b.m892f(StateSet.WILD_CARD);
        }
        int i = this.f1380h;
        boolean z4 = false;
        if (m892f != i) {
            AbstractC0361f abstractC0361f = this.f1360r;
            if (abstractC0361f != null) {
                if (m892f != this.f1361s) {
                    if (m892f == this.f1362t && abstractC0361f.mo907a()) {
                        abstractC0361f.mo906b();
                        this.f1361s = this.f1362t;
                        this.f1362t = m892f;
                    } else {
                        i = this.f1361s;
                        abstractC0361f.mo904d();
                    }
                }
                z = true;
                if (!z || m901d(m892f)) {
                    z4 = true;
                }
            }
            this.f1360r = null;
            this.f1362t = -1;
            this.f1361s = -1;
            C0357b c0357b2 = this.f1359q;
            if (i < 0) {
                c0357b2.getClass();
                intValue = 0;
            } else {
                intValue = ((Integer) c0357b2.f1366J.m393d(i, 0)).intValue();
            }
            if (m892f < 0) {
                intValue2 = 0;
            } else {
                intValue2 = ((Integer) c0357b2.f1366J.m393d(m892f, 0)).intValue();
            }
            if (intValue2 != 0 && intValue != 0) {
                long j = intValue2 | (intValue << 32);
                int longValue = (int) ((Long) c0357b2.f1365I.m424e(j, -1L)).longValue();
                if (longValue >= 0) {
                    if ((((Long) c0357b2.f1365I.m424e(j, -1L)).longValue() & 8589934592L) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    m901d(longValue);
                    Drawable drawable = this.f1376d;
                    if (drawable instanceof AnimationDrawable) {
                        if ((((Long) c0357b2.f1365I.m424e(j, -1L)).longValue() & 4294967296L) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        c0356a = new C0359d((AnimationDrawable) drawable, z3, z2);
                    } else if (drawable instanceof C0669b) {
                        c0356a = new C0358c((C0669b) drawable);
                    } else if (drawable instanceof Animatable) {
                        c0356a = new C0356a((Animatable) drawable);
                    }
                    c0356a.mo905c();
                    this.f1360r = c0356a;
                    this.f1362t = i;
                    this.f1361s = m892f;
                    z = true;
                    if (!z) {
                    }
                    z4 = true;
                }
            }
            z = false;
            if (!z) {
            }
            z4 = true;
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            return z4 | drawable2.setState(iArr);
        }
        return z4;
    }

    @Override // p012d.C0362b, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC0361f abstractC0361f = this.f1360r;
        if (abstractC0361f != null && (visible || z2)) {
            if (z) {
                abstractC0361f.mo905c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
