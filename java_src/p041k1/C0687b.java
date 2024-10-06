package p041k1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p024g.C0561x;
import p025g0.C0567a;
import p046m1.C0736h;
import p071w0.C0916a;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: k1.b */
/* loaded from: classes.dex */
public final class C0687b {

    /* renamed from: a */
    public final Context f2403a;

    /* renamed from: b */
    public final TextInputLayout f2404b;

    /* renamed from: c */
    public LinearLayout f2405c;

    /* renamed from: d */
    public int f2406d;

    /* renamed from: e */
    public FrameLayout f2407e;

    /* renamed from: f */
    public int f2408f;

    /* renamed from: g */
    public Animator f2409g;

    /* renamed from: h */
    public final float f2410h;

    /* renamed from: i */
    public int f2411i;

    /* renamed from: j */
    public int f2412j;

    /* renamed from: k */
    public CharSequence f2413k;

    /* renamed from: l */
    public boolean f2414l;

    /* renamed from: m */
    public C0561x f2415m;

    /* renamed from: n */
    public int f2416n;

    /* renamed from: o */
    public CharSequence f2417o;

    /* renamed from: p */
    public boolean f2418p;

    /* renamed from: q */
    public C0561x f2419q;

    /* renamed from: r */
    public int f2420r;

    /* renamed from: s */
    public Typeface f2421s;

    /* renamed from: k1.b$a */
    /* loaded from: classes.dex */
    public class C0688a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ int f2422a;

        /* renamed from: b */
        public final /* synthetic */ TextView f2423b;

        /* renamed from: c */
        public final /* synthetic */ int f2424c;

        /* renamed from: d */
        public final /* synthetic */ TextView f2425d;

        public C0688a(int i, TextView textView, int i2, TextView textView2) {
            this.f2422a = i;
            this.f2423b = textView;
            this.f2424c = i2;
            this.f2425d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            C0561x c0561x;
            int i = this.f2422a;
            C0687b c0687b = C0687b.this;
            c0687b.f2411i = i;
            c0687b.f2409g = null;
            TextView textView = this.f2423b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f2424c == 1 && (c0561x = c0687b.f2415m) != null) {
                    c0561x.setText((CharSequence) null);
                }
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            TextView textView = this.f2425d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public C0687b(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f2403a = context;
        this.f2404b = textInputLayout;
        this.f2410h = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    /* renamed from: a */
    public final void m378a(TextView textView, int i) {
        if (this.f2405c == null && this.f2407e == null) {
            Context context = this.f2403a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f2405c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f2405c;
            TextInputLayout textInputLayout = this.f2404b;
            textInputLayout.addView(linearLayout2, -1, -2);
            FrameLayout frameLayout = new FrameLayout(context);
            this.f2407e = frameLayout;
            this.f2405c.addView(frameLayout, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f2405c.addView(new C0567a(context), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (textInputLayout.getEditText() != null) {
                m377b();
            }
        }
        if (i == 0 || i == 1) {
            this.f2407e.setVisibility(0);
            this.f2407e.addView(textView);
            this.f2408f++;
        } else {
            this.f2405c.addView(textView, i);
        }
        this.f2405c.setVisibility(0);
        this.f2406d++;
    }

    /* renamed from: b */
    public final void m377b() {
        boolean z;
        LinearLayout linearLayout = this.f2405c;
        TextInputLayout textInputLayout = this.f2404b;
        if (linearLayout != null && textInputLayout.getEditText() != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            LinearLayout linearLayout2 = this.f2405c;
            EditText editText = textInputLayout.getEditText();
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            linearLayout2.setPaddingRelative(editText.getPaddingStart(), 0, textInputLayout.getEditText().getPaddingEnd(), 0);
        }
    }

    /* renamed from: c */
    public final void m376c() {
        Animator animator = this.f2409g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: d */
    public final void m375d(ArrayList arrayList, boolean z, TextView textView, int i, int i2, int i3) {
        boolean z2;
        float f;
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                if (i3 == i) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, f);
                ofFloat.setDuration(167L);
                ofFloat.setInterpolator(C0916a.f2872a);
                arrayList.add(ofFloat);
                if (i3 == i) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f2410h, 0.0f);
                    ofFloat2.setDuration(217L);
                    ofFloat2.setInterpolator(C0916a.f2875d);
                    arrayList.add(ofFloat2);
                }
            }
        }
    }

    /* renamed from: e */
    public final boolean m374e() {
        if (this.f2412j == 1 && this.f2415m != null && !TextUtils.isEmpty(this.f2413k)) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final TextView m373f(int i) {
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return this.f2419q;
        }
        return this.f2415m;
    }

    /* renamed from: g */
    public final void m372g() {
        this.f2413k = null;
        m376c();
        if (this.f2411i == 1) {
            this.f2412j = (!this.f2418p || TextUtils.isEmpty(this.f2417o)) ? 0 : 2;
        }
        m369j(this.f2411i, this.f2412j, m370i(this.f2415m, null));
    }

    /* renamed from: h */
    public final void m371h(TextView textView, int i) {
        FrameLayout frameLayout;
        ViewGroup viewGroup = this.f2405c;
        if (viewGroup == null) {
            return;
        }
        boolean z = true;
        if (i != 0 && i != 1) {
            z = false;
        }
        if (z && (frameLayout = this.f2407e) != null) {
            int i2 = this.f2408f - 1;
            this.f2408f = i2;
            if (i2 == 0) {
                frameLayout.setVisibility(8);
            }
            viewGroup = this.f2407e;
        }
        viewGroup.removeView(textView);
        int i3 = this.f2406d - 1;
        this.f2406d = i3;
        LinearLayout linearLayout = this.f2405c;
        if (i3 == 0) {
            linearLayout.setVisibility(8);
        }
    }

    /* renamed from: i */
    public final boolean m370i(TextView textView, CharSequence charSequence) {
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        TextInputLayout textInputLayout = this.f2404b;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled() && (this.f2412j != this.f2411i || textView == null || !TextUtils.equals(textView.getText(), charSequence))) {
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public final void m369j(int i, int i2, boolean z) {
        TextView m373f;
        TextView m373f2;
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f2409g = animatorSet;
            ArrayList arrayList = new ArrayList();
            m375d(arrayList, this.f2418p, this.f2419q, 2, i, i2);
            m375d(arrayList, this.f2414l, this.f2415m, 1, i, i2);
            C0736h.m309D(animatorSet, arrayList);
            animatorSet.addListener(new C0688a(i2, m373f(i), i, m373f(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (m373f2 = m373f(i2)) != null) {
                m373f2.setVisibility(0);
                m373f2.setAlpha(1.0f);
            }
            if (i != 0 && (m373f = m373f(i)) != null) {
                m373f.setVisibility(4);
                if (i == 1) {
                    m373f.setText((CharSequence) null);
                }
            }
            this.f2411i = i2;
        }
        TextInputLayout textInputLayout = this.f2404b;
        textInputLayout.m924l();
        textInputLayout.m922n(z, false);
        textInputLayout.m919q();
    }
}
