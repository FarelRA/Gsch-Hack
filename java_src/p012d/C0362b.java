package p012d;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import p012d.C0367d;
/* renamed from: d.b */
/* loaded from: classes.dex */
public class C0362b extends Drawable implements Drawable.Callback {

    /* renamed from: n */
    public static final /* synthetic */ int f1373n = 0;

    /* renamed from: b */
    public AbstractC0365c f1374b;

    /* renamed from: c */
    public Rect f1375c;

    /* renamed from: d */
    public Drawable f1376d;

    /* renamed from: e */
    public Drawable f1377e;

    /* renamed from: g */
    public boolean f1379g;

    /* renamed from: i */
    public boolean f1381i;

    /* renamed from: j */
    public RunnableC0363a f1382j;

    /* renamed from: k */
    public long f1383k;

    /* renamed from: l */
    public long f1384l;

    /* renamed from: m */
    public C0364b f1385m;

    /* renamed from: f */
    public int f1378f = 255;

    /* renamed from: h */
    public int f1380h = -1;

    /* renamed from: d.b$a */
    /* loaded from: classes.dex */
    public class RunnableC0363a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ C0362b f1386b;

        public RunnableC0363a(C0367d c0367d) {
            this.f1386b = c0367d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0362b c0362b = this.f1386b;
            c0362b.m903a(true);
            c0362b.invalidateSelf();
        }
    }

    /* renamed from: d.b$b */
    /* loaded from: classes.dex */
    public static class C0364b implements Drawable.Callback {

        /* renamed from: b */
        public Drawable.Callback f1387b;

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f1387b;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f1387b;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: d.b$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0365c extends Drawable.ConstantState {

        /* renamed from: A */
        public boolean f1388A;

        /* renamed from: B */
        public ColorFilter f1389B;

        /* renamed from: C */
        public boolean f1390C;

        /* renamed from: D */
        public ColorStateList f1391D;

        /* renamed from: E */
        public PorterDuff.Mode f1392E;

        /* renamed from: F */
        public boolean f1393F;

        /* renamed from: G */
        public boolean f1394G;

        /* renamed from: a */
        public final C0362b f1395a;

        /* renamed from: b */
        public Resources f1396b;

        /* renamed from: c */
        public int f1397c;

        /* renamed from: d */
        public int f1398d;

        /* renamed from: e */
        public int f1399e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f1400f;

        /* renamed from: g */
        public Drawable[] f1401g;

        /* renamed from: h */
        public int f1402h;

        /* renamed from: i */
        public boolean f1403i;

        /* renamed from: j */
        public boolean f1404j;

        /* renamed from: k */
        public Rect f1405k;

        /* renamed from: l */
        public boolean f1406l;

        /* renamed from: m */
        public boolean f1407m;

        /* renamed from: n */
        public int f1408n;

        /* renamed from: o */
        public int f1409o;

        /* renamed from: p */
        public int f1410p;

        /* renamed from: q */
        public int f1411q;

        /* renamed from: r */
        public boolean f1412r;

        /* renamed from: s */
        public int f1413s;

        /* renamed from: t */
        public boolean f1414t;

        /* renamed from: u */
        public boolean f1415u;

        /* renamed from: v */
        public boolean f1416v;

        /* renamed from: w */
        public boolean f1417w;

        /* renamed from: x */
        public int f1418x;

        /* renamed from: y */
        public int f1419y;

        /* renamed from: z */
        public int f1420z;

        public AbstractC0365c(AbstractC0365c abstractC0365c, C0362b c0362b, Resources resources) {
            Resources resources2;
            int i;
            SparseArray<Drawable.ConstantState> sparseArray;
            this.f1397c = 160;
            this.f1403i = false;
            this.f1406l = false;
            this.f1417w = true;
            this.f1419y = 0;
            this.f1420z = 0;
            this.f1395a = c0362b;
            if (resources != null) {
                resources2 = resources;
            } else if (abstractC0365c != null) {
                resources2 = abstractC0365c.f1396b;
            } else {
                resources2 = null;
            }
            this.f1396b = resources2;
            if (abstractC0365c != null) {
                i = abstractC0365c.f1397c;
            } else {
                i = 0;
            }
            int i2 = C0362b.f1373n;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            int i3 = i != 0 ? i : 160;
            this.f1397c = i3;
            if (abstractC0365c != null) {
                this.f1398d = abstractC0365c.f1398d;
                this.f1399e = abstractC0365c.f1399e;
                this.f1415u = true;
                this.f1416v = true;
                this.f1403i = abstractC0365c.f1403i;
                this.f1406l = abstractC0365c.f1406l;
                this.f1417w = abstractC0365c.f1417w;
                this.f1418x = abstractC0365c.f1418x;
                this.f1419y = abstractC0365c.f1419y;
                this.f1420z = abstractC0365c.f1420z;
                this.f1388A = abstractC0365c.f1388A;
                this.f1389B = abstractC0365c.f1389B;
                this.f1390C = abstractC0365c.f1390C;
                this.f1391D = abstractC0365c.f1391D;
                this.f1392E = abstractC0365c.f1392E;
                this.f1393F = abstractC0365c.f1393F;
                this.f1394G = abstractC0365c.f1394G;
                if (abstractC0365c.f1397c == i3) {
                    if (abstractC0365c.f1404j) {
                        this.f1405k = new Rect(abstractC0365c.f1405k);
                        this.f1404j = true;
                    }
                    if (abstractC0365c.f1407m) {
                        this.f1408n = abstractC0365c.f1408n;
                        this.f1409o = abstractC0365c.f1409o;
                        this.f1410p = abstractC0365c.f1410p;
                        this.f1411q = abstractC0365c.f1411q;
                        this.f1407m = true;
                    }
                }
                if (abstractC0365c.f1412r) {
                    this.f1413s = abstractC0365c.f1413s;
                    this.f1412r = true;
                }
                if (abstractC0365c.f1414t) {
                    this.f1414t = true;
                }
                Drawable[] drawableArr = abstractC0365c.f1401g;
                this.f1401g = new Drawable[drawableArr.length];
                this.f1402h = abstractC0365c.f1402h;
                SparseArray<Drawable.ConstantState> sparseArray2 = abstractC0365c.f1400f;
                if (sparseArray2 != null) {
                    sparseArray = sparseArray2.clone();
                } else {
                    sparseArray = new SparseArray<>(this.f1402h);
                }
                this.f1400f = sparseArray;
                int i4 = this.f1402h;
                for (int i5 = 0; i5 < i4; i5++) {
                    Drawable drawable = drawableArr[i5];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.f1400f.put(i5, constantState);
                        } else {
                            this.f1401g[i5] = drawableArr[i5];
                        }
                    }
                }
                return;
            }
            this.f1401g = new Drawable[10];
            this.f1402h = 0;
        }

        /* renamed from: a */
        public final int m900a(Drawable drawable) {
            int i = this.f1402h;
            if (i >= this.f1401g.length) {
                int i2 = i + 10;
                C0367d.C0368a c0368a = (C0367d.C0368a) this;
                Drawable[] drawableArr = new Drawable[i2];
                System.arraycopy(c0368a.f1401g, 0, drawableArr, 0, i);
                c0368a.f1401g = drawableArr;
                int[][] iArr = new int[i2];
                System.arraycopy(c0368a.f1424H, 0, iArr, 0, i);
                c0368a.f1424H = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f1395a);
            this.f1401g[i] = drawable;
            this.f1402h++;
            this.f1399e = drawable.getChangingConfigurations() | this.f1399e;
            this.f1412r = false;
            this.f1414t = false;
            this.f1405k = null;
            this.f1404j = false;
            this.f1407m = false;
            this.f1415u = false;
            return i;
        }

        /* renamed from: b */
        public final void m899b() {
            this.f1407m = true;
            m898c();
            int i = this.f1402h;
            Drawable[] drawableArr = this.f1401g;
            this.f1409o = -1;
            this.f1408n = -1;
            this.f1411q = 0;
            this.f1410p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f1408n) {
                    this.f1408n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f1409o) {
                    this.f1409o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f1410p) {
                    this.f1410p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f1411q) {
                    this.f1411q = minimumHeight;
                }
            }
        }

        /* renamed from: c */
        public final void m898c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f1400f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.f1400f.keyAt(i);
                    Drawable[] drawableArr = this.f1401g;
                    Drawable newDrawable = this.f1400f.valueAt(i).newDrawable(this.f1396b);
                    if (Build.VERSION.SDK_INT >= 23) {
                        newDrawable.setLayoutDirection(this.f1418x);
                    }
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.f1395a);
                    drawableArr[keyAt] = mutate;
                }
                this.f1400f = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            int i = this.f1402h;
            Drawable[] drawableArr = this.f1401g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f1400f.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final Drawable m897d(int i) {
            int indexOfKey;
            Drawable drawable = this.f1401g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f1400f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f1400f.valueAt(indexOfKey).newDrawable(this.f1396b);
            if (Build.VERSION.SDK_INT >= 23) {
                newDrawable.setLayoutDirection(this.f1418x);
            }
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.f1395a);
            this.f1401g[i] = mutate;
            this.f1400f.removeAt(indexOfKey);
            if (this.f1400f.size() == 0) {
                this.f1400f = null;
            }
            return mutate;
        }

        /* renamed from: e */
        public abstract void mo893e();

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f1398d | this.f1399e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m903a(boolean z) {
        boolean z2;
        Drawable drawable;
        boolean z3 = true;
        this.f1379g = true;
        long uptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            long j = this.f1383k;
            if (j != 0) {
                if (j <= uptimeMillis) {
                    drawable2.setAlpha(this.f1378f);
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j - uptimeMillis) * 255)) / this.f1374b.f1419y)) * this.f1378f) / 255);
                    z2 = true;
                    drawable = this.f1377e;
                    if (drawable != null) {
                        long j2 = this.f1384l;
                        if (j2 != 0) {
                            if (j2 > uptimeMillis) {
                                drawable.setAlpha(((((int) ((j2 - uptimeMillis) * 255)) / this.f1374b.f1420z) * this.f1378f) / 255);
                                if (z && z3) {
                                    scheduleSelf(this.f1382j, uptimeMillis + 16);
                                    return;
                                }
                                return;
                            }
                            drawable.setVisible(false, false);
                            this.f1377e = null;
                        }
                        z3 = z2;
                        if (z) {
                            return;
                        }
                        return;
                    }
                    this.f1384l = 0L;
                    z3 = z2;
                    if (z) {
                    }
                }
            }
            z2 = false;
            drawable = this.f1377e;
            if (drawable != null) {
            }
            this.f1384l = 0L;
            z3 = z2;
            if (z) {
            }
        }
        this.f1383k = 0L;
        z2 = false;
        drawable = this.f1377e;
        if (drawable != null) {
        }
        this.f1384l = 0L;
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (theme != null) {
            abstractC0365c.m898c();
            int i = abstractC0365c.f1402h;
            Drawable[] drawableArr = abstractC0365c.f1401g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null && drawable.canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    abstractC0365c.f1399e |= drawableArr[i2].getChangingConfigurations();
                }
            }
            Resources resources = theme.getResources();
            if (resources != null) {
                abstractC0365c.f1396b = resources;
                int i3 = resources.getDisplayMetrics().densityDpi;
                if (i3 == 0) {
                    i3 = 160;
                }
                int i4 = abstractC0365c.f1397c;
                abstractC0365c.f1397c = i3;
                if (i4 != i3) {
                    abstractC0365c.f1407m = false;
                    abstractC0365c.f1404j = false;
                    return;
                }
                return;
            }
            return;
        }
        abstractC0365c.getClass();
    }

    /* renamed from: b */
    public AbstractC0365c mo896b() {
        throw null;
    }

    /* renamed from: c */
    public final void m902c(Drawable drawable) {
        if (this.f1385m == null) {
            this.f1385m = new C0364b();
        }
        C0364b c0364b = this.f1385m;
        c0364b.f1387b = drawable.getCallback();
        drawable.setCallback(c0364b);
        try {
            if (this.f1374b.f1419y <= 0 && this.f1379g) {
                drawable.setAlpha(this.f1378f);
            }
            AbstractC0365c abstractC0365c = this.f1374b;
            if (abstractC0365c.f1390C) {
                drawable.setColorFilter(abstractC0365c.f1389B);
            } else {
                if (abstractC0365c.f1393F) {
                    drawable.setTintList(abstractC0365c.f1391D);
                }
                AbstractC0365c abstractC0365c2 = this.f1374b;
                if (abstractC0365c2.f1394G) {
                    drawable.setTintMode(abstractC0365c2.f1392E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f1374b.f1417w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            drawable.setAutoMirrored(this.f1374b.f1388A);
            Rect rect = this.f1375c;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            C0364b c0364b2 = this.f1385m;
            Drawable.Callback callback = c0364b2.f1387b;
            c0364b2.f1387b = null;
            drawable.setCallback(callback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f1374b.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0076  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m901d(int i) {
        RunnableC0363a runnableC0363a;
        if (i == this.f1380h) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f1374b.f1420z > 0) {
            Drawable drawable = this.f1377e;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f1376d;
            if (drawable2 != null) {
                this.f1377e = drawable2;
                this.f1384l = this.f1374b.f1420z + uptimeMillis;
            } else {
                this.f1377e = null;
                this.f1384l = 0L;
            }
        } else {
            Drawable drawable3 = this.f1376d;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0) {
            AbstractC0365c abstractC0365c = this.f1374b;
            if (i < abstractC0365c.f1402h) {
                Drawable m897d = abstractC0365c.m897d(i);
                this.f1376d = m897d;
                this.f1380h = i;
                if (m897d != null) {
                    int i2 = this.f1374b.f1419y;
                    if (i2 > 0) {
                        this.f1383k = uptimeMillis + i2;
                    }
                    m902c(m897d);
                }
                if (this.f1383k == 0 || this.f1384l != 0) {
                    runnableC0363a = this.f1382j;
                    if (runnableC0363a != null) {
                        this.f1382j = new RunnableC0363a((C0367d) this);
                    } else {
                        unscheduleSelf(runnableC0363a);
                    }
                    m903a(true);
                }
                invalidateSelf();
                return true;
            }
        }
        this.f1376d = null;
        this.f1380h = -1;
        if (this.f1383k == 0) {
        }
        runnableC0363a = this.f1382j;
        if (runnableC0363a != null) {
        }
        m903a(true);
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f1377e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: e */
    public void mo895e(AbstractC0365c abstractC0365c) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f1378f;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        AbstractC0365c abstractC0365c = this.f1374b;
        return changingConfigurations | abstractC0365c.f1399e | abstractC0365c.f1398d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        boolean z;
        AbstractC0365c abstractC0365c = this.f1374b;
        synchronized (abstractC0365c) {
            if (abstractC0365c.f1415u) {
                z = abstractC0365c.f1416v;
            } else {
                abstractC0365c.m898c();
                z = true;
                abstractC0365c.f1415u = true;
                int i = abstractC0365c.f1402h;
                Drawable[] drawableArr = abstractC0365c.f1401g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        abstractC0365c.f1416v = false;
                        z = false;
                        break;
                    }
                }
                abstractC0365c.f1416v = true;
            }
        }
        if (z) {
            this.f1374b.f1398d = getChangingConfigurations();
            return this.f1374b;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f1376d;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f1375c;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1406l) {
            if (!abstractC0365c.f1407m) {
                abstractC0365c.m899b();
            }
            return abstractC0365c.f1409o;
        }
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1406l) {
            if (!abstractC0365c.f1407m) {
                abstractC0365c.m899b();
            }
            return abstractC0365c.f1408n;
        }
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1406l) {
            if (!abstractC0365c.f1407m) {
                abstractC0365c.m899b();
            }
            return abstractC0365c.f1411q;
        }
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1406l) {
            if (!abstractC0365c.f1407m) {
                abstractC0365c.m899b();
            }
            return abstractC0365c.f1410p;
        }
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f1376d;
        int i = -2;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1412r) {
            return abstractC0365c.f1413s;
        }
        abstractC0365c.m898c();
        int i2 = abstractC0365c.f1402h;
        Drawable[] drawableArr = abstractC0365c.f1401g;
        if (i2 > 0) {
            i = drawableArr[0].getOpacity();
        }
        for (int i3 = 1; i3 < i2; i3++) {
            i = Drawable.resolveOpacity(i, drawableArr[i3].getOpacity());
        }
        abstractC0365c.f1413s = i;
        abstractC0365c.f1412r = true;
        return i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        boolean padding;
        AbstractC0365c abstractC0365c = this.f1374b;
        boolean z = true;
        Rect rect2 = null;
        if (!abstractC0365c.f1403i) {
            Rect rect3 = abstractC0365c.f1405k;
            if (rect3 == null && !abstractC0365c.f1404j) {
                abstractC0365c.m898c();
                Rect rect4 = new Rect();
                int i = abstractC0365c.f1402h;
                Drawable[] drawableArr = abstractC0365c.f1401g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                abstractC0365c.f1404j = true;
                abstractC0365c.f1405k = rect2;
            } else {
                rect2 = rect3;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                padding = true;
            } else {
                padding = false;
            }
        } else {
            Drawable drawable = this.f1376d;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if ((this.f1374b.f1388A && getLayoutDirection() == 1) ? false : false) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c != null) {
            abstractC0365c.f1412r = false;
            abstractC0365c.f1414t = false;
        }
        if (drawable == this.f1376d && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f1374b.f1388A;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f1377e;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f1377e = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f1379g) {
                this.f1376d.setAlpha(this.f1378f);
            }
        }
        if (this.f1384l != 0) {
            this.f1384l = 0L;
            z = true;
        }
        if (this.f1383k != 0) {
            this.f1383k = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1381i && super.mutate() == this) {
            AbstractC0365c mo896b = mo896b();
            mo896b.mo893e();
            mo895e(mo896b);
            this.f1381i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1377e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean z;
        AbstractC0365c abstractC0365c = this.f1374b;
        int i2 = this.f1380h;
        int i3 = abstractC0365c.f1402h;
        Drawable[] drawableArr = abstractC0365c.f1401g;
        boolean z2 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                if (Build.VERSION.SDK_INT >= 23) {
                    z = drawable.setLayoutDirection(i);
                } else {
                    z = false;
                }
                if (i4 == i2) {
                    z2 = z;
                }
            }
        }
        abstractC0365c.f1418x = i;
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f1377e;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1377e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f1376d || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f1379g && this.f1378f == i) {
            return;
        }
        this.f1379g = true;
        this.f1378f = i;
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            if (this.f1383k == 0) {
                drawable.setAlpha(i);
            } else {
                m903a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1388A != z) {
            abstractC0365c.f1388A = z;
            Drawable drawable = this.f1376d;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        AbstractC0365c abstractC0365c = this.f1374b;
        abstractC0365c.f1390C = true;
        if (abstractC0365c.f1389B != colorFilter) {
            abstractC0365c.f1389B = colorFilter;
            Drawable drawable = this.f1376d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        AbstractC0365c abstractC0365c = this.f1374b;
        if (abstractC0365c.f1417w != z) {
            abstractC0365c.f1417w = z;
            Drawable drawable = this.f1376d;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f1375c;
        if (rect == null) {
            this.f1375c = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f1376d;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        AbstractC0365c abstractC0365c = this.f1374b;
        abstractC0365c.f1393F = true;
        if (abstractC0365c.f1391D != colorStateList) {
            abstractC0365c.f1391D = colorStateList;
            this.f1376d.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        AbstractC0365c abstractC0365c = this.f1374b;
        abstractC0365c.f1394G = true;
        if (abstractC0365c.f1392E != mode) {
            abstractC0365c.f1392E = mode;
            this.f1376d.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f1377e;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f1376d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f1376d || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
