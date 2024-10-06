package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p000a0.C0010i;
import p008c.C0315a;
import p009c0.AbstractC0317a;
import p022f1.C0477b;
import p022f1.C0478c;
import p022f1.C0479d;
import p022f1.C0484g;
import p024g.C0494b0;
import p024g.C0516i;
import p024g.C0542r0;
import p024g.C0561x;
import p041k1.C0686a;
import p041k1.C0687b;
import p041k1.C0689c;
import p046m1.C0736h;
import p052p.C0819a;
import p061s.C0863a;
import p071w0.C0916a;
import p076y.C0939a;
import p076y.C0954m;
import p076y.C0960q;
import p079z.C0971d;
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {

    /* renamed from: A */
    public int f1273A;

    /* renamed from: B */
    public int f1274B;

    /* renamed from: C */
    public Drawable f1275C;

    /* renamed from: D */
    public final Rect f1276D;

    /* renamed from: E */
    public final RectF f1277E;

    /* renamed from: F */
    public Typeface f1278F;

    /* renamed from: G */
    public boolean f1279G;

    /* renamed from: H */
    public Drawable f1280H;

    /* renamed from: I */
    public CharSequence f1281I;

    /* renamed from: J */
    public CheckableImageButton f1282J;

    /* renamed from: K */
    public boolean f1283K;

    /* renamed from: L */
    public ColorDrawable f1284L;

    /* renamed from: M */
    public Drawable f1285M;

    /* renamed from: N */
    public ColorStateList f1286N;

    /* renamed from: O */
    public boolean f1287O;

    /* renamed from: P */
    public PorterDuff.Mode f1288P;

    /* renamed from: Q */
    public boolean f1289Q;

    /* renamed from: R */
    public ColorStateList f1290R;

    /* renamed from: S */
    public ColorStateList f1291S;

    /* renamed from: T */
    public final int f1292T;

    /* renamed from: U */
    public final int f1293U;

    /* renamed from: V */
    public int f1294V;

    /* renamed from: W */
    public final int f1295W;

    /* renamed from: a0 */
    public boolean f1296a0;

    /* renamed from: b */
    public final FrameLayout f1297b;

    /* renamed from: b0 */
    public final C0477b f1298b0;

    /* renamed from: c */
    public EditText f1299c;

    /* renamed from: c0 */
    public boolean f1300c0;

    /* renamed from: d */
    public CharSequence f1301d;

    /* renamed from: d0 */
    public ValueAnimator f1302d0;

    /* renamed from: e */
    public final C0687b f1303e;

    /* renamed from: e0 */
    public boolean f1304e0;

    /* renamed from: f */
    public boolean f1305f;

    /* renamed from: f0 */
    public boolean f1306f0;

    /* renamed from: g */
    public int f1307g;

    /* renamed from: g0 */
    public boolean f1308g0;

    /* renamed from: h */
    public boolean f1309h;

    /* renamed from: i */
    public C0561x f1310i;

    /* renamed from: j */
    public final int f1311j;

    /* renamed from: k */
    public final int f1312k;

    /* renamed from: l */
    public boolean f1313l;

    /* renamed from: m */
    public CharSequence f1314m;

    /* renamed from: n */
    public boolean f1315n;

    /* renamed from: o */
    public GradientDrawable f1316o;

    /* renamed from: p */
    public final int f1317p;

    /* renamed from: q */
    public final int f1318q;

    /* renamed from: r */
    public int f1319r;

    /* renamed from: s */
    public final int f1320s;

    /* renamed from: t */
    public final float f1321t;

    /* renamed from: u */
    public final float f1322u;

    /* renamed from: v */
    public final float f1323v;

    /* renamed from: w */
    public final float f1324w;

    /* renamed from: x */
    public int f1325x;

    /* renamed from: y */
    public final int f1326y;

    /* renamed from: z */
    public final int f1327z;

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes.dex */
    public class C0342a implements TextWatcher {
        public C0342a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.m922n(!textInputLayout.f1308g0, false);
            if (textInputLayout.f1305f) {
                textInputLayout.m925k(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$b */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0343b implements View.OnClickListener {
        public View$OnClickListenerC0343b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TextInputLayout.this.m928h(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes.dex */
    public class C0344c implements ValueAnimator.AnimatorUpdateListener {
        public C0344c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f1298b0.m672j(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes.dex */
    public static class C0345d extends C0939a {

        /* renamed from: d */
        public final TextInputLayout f1331d;

        public C0345d(TextInputLayout textInputLayout) {
            this.f1331d = textInputLayout;
        }

        @Override // p076y.C0939a
        /* renamed from: b */
        public final void mo68b(View view, C0971d c0971d) {
            Editable editable;
            boolean z;
            View.AccessibilityDelegate accessibilityDelegate = this.f2918a;
            AccessibilityNodeInfo accessibilityNodeInfo = c0971d.f2978a;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.f1331d;
            EditText editText = textInputLayout.getEditText();
            if (editText != null) {
                editable = editText.getText();
            } else {
                editable = null;
            }
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean z2 = !TextUtils.isEmpty(editable);
            boolean z3 = !TextUtils.isEmpty(hint);
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = false;
            if (!z4 && TextUtils.isEmpty(counterOverflowDescription)) {
                z = false;
            } else {
                z = true;
            }
            if (z2) {
                accessibilityNodeInfo.setText(editable);
            } else if (z3) {
                accessibilityNodeInfo.setText(hint);
            }
            if (z3) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    accessibilityNodeInfo.setHintText(hint);
                } else {
                    accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", hint);
                }
                if (!z2 && z3) {
                    z5 = true;
                }
                if (i >= 26) {
                    accessibilityNodeInfo.setShowingHintText(z5);
                } else {
                    c0971d.m7b(4, z5);
                }
            }
            if (z) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfo.setError(error);
                accessibilityNodeInfo.setContentInvalid(true);
            }
        }

        @Override // p076y.C0939a
        /* renamed from: c */
        public final void mo67c(View view, AccessibilityEvent accessibilityEvent) {
            super.mo67c(view, accessibilityEvent);
            TextInputLayout textInputLayout = this.f1331d;
            EditText editText = textInputLayout.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = textInputLayout.getHint();
            }
            if (TextUtils.isEmpty(text)) {
                return;
            }
            accessibilityEvent.getText().add(text);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$e */
    /* loaded from: classes.dex */
    public static class C0346e extends AbstractC0317a {
        public static final Parcelable.Creator<C0346e> CREATOR = new C0347a();

        /* renamed from: c */
        public CharSequence f1332c;

        /* renamed from: d */
        public boolean f1333d;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$e$a */
        /* loaded from: classes.dex */
        public static class C0347a implements Parcelable.ClassLoaderCreator<C0346e> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0346e(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0346e[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0346e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0346e(parcel, classLoader);
            }
        }

        public C0346e(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1332c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f1333d = parcel.readInt() == 1;
        }

        public C0346e(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f1332c) + "}";
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            TextUtils.writeToParcel(this.f1332c, parcel, i);
            parcel.writeInt(this.f1333d ? 1 : 0);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textInputStyle);
        this.f1303e = new C0687b(this);
        this.f1276D = new Rect();
        this.f1277E = new RectF();
        C0477b c0477b = new C0477b(this);
        this.f1298b0 = c0477b;
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f1297b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearInterpolator linearInterpolator = C0916a.f2872a;
        c0477b.f1818G = linearInterpolator;
        c0477b.m674h();
        c0477b.f1817F = linearInterpolator;
        c0477b.m674h();
        if (c0477b.f1830h != 8388659) {
            c0477b.f1830h = 8388659;
            c0477b.m674h();
        }
        int[] iArr = C0736h.f2565f0;
        C0736h.m290j(context, attributeSet, R.attr.textInputStyle, 2131624394);
        C0736h.m287m(context, attributeSet, iArr, R.attr.textInputStyle, 2131624394, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.textInputStyle, 2131624394);
        C0542r0 c0542r0 = new C0542r0(context, obtainStyledAttributes);
        this.f1313l = c0542r0.m580a(21, true);
        setHint(c0542r0.m571j(1));
        this.f1300c0 = c0542r0.m580a(20, true);
        this.f1317p = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_bottom_offset);
        this.f1318q = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f1320s = c0542r0.m578c(4, 0);
        this.f1321t = obtainStyledAttributes.getDimension(8, 0.0f);
        this.f1322u = obtainStyledAttributes.getDimension(7, 0.0f);
        this.f1323v = obtainStyledAttributes.getDimension(5, 0.0f);
        this.f1324w = obtainStyledAttributes.getDimension(6, 0.0f);
        this.f1274B = obtainStyledAttributes.getColor(2, 0);
        this.f1294V = obtainStyledAttributes.getColor(9, 0);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default);
        this.f1326y = dimensionPixelSize;
        this.f1327z = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused);
        this.f1325x = dimensionPixelSize;
        setBoxBackgroundMode(c0542r0.m573h(3, 0));
        if (c0542r0.m570k(0)) {
            ColorStateList m579b = c0542r0.m579b(0);
            this.f1291S = m579b;
            this.f1290R = m579b;
        }
        this.f1292T = C0819a.m206a(context, R.color.mtrl_textinput_default_box_stroke_color);
        this.f1295W = C0819a.m206a(context, R.color.mtrl_textinput_disabled_color);
        this.f1293U = C0819a.m206a(context, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (c0542r0.m572i(22, -1) != -1) {
            setHintTextAppearance(c0542r0.m572i(22, 0));
        }
        int m572i = c0542r0.m572i(16, 0);
        boolean m580a = c0542r0.m580a(15, false);
        int m572i2 = c0542r0.m572i(19, 0);
        boolean m580a2 = c0542r0.m580a(18, false);
        CharSequence m571j = c0542r0.m571j(17);
        boolean m580a3 = c0542r0.m580a(11, false);
        setCounterMaxLength(c0542r0.m573h(12, -1));
        this.f1312k = c0542r0.m572i(14, 0);
        this.f1311j = c0542r0.m572i(13, 0);
        this.f1279G = c0542r0.m580a(25, false);
        this.f1280H = c0542r0.m576e(24);
        this.f1281I = c0542r0.m571j(23);
        if (c0542r0.m570k(26)) {
            this.f1287O = true;
            this.f1286N = c0542r0.m579b(26);
        }
        if (c0542r0.m570k(27)) {
            this.f1289Q = true;
            this.f1288P = C0484g.m668a(c0542r0.m573h(27, -1), null);
        }
        c0542r0.m568m();
        setHelperTextEnabled(m580a2);
        setHelperText(m571j);
        setHelperTextTextAppearance(m572i2);
        setErrorEnabled(m580a);
        setErrorTextAppearance(m572i);
        setCounterEnabled(m580a3);
        m933c();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        setImportantForAccessibility(2);
    }

    private Drawable getBoxBackground() {
        int i = this.f1319r;
        if (i == 1 || i == 2) {
            return this.f1316o;
        }
        throw new IllegalStateException();
    }

    private float[] getCornerRadiiAsArray() {
        boolean z;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        float f = this.f1323v;
        float f2 = this.f1324w;
        float f3 = this.f1321t;
        float f4 = this.f1322u;
        return !z ? new float[]{f3, f3, f4, f4, f, f, f2, f2} : new float[]{f4, f4, f3, f3, f2, f2, f, f};
    }

    /* renamed from: i */
    public static void m927i(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m927i((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        boolean z;
        if (this.f1299c == null) {
            if (!(editText instanceof C0689c)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.f1299c = editText;
            m930f();
            setTextInputAccessibilityDelegate(new C0345d(this));
            EditText editText2 = this.f1299c;
            if (editText2 != null && (editText2.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                z = true;
            } else {
                z = false;
            }
            C0477b c0477b = this.f1298b0;
            if (!z) {
                Typeface typeface = this.f1299c.getTypeface();
                c0477b.f1842t = typeface;
                c0477b.f1841s = typeface;
                c0477b.m674h();
            }
            float textSize = this.f1299c.getTextSize();
            if (c0477b.f1831i != textSize) {
                c0477b.f1831i = textSize;
                c0477b.m674h();
            }
            int gravity = this.f1299c.getGravity();
            int i = (gravity & (-113)) | 48;
            if (c0477b.f1830h != i) {
                c0477b.f1830h = i;
                c0477b.m674h();
            }
            if (c0477b.f1829g != gravity) {
                c0477b.f1829g = gravity;
                c0477b.m674h();
            }
            this.f1299c.addTextChangedListener(new C0342a());
            if (this.f1290R == null) {
                this.f1290R = this.f1299c.getHintTextColors();
            }
            if (this.f1313l) {
                if (TextUtils.isEmpty(this.f1314m)) {
                    CharSequence hint = this.f1299c.getHint();
                    this.f1301d = hint;
                    setHint(hint);
                    this.f1299c.setHint((CharSequence) null);
                }
                this.f1315n = true;
            }
            if (this.f1310i != null) {
                m925k(this.f1299c.getText().length());
            }
            this.f1303e.m377b();
            m921o();
            m922n(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f1314m)) {
            this.f1314m = charSequence;
            C0477b c0477b = this.f1298b0;
            if (charSequence == null || !charSequence.equals(c0477b.f1844v)) {
                c0477b.f1844v = charSequence;
                c0477b.f1845w = null;
                Bitmap bitmap = c0477b.f1847y;
                if (bitmap != null) {
                    bitmap.recycle();
                    c0477b.f1847y = null;
                }
                c0477b.m674h();
            }
            if (!this.f1296a0) {
                m929g();
            }
        }
    }

    /* renamed from: a */
    public final void m935a(float f) {
        C0477b c0477b = this.f1298b0;
        if (c0477b.f1825c == f) {
            return;
        }
        if (this.f1302d0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f1302d0 = valueAnimator;
            valueAnimator.setInterpolator(C0916a.f2873b);
            this.f1302d0.setDuration(167L);
            this.f1302d0.addUpdateListener(new C0344c());
        }
        this.f1302d0.setFloatValues(c0477b.f1825c, f);
        this.f1302d0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f1297b;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        m923m();
        setEditText((EditText) view);
    }

    /* renamed from: b */
    public final void m934b() {
        int i;
        Drawable drawable;
        if (this.f1316o == null) {
            return;
        }
        int i2 = this.f1319r;
        if (i2 != 1) {
            if (i2 == 2 && this.f1294V == 0) {
                this.f1294V = this.f1291S.getColorForState(getDrawableState(), this.f1291S.getDefaultColor());
            }
        } else {
            this.f1325x = 0;
        }
        EditText editText = this.f1299c;
        if (editText != null && this.f1319r == 2) {
            if (editText.getBackground() != null) {
                this.f1275C = this.f1299c.getBackground();
            }
            EditText editText2 = this.f1299c;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            editText2.setBackground(null);
        }
        EditText editText3 = this.f1299c;
        if (editText3 != null && this.f1319r == 1 && (drawable = this.f1275C) != null) {
            WeakHashMap<View, C0960q> weakHashMap2 = C0954m.f2934a;
            editText3.setBackground(drawable);
        }
        int i3 = this.f1325x;
        if (i3 > -1 && (i = this.f1273A) != 0) {
            this.f1316o.setStroke(i3, i);
        }
        this.f1316o.setCornerRadii(getCornerRadiiAsArray());
        this.f1316o.setColor(this.f1274B);
        invalidate();
    }

    /* renamed from: c */
    public final void m933c() {
        Drawable drawable = this.f1280H;
        if (drawable != null) {
            if (this.f1287O || this.f1289Q) {
                Drawable mutate = C0863a.m138f(drawable).mutate();
                this.f1280H = mutate;
                if (this.f1287O) {
                    mutate.setTintList(this.f1286N);
                }
                if (this.f1289Q) {
                    this.f1280H.setTintMode(this.f1288P);
                }
                CheckableImageButton checkableImageButton = this.f1282J;
                if (checkableImageButton != null) {
                    Drawable drawable2 = checkableImageButton.getDrawable();
                    Drawable drawable3 = this.f1280H;
                    if (drawable2 != drawable3) {
                        this.f1282J.setImageDrawable(drawable3);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public final int m932d() {
        float f;
        if (!this.f1313l) {
            return 0;
        }
        int i = this.f1319r;
        C0477b c0477b = this.f1298b0;
        if (i != 0 && i != 1) {
            if (i != 2) {
                return 0;
            }
            TextPaint textPaint = c0477b.f1816E;
            textPaint.setTextSize(c0477b.f1832j);
            textPaint.setTypeface(c0477b.f1841s);
            f = (-textPaint.ascent()) / 2.0f;
        } else {
            TextPaint textPaint2 = c0477b.f1816E;
            textPaint2.setTextSize(c0477b.f1832j);
            textPaint2.setTypeface(c0477b.f1841s);
            f = -textPaint2.ascent();
        }
        return (int) f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText;
        if (this.f1301d == null || (editText = this.f1299c) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f1315n;
        this.f1315n = false;
        CharSequence hint = editText.getHint();
        this.f1299c.setHint(this.f1301d);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f1299c.setHint(hint);
            this.f1315n = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f1308g0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f1308g0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.f1316o;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.f1313l) {
            C0477b c0477b = this.f1298b0;
            c0477b.getClass();
            int save = canvas.save();
            if (c0477b.f1845w != null && c0477b.f1824b) {
                float f = c0477b.f1839q;
                float f2 = c0477b.f1840r;
                TextPaint textPaint = c0477b.f1815D;
                textPaint.ascent();
                textPaint.descent();
                float f3 = c0477b.f1848z;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                CharSequence charSequence = c0477b.f1845w;
                canvas.drawText(charSequence, 0, charSequence.length(), f, f2, textPaint);
            }
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        boolean z3;
        if (this.f1306f0) {
            return;
        }
        boolean z4 = true;
        this.f1306f0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (isLaidOut() && isEnabled()) {
            z = true;
        } else {
            z = false;
        }
        m922n(z, false);
        m924l();
        m920p();
        m919q();
        C0477b c0477b = this.f1298b0;
        if (c0477b != null) {
            c0477b.f1813B = drawableState;
            ColorStateList colorStateList2 = c0477b.f1834l;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = c0477b.f1833k) != null && colorStateList.isStateful())) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                c0477b.m674h();
            } else {
                z4 = false;
            }
            z2 = z4 | false;
        } else {
            z2 = false;
        }
        if (z2) {
            invalidate();
        }
        this.f1306f0 = false;
    }

    /* renamed from: e */
    public final boolean m931e() {
        return this.f1313l && !TextUtils.isEmpty(this.f1314m) && (this.f1316o instanceof C0686a);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m930f() {
        GradientDrawable gradientDrawable;
        int i = this.f1319r;
        if (i == 0) {
            gradientDrawable = null;
        } else if (i == 2 && this.f1313l && !(this.f1316o instanceof C0686a)) {
            gradientDrawable = new C0686a();
        } else {
            if (!(this.f1316o instanceof GradientDrawable)) {
                gradientDrawable = new GradientDrawable();
            }
            if (this.f1319r != 0) {
                m923m();
            }
            m920p();
        }
        this.f1316o = gradientDrawable;
        if (this.f1319r != 0) {
        }
        m920p();
    }

    /* renamed from: g */
    public final void m929g() {
        float measureText;
        float f;
        float f2;
        if (!m931e()) {
            return;
        }
        RectF rectF = this.f1277E;
        C0477b c0477b = this.f1298b0;
        boolean m680b = c0477b.m680b(c0477b.f1844v);
        float f3 = 0.0f;
        TextPaint textPaint = c0477b.f1816E;
        Rect rect = c0477b.f1827e;
        if (!m680b) {
            f = rect.left;
        } else {
            float f4 = rect.right;
            if (c0477b.f1844v == null) {
                measureText = 0.0f;
            } else {
                textPaint.setTextSize(c0477b.f1832j);
                textPaint.setTypeface(c0477b.f1841s);
                CharSequence charSequence = c0477b.f1844v;
                measureText = textPaint.measureText(charSequence, 0, charSequence.length());
            }
            f = f4 - measureText;
        }
        rectF.left = f;
        rectF.top = rect.top;
        if (!m680b) {
            if (c0477b.f1844v != null) {
                textPaint.setTextSize(c0477b.f1832j);
                textPaint.setTypeface(c0477b.f1841s);
                CharSequence charSequence2 = c0477b.f1844v;
                f3 = textPaint.measureText(charSequence2, 0, charSequence2.length());
            }
            f2 = f3 + f;
        } else {
            f2 = rect.right;
        }
        rectF.right = f2;
        textPaint.setTextSize(c0477b.f1832j);
        textPaint.setTypeface(c0477b.f1841s);
        float f5 = (-textPaint.ascent()) + rect.top;
        float f6 = rectF.left;
        float f7 = this.f1318q;
        rectF.left = f6 - f7;
        rectF.top -= f7;
        rectF.right += f7;
        rectF.bottom = f5 + f7;
        C0686a c0686a = (C0686a) this.f1316o;
        c0686a.getClass();
        c0686a.m379a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public int getBoxBackgroundColor() {
        return this.f1274B;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f1323v;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f1324w;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f1322u;
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f1321t;
    }

    public int getBoxStrokeColor() {
        return this.f1294V;
    }

    public int getCounterMaxLength() {
        return this.f1307g;
    }

    public CharSequence getCounterOverflowDescription() {
        C0561x c0561x;
        if (this.f1305f && this.f1309h && (c0561x = this.f1310i) != null) {
            return c0561x.getContentDescription();
        }
        return null;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f1290R;
    }

    public EditText getEditText() {
        return this.f1299c;
    }

    public CharSequence getError() {
        C0687b c0687b = this.f1303e;
        if (c0687b.f2414l) {
            return c0687b.f2413k;
        }
        return null;
    }

    public int getErrorCurrentTextColors() {
        C0561x c0561x = this.f1303e.f2415m;
        if (c0561x != null) {
            return c0561x.getCurrentTextColor();
        }
        return -1;
    }

    public final int getErrorTextCurrentColor() {
        C0561x c0561x = this.f1303e.f2415m;
        if (c0561x != null) {
            return c0561x.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHelperText() {
        C0687b c0687b = this.f1303e;
        if (c0687b.f2418p) {
            return c0687b.f2417o;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C0561x c0561x = this.f1303e.f2419q;
        if (c0561x != null) {
            return c0561x.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f1313l) {
            return this.f1314m;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        C0477b c0477b = this.f1298b0;
        TextPaint textPaint = c0477b.f1816E;
        textPaint.setTextSize(c0477b.f1832j);
        textPaint.setTypeface(c0477b.f1841s);
        return -textPaint.ascent();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.f1298b0.m677e();
    }

    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f1281I;
    }

    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f1280H;
    }

    public Typeface getTypeface() {
        return this.f1278F;
    }

    /* renamed from: h */
    public final void m928h(boolean z) {
        boolean z2;
        if (this.f1279G) {
            int selectionEnd = this.f1299c.getSelectionEnd();
            EditText editText = this.f1299c;
            boolean z3 = true;
            if (editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                this.f1299c.setTransformationMethod(null);
            } else {
                this.f1299c.setTransformationMethod(PasswordTransformationMethod.getInstance());
                z3 = false;
            }
            this.f1283K = z3;
            this.f1282J.setChecked(z3);
            if (z) {
                this.f1282J.jumpDrawablesToCurrentState();
            }
            this.f1299c.setSelection(selectionEnd);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
        if (r3.getTextColors().getDefaultColor() == (-65281)) goto L8;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m926j(TextView textView, int i) {
        boolean z = true;
        try {
            C0010i.m1376e(textView, i);
            if (Build.VERSION.SDK_INT >= 23) {
            }
            z = false;
        } catch (Exception unused) {
        }
        if (z) {
            C0010i.m1376e(textView, 2131624169);
            textView.setTextColor(C0819a.m206a(getContext(), R.color.design_error));
        }
    }

    /* renamed from: k */
    public final void m925k(int i) {
        boolean z;
        int i2;
        boolean z2 = this.f1309h;
        if (this.f1307g == -1) {
            this.f1310i.setText(String.valueOf(i));
            this.f1310i.setContentDescription(null);
            this.f1309h = false;
        } else {
            C0561x c0561x = this.f1310i;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (c0561x.getAccessibilityLiveRegion() == 1) {
                this.f1310i.setAccessibilityLiveRegion(0);
            }
            if (i > this.f1307g) {
                z = true;
            } else {
                z = false;
            }
            this.f1309h = z;
            if (z2 != z) {
                C0561x c0561x2 = this.f1310i;
                if (z) {
                    i2 = this.f1311j;
                } else {
                    i2 = this.f1312k;
                }
                m926j(c0561x2, i2);
                if (this.f1309h) {
                    this.f1310i.setAccessibilityLiveRegion(1);
                }
            }
            this.f1310i.setText(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f1307g)));
            this.f1310i.setContentDescription(getContext().getString(R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.f1307g)));
        }
        if (this.f1299c != null && z2 != this.f1309h) {
            m922n(false, false);
            m919q();
            m924l();
        }
    }

    /* renamed from: l */
    public final void m924l() {
        Drawable background;
        Drawable background2;
        C0561x c0561x;
        int currentTextColor;
        EditText editText = this.f1299c;
        if (editText == null || (background = editText.getBackground()) == null) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background2 = this.f1299c.getBackground()) != null && !this.f1304e0) {
            Drawable newDrawable = background2.getConstantState().newDrawable();
            if (background2 instanceof DrawableContainer) {
                DrawableContainer drawableContainer = (DrawableContainer) background2;
                Drawable.ConstantState constantState = newDrawable.getConstantState();
                boolean z = false;
                if (!C0479d.f1852b) {
                    try {
                        Method declaredMethod = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                        C0479d.f1851a = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException unused) {
                        Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
                    }
                    C0479d.f1852b = true;
                }
                Method method = C0479d.f1851a;
                if (method != null) {
                    try {
                        method.invoke(drawableContainer, constantState);
                        z = true;
                    } catch (Exception unused2) {
                        Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
                    }
                }
                this.f1304e0 = z;
            }
            if (!this.f1304e0) {
                EditText editText2 = this.f1299c;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                editText2.setBackground(newDrawable);
                this.f1304e0 = true;
                m930f();
            }
        }
        if (C0494b0.m637a(background)) {
            background = background.mutate();
        }
        C0687b c0687b = this.f1303e;
        if (c0687b.m374e()) {
            C0561x c0561x2 = c0687b.f2415m;
            if (c0561x2 != null) {
                currentTextColor = c0561x2.getCurrentTextColor();
            } else {
                currentTextColor = -1;
            }
        } else if (this.f1309h && (c0561x = this.f1310i) != null) {
            currentTextColor = c0561x.getCurrentTextColor();
        } else {
            C0863a.m143a(background);
            this.f1299c.refreshDrawableState();
            return;
        }
        background.setColorFilter(C0516i.m606k(currentTextColor, PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: m */
    public final void m923m() {
        FrameLayout frameLayout = this.f1297b;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        int m932d = m932d();
        if (m932d != layoutParams.topMargin) {
            layoutParams.topMargin = m932d;
            frameLayout.requestLayout();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0075, code lost:
        if (r0 != null) goto L74;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m922n(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        C0561x c0561x;
        boolean isEnabled = isEnabled();
        EditText editText = this.f1299c;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z3 = true;
        } else {
            z3 = false;
        }
        EditText editText2 = this.f1299c;
        if (editText2 != null && editText2.hasFocus()) {
            z4 = true;
        } else {
            z4 = false;
        }
        C0687b c0687b = this.f1303e;
        boolean m374e = c0687b.m374e();
        ColorStateList colorStateList2 = this.f1290R;
        C0477b c0477b = this.f1298b0;
        if (colorStateList2 != null) {
            c0477b.m673i(colorStateList2);
            ColorStateList colorStateList3 = this.f1290R;
            if (c0477b.f1833k != colorStateList3) {
                c0477b.f1833k = colorStateList3;
                c0477b.m674h();
            }
        }
        if (!isEnabled) {
            int i = this.f1295W;
            c0477b.m673i(ColorStateList.valueOf(i));
            ColorStateList valueOf = ColorStateList.valueOf(i);
            if (c0477b.f1833k != valueOf) {
                c0477b.f1833k = valueOf;
                c0477b.m674h();
            }
        } else {
            if (m374e) {
                C0561x c0561x2 = c0687b.f2415m;
                if (c0561x2 != null) {
                    colorStateList = c0561x2.getTextColors();
                } else {
                    colorStateList = null;
                }
            } else if (this.f1309h && (c0561x = this.f1310i) != null) {
                colorStateList = c0561x.getTextColors();
            } else if (z4) {
                colorStateList = this.f1291S;
            }
            c0477b.m673i(colorStateList);
        }
        if (!z3 && (!isEnabled() || (!z4 && !m374e))) {
            if (z2 || !this.f1296a0) {
                ValueAnimator valueAnimator = this.f1302d0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f1302d0.cancel();
                }
                if (z && this.f1300c0) {
                    m935a(0.0f);
                } else {
                    c0477b.m672j(0.0f);
                }
                if (m931e() && (!((C0686a) this.f1316o).f2401b.isEmpty()) && m931e()) {
                    ((C0686a) this.f1316o).m379a(0.0f, 0.0f, 0.0f, 0.0f);
                }
                this.f1296a0 = true;
            }
        } else if (z2 || this.f1296a0) {
            ValueAnimator valueAnimator2 = this.f1302d0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f1302d0.cancel();
            }
            if (z && this.f1300c0) {
                m935a(1.0f);
            } else {
                c0477b.m672j(1.0f);
            }
            this.f1296a0 = false;
            if (m931e()) {
                m929g();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c9  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m921o() {
        boolean z;
        boolean z2;
        EditText editText = this.f1299c;
        if (editText == null) {
            return;
        }
        if (this.f1279G) {
            if (editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 || this.f1283K) {
                z = true;
                if (!z) {
                    if (this.f1282J == null) {
                        LayoutInflater from = LayoutInflater.from(getContext());
                        FrameLayout frameLayout = this.f1297b;
                        CheckableImageButton checkableImageButton = (CheckableImageButton) from.inflate(R.layout.design_text_input_password_icon, (ViewGroup) frameLayout, false);
                        this.f1282J = checkableImageButton;
                        checkableImageButton.setImageDrawable(this.f1280H);
                        this.f1282J.setContentDescription(this.f1281I);
                        frameLayout.addView(this.f1282J);
                        this.f1282J.setOnClickListener(new View$OnClickListenerC0343b());
                    }
                    EditText editText2 = this.f1299c;
                    if (editText2 != null) {
                        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                        if (editText2.getMinimumHeight() <= 0) {
                            this.f1299c.setMinimumHeight(this.f1282J.getMinimumHeight());
                        }
                    }
                    this.f1282J.setVisibility(0);
                    this.f1282J.setChecked(this.f1283K);
                    if (this.f1284L == null) {
                        this.f1284L = new ColorDrawable();
                    }
                    this.f1284L.setBounds(0, 0, this.f1282J.getMeasuredWidth(), 1);
                    Drawable[] compoundDrawablesRelative = this.f1299c.getCompoundDrawablesRelative();
                    Drawable drawable = compoundDrawablesRelative[2];
                    ColorDrawable colorDrawable = this.f1284L;
                    if (drawable != colorDrawable) {
                        this.f1285M = drawable;
                    }
                    this.f1299c.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], colorDrawable, compoundDrawablesRelative[3]);
                    this.f1282J.setPadding(this.f1299c.getPaddingLeft(), this.f1299c.getPaddingTop(), this.f1299c.getPaddingRight(), this.f1299c.getPaddingBottom());
                    return;
                }
                CheckableImageButton checkableImageButton2 = this.f1282J;
                if (checkableImageButton2 != null && checkableImageButton2.getVisibility() == 0) {
                    this.f1282J.setVisibility(8);
                }
                if (this.f1284L != null) {
                    Drawable[] compoundDrawablesRelative2 = this.f1299c.getCompoundDrawablesRelative();
                    if (compoundDrawablesRelative2[2] == this.f1284L) {
                        this.f1299c.setCompoundDrawablesRelative(compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], this.f1285M, compoundDrawablesRelative2[3]);
                        this.f1284L = null;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        z = false;
        if (!z) {
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        EditText editText;
        int i5;
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1316o != null) {
            m920p();
        }
        if (this.f1313l && (editText = this.f1299c) != null) {
            Rect rect = this.f1276D;
            C0478c.m671a(this, editText, rect);
            int compoundPaddingLeft = this.f1299c.getCompoundPaddingLeft() + rect.left;
            int compoundPaddingRight = rect.right - this.f1299c.getCompoundPaddingRight();
            int i6 = this.f1319r;
            if (i6 != 1) {
                if (i6 != 2) {
                    i5 = getPaddingTop();
                } else {
                    i5 = getBoxBackground().getBounds().top - m932d();
                }
            } else {
                i5 = getBoxBackground().getBounds().top + this.f1320s;
            }
            int compoundPaddingTop = this.f1299c.getCompoundPaddingTop() + rect.top;
            int compoundPaddingBottom = rect.bottom - this.f1299c.getCompoundPaddingBottom();
            C0477b c0477b = this.f1298b0;
            Rect rect2 = c0477b.f1826d;
            boolean z3 = false;
            if (rect2.left == compoundPaddingLeft && rect2.top == compoundPaddingTop && rect2.right == compoundPaddingRight && rect2.bottom == compoundPaddingBottom) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                rect2.set(compoundPaddingLeft, compoundPaddingTop, compoundPaddingRight, compoundPaddingBottom);
                c0477b.f1814C = true;
                c0477b.m675g();
            }
            int paddingBottom = (i4 - i2) - getPaddingBottom();
            Rect rect3 = c0477b.f1827e;
            if (rect3.left == compoundPaddingLeft && rect3.top == i5 && rect3.right == compoundPaddingRight && rect3.bottom == paddingBottom) {
                z3 = true;
            }
            if (!z3) {
                rect3.set(compoundPaddingLeft, i5, compoundPaddingRight, paddingBottom);
                c0477b.f1814C = true;
                c0477b.m675g();
            }
            c0477b.m674h();
            if (m931e() && !this.f1296a0) {
                m929g();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        m921o();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0346e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0346e c0346e = (C0346e) parcelable;
        super.onRestoreInstanceState(c0346e.f1144a);
        setError(c0346e.f1332c);
        if (c0346e.f1333d) {
            m928h(true);
        }
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0346e c0346e = new C0346e(super.onSaveInstanceState());
        if (this.f1303e.m374e()) {
            c0346e.f1332c = getError();
        }
        c0346e.f1333d = this.f1283K;
        return c0346e;
    }

    /* renamed from: p */
    public final void m920p() {
        Drawable background;
        if (this.f1319r != 0 && this.f1316o != null && this.f1299c != null && getRight() != 0) {
            int left = this.f1299c.getLeft();
            EditText editText = this.f1299c;
            int i = 0;
            if (editText != null) {
                int i2 = this.f1319r;
                if (i2 != 1) {
                    if (i2 == 2) {
                        i = m932d() + editText.getTop();
                    }
                } else {
                    i = editText.getTop();
                }
            }
            int right = this.f1299c.getRight();
            int bottom = this.f1299c.getBottom() + this.f1317p;
            if (this.f1319r == 2) {
                int i3 = this.f1327z;
                left += i3 / 2;
                i -= i3 / 2;
                right -= i3 / 2;
                bottom += i3 / 2;
            }
            this.f1316o.setBounds(left, i, right, bottom);
            m934b();
            EditText editText2 = this.f1299c;
            if (editText2 != null && (background = editText2.getBackground()) != null) {
                if (C0494b0.m637a(background)) {
                    background = background.mutate();
                }
                C0478c.m671a(this, this.f1299c, new Rect());
                Rect bounds = background.getBounds();
                if (bounds.left != bounds.right) {
                    Rect rect = new Rect();
                    background.getPadding(rect);
                    background.setBounds(bounds.left - rect.left, bounds.top, (rect.right * 2) + bounds.right, this.f1299c.getBottom());
                }
            }
        }
    }

    /* renamed from: q */
    public final void m919q() {
        boolean z;
        int i;
        C0561x c0561x;
        int i2;
        if (this.f1316o != null && this.f1319r != 0) {
            EditText editText = this.f1299c;
            boolean z2 = false;
            if (editText != null && editText.hasFocus()) {
                z = true;
            } else {
                z = false;
            }
            EditText editText2 = this.f1299c;
            if (editText2 != null && editText2.isHovered()) {
                z2 = true;
            }
            if (this.f1319r == 2) {
                if (!isEnabled()) {
                    i = this.f1295W;
                } else {
                    C0687b c0687b = this.f1303e;
                    if (c0687b.m374e()) {
                        C0561x c0561x2 = c0687b.f2415m;
                        if (c0561x2 != null) {
                            i = c0561x2.getCurrentTextColor();
                        } else {
                            i = -1;
                        }
                    } else if (this.f1309h && (c0561x = this.f1310i) != null) {
                        i = c0561x.getCurrentTextColor();
                    } else if (z) {
                        i = this.f1294V;
                    } else if (z2) {
                        i = this.f1293U;
                    } else {
                        i = this.f1292T;
                    }
                }
                this.f1273A = i;
                if ((z2 || z) && isEnabled()) {
                    i2 = this.f1327z;
                } else {
                    i2 = this.f1326y;
                }
                this.f1325x = i2;
                m934b();
            }
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f1274B != i) {
            this.f1274B = i;
            m934b();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C0819a.m206a(getContext(), i));
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f1319r) {
            return;
        }
        this.f1319r = i;
        m930f();
    }

    public void setBoxStrokeColor(int i) {
        if (this.f1294V != i) {
            this.f1294V = i;
            m919q();
        }
    }

    public void setCounterEnabled(boolean z) {
        int length;
        if (this.f1305f != z) {
            C0687b c0687b = this.f1303e;
            if (z) {
                C0561x c0561x = new C0561x(getContext(), null);
                this.f1310i = c0561x;
                c0561x.setId(R.id.textinput_counter);
                Typeface typeface = this.f1278F;
                if (typeface != null) {
                    this.f1310i.setTypeface(typeface);
                }
                this.f1310i.setMaxLines(1);
                m926j(this.f1310i, this.f1312k);
                c0687b.m378a(this.f1310i, 2);
                EditText editText = this.f1299c;
                if (editText == null) {
                    length = 0;
                } else {
                    length = editText.getText().length();
                }
                m925k(length);
            } else {
                c0687b.m371h(this.f1310i, 2);
                this.f1310i = null;
            }
            this.f1305f = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f1307g != i) {
            if (i <= 0) {
                i = -1;
            }
            this.f1307g = i;
            if (this.f1305f) {
                EditText editText = this.f1299c;
                m925k(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f1290R = colorStateList;
        this.f1291S = colorStateList;
        if (this.f1299c != null) {
            m922n(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m927i(this, z);
        super.setEnabled(z);
    }

    public void setError(CharSequence charSequence) {
        C0687b c0687b = this.f1303e;
        if (!c0687b.f2414l) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            c0687b.m376c();
            c0687b.f2413k = charSequence;
            c0687b.f2415m.setText(charSequence);
            int i = c0687b.f2411i;
            if (i != 1) {
                c0687b.f2412j = 1;
            }
            c0687b.m369j(i, c0687b.f2412j, c0687b.m370i(c0687b.f2415m, charSequence));
            return;
        }
        c0687b.m372g();
    }

    public void setErrorEnabled(boolean z) {
        C0687b c0687b = this.f1303e;
        if (c0687b.f2414l != z) {
            c0687b.m376c();
            TextInputLayout textInputLayout = c0687b.f2404b;
            if (z) {
                C0561x c0561x = new C0561x(c0687b.f2403a, null);
                c0687b.f2415m = c0561x;
                c0561x.setId(R.id.textinput_error);
                Typeface typeface = c0687b.f2421s;
                if (typeface != null) {
                    c0687b.f2415m.setTypeface(typeface);
                }
                int i = c0687b.f2416n;
                c0687b.f2416n = i;
                C0561x c0561x2 = c0687b.f2415m;
                if (c0561x2 != null) {
                    textInputLayout.m926j(c0561x2, i);
                }
                c0687b.f2415m.setVisibility(4);
                C0561x c0561x3 = c0687b.f2415m;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                c0561x3.setAccessibilityLiveRegion(1);
                c0687b.m378a(c0687b.f2415m, 0);
            } else {
                c0687b.m372g();
                c0687b.m371h(c0687b.f2415m, 0);
                c0687b.f2415m = null;
                textInputLayout.m924l();
                textInputLayout.m919q();
            }
            c0687b.f2414l = z;
        }
    }

    public void setErrorTextAppearance(int i) {
        C0687b c0687b = this.f1303e;
        c0687b.f2416n = i;
        C0561x c0561x = c0687b.f2415m;
        if (c0561x != null) {
            c0687b.f2404b.m926j(c0561x, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        C0561x c0561x = this.f1303e.f2415m;
        if (c0561x != null) {
            c0561x.setTextColor(colorStateList);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        C0687b c0687b = this.f1303e;
        if (isEmpty) {
            if (c0687b.f2418p) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!c0687b.f2418p) {
            setHelperTextEnabled(true);
        }
        c0687b.m376c();
        c0687b.f2417o = charSequence;
        c0687b.f2419q.setText(charSequence);
        int i = c0687b.f2411i;
        if (i != 2) {
            c0687b.f2412j = 2;
        }
        c0687b.m369j(i, c0687b.f2412j, c0687b.m370i(c0687b.f2419q, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        C0561x c0561x = this.f1303e.f2419q;
        if (c0561x != null) {
            c0561x.setTextColor(colorStateList);
        }
    }

    public void setHelperTextEnabled(boolean z) {
        C0687b c0687b = this.f1303e;
        if (c0687b.f2418p != z) {
            c0687b.m376c();
            if (z) {
                C0561x c0561x = new C0561x(c0687b.f2403a, null);
                c0687b.f2419q = c0561x;
                c0561x.setId(R.id.textinput_helper_text);
                Typeface typeface = c0687b.f2421s;
                if (typeface != null) {
                    c0687b.f2419q.setTypeface(typeface);
                }
                c0687b.f2419q.setVisibility(4);
                C0561x c0561x2 = c0687b.f2419q;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                c0561x2.setAccessibilityLiveRegion(1);
                int i = c0687b.f2420r;
                c0687b.f2420r = i;
                C0561x c0561x3 = c0687b.f2419q;
                if (c0561x3 != null) {
                    C0010i.m1376e(c0561x3, i);
                }
                c0687b.m378a(c0687b.f2419q, 1);
            } else {
                c0687b.m376c();
                int i2 = c0687b.f2411i;
                if (i2 == 2) {
                    c0687b.f2412j = 0;
                }
                c0687b.m369j(i2, c0687b.f2412j, c0687b.m370i(c0687b.f2419q, null));
                c0687b.m371h(c0687b.f2419q, 1);
                c0687b.f2419q = null;
                TextInputLayout textInputLayout = c0687b.f2404b;
                textInputLayout.m924l();
                textInputLayout.m919q();
            }
            c0687b.f2418p = z;
        }
    }

    public void setHelperTextTextAppearance(int i) {
        C0687b c0687b = this.f1303e;
        c0687b.f2420r = i;
        C0561x c0561x = c0687b.f2419q;
        if (c0561x != null) {
            C0010i.m1376e(c0561x, i);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.f1313l) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f1300c0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f1313l) {
            this.f1313l = z;
            if (z) {
                CharSequence hint = this.f1299c.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f1314m)) {
                        setHint(hint);
                    }
                    this.f1299c.setHint((CharSequence) null);
                }
                this.f1315n = true;
            } else {
                this.f1315n = false;
                if (!TextUtils.isEmpty(this.f1314m) && TextUtils.isEmpty(this.f1299c.getHint())) {
                    this.f1299c.setHint(this.f1314m);
                }
                setHintInternal(null);
            }
            if (this.f1299c != null) {
                m923m();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        Typeface typeface;
        ColorStateList colorStateList;
        int resourceId;
        C0477b c0477b = this.f1298b0;
        View view = c0477b.f1823a;
        Context context = view.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C0736h.f2530C);
        if (obtainStyledAttributes.hasValue(3)) {
            if (!obtainStyledAttributes.hasValue(3) || (resourceId = obtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = C0315a.m995b(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(3);
            }
            c0477b.f1834l = colorStateList;
        }
        if (obtainStyledAttributes.hasValue(0)) {
            c0477b.f1832j = obtainStyledAttributes.getDimensionPixelSize(0, (int) c0477b.f1832j);
        }
        c0477b.f1822K = obtainStyledAttributes.getInt(6, 0);
        c0477b.f1820I = obtainStyledAttributes.getFloat(7, 0.0f);
        c0477b.f1821J = obtainStyledAttributes.getFloat(8, 0.0f);
        c0477b.f1819H = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = view.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = obtainStyledAttributes2.getString(0);
            if (string != null) {
                typeface = Typeface.create(string, 0);
            } else {
                obtainStyledAttributes2.recycle();
                typeface = null;
            }
            c0477b.f1841s = typeface;
            c0477b.m674h();
            this.f1291S = c0477b.f1834l;
            if (this.f1299c != null) {
                m922n(false, false);
                m923m();
            }
        } finally {
            obtainStyledAttributes2.recycle();
        }
    }

    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f1281I = charSequence;
        CheckableImageButton checkableImageButton = this.f1282J;
        if (checkableImageButton != null) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C0315a.m994c(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f1280H = drawable;
        CheckableImageButton checkableImageButton = this.f1282J;
        if (checkableImageButton != null) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EditText editText;
        if (this.f1279G != z) {
            this.f1279G = z;
            if (!z && this.f1283K && (editText = this.f1299c) != null) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.f1283K = false;
            m921o();
        }
    }

    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f1286N = colorStateList;
        this.f1287O = true;
        m933c();
    }

    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f1288P = mode;
        this.f1289Q = true;
        m933c();
    }

    public void setTextInputAccessibilityDelegate(C0345d c0345d) {
        EditText editText = this.f1299c;
        if (editText != null) {
            C0954m.m30f(editText, c0345d);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f1278F) {
            this.f1278F = typeface;
            C0477b c0477b = this.f1298b0;
            c0477b.f1842t = typeface;
            c0477b.f1841s = typeface;
            c0477b.m674h();
            C0687b c0687b = this.f1303e;
            if (typeface != c0687b.f2421s) {
                c0687b.f2421s = typeface;
                C0561x c0561x = c0687b.f2415m;
                if (c0561x != null) {
                    c0561x.setTypeface(typeface);
                }
                C0561x c0561x2 = c0687b.f2419q;
                if (c0561x2 != null) {
                    c0561x2.setTypeface(typeface);
                }
            }
            C0561x c0561x3 = this.f1310i;
            if (c0561x3 != null) {
                c0561x3.setTypeface(typeface);
            }
        }
    }
}
