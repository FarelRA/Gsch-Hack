package p018e1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p022f1.C0485h;
import p030h1.C0580a;
import p030h1.InterfaceC0581b;
/* renamed from: e1.e */
/* loaded from: classes.dex */
public final class C0455e extends C0449d {
    public C0455e(C0485h c0485h, FloatingActionButton.C0340a c0340a) {
        super(c0485h, c0340a);
    }

    @Override // p018e1.C0449d
    /* renamed from: c */
    public final float mo718c() {
        return this.f1758n.getElevation();
    }

    @Override // p018e1.C0449d
    /* renamed from: d */
    public final void mo717d(Rect rect) {
        InterfaceC0581b interfaceC0581b = this.f1759o;
        if (FloatingActionButton.this.f1248j) {
            FloatingActionButton.this.getSizeDimension();
            float mo718c = mo718c() + this.f1754j;
            int i = C0580a.f2132c;
            int ceil = (int) Math.ceil(mo718c);
            int ceil2 = (int) Math.ceil(mo718c * 1.5f);
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }

    @Override // p018e1.C0449d
    /* renamed from: e */
    public final void mo716e() {
    }

    @Override // p018e1.C0449d
    /* renamed from: f */
    public final void mo715f() {
        m719k();
        throw null;
    }

    @Override // p018e1.C0449d
    /* renamed from: g */
    public final void mo714g(int[] iArr) {
        float f;
        if (Build.VERSION.SDK_INT == 21) {
            C0485h c0485h = this.f1758n;
            if (c0485h.isEnabled()) {
                c0485h.setElevation(this.f1752h);
                if (c0485h.isPressed()) {
                    f = this.f1754j;
                } else if (c0485h.isFocused() || c0485h.isHovered()) {
                    f = this.f1753i;
                }
                c0485h.setTranslationZ(f);
                return;
            }
            c0485h.setElevation(0.0f);
            c0485h.setTranslationZ(0.0f);
        }
    }

    @Override // p018e1.C0449d
    /* renamed from: h */
    public final void mo713h(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        C0485h c0485h = this.f1758n;
        if (i == 21) {
            c0485h.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(C0449d.f1739t, m710l(f, f3));
            stateListAnimator.addState(C0449d.f1740u, m710l(f, f2));
            stateListAnimator.addState(C0449d.f1741v, m710l(f, f2));
            stateListAnimator.addState(C0449d.f1742w, m710l(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(c0485h, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(c0485h, View.TRANSLATION_Z, c0485h.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(c0485h, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(C0449d.f1738s);
            stateListAnimator.addState(C0449d.f1743x, animatorSet);
            stateListAnimator.addState(C0449d.f1744y, m710l(0.0f, 0.0f));
            c0485h.setStateListAnimator(stateListAnimator);
        }
        if (!FloatingActionButton.this.f1248j) {
            return;
        }
        m719k();
        throw null;
    }

    @Override // p018e1.C0449d
    /* renamed from: i */
    public final void mo712i(Rect rect) {
        FloatingActionButton.C0340a c0340a = (FloatingActionButton.C0340a) this.f1759o;
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        if (floatingActionButton.f1248j) {
            super/*android.widget.ImageButton*/.setBackgroundDrawable(new InsetDrawable((Drawable) null, rect.left, rect.top, rect.right, rect.bottom));
            return;
        }
        super/*android.widget.ImageButton*/.setBackgroundDrawable(null);
    }

    @Override // p018e1.C0449d
    /* renamed from: j */
    public final void mo711j() {
    }

    /* renamed from: l */
    public final AnimatorSet m710l(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        C0485h c0485h = this.f1758n;
        animatorSet.play(ObjectAnimator.ofFloat(c0485h, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(c0485h, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C0449d.f1738s);
        return animatorSet;
    }
}
