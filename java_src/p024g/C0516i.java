package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import org.xmlpull.v1.XmlPullParserException;
import p008c.C0315a;
import p012d.C0355a;
import p039k.C0655b;
import p039k.C0658e;
import p039k.C0659f;
import p039k.C0667i;
import p040k0.C0669b;
import p040k0.C0677f;
import p046m1.C0736h;
import p052p.C0819a;
import p058r.C0847a;
import p061s.C0863a;
/* renamed from: g.i */
/* loaded from: classes.dex */
public final class C0516i {

    /* renamed from: h */
    public static C0516i f1962h;

    /* renamed from: a */
    public WeakHashMap<Context, C0667i<ColorStateList>> f1970a;

    /* renamed from: b */
    public C0655b<String, InterfaceC0520d> f1971b;

    /* renamed from: c */
    public C0667i<String> f1972c;

    /* renamed from: d */
    public final WeakHashMap<Context, C0658e<WeakReference<Drawable.ConstantState>>> f1973d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f1974e;

    /* renamed from: f */
    public boolean f1975f;

    /* renamed from: g */
    public static final PorterDuff.Mode f1961g = PorterDuff.Mode.SRC_IN;

    /* renamed from: i */
    public static final C0519c f1963i = new C0519c();

    /* renamed from: j */
    public static final int[] f1964j = {2131165271, 2131165269, 2131165190};

    /* renamed from: k */
    public static final int[] f1965k = {2131165212, R.drawable.abc_seekbar_tick_mark_material, 2131165219, 2131165214, 2131165215, 2131165218, 2131165217};

    /* renamed from: l */
    public static final int[] f1966l = {2131165268, 2131165270, 2131165205, R.drawable.abc_text_cursor_material, 2131165262, 2131165264, 2131165266, 2131165263, 2131165265, 2131165267};

    /* renamed from: m */
    public static final int[] f1967m = {2131165243, R.drawable.abc_cab_background_internal_bg, 2131165242};

    /* renamed from: n */
    public static final int[] f1968n = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: o */
    public static final int[] f1969o = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};

    /* renamed from: g.i$a */
    /* loaded from: classes.dex */
    public static class C0517a implements InterfaceC0520d {
        @Override // p024g.C0516i.InterfaceC0520d
        /* renamed from: a */
        public final Drawable mo601a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0355a.m908g(context, theme, context.getResources(), attributeSet, xmlResourceParser);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: g.i$b */
    /* loaded from: classes.dex */
    public static class C0518b implements InterfaceC0520d {
        @Override // p024g.C0516i.InterfaceC0520d
        /* renamed from: a */
        public final Drawable mo601a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C0669b c0669b = new C0669b(context);
                c0669b.inflate(resources, xmlResourceParser, attributeSet, theme);
                return c0669b;
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: g.i$c */
    /* loaded from: classes.dex */
    public static class C0519c extends C0659f<Integer, PorterDuffColorFilter> {
        public C0519c() {
            super(6);
        }
    }

    /* renamed from: g.i$d */
    /* loaded from: classes.dex */
    public interface InterfaceC0520d {
        /* renamed from: a */
        Drawable mo601a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: g.i$e */
    /* loaded from: classes.dex */
    public static class C0521e implements InterfaceC0520d {
        @Override // p024g.C0516i.InterfaceC0520d
        /* renamed from: a */
        public final Drawable mo601a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C0677f c0677f = new C0677f();
                c0677f.inflate(resources, xmlResourceParser, attributeSet, theme);
                return c0677f;
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: c */
    public static boolean m614c(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static ColorStateList m613d(Context context, int i) {
        int m585b = C0532m0.m585b(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{C0532m0.f2019b, C0532m0.f2021d, C0532m0.f2020c, C0532m0.f2023f}, new int[]{C0532m0.m586a(context, R.attr.colorButtonNormal), C0847a.m182a(m585b, i), C0847a.m182a(m585b, i), i});
    }

    /* renamed from: f */
    public static ColorStateList m611f(Context context) {
        int[][] iArr = new int[3];
        int[] iArr2 = new int[3];
        ColorStateList m584c = C0532m0.m584c(context, R.attr.colorSwitchThumbNormal);
        if (m584c == null || !m584c.isStateful()) {
            iArr[0] = C0532m0.f2019b;
            iArr2[0] = C0532m0.m586a(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = C0532m0.f2022e;
            iArr2[1] = C0532m0.m585b(context, R.attr.colorControlActivated);
            iArr[2] = C0532m0.f2023f;
            iArr2[2] = C0532m0.m585b(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = C0532m0.f2019b;
            iArr[0] = iArr3;
            iArr2[0] = m584c.getColorForState(iArr3, 0);
            iArr[1] = C0532m0.f2022e;
            iArr2[1] = C0532m0.m585b(context, R.attr.colorControlActivated);
            iArr[2] = C0532m0.f2023f;
            iArr2[2] = m584c.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    /* renamed from: g */
    public static synchronized C0516i m610g() {
        C0516i c0516i;
        synchronized (C0516i.class) {
            if (f1962h == null) {
                C0516i c0516i2 = new C0516i();
                f1962h = c0516i2;
                if (Build.VERSION.SDK_INT < 24) {
                    c0516i2.m616a("vector", new C0521e());
                    c0516i2.m616a("animated-vector", new C0518b());
                    c0516i2.m616a("animated-selector", new C0517a());
                }
            }
            c0516i = f1962h;
        }
        return c0516i;
    }

    /* renamed from: k */
    public static synchronized PorterDuffColorFilter m606k(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m421a;
        synchronized (C0516i.class) {
            C0519c c0519c = f1963i;
            c0519c.getClass();
            int i2 = (i + 31) * 31;
            m421a = c0519c.m421a(Integer.valueOf(mode.hashCode() + i2));
            if (m421a == null) {
                m421a = new PorterDuffColorFilter(i, mode);
                c0519c.m420b(Integer.valueOf(mode.hashCode() + i2), m421a);
            }
        }
        return m421a;
    }

    /* renamed from: m */
    public static void m604m(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (C0494b0.m637a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f1961g;
        }
        drawable.setColorFilter(m606k(i, mode));
    }

    /* renamed from: n */
    public static void m603n(Drawable drawable, C0538p0 c0538p0, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        if (C0494b0.m637a(drawable) && drawable.mutate() != drawable) {
            Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = c0538p0.f2035d;
        if (!z && !c0538p0.f2034c) {
            drawable.clearColorFilter();
        } else {
            PorterDuffColorFilter porterDuffColorFilter = null;
            if (z) {
                colorStateList = c0538p0.f2032a;
            } else {
                colorStateList = null;
            }
            if (c0538p0.f2034c) {
                mode = c0538p0.f2033b;
            } else {
                mode = f1961g;
            }
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = m606k(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilter);
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064 A[RETURN] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m602o(Context context, int i, Drawable drawable) {
        int i2;
        int i3;
        boolean z;
        int i4;
        boolean m614c = m614c(f1964j, i);
        PorterDuff.Mode mode = f1961g;
        if (m614c) {
            i4 = R.attr.colorControlNormal;
        } else if (m614c(f1966l, i)) {
            i4 = R.attr.colorControlActivated;
        } else {
            if (m614c(f1967m, i)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else if (i == 2131165231) {
                i2 = Math.round(40.8f);
                i3 = 16842800;
                z = true;
                if (z) {
                    if (C0494b0.m637a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(m606k(C0532m0.m585b(context, i3), mode));
                    if (i2 != -1) {
                        drawable.setAlpha(i2);
                    }
                    return true;
                }
                return false;
            } else if (i != R.drawable.abc_dialog_material_background) {
                i2 = -1;
                i3 = 0;
                z = false;
                if (z) {
                }
            }
            i4 = 16842801;
        }
        i3 = i4;
        i2 = -1;
        z = true;
        if (z) {
        }
    }

    /* renamed from: a */
    public final void m616a(String str, InterfaceC0520d interfaceC0520d) {
        if (this.f1971b == null) {
            this.f1971b = new C0655b<>();
        }
        this.f1971b.put(str, interfaceC0520d);
    }

    /* renamed from: b */
    public final synchronized void m615b(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            C0658e<WeakReference<Drawable.ConstantState>> c0658e = this.f1973d.get(context);
            if (c0658e == null) {
                c0658e = new C0658e<>();
                this.f1973d.put(context, c0658e);
            }
            c0658e.m423f(j, new WeakReference<>(constantState));
        }
    }

    /* renamed from: e */
    public final Drawable m612e(Context context, int i) {
        if (this.f1974e == null) {
            this.f1974e = new TypedValue();
        }
        TypedValue typedValue = this.f1974e;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m609h = m609h(context, j);
        if (m609h != null) {
            return m609h;
        }
        if (i == R.drawable.abc_cab_background_top_material) {
            m609h = new LayerDrawable(new Drawable[]{m608i(context, R.drawable.abc_cab_background_internal_bg), m608i(context, 2131165205)});
        }
        if (m609h != null) {
            m609h.setChangingConfigurations(typedValue.changingConfigurations);
            m615b(context, j, m609h);
        }
        return m609h;
    }

    /* renamed from: h */
    public final synchronized Drawable m609h(Context context, long j) {
        C0658e<WeakReference<Drawable.ConstantState>> c0658e = this.f1973d.get(context);
        if (c0658e == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) c0658e.m424e(j, null);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int m293g = C0736h.m293g(c0658e.f2277b, c0658e.f2279d, j);
            if (m293g >= 0) {
                Object[] objArr = c0658e.f2278c;
                Object obj = objArr[m293g];
                Object obj2 = C0658e.f2275e;
                if (obj != obj2) {
                    objArr[m293g] = obj2;
                    c0658e.f2276a = true;
                }
            }
        }
        return null;
    }

    /* renamed from: i */
    public final synchronized Drawable m608i(Context context, int i) {
        return m607j(context, i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
        if (r0 == false) goto L99;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ea A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:16:0x002d, B:18:0x0032, B:20:0x0038, B:22:0x003e, B:25:0x004c, B:29:0x005d, B:31:0x0061, B:32:0x0068, B:60:0x00ea, B:62:0x00f0, B:64:0x00f8, B:66:0x00fe, B:68:0x0104, B:69:0x0108, B:71:0x0114, B:73:0x0118, B:75:0x011d, B:77:0x012f, B:90:0x0175, B:85:0x0156, B:89:0x015f, B:94:0x018a, B:35:0x0082, B:37:0x0086, B:39:0x0092, B:40:0x009a, B:45:0x00a6, B:47:0x00b9, B:49:0x00c3, B:52:0x00cf, B:53:0x00d6, B:55:0x00d8, B:57:0x00e1, B:28:0x0056, B:6:0x0007, B:8:0x0013, B:10:0x0017, B:97:0x018f, B:98:0x0198), top: B:102:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f0 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:16:0x002d, B:18:0x0032, B:20:0x0038, B:22:0x003e, B:25:0x004c, B:29:0x005d, B:31:0x0061, B:32:0x0068, B:60:0x00ea, B:62:0x00f0, B:64:0x00f8, B:66:0x00fe, B:68:0x0104, B:69:0x0108, B:71:0x0114, B:73:0x0118, B:75:0x011d, B:77:0x012f, B:90:0x0175, B:85:0x0156, B:89:0x015f, B:94:0x018a, B:35:0x0082, B:37:0x0086, B:39:0x0092, B:40:0x009a, B:45:0x00a6, B:47:0x00b9, B:49:0x00c3, B:52:0x00cf, B:53:0x00d6, B:55:0x00d8, B:57:0x00e1, B:28:0x0056, B:6:0x0007, B:8:0x0013, B:10:0x0017, B:97:0x018f, B:98:0x0198), top: B:102:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f8 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:16:0x002d, B:18:0x0032, B:20:0x0038, B:22:0x003e, B:25:0x004c, B:29:0x005d, B:31:0x0061, B:32:0x0068, B:60:0x00ea, B:62:0x00f0, B:64:0x00f8, B:66:0x00fe, B:68:0x0104, B:69:0x0108, B:71:0x0114, B:73:0x0118, B:75:0x011d, B:77:0x012f, B:90:0x0175, B:85:0x0156, B:89:0x015f, B:94:0x018a, B:35:0x0082, B:37:0x0086, B:39:0x0092, B:40:0x009a, B:45:0x00a6, B:47:0x00b9, B:49:0x00c3, B:52:0x00cf, B:53:0x00d6, B:55:0x00d8, B:57:0x00e1, B:28:0x0056, B:6:0x0007, B:8:0x0013, B:10:0x0017, B:97:0x018f, B:98:0x0198), top: B:102:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018a A[Catch: all -> 0x00cc, TRY_LEAVE, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:16:0x002d, B:18:0x0032, B:20:0x0038, B:22:0x003e, B:25:0x004c, B:29:0x005d, B:31:0x0061, B:32:0x0068, B:60:0x00ea, B:62:0x00f0, B:64:0x00f8, B:66:0x00fe, B:68:0x0104, B:69:0x0108, B:71:0x0114, B:73:0x0118, B:75:0x011d, B:77:0x012f, B:90:0x0175, B:85:0x0156, B:89:0x015f, B:94:0x018a, B:35:0x0082, B:37:0x0086, B:39:0x0092, B:40:0x009a, B:45:0x00a6, B:47:0x00b9, B:49:0x00c3, B:52:0x00cf, B:53:0x00d6, B:55:0x00d8, B:57:0x00e1, B:28:0x0056, B:6:0x0007, B:8:0x0013, B:10:0x0017, B:97:0x018f, B:98:0x0198), top: B:102:0x0001, inners: #0 }] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized Drawable m607j(Context context, int i, boolean z) {
        boolean z2;
        Drawable drawable;
        LayerDrawable layerDrawable;
        Drawable findDrawableByLayerId;
        int m585b;
        int next;
        try {
            if (!this.f1975f) {
                this.f1975f = true;
                Drawable m608i = m608i(context, R.drawable.abc_vector_test);
                if (m608i != null) {
                    if (!(m608i instanceof C0677f) && !"android.graphics.drawable.VectorDrawable".equals(m608i.getClass().getName())) {
                        z2 = false;
                    }
                    z2 = true;
                }
                this.f1975f = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
            C0655b<String, InterfaceC0520d> c0655b = this.f1971b;
            Drawable drawable2 = null;
            PorterDuff.Mode mode = null;
            if (c0655b != null && !c0655b.isEmpty()) {
                C0667i<String> c0667i = this.f1972c;
                if (c0667i != null) {
                    String str = (String) c0667i.m393d(i, null);
                    if (!"appcompat_skip_skip".equals(str)) {
                        if (str != null && this.f1971b.getOrDefault(str, null) == null) {
                        }
                    }
                } else {
                    this.f1972c = new C0667i<>();
                }
                if (this.f1974e == null) {
                    this.f1974e = new TypedValue();
                }
                TypedValue typedValue = this.f1974e;
                Resources resources = context.getResources();
                resources.getValue(i, typedValue, true);
                long j = (typedValue.assetCookie << 32) | typedValue.data;
                drawable = m609h(context, j);
                if (drawable == null) {
                    CharSequence charSequence = typedValue.string;
                    if (charSequence != null && charSequence.toString().endsWith(".xml")) {
                        try {
                            XmlResourceParser xml = resources.getXml(i);
                            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                            while (true) {
                                next = xml.next();
                                if (next == 2 || next == 1) {
                                    break;
                                }
                            }
                            if (next == 2) {
                                String name = xml.getName();
                                this.f1972c.m396a(i, name);
                                InterfaceC0520d orDefault = this.f1971b.getOrDefault(name, null);
                                if (orDefault != null) {
                                    drawable = orDefault.mo601a(context, xml, asAttributeSet, context.getTheme());
                                }
                                if (drawable != null) {
                                    drawable.setChangingConfigurations(typedValue.changingConfigurations);
                                    m615b(context, j, drawable);
                                }
                            } else {
                                throw new XmlPullParserException("No start tag found");
                            }
                        } catch (Exception e) {
                            Log.e("AppCompatDrawableManag", "Exception while inflating drawable", e);
                        }
                    }
                    if (drawable == null) {
                        this.f1972c.m396a(i, "appcompat_skip_skip");
                    }
                }
                if (drawable == null) {
                    drawable = m612e(context, i);
                }
                if (drawable == null) {
                    Object obj = C0819a.f2712a;
                    drawable = context.getDrawable(i);
                }
                if (drawable != null) {
                    ColorStateList m605l = m605l(context, i);
                    if (m605l != null) {
                        if (C0494b0.m637a(drawable)) {
                            drawable = drawable.mutate();
                        }
                        Drawable m138f = C0863a.m138f(drawable);
                        m138f.setTintList(m605l);
                        if (i == R.drawable.abc_switch_thumb_material) {
                            mode = PorterDuff.Mode.MULTIPLY;
                        }
                        if (mode != null) {
                            m138f.setTintMode(mode);
                        }
                        drawable2 = m138f;
                    } else {
                        PorterDuff.Mode mode2 = f1961g;
                        if (i == R.drawable.abc_seekbar_track_material) {
                            layerDrawable = (LayerDrawable) drawable;
                            m604m(layerDrawable.findDrawableByLayerId(16908288), C0532m0.m585b(context, R.attr.colorControlNormal), mode2);
                            findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908303);
                            m585b = C0532m0.m585b(context, R.attr.colorControlNormal);
                        } else {
                            if (i != R.drawable.abc_ratingbar_material && i != R.drawable.abc_ratingbar_indicator_material && i != R.drawable.abc_ratingbar_small_material) {
                                if (!m602o(context, i, drawable) && z) {
                                }
                                drawable2 = drawable;
                            }
                            layerDrawable = (LayerDrawable) drawable;
                            m604m(layerDrawable.findDrawableByLayerId(16908288), C0532m0.m586a(context, R.attr.colorControlNormal), mode2);
                            findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908303);
                            m585b = C0532m0.m585b(context, R.attr.colorControlActivated);
                        }
                        m604m(findDrawableByLayerId, m585b, mode2);
                        m604m(layerDrawable.findDrawableByLayerId(16908301), C0532m0.m585b(context, R.attr.colorControlActivated), mode2);
                        drawable2 = drawable;
                    }
                    drawable = drawable2;
                }
                if (drawable != null) {
                    C0494b0.m636b(drawable);
                }
            }
            drawable = null;
            if (drawable == null) {
            }
            if (drawable == null) {
            }
            if (drawable != null) {
            }
            if (drawable != null) {
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawable;
    }

    /* renamed from: l */
    public final synchronized ColorStateList m605l(Context context, int i) {
        ColorStateList colorStateList;
        C0667i<ColorStateList> c0667i;
        try {
            WeakHashMap<Context, C0667i<ColorStateList>> weakHashMap = this.f1970a;
            colorStateList = null;
            if (weakHashMap != null && (c0667i = weakHashMap.get(context)) != null) {
                colorStateList = (ColorStateList) c0667i.m393d(i, null);
            }
            if (colorStateList == null) {
                if (i == R.drawable.abc_edit_text_material) {
                    colorStateList = C0315a.m995b(context, R.color.abc_tint_edittext);
                } else if (i == 2131165258) {
                    colorStateList = C0315a.m995b(context, R.color.abc_tint_switch_track);
                } else if (i == R.drawable.abc_switch_thumb_material) {
                    colorStateList = m611f(context);
                } else if (i == R.drawable.abc_btn_default_mtrl_shape) {
                    colorStateList = m613d(context, C0532m0.m585b(context, R.attr.colorButtonNormal));
                } else if (i == R.drawable.abc_btn_borderless_material) {
                    colorStateList = m613d(context, 0);
                } else if (i == R.drawable.abc_btn_colored_material) {
                    colorStateList = m613d(context, C0532m0.m585b(context, R.attr.colorAccent));
                } else {
                    if (i != 2131165255 && i != R.drawable.abc_spinner_textfield_background_material) {
                        if (m614c(f1965k, i)) {
                            colorStateList = C0532m0.m584c(context, R.attr.colorControlNormal);
                        } else if (m614c(f1968n, i)) {
                            colorStateList = C0315a.m995b(context, R.color.abc_tint_default);
                        } else if (m614c(f1969o, i)) {
                            colorStateList = C0315a.m995b(context, R.color.abc_tint_btn_checkable);
                        } else if (i == R.drawable.abc_seekbar_thumb_material) {
                            colorStateList = C0315a.m995b(context, R.color.abc_tint_seek_thumb);
                        }
                    }
                    colorStateList = C0315a.m995b(context, R.color.abc_tint_spinner);
                }
                if (colorStateList != null) {
                    if (this.f1970a == null) {
                        this.f1970a = new WeakHashMap<>();
                    }
                    C0667i<ColorStateList> c0667i2 = this.f1970a.get(context);
                    if (c0667i2 == null) {
                        c0667i2 = new C0667i<>();
                        this.f1970a.put(context, c0667i2);
                    }
                    c0667i2.m396a(i, colorStateList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return colorStateList;
    }
}
