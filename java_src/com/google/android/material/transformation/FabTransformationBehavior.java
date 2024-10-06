package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p006b1.C0306a;
import p006b1.C0307b;
import p006b1.InterfaceC0309d;
import p039k.C0666h;
import p043l1.C0694b;
import p043l1.C0695c;
import p046m1.C0736h;
import p071w0.C0916a;
import p071w0.C0917b;
import p071w0.C0918c;
import p071w0.C0919d;
import p071w0.C0922g;
import p071w0.C0923h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    public final Rect f1340c;

    /* renamed from: d */
    public final RectF f1341d;

    /* renamed from: e */
    public final RectF f1342e;

    /* renamed from: f */
    public final int[] f1343f;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes.dex */
    public class C0349a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f1344a;

        /* renamed from: b */
        public final /* synthetic */ View f1345b;

        /* renamed from: c */
        public final /* synthetic */ View f1346c;

        public C0349a(boolean z, View view, View view2) {
            this.f1344a = z;
            this.f1345b = view;
            this.f1346c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f1344a) {
                return;
            }
            this.f1345b.setVisibility(4);
            View view = this.f1346c;
            view.setAlpha(1.0f);
            view.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (this.f1344a) {
                this.f1345b.setVisibility(0);
                View view = this.f1346c;
                view.setAlpha(0.0f);
                view.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    /* loaded from: classes.dex */
    public static class C0350b {

        /* renamed from: a */
        public C0922g f1347a;

        /* renamed from: b */
        public C0736h f1348b;
    }

    public FabTransformationBehavior() {
        this.f1340c = new Rect();
        this.f1341d = new RectF();
        this.f1342e = new RectF();
        this.f1343f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1340c = new Rect();
        this.f1341d = new RectF();
        this.f1342e = new RectF();
        this.f1343f = new int[2];
    }

    /* renamed from: w */
    public static float m914w(C0350b c0350b, C0923h c0923h, float f) {
        long j = c0923h.f2885a;
        C0923h m97c = c0350b.f1347a.m97c("expansion");
        float interpolation = c0923h.m95b().getInterpolation(((float) (((m97c.f2885a + m97c.f2886b) + 17) - j)) / ((float) c0923h.f2886b));
        LinearInterpolator linearInterpolator = C0916a.f2872a;
        return ((0.0f - f) * interpolation) + f;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: b */
    public final boolean mo912b(View view, View view2) {
        int expandedComponentIdHint;
        if (view.getVisibility() != 8) {
            return (view2 instanceof FloatingActionButton) && ((expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint()) == 0 || expandedComponentIdHint == view.getId());
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: c */
    public final void mo917c(CoordinatorLayout.C0141f c0141f) {
        if (c0141f.f612h == 0) {
            c0141f.f612h = 80;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03a4 A[LOOP:0: B:120:0x03a2->B:121:0x03a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0324  */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AnimatorSet mo911t(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator ofFloat;
        C0923h m97c;
        C0922g c0922g;
        String str;
        ArrayList arrayList;
        ObjectAnimator ofFloat2;
        ObjectAnimator ofFloat3;
        float f;
        float f2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        boolean z3;
        AnimatorSet m997a;
        C0350b c0350b;
        ArrayList arrayList4;
        int i;
        boolean z4;
        ObjectAnimator ofInt;
        boolean z5;
        int size;
        int i2;
        ObjectAnimator ofFloat4;
        ObjectAnimator ofInt2;
        int i3;
        C0350b mo909y = mo909y(view2.getContext(), z);
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        float elevation = view2.getElevation() - view.getElevation();
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -elevation);
        }
        mo909y.f1347a.m97c("elevation").m96a(ofFloat);
        arrayList5.add(ofFloat);
        RectF rectF = this.f1341d;
        float m916u = m916u(view, view2, mo909y.f1348b);
        float m915v = m915v(view, view2, mo909y.f1348b);
        if (m916u != 0.0f && m915v != 0.0f) {
            if ((z && m915v < 0.0f) || (!z && i3 > 0)) {
                m97c = mo909y.f1347a.m97c("translationXCurveUpwards");
                c0922g = mo909y.f1347a;
                str = "translationYCurveUpwards";
            } else {
                m97c = mo909y.f1347a.m97c("translationXCurveDownwards");
                c0922g = mo909y.f1347a;
                str = "translationYCurveDownwards";
            }
        } else {
            m97c = mo909y.f1347a.m97c("translationXLinear");
            c0922g = mo909y.f1347a;
            str = "translationYLinear";
        }
        C0923h m97c2 = c0922g.m97c(str);
        RectF rectF2 = this.f1342e;
        Rect rect = this.f1340c;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m916u);
                view2.setTranslationY(-m915v);
            }
            arrayList = arrayList6;
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            float m914w = m914w(mo909y, m97c, -m916u);
            float m914w2 = m914w(mo909y, m97c2, -m915v);
            view2.getWindowVisibleDisplayFrame(rect);
            rectF.set(rect);
            m913x(view2, rectF2);
            rectF2.offset(m914w, m914w2);
            rectF2.intersect(rectF);
            rectF.set(rectF2);
            ofFloat3 = ofFloat6;
            ofFloat2 = ofFloat5;
        } else {
            arrayList = arrayList6;
            ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -m916u);
            ofFloat3 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -m915v);
        }
        m97c.m96a(ofFloat2);
        m97c2.m96a(ofFloat3);
        arrayList5.add(ofFloat2);
        arrayList5.add(ofFloat3);
        float width = rectF.width();
        float height = rectF.height();
        boolean z6 = view2 instanceof InterfaceC0309d;
        if (z6 && (view instanceof ImageView)) {
            InterfaceC0309d interfaceC0309d = (InterfaceC0309d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    f2 = height;
                    ofInt2 = ObjectAnimator.ofInt(drawable, C0919d.f2879a, 0);
                    f = width;
                } else {
                    f2 = height;
                    f = width;
                    ofInt2 = ObjectAnimator.ofInt(drawable, C0919d.f2879a, 255);
                }
                ofInt2.addUpdateListener(new C0352a(view2));
                mo909y.f1347a.m97c("iconFade").m96a(ofInt2);
                arrayList5.add(ofInt2);
                arrayList2 = arrayList;
                arrayList2.add(new C0353b(interfaceC0309d, drawable));
                if (z6) {
                    c0350b = mo909y;
                    arrayList4 = arrayList2;
                    z3 = z6;
                } else {
                    InterfaceC0309d interfaceC0309d2 = (InterfaceC0309d) view2;
                    C0736h c0736h = mo909y.f1348b;
                    m913x(view, rectF);
                    m913x(view2, rectF2);
                    rectF2.offset(-m916u(view, view2, c0736h), 0.0f);
                    float centerX = rectF.centerX() - rectF2.left;
                    C0736h c0736h2 = mo909y.f1348b;
                    m913x(view, rectF);
                    m913x(view2, rectF2);
                    rectF2.offset(0.0f, -m915v(view, view2, c0736h2));
                    float centerY = rectF.centerY() - rectF2.top;
                    ((FloatingActionButton) view).m951f(rect);
                    float width2 = rect.width() / 2.0f;
                    C0923h m97c3 = mo909y.f1347a.m97c("expansion");
                    if (z) {
                        if (!z2) {
                            interfaceC0309d2.setRevealInfo(new InterfaceC0309d.C0313d(centerX, centerY, width2));
                        }
                        if (z2) {
                            width2 = interfaceC0309d2.getRevealInfo().f1135c;
                        }
                        double d = 0.0f - centerX;
                        double d2 = 0.0f - centerY;
                        arrayList3 = arrayList2;
                        float hypot = (float) Math.hypot(d, d2);
                        float f3 = f - centerX;
                        z3 = z6;
                        double d3 = f3;
                        float hypot2 = (float) Math.hypot(d3, d2);
                        double d4 = f2 - centerY;
                        float hypot3 = (float) Math.hypot(d3, d4);
                        float hypot4 = (float) Math.hypot(d, d4);
                        if (hypot <= hypot2 || hypot <= hypot3 || hypot <= hypot4) {
                            if (hypot2 > hypot3 && hypot2 > hypot4) {
                                hypot = hypot2;
                            } else if (hypot3 > hypot4) {
                                hypot = hypot3;
                            } else {
                                hypot = hypot4;
                            }
                        }
                        AnimatorSet m997a2 = C0307b.m997a(interfaceC0309d2, centerX, centerY, hypot);
                        m997a2.addListener(new C0354c(interfaceC0309d2));
                        long j = m97c3.f2885a;
                        int i4 = (int) centerX;
                        int i5 = (int) centerY;
                        if (j > 0) {
                            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i4, i5, width2, width2);
                            createCircularReveal.setStartDelay(0L);
                            createCircularReveal.setDuration(j);
                            arrayList5.add(createCircularReveal);
                        }
                        m997a = m997a2;
                        c0350b = mo909y;
                    } else {
                        arrayList3 = arrayList2;
                        z3 = z6;
                        float f4 = interfaceC0309d2.getRevealInfo().f1135c;
                        m997a = C0307b.m997a(interfaceC0309d2, centerX, centerY, width2);
                        long j2 = m97c3.f2885a;
                        int i6 = (int) centerX;
                        int i7 = (int) centerY;
                        if (j2 > 0) {
                            Animator createCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, i6, i7, f4, f4);
                            createCircularReveal2.setStartDelay(0L);
                            createCircularReveal2.setDuration(j2);
                            arrayList5.add(createCircularReveal2);
                        }
                        c0350b = mo909y;
                        C0666h<String, C0923h> c0666h = c0350b.f1347a.f2884a;
                        int i8 = c0666h.f2306c;
                        long j3 = 0;
                        int i9 = 0;
                        while (i9 < i8) {
                            C0923h m397j = c0666h.m397j(i9);
                            j3 = Math.max(j3, m397j.f2885a + m397j.f2886b);
                            i9++;
                            i8 = i8;
                            c0666h = c0666h;
                        }
                        long j4 = m97c3.f2885a + m97c3.f2886b;
                        if (j4 < j3) {
                            Animator createCircularReveal3 = ViewAnimationUtils.createCircularReveal(view2, i6, i7, width2, width2);
                            createCircularReveal3.setStartDelay(j4);
                            createCircularReveal3.setDuration(j3 - j4);
                            arrayList5.add(createCircularReveal3);
                        }
                    }
                    m97c3.m96a(m997a);
                    arrayList5.add(m997a);
                    arrayList4 = arrayList3;
                    arrayList4.add(new C0306a(interfaceC0309d2));
                }
                if (z3) {
                    z4 = z;
                } else {
                    InterfaceC0309d interfaceC0309d3 = (InterfaceC0309d) view2;
                    WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
                    ColorStateList backgroundTintList = view.getBackgroundTintList();
                    if (backgroundTintList != null) {
                        i = backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
                    } else {
                        i = 0;
                    }
                    int i10 = 16777215 & i;
                    z4 = z;
                    if (z4) {
                        if (!z2) {
                            interfaceC0309d3.setCircularRevealScrimColor(i);
                        }
                        ofInt = ObjectAnimator.ofInt(interfaceC0309d3, InterfaceC0309d.C0312c.f1132a, i10);
                    } else {
                        ofInt = ObjectAnimator.ofInt(interfaceC0309d3, InterfaceC0309d.C0312c.f1132a, i);
                    }
                    ofInt.setEvaluator(C0917b.f2877a);
                    c0350b.f1347a.m97c("color").m96a(ofInt);
                    arrayList5.add(ofInt);
                }
                z5 = view2 instanceof ViewGroup;
                if (z5) {
                    View findViewById = view2.findViewById(R.id.mtrl_child_content_container);
                    ViewGroup viewGroup = null;
                    if (findViewById == null) {
                        if (!(view2 instanceof C0695c) && !(view2 instanceof C0694b)) {
                            if (z5) {
                                viewGroup = (ViewGroup) view2;
                            }
                            if (viewGroup != null) {
                                if (z4) {
                                    if (!z2) {
                                        C0918c.f2878a.set(viewGroup, Float.valueOf(0.0f));
                                    }
                                    ofFloat4 = ObjectAnimator.ofFloat(viewGroup, C0918c.f2878a, 1.0f);
                                } else {
                                    ofFloat4 = ObjectAnimator.ofFloat(viewGroup, C0918c.f2878a, 0.0f);
                                }
                                c0350b.f1347a.m97c("contentFade").m96a(ofFloat4);
                                arrayList5.add(ofFloat4);
                                AnimatorSet animatorSet = new AnimatorSet();
                                C0736h.m309D(animatorSet, arrayList5);
                                animatorSet.addListener(new C0349a(z4, view2, view));
                                size = arrayList4.size();
                                for (i2 = 0; i2 < size; i2++) {
                                    animatorSet.addListener((Animator.AnimatorListener) arrayList4.get(i2));
                                }
                                return animatorSet;
                            }
                        } else {
                            findViewById = ((ViewGroup) view2).getChildAt(0);
                        }
                    }
                    if (findViewById instanceof ViewGroup) {
                        viewGroup = (ViewGroup) findViewById;
                    }
                    if (viewGroup != null) {
                    }
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                C0736h.m309D(animatorSet2, arrayList5);
                animatorSet2.addListener(new C0349a(z4, view2, view));
                size = arrayList4.size();
                while (i2 < size) {
                }
                return animatorSet2;
            }
        }
        f = width;
        f2 = height;
        arrayList2 = arrayList;
        if (z6) {
        }
        if (z3) {
        }
        z5 = view2 instanceof ViewGroup;
        if (z5) {
        }
        AnimatorSet animatorSet22 = new AnimatorSet();
        C0736h.m309D(animatorSet22, arrayList5);
        animatorSet22.addListener(new C0349a(z4, view2, view));
        size = arrayList4.size();
        while (i2 < size) {
        }
        return animatorSet22;
    }

    /* renamed from: u */
    public final float m916u(View view, View view2, C0736h c0736h) {
        RectF rectF = this.f1341d;
        RectF rectF2 = this.f1342e;
        m913x(view, rectF);
        m913x(view2, rectF2);
        c0736h.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    /* renamed from: v */
    public final float m915v(View view, View view2, C0736h c0736h) {
        RectF rectF = this.f1341d;
        RectF rectF2 = this.f1342e;
        m913x(view, rectF);
        m913x(view2, rectF2);
        c0736h.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    /* renamed from: x */
    public final void m913x(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f1343f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: y */
    public abstract C0350b mo909y(Context context, boolean z);
}
