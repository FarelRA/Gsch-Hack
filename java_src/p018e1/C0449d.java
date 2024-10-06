package p018e1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p021f0.C0472a;
import p022f1.C0481f;
import p022f1.C0485h;
import p030h1.InterfaceC0581b;
import p046m1.C0736h;
import p071w0.C0916a;
import p071w0.C0920e;
import p071w0.C0921f;
import p071w0.C0922g;
/* renamed from: e1.d */
/* loaded from: classes.dex */
public class C0449d {

    /* renamed from: s */
    public static final C0472a f1738s = C0916a.f2874c;

    /* renamed from: t */
    public static final int[] f1739t = {16842919, 16842910};

    /* renamed from: u */
    public static final int[] f1740u = {16843623, 16842908, 16842910};

    /* renamed from: v */
    public static final int[] f1741v = {16842908, 16842910};

    /* renamed from: w */
    public static final int[] f1742w = {16843623, 16842910};

    /* renamed from: x */
    public static final int[] f1743x = {16842910};

    /* renamed from: y */
    public static final int[] f1744y = new int[0];

    /* renamed from: b */
    public Animator f1746b;

    /* renamed from: c */
    public C0922g f1747c;

    /* renamed from: d */
    public C0922g f1748d;

    /* renamed from: e */
    public C0922g f1749e;

    /* renamed from: f */
    public C0922g f1750f;

    /* renamed from: g */
    public float f1751g;

    /* renamed from: h */
    public float f1752h;

    /* renamed from: i */
    public float f1753i;

    /* renamed from: j */
    public float f1754j;

    /* renamed from: l */
    public ArrayList<Animator.AnimatorListener> f1756l;

    /* renamed from: m */
    public ArrayList<Animator.AnimatorListener> f1757m;

    /* renamed from: n */
    public final C0485h f1758n;

    /* renamed from: o */
    public final InterfaceC0581b f1759o;

    /* renamed from: q */
    public final Matrix f1761q;

    /* renamed from: r */
    public ViewTreeObserver$OnPreDrawListenerC0448c f1762r;

    /* renamed from: a */
    public int f1745a = 0;

    /* renamed from: k */
    public float f1755k = 1.0f;

    /* renamed from: p */
    public final Rect f1760p = new Rect();

    /* renamed from: e1.d$a */
    /* loaded from: classes.dex */
    public class C0450a extends AbstractC0454e {
        public C0450a(C0455e c0455e) {
            super(c0455e);
        }
    }

    /* renamed from: e1.d$b */
    /* loaded from: classes.dex */
    public class C0451b extends AbstractC0454e {
        public C0451b(C0455e c0455e) {
            super(c0455e);
        }
    }

    /* renamed from: e1.d$c */
    /* loaded from: classes.dex */
    public class C0452c extends AbstractC0454e {
        public C0452c(C0455e c0455e) {
            super(c0455e);
        }
    }

    /* renamed from: e1.d$d */
    /* loaded from: classes.dex */
    public class C0453d extends AbstractC0454e {
        public C0453d(C0455e c0455e) {
            super(c0455e);
        }
    }

    /* renamed from: e1.d$e */
    /* loaded from: classes.dex */
    public abstract class AbstractC0454e extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ C0449d f1763a;

        public AbstractC0454e(C0455e c0455e) {
            this.f1763a = c0455e;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.f1763a.getClass();
            throw null;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1763a.getClass();
            throw null;
        }
    }

    public C0449d(C0485h c0485h, FloatingActionButton.C0340a c0340a) {
        new RectF();
        new RectF();
        this.f1761q = new Matrix();
        this.f1758n = c0485h;
        this.f1759o = c0340a;
        C0481f c0481f = new C0481f();
        C0455e c0455e = (C0455e) this;
        c0481f.m669a(f1739t, m720b(new C0452c(c0455e)));
        c0481f.m669a(f1740u, m720b(new C0451b(c0455e)));
        c0481f.m669a(f1741v, m720b(new C0451b(c0455e)));
        c0481f.m669a(f1742w, m720b(new C0451b(c0455e)));
        c0481f.m669a(f1743x, m720b(new C0453d(c0455e)));
        c0481f.m669a(f1744y, m720b(new C0450a(c0455e)));
        this.f1751g = c0485h.getRotation();
    }

    /* renamed from: b */
    public static ValueAnimator m720b(AbstractC0454e abstractC0454e) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f1738s);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(abstractC0454e);
        valueAnimator.addUpdateListener(abstractC0454e);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: a */
    public final AnimatorSet m721a(C0922g c0922g, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f};
        C0485h c0485h = this.f1758n;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c0485h, property, fArr);
        c0922g.m97c("opacity").m96a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c0485h, View.SCALE_X, f2);
        c0922g.m97c("scale").m96a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(c0485h, View.SCALE_Y, f2);
        c0922g.m97c("scale").m96a(ofFloat3);
        arrayList.add(ofFloat3);
        Matrix matrix = this.f1761q;
        matrix.reset();
        c0485h.getDrawable();
        ObjectAnimator ofObject = ObjectAnimator.ofObject(c0485h, new C0920e(), new C0921f(), new Matrix(matrix));
        c0922g.m97c("iconScale").m96a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C0736h.m309D(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: c */
    public float mo718c() {
        throw null;
    }

    /* renamed from: d */
    public void mo717d(Rect rect) {
        throw null;
    }

    /* renamed from: e */
    public void mo716e() {
        throw null;
    }

    /* renamed from: f */
    public void mo715f() {
        throw null;
    }

    /* renamed from: g */
    public void mo714g(int[] iArr) {
        throw null;
    }

    /* renamed from: h */
    public void mo713h(float f, float f2, float f3) {
        throw null;
    }

    /* renamed from: i */
    public void mo712i(Rect rect) {
        throw null;
    }

    /* renamed from: j */
    public void mo711j() {
        throw null;
    }

    /* renamed from: k */
    public final void m719k() {
        Rect rect = this.f1760p;
        mo717d(rect);
        mo712i(rect);
        int i = rect.left;
        FloatingActionButton.this.getClass();
        throw null;
    }
}
