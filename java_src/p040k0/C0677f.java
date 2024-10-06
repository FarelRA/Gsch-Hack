package p040k0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p039k.C0655b;
import p055q.C0824b;
import p055q.C0834f;
import p058r.C0848b;
import p061s.C0863a;
/* renamed from: k0.f */
/* loaded from: classes.dex */
public final class C0677f extends AbstractC0676e {

    /* renamed from: k */
    public static final PorterDuff.Mode f2335k = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    public C0684g f2336c;

    /* renamed from: d */
    public PorterDuffColorFilter f2337d;

    /* renamed from: e */
    public ColorFilter f2338e;

    /* renamed from: f */
    public boolean f2339f;

    /* renamed from: g */
    public boolean f2340g;

    /* renamed from: h */
    public final float[] f2341h;

    /* renamed from: i */
    public final Matrix f2342i;

    /* renamed from: j */
    public final Rect f2343j;

    /* renamed from: k0.f$a */
    /* loaded from: classes.dex */
    public static class C0678a extends AbstractC0682e {
        public C0678a() {
        }

        public C0678a(C0678a c0678a) {
            super(c0678a);
        }
    }

    /* renamed from: k0.f$b */
    /* loaded from: classes.dex */
    public static class C0679b extends AbstractC0682e {

        /* renamed from: d */
        public C0824b f2344d;

        /* renamed from: e */
        public float f2345e;

        /* renamed from: f */
        public C0824b f2346f;

        /* renamed from: g */
        public float f2347g;

        /* renamed from: h */
        public int f2348h;

        /* renamed from: i */
        public float f2349i;

        /* renamed from: j */
        public float f2350j;

        /* renamed from: k */
        public float f2351k;

        /* renamed from: l */
        public float f2352l;

        /* renamed from: m */
        public Paint.Cap f2353m;

        /* renamed from: n */
        public Paint.Join f2354n;

        /* renamed from: o */
        public float f2355o;

        public C0679b() {
            this.f2345e = 0.0f;
            this.f2347g = 1.0f;
            this.f2348h = 0;
            this.f2349i = 1.0f;
            this.f2350j = 0.0f;
            this.f2351k = 1.0f;
            this.f2352l = 0.0f;
            this.f2353m = Paint.Cap.BUTT;
            this.f2354n = Paint.Join.MITER;
            this.f2355o = 4.0f;
        }

        public C0679b(C0679b c0679b) {
            super(c0679b);
            this.f2345e = 0.0f;
            this.f2347g = 1.0f;
            this.f2348h = 0;
            this.f2349i = 1.0f;
            this.f2350j = 0.0f;
            this.f2351k = 1.0f;
            this.f2352l = 0.0f;
            this.f2353m = Paint.Cap.BUTT;
            this.f2354n = Paint.Join.MITER;
            this.f2355o = 4.0f;
            this.f2344d = c0679b.f2344d;
            this.f2345e = c0679b.f2345e;
            this.f2347g = c0679b.f2347g;
            this.f2346f = c0679b.f2346f;
            this.f2348h = c0679b.f2348h;
            this.f2349i = c0679b.f2349i;
            this.f2350j = c0679b.f2350j;
            this.f2351k = c0679b.f2351k;
            this.f2352l = c0679b.f2352l;
            this.f2353m = c0679b.f2353m;
            this.f2354n = c0679b.f2354n;
            this.f2355o = c0679b.f2355o;
        }

        @Override // p040k0.C0677f.AbstractC0681d
        /* renamed from: a */
        public final boolean mo382a() {
            return this.f2346f.m203b() || this.f2344d.m203b();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        @Override // p040k0.C0677f.AbstractC0681d
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean mo381b(int[] iArr) {
            boolean z;
            C0824b c0824b;
            C0824b c0824b2 = this.f2346f;
            boolean z2 = true;
            if (c0824b2.m203b()) {
                ColorStateList colorStateList = c0824b2.f2718b;
                int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
                if (colorForState != c0824b2.f2719c) {
                    c0824b2.f2719c = colorForState;
                    z = true;
                    c0824b = this.f2344d;
                    if (c0824b.m203b()) {
                        ColorStateList colorStateList2 = c0824b.f2718b;
                        int colorForState2 = colorStateList2.getColorForState(iArr, colorStateList2.getDefaultColor());
                        if (colorForState2 != c0824b.f2719c) {
                            c0824b.f2719c = colorForState2;
                            return z2 | z;
                        }
                    }
                    z2 = false;
                    return z2 | z;
                }
            }
            z = false;
            c0824b = this.f2344d;
            if (c0824b.m203b()) {
            }
            z2 = false;
            return z2 | z;
        }

        public float getFillAlpha() {
            return this.f2349i;
        }

        public int getFillColor() {
            return this.f2346f.f2719c;
        }

        public float getStrokeAlpha() {
            return this.f2347g;
        }

        public int getStrokeColor() {
            return this.f2344d.f2719c;
        }

        public float getStrokeWidth() {
            return this.f2345e;
        }

        public float getTrimPathEnd() {
            return this.f2351k;
        }

        public float getTrimPathOffset() {
            return this.f2352l;
        }

        public float getTrimPathStart() {
            return this.f2350j;
        }

        public void setFillAlpha(float f) {
            this.f2349i = f;
        }

        public void setFillColor(int i) {
            this.f2346f.f2719c = i;
        }

        public void setStrokeAlpha(float f) {
            this.f2347g = f;
        }

        public void setStrokeColor(int i) {
            this.f2344d.f2719c = i;
        }

        public void setStrokeWidth(float f) {
            this.f2345e = f;
        }

        public void setTrimPathEnd(float f) {
            this.f2351k = f;
        }

        public void setTrimPathOffset(float f) {
            this.f2352l = f;
        }

        public void setTrimPathStart(float f) {
            this.f2350j = f;
        }
    }

    /* renamed from: k0.f$d */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0681d {
        /* renamed from: a */
        public boolean mo382a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo381b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: k0.f$f */
    /* loaded from: classes.dex */
    public static class C0683f {

        /* renamed from: p */
        public static final Matrix f2371p = new Matrix();

        /* renamed from: a */
        public final Path f2372a;

        /* renamed from: b */
        public final Path f2373b;

        /* renamed from: c */
        public final Matrix f2374c;

        /* renamed from: d */
        public Paint f2375d;

        /* renamed from: e */
        public Paint f2376e;

        /* renamed from: f */
        public PathMeasure f2377f;

        /* renamed from: g */
        public final C0680c f2378g;

        /* renamed from: h */
        public float f2379h;

        /* renamed from: i */
        public float f2380i;

        /* renamed from: j */
        public float f2381j;

        /* renamed from: k */
        public float f2382k;

        /* renamed from: l */
        public int f2383l;

        /* renamed from: m */
        public String f2384m;

        /* renamed from: n */
        public Boolean f2385n;

        /* renamed from: o */
        public final C0655b<String, Object> f2386o;

        public C0683f() {
            this.f2374c = new Matrix();
            this.f2379h = 0.0f;
            this.f2380i = 0.0f;
            this.f2381j = 0.0f;
            this.f2382k = 0.0f;
            this.f2383l = 255;
            this.f2384m = null;
            this.f2385n = null;
            this.f2386o = new C0655b<>();
            this.f2378g = new C0680c();
            this.f2372a = new Path();
            this.f2373b = new Path();
        }

        public C0683f(C0683f c0683f) {
            this.f2374c = new Matrix();
            this.f2379h = 0.0f;
            this.f2380i = 0.0f;
            this.f2381j = 0.0f;
            this.f2382k = 0.0f;
            this.f2383l = 255;
            this.f2384m = null;
            this.f2385n = null;
            C0655b<String, Object> c0655b = new C0655b<>();
            this.f2386o = c0655b;
            this.f2378g = new C0680c(c0683f.f2378g, c0655b);
            this.f2372a = new Path(c0683f.f2372a);
            this.f2373b = new Path(c0683f.f2373b);
            this.f2379h = c0683f.f2379h;
            this.f2380i = c0683f.f2380i;
            this.f2381j = c0683f.f2381j;
            this.f2382k = c0683f.f2382k;
            this.f2383l = c0683f.f2383l;
            this.f2384m = c0683f.f2384m;
            String str = c0683f.f2384m;
            if (str != null) {
                c0655b.put(str, this);
            }
            this.f2385n = c0683f.f2385n;
        }

        /* renamed from: a */
        public final void m380a(C0680c c0680c, Matrix matrix, Canvas canvas, int i, int i2) {
            int i3;
            float f;
            float f2;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            Path.FillType fillType;
            c0680c.f2356a.set(matrix);
            Matrix matrix2 = c0680c.f2356a;
            matrix2.preConcat(c0680c.f2365j);
            canvas.save();
            char c = 0;
            int i4 = 0;
            while (true) {
                ArrayList<AbstractC0681d> arrayList = c0680c.f2357b;
                if (i4 < arrayList.size()) {
                    AbstractC0681d abstractC0681d = arrayList.get(i4);
                    if (abstractC0681d instanceof C0680c) {
                        m380a((C0680c) abstractC0681d, matrix2, canvas, i, i2);
                    } else if (abstractC0681d instanceof AbstractC0682e) {
                        AbstractC0682e abstractC0682e = (AbstractC0682e) abstractC0681d;
                        float f3 = i / this.f2381j;
                        float f4 = i2 / this.f2382k;
                        float min = Math.min(f3, f4);
                        Matrix matrix3 = this.f2374c;
                        matrix3.set(matrix2);
                        matrix3.postScale(f3, f4);
                        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                        matrix2.mapVectors(fArr);
                        i3 = i4;
                        float hypot = (float) Math.hypot(fArr[2], fArr[3]);
                        float f5 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                        float max = Math.max((float) Math.hypot(fArr[c], fArr[1]), hypot);
                        if (max > 0.0f) {
                            f = Math.abs(f5) / max;
                        } else {
                            f = 0.0f;
                        }
                        if (f != 0.0f) {
                            abstractC0682e.getClass();
                            Path path = this.f2372a;
                            path.reset();
                            C0848b.C0849a[] c0849aArr = abstractC0682e.f2368a;
                            if (c0849aArr != null) {
                                C0848b.C0849a.m174b(c0849aArr, path);
                            }
                            Path path2 = this.f2373b;
                            path2.reset();
                            if (abstractC0682e instanceof C0678a) {
                                path2.addPath(path, matrix3);
                                canvas.clipPath(path2);
                            } else {
                                C0679b c0679b = (C0679b) abstractC0682e;
                                float f6 = c0679b.f2350j;
                                if (f6 != 0.0f || c0679b.f2351k != 1.0f) {
                                    float f7 = c0679b.f2352l;
                                    float f8 = (f6 + f7) % 1.0f;
                                    float f9 = (c0679b.f2351k + f7) % 1.0f;
                                    if (this.f2377f == null) {
                                        this.f2377f = new PathMeasure();
                                    }
                                    this.f2377f.setPath(path, false);
                                    float length = this.f2377f.getLength();
                                    float f10 = f8 * length;
                                    float f11 = f9 * length;
                                    path.reset();
                                    if (f10 > f11) {
                                        this.f2377f.getSegment(f10, length, path, true);
                                        f2 = 0.0f;
                                        this.f2377f.getSegment(0.0f, f11, path, true);
                                    } else {
                                        f2 = 0.0f;
                                        this.f2377f.getSegment(f10, f11, path, true);
                                    }
                                    path.rLineTo(f2, f2);
                                }
                                path2.addPath(path, matrix3);
                                C0824b c0824b = c0679b.f2346f;
                                if (c0824b.f2717a != null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z && c0824b.f2719c == 0) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2) {
                                    if (this.f2376e == null) {
                                        Paint paint = new Paint(1);
                                        this.f2376e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                    }
                                    Paint paint2 = this.f2376e;
                                    Shader shader = c0824b.f2717a;
                                    if (shader != null) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if (z6) {
                                        shader.setLocalMatrix(matrix3);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(Math.round(c0679b.f2349i * 255.0f));
                                    } else {
                                        int i5 = c0824b.f2719c;
                                        float f12 = c0679b.f2349i;
                                        PorterDuff.Mode mode = C0677f.f2335k;
                                        paint2.setColor((i5 & 16777215) | (((int) (Color.alpha(i5) * f12)) << 24));
                                    }
                                    paint2.setColorFilter(null);
                                    if (c0679b.f2348h == 0) {
                                        fillType = Path.FillType.WINDING;
                                    } else {
                                        fillType = Path.FillType.EVEN_ODD;
                                    }
                                    path2.setFillType(fillType);
                                    canvas.drawPath(path2, paint2);
                                }
                                C0824b c0824b2 = c0679b.f2344d;
                                if (c0824b2.f2717a != null) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (!z3 && c0824b2.f2719c == 0) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                                if (z4) {
                                    if (this.f2375d == null) {
                                        z5 = true;
                                        Paint paint3 = new Paint(1);
                                        this.f2375d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                    } else {
                                        z5 = true;
                                    }
                                    Paint paint4 = this.f2375d;
                                    Paint.Join join = c0679b.f2354n;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = c0679b.f2353m;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(c0679b.f2355o);
                                    Shader shader2 = c0824b2.f2717a;
                                    if (shader2 == null) {
                                        z5 = false;
                                    }
                                    if (z5) {
                                        shader2.setLocalMatrix(matrix3);
                                        paint4.setShader(shader2);
                                        paint4.setAlpha(Math.round(c0679b.f2347g * 255.0f));
                                    } else {
                                        int i6 = c0824b2.f2719c;
                                        float f13 = c0679b.f2347g;
                                        PorterDuff.Mode mode2 = C0677f.f2335k;
                                        paint4.setColor((i6 & 16777215) | (((int) (Color.alpha(i6) * f13)) << 24));
                                    }
                                    paint4.setColorFilter(null);
                                    paint4.setStrokeWidth(c0679b.f2345e * f * min);
                                    canvas.drawPath(path2, paint4);
                                }
                            }
                        }
                        i4 = i3 + 1;
                        c = 0;
                    }
                    i3 = i4;
                    i4 = i3 + 1;
                    c = 0;
                } else {
                    canvas.restore();
                    return;
                }
            }
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f2383l;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f2383l = i;
        }
    }

    /* renamed from: k0.f$g */
    /* loaded from: classes.dex */
    public static class C0684g extends Drawable.ConstantState {

        /* renamed from: a */
        public int f2387a;

        /* renamed from: b */
        public C0683f f2388b;

        /* renamed from: c */
        public ColorStateList f2389c;

        /* renamed from: d */
        public PorterDuff.Mode f2390d;

        /* renamed from: e */
        public boolean f2391e;

        /* renamed from: f */
        public Bitmap f2392f;

        /* renamed from: g */
        public ColorStateList f2393g;

        /* renamed from: h */
        public PorterDuff.Mode f2394h;

        /* renamed from: i */
        public int f2395i;

        /* renamed from: j */
        public boolean f2396j;

        /* renamed from: k */
        public boolean f2397k;

        /* renamed from: l */
        public Paint f2398l;

        public C0684g() {
            this.f2389c = null;
            this.f2390d = C0677f.f2335k;
            this.f2388b = new C0683f();
        }

        public C0684g(C0684g c0684g) {
            this.f2389c = null;
            this.f2390d = C0677f.f2335k;
            if (c0684g != null) {
                this.f2387a = c0684g.f2387a;
                C0683f c0683f = new C0683f(c0684g.f2388b);
                this.f2388b = c0683f;
                if (c0684g.f2388b.f2376e != null) {
                    c0683f.f2376e = new Paint(c0684g.f2388b.f2376e);
                }
                if (c0684g.f2388b.f2375d != null) {
                    this.f2388b.f2375d = new Paint(c0684g.f2388b.f2375d);
                }
                this.f2389c = c0684g.f2389c;
                this.f2390d = c0684g.f2390d;
                this.f2391e = c0684g.f2391e;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2387a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0677f(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0677f(this);
        }
    }

    /* renamed from: k0.f$h */
    /* loaded from: classes.dex */
    public static class C0685h extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f2399a;

        public C0685h(Drawable.ConstantState constantState) {
            this.f2399a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f2399a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2399a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C0677f c0677f = new C0677f();
            c0677f.f2334b = (VectorDrawable) this.f2399a.newDrawable();
            return c0677f;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C0677f c0677f = new C0677f();
            c0677f.f2334b = (VectorDrawable) this.f2399a.newDrawable(resources);
            return c0677f;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0677f c0677f = new C0677f();
            c0677f.f2334b = (VectorDrawable) this.f2399a.newDrawable(resources, theme);
            return c0677f;
        }
    }

    public C0677f() {
        this.f2340g = true;
        this.f2341h = new float[9];
        this.f2342i = new Matrix();
        this.f2343j = new Rect();
        this.f2336c = new C0684g();
    }

    public C0677f(C0684g c0684g) {
        this.f2340g = true;
        this.f2341h = new float[9];
        this.f2342i = new Matrix();
        this.f2343j = new Rect();
        this.f2336c = c0684g;
        this.f2337d = m384a(c0684g.f2389c, c0684g.f2390d);
    }

    /* renamed from: a */
    public final PorterDuffColorFilter m384a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.canApplyTheme();
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0100, code lost:
        if ((r9 == r10.getWidth() && r5 == r0.f2392f.getHeight()) == false) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01a0  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        boolean z;
        Bitmap bitmap;
        Rect rect;
        C0684g c0684g;
        Paint paint;
        int intValue;
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect2 = this.f2343j;
        copyBounds(rect2);
        if (rect2.width() <= 0 || rect2.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f2338e;
        if (colorFilter == null) {
            colorFilter = this.f2337d;
        }
        ColorFilter colorFilter2 = colorFilter;
        Matrix matrix = this.f2342i;
        canvas.getMatrix(matrix);
        float[] fArr = this.f2341h;
        matrix.getValues(fArr);
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[4]);
        float abs3 = Math.abs(fArr[1]);
        float abs4 = Math.abs(fArr[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (rect2.width() * abs));
        int min2 = Math.min(2048, (int) (rect2.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(rect2.left, rect2.top);
        int i = Build.VERSION.SDK_INT;
        if (isAutoMirrored()) {
            if (i >= 23) {
                intValue = getLayoutDirection();
            } else {
                if (!C0863a.f2773d) {
                    try {
                        Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                        C0863a.f2772c = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                        Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
                    }
                    C0863a.f2773d = true;
                }
                Method method = C0863a.f2772c;
                if (method != null) {
                    try {
                        intValue = ((Integer) method.invoke(this, new Object[0])).intValue();
                    } catch (Exception e2) {
                        Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
                        C0863a.f2772c = null;
                    }
                }
                intValue = 0;
            }
            if (intValue == 1) {
                z = true;
                if (z) {
                    canvas.translate(rect2.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                rect2.offsetTo(0, 0);
                C0684g c0684g2 = this.f2336c;
                bitmap = c0684g2.f2392f;
                if (bitmap != null) {
                }
                c0684g2.f2392f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
                c0684g2.f2397k = true;
                if (this.f2340g) {
                    C0684g c0684g3 = this.f2336c;
                    c0684g3.f2392f.eraseColor(0);
                    Canvas canvas2 = new Canvas(c0684g3.f2392f);
                    C0683f c0683f = c0684g3.f2388b;
                    rect = null;
                    c0683f.m380a(c0683f.f2378g, C0683f.f2371p, canvas2, min, min2);
                } else {
                    rect = null;
                    C0684g c0684g4 = this.f2336c;
                    if (!(!c0684g4.f2397k && c0684g4.f2393g == c0684g4.f2389c && c0684g4.f2394h == c0684g4.f2390d && c0684g4.f2396j == c0684g4.f2391e && c0684g4.f2395i == c0684g4.f2388b.getRootAlpha())) {
                        C0684g c0684g5 = this.f2336c;
                        c0684g5.f2392f.eraseColor(0);
                        Canvas canvas3 = new Canvas(c0684g5.f2392f);
                        C0683f c0683f2 = c0684g5.f2388b;
                        c0683f2.m380a(c0683f2.f2378g, C0683f.f2371p, canvas3, min, min2);
                        C0684g c0684g6 = this.f2336c;
                        c0684g6.f2393g = c0684g6.f2389c;
                        c0684g6.f2394h = c0684g6.f2390d;
                        c0684g6.f2395i = c0684g6.f2388b.getRootAlpha();
                        c0684g6.f2396j = c0684g6.f2391e;
                        c0684g6.f2397k = false;
                    }
                }
                c0684g = this.f2336c;
                if ((c0684g.f2388b.getRootAlpha() < 255) && colorFilter2 == null) {
                    paint = rect;
                } else {
                    if (c0684g.f2398l == null) {
                        Paint paint2 = new Paint();
                        c0684g.f2398l = paint2;
                        paint2.setFilterBitmap(true);
                    }
                    c0684g.f2398l.setAlpha(c0684g.f2388b.getRootAlpha());
                    c0684g.f2398l.setColorFilter(colorFilter2);
                    paint = c0684g.f2398l;
                }
                canvas.drawBitmap(c0684g.f2392f, rect, rect2, paint);
                canvas.restoreToCount(save);
            }
        }
        z = false;
        if (z) {
        }
        rect2.offsetTo(0, 0);
        C0684g c0684g22 = this.f2336c;
        bitmap = c0684g22.f2392f;
        if (bitmap != null) {
        }
        c0684g22.f2392f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
        c0684g22.f2397k = true;
        if (this.f2340g) {
        }
        c0684g = this.f2336c;
        if (c0684g.f2388b.getRootAlpha() < 255) {
        }
        if (c0684g.f2398l == null) {
        }
        c0684g.f2398l.setAlpha(c0684g.f2388b.getRootAlpha());
        c0684g.f2398l.setColorFilter(colorFilter2);
        paint = c0684g.f2398l;
        canvas.drawBitmap(c0684g.f2392f, rect, rect2, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.f2336c.f2388b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f2336c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2334b == null || Build.VERSION.SDK_INT < 24) {
            this.f2336c.f2387a = getChangingConfigurations();
            return this.f2336c;
        }
        return new C0685h(this.f2334b.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f2336c.f2388b.f2380i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f2336c.f2388b.f2379h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0683f c0683f;
        Resources resources2 = resources;
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.inflate(resources2, xmlPullParser, attributeSet, theme);
            return;
        }
        C0684g c0684g = this.f2336c;
        c0684g.f2388b = new C0683f();
        TypedArray m192f = C0834f.m192f(resources2, theme, attributeSet, C0668a.f2312a);
        C0684g c0684g2 = this.f2336c;
        C0683f c0683f2 = c0684g2.f2388b;
        int m195c = C0834f.m195c(m192f, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (m195c == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (m195c != 5) {
            if (m195c != 9) {
                switch (m195c) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        c0684g2.f2390d = mode;
        int i = 1;
        ColorStateList colorStateList = m192f.getColorStateList(1);
        if (colorStateList != null) {
            c0684g2.f2389c = colorStateList;
        }
        boolean z = c0684g2.f2391e;
        if (C0834f.m193e(xmlPullParser, "autoMirrored")) {
            z = m192f.getBoolean(5, z);
        }
        c0684g2.f2391e = z;
        c0683f2.f2381j = C0834f.m196b(m192f, xmlPullParser, "viewportWidth", 7, c0683f2.f2381j);
        float m196b = C0834f.m196b(m192f, xmlPullParser, "viewportHeight", 8, c0683f2.f2382k);
        c0683f2.f2382k = m196b;
        if (c0683f2.f2381j <= 0.0f) {
            throw new XmlPullParserException(m192f.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (m196b <= 0.0f) {
            throw new XmlPullParserException(m192f.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        } else {
            c0683f2.f2379h = m192f.getDimension(3, c0683f2.f2379h);
            int i2 = 2;
            float dimension = m192f.getDimension(2, c0683f2.f2380i);
            c0683f2.f2380i = dimension;
            if (c0683f2.f2379h <= 0.0f) {
                throw new XmlPullParserException(m192f.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension > 0.0f) {
                c0683f2.setAlpha(C0834f.m196b(m192f, xmlPullParser, "alpha", 4, c0683f2.getAlpha()));
                String string = m192f.getString(0);
                if (string != null) {
                    c0683f2.f2384m = string;
                    c0683f2.f2386o.put(string, c0683f2);
                }
                m192f.recycle();
                c0684g.f2387a = getChangingConfigurations();
                c0684g.f2397k = true;
                C0684g c0684g3 = this.f2336c;
                C0683f c0683f3 = c0684g3.f2388b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(c0683f3.f2378g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z2 = true;
                for (int i3 = 3; eventType != i && (xmlPullParser.getDepth() >= depth || eventType != i3); i3 = 3) {
                    if (eventType == i2) {
                        String name = xmlPullParser.getName();
                        C0680c c0680c = (C0680c) arrayDeque.peek();
                        boolean equals = "path".equals(name);
                        C0655b<String, Object> c0655b = c0683f3.f2386o;
                        if (equals) {
                            C0679b c0679b = new C0679b();
                            TypedArray m192f2 = C0834f.m192f(resources2, theme, attributeSet, C0668a.f2314c);
                            if (C0834f.m193e(xmlPullParser, "pathData")) {
                                String string2 = m192f2.getString(0);
                                if (string2 != null) {
                                    c0679b.f2369b = string2;
                                }
                                String string3 = m192f2.getString(2);
                                if (string3 != null) {
                                    c0679b.f2368a = C0848b.m178c(string3);
                                }
                                c0679b.f2346f = C0834f.m197a(m192f2, xmlPullParser, theme, "fillColor", 1);
                                c0683f = c0683f3;
                                c0679b.f2349i = C0834f.m196b(m192f2, xmlPullParser, "fillAlpha", 12, c0679b.f2349i);
                                int m195c2 = C0834f.m195c(m192f2, xmlPullParser, "strokeLineCap", 8, -1);
                                Paint.Cap cap = c0679b.f2353m;
                                if (m195c2 == 0) {
                                    cap = Paint.Cap.BUTT;
                                } else if (m195c2 == 1) {
                                    cap = Paint.Cap.ROUND;
                                } else if (m195c2 == 2) {
                                    cap = Paint.Cap.SQUARE;
                                }
                                c0679b.f2353m = cap;
                                int m195c3 = C0834f.m195c(m192f2, xmlPullParser, "strokeLineJoin", 9, -1);
                                Paint.Join join = c0679b.f2354n;
                                if (m195c3 == 0) {
                                    join = Paint.Join.MITER;
                                } else if (m195c3 == 1) {
                                    join = Paint.Join.ROUND;
                                } else if (m195c3 == 2) {
                                    join = Paint.Join.BEVEL;
                                }
                                c0679b.f2354n = join;
                                c0679b.f2355o = C0834f.m196b(m192f2, xmlPullParser, "strokeMiterLimit", 10, c0679b.f2355o);
                                c0679b.f2344d = C0834f.m197a(m192f2, xmlPullParser, theme, "strokeColor", 3);
                                c0679b.f2347g = C0834f.m196b(m192f2, xmlPullParser, "strokeAlpha", 11, c0679b.f2347g);
                                c0679b.f2345e = C0834f.m196b(m192f2, xmlPullParser, "strokeWidth", 4, c0679b.f2345e);
                                c0679b.f2351k = C0834f.m196b(m192f2, xmlPullParser, "trimPathEnd", 6, c0679b.f2351k);
                                c0679b.f2352l = C0834f.m196b(m192f2, xmlPullParser, "trimPathOffset", 7, c0679b.f2352l);
                                c0679b.f2350j = C0834f.m196b(m192f2, xmlPullParser, "trimPathStart", 5, c0679b.f2350j);
                                c0679b.f2348h = C0834f.m195c(m192f2, xmlPullParser, "fillType", 13, c0679b.f2348h);
                            } else {
                                c0683f = c0683f3;
                            }
                            m192f2.recycle();
                            c0680c.f2357b.add(c0679b);
                            if (c0679b.getPathName() != null) {
                                c0655b.put(c0679b.getPathName(), c0679b);
                            }
                            c0684g3.f2387a |= c0679b.f2370c;
                            z2 = false;
                        } else {
                            c0683f = c0683f3;
                            if ("clip-path".equals(name)) {
                                C0678a c0678a = new C0678a();
                                if (C0834f.m193e(xmlPullParser, "pathData")) {
                                    TypedArray m192f3 = C0834f.m192f(resources2, theme, attributeSet, C0668a.f2315d);
                                    String string4 = m192f3.getString(0);
                                    if (string4 != null) {
                                        c0678a.f2369b = string4;
                                    }
                                    String string5 = m192f3.getString(1);
                                    if (string5 != null) {
                                        c0678a.f2368a = C0848b.m178c(string5);
                                    }
                                    m192f3.recycle();
                                }
                                c0680c.f2357b.add(c0678a);
                                if (c0678a.getPathName() != null) {
                                    c0655b.put(c0678a.getPathName(), c0678a);
                                }
                                c0684g3.f2387a |= c0678a.f2370c;
                            } else if ("group".equals(name)) {
                                C0680c c0680c2 = new C0680c();
                                TypedArray m192f4 = C0834f.m192f(resources2, theme, attributeSet, C0668a.f2313b);
                                c0680c2.f2358c = C0834f.m196b(m192f4, xmlPullParser, "rotation", 5, c0680c2.f2358c);
                                c0680c2.f2359d = m192f4.getFloat(1, c0680c2.f2359d);
                                c0680c2.f2360e = m192f4.getFloat(2, c0680c2.f2360e);
                                c0680c2.f2361f = C0834f.m196b(m192f4, xmlPullParser, "scaleX", 3, c0680c2.f2361f);
                                c0680c2.f2362g = C0834f.m196b(m192f4, xmlPullParser, "scaleY", 4, c0680c2.f2362g);
                                c0680c2.f2363h = C0834f.m196b(m192f4, xmlPullParser, "translateX", 6, c0680c2.f2363h);
                                c0680c2.f2364i = C0834f.m196b(m192f4, xmlPullParser, "translateY", 7, c0680c2.f2364i);
                                String string6 = m192f4.getString(0);
                                if (string6 != null) {
                                    c0680c2.f2367l = string6;
                                }
                                c0680c2.m383c();
                                m192f4.recycle();
                                c0680c.f2357b.add(c0680c2);
                                arrayDeque.push(c0680c2);
                                if (c0680c2.getGroupName() != null) {
                                    c0655b.put(c0680c2.getGroupName(), c0680c2);
                                }
                                c0684g3.f2387a |= c0680c2.f2366k;
                            }
                        }
                    } else {
                        c0683f = c0683f3;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    resources2 = resources;
                    c0683f3 = c0683f;
                    i = 1;
                    i2 = 2;
                }
                if (!z2) {
                    this.f2337d = m384a(c0684g.f2389c, c0684g.f2390d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            } else {
                throw new XmlPullParserException(m192f.getPositionDescription() + "<vector> tag requires height > 0");
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.f2336c.f2391e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            C0684g c0684g = this.f2336c;
            if (c0684g != null) {
                C0683f c0683f = c0684g.f2388b;
                if (c0683f.f2385n == null) {
                    c0683f.f2385n = Boolean.valueOf(c0683f.f2378g.mo382a());
                }
                if (c0683f.f2385n.booleanValue() || ((colorStateList = this.f2336c.f2389c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f2339f && super.mutate() == this) {
            this.f2336c = new C0684g(this.f2336c);
            this.f2339f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C0684g c0684g = this.f2336c;
        ColorStateList colorStateList = c0684g.f2389c;
        if (colorStateList != null && (mode = c0684g.f2390d) != null) {
            this.f2337d = m384a(colorStateList, mode);
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        C0683f c0683f = c0684g.f2388b;
        if (c0683f.f2385n == null) {
            c0683f.f2385n = Boolean.valueOf(c0683f.f2378g.mo382a());
        }
        if (c0683f.f2385n.booleanValue()) {
            boolean mo381b = c0684g.f2388b.f2378g.mo381b(iArr);
            c0684g.f2397k |= mo381b;
            if (mo381b) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f2336c.f2388b.getRootAlpha() != i) {
            this.f2336c.f2388b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f2336c.f2391e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f2338e = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            C0863a.m141c(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        C0684g c0684g = this.f2336c;
        if (c0684g.f2389c != colorStateList) {
            c0684g.f2389c = colorStateList;
            this.f2337d = m384a(colorStateList, c0684g.f2390d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        C0684g c0684g = this.f2336c;
        if (c0684g.f2390d != mode) {
            c0684g.f2390d = mode;
            this.f2337d = m384a(c0684g.f2389c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* renamed from: k0.f$c */
    /* loaded from: classes.dex */
    public static class C0680c extends AbstractC0681d {

        /* renamed from: a */
        public final Matrix f2356a;

        /* renamed from: b */
        public final ArrayList<AbstractC0681d> f2357b;

        /* renamed from: c */
        public float f2358c;

        /* renamed from: d */
        public float f2359d;

        /* renamed from: e */
        public float f2360e;

        /* renamed from: f */
        public float f2361f;

        /* renamed from: g */
        public float f2362g;

        /* renamed from: h */
        public float f2363h;

        /* renamed from: i */
        public float f2364i;

        /* renamed from: j */
        public final Matrix f2365j;

        /* renamed from: k */
        public final int f2366k;

        /* renamed from: l */
        public String f2367l;

        public C0680c() {
            this.f2356a = new Matrix();
            this.f2357b = new ArrayList<>();
            this.f2358c = 0.0f;
            this.f2359d = 0.0f;
            this.f2360e = 0.0f;
            this.f2361f = 1.0f;
            this.f2362g = 1.0f;
            this.f2363h = 0.0f;
            this.f2364i = 0.0f;
            this.f2365j = new Matrix();
            this.f2367l = null;
        }

        @Override // p040k0.C0677f.AbstractC0681d
        /* renamed from: a */
        public final boolean mo382a() {
            int i = 0;
            while (true) {
                ArrayList<AbstractC0681d> arrayList = this.f2357b;
                if (i >= arrayList.size()) {
                    return false;
                }
                if (arrayList.get(i).mo382a()) {
                    return true;
                }
                i++;
            }
        }

        @Override // p040k0.C0677f.AbstractC0681d
        /* renamed from: b */
        public final boolean mo381b(int[] iArr) {
            int i = 0;
            boolean z = false;
            while (true) {
                ArrayList<AbstractC0681d> arrayList = this.f2357b;
                if (i >= arrayList.size()) {
                    return z;
                }
                z |= arrayList.get(i).mo381b(iArr);
                i++;
            }
        }

        /* renamed from: c */
        public final void m383c() {
            Matrix matrix = this.f2365j;
            matrix.reset();
            matrix.postTranslate(-this.f2359d, -this.f2360e);
            matrix.postScale(this.f2361f, this.f2362g);
            matrix.postRotate(this.f2358c, 0.0f, 0.0f);
            matrix.postTranslate(this.f2363h + this.f2359d, this.f2364i + this.f2360e);
        }

        public String getGroupName() {
            return this.f2367l;
        }

        public Matrix getLocalMatrix() {
            return this.f2365j;
        }

        public float getPivotX() {
            return this.f2359d;
        }

        public float getPivotY() {
            return this.f2360e;
        }

        public float getRotation() {
            return this.f2358c;
        }

        public float getScaleX() {
            return this.f2361f;
        }

        public float getScaleY() {
            return this.f2362g;
        }

        public float getTranslateX() {
            return this.f2363h;
        }

        public float getTranslateY() {
            return this.f2364i;
        }

        public void setPivotX(float f) {
            if (f != this.f2359d) {
                this.f2359d = f;
                m383c();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f2360e) {
                this.f2360e = f;
                m383c();
            }
        }

        public void setRotation(float f) {
            if (f != this.f2358c) {
                this.f2358c = f;
                m383c();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f2361f) {
                this.f2361f = f;
                m383c();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f2362g) {
                this.f2362g = f;
                m383c();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f2363h) {
                this.f2363h = f;
                m383c();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f2364i) {
                this.f2364i = f;
                m383c();
            }
        }

        public C0680c(C0680c c0680c, C0655b<String, Object> c0655b) {
            AbstractC0682e c0678a;
            this.f2356a = new Matrix();
            this.f2357b = new ArrayList<>();
            this.f2358c = 0.0f;
            this.f2359d = 0.0f;
            this.f2360e = 0.0f;
            this.f2361f = 1.0f;
            this.f2362g = 1.0f;
            this.f2363h = 0.0f;
            this.f2364i = 0.0f;
            Matrix matrix = new Matrix();
            this.f2365j = matrix;
            this.f2367l = null;
            this.f2358c = c0680c.f2358c;
            this.f2359d = c0680c.f2359d;
            this.f2360e = c0680c.f2360e;
            this.f2361f = c0680c.f2361f;
            this.f2362g = c0680c.f2362g;
            this.f2363h = c0680c.f2363h;
            this.f2364i = c0680c.f2364i;
            String str = c0680c.f2367l;
            this.f2367l = str;
            this.f2366k = c0680c.f2366k;
            if (str != null) {
                c0655b.put(str, this);
            }
            matrix.set(c0680c.f2365j);
            ArrayList<AbstractC0681d> arrayList = c0680c.f2357b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC0681d abstractC0681d = arrayList.get(i);
                if (abstractC0681d instanceof C0680c) {
                    this.f2357b.add(new C0680c((C0680c) abstractC0681d, c0655b));
                } else {
                    if (abstractC0681d instanceof C0679b) {
                        c0678a = new C0679b((C0679b) abstractC0681d);
                    } else if (!(abstractC0681d instanceof C0678a)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c0678a = new C0678a((C0678a) abstractC0681d);
                    }
                    this.f2357b.add(c0678a);
                    String str2 = c0678a.f2369b;
                    if (str2 != null) {
                        c0655b.put(str2, c0678a);
                    }
                }
            }
        }
    }

    /* renamed from: k0.f$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0682e extends AbstractC0681d {

        /* renamed from: a */
        public C0848b.C0849a[] f2368a;

        /* renamed from: b */
        public String f2369b;

        /* renamed from: c */
        public final int f2370c;

        public AbstractC0682e() {
            this.f2368a = null;
        }

        public C0848b.C0849a[] getPathData() {
            return this.f2368a;
        }

        public String getPathName() {
            return this.f2369b;
        }

        public void setPathData(C0848b.C0849a[] c0849aArr) {
            if (!C0848b.m180a(this.f2368a, c0849aArr)) {
                this.f2368a = C0848b.m176e(c0849aArr);
                return;
            }
            C0848b.C0849a[] c0849aArr2 = this.f2368a;
            for (int i = 0; i < c0849aArr.length; i++) {
                c0849aArr2[i].f2747a = c0849aArr[i].f2747a;
                int i2 = 0;
                while (true) {
                    float[] fArr = c0849aArr[i].f2748b;
                    if (i2 < fArr.length) {
                        c0849aArr2[i].f2748b[i2] = fArr[i2];
                        i2++;
                    }
                }
            }
        }

        public AbstractC0682e(AbstractC0682e abstractC0682e) {
            this.f2368a = null;
            this.f2369b = abstractC0682e.f2369b;
            this.f2370c = abstractC0682e.f2370c;
            this.f2368a = C0848b.m176e(abstractC0682e.f2368a);
        }
    }
}
