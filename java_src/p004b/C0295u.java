package p004b;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0122a;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p004b.AbstractC0254a;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.AbstractC0393a;
import p016e.C0400f;
import p016e.C0403g;
import p024g.InterfaceC0492a0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0959p;
import p076y.C0960q;
import p076y.InterfaceC0962s;
/* renamed from: b.u */
/* loaded from: classes.dex */
public final class C0295u extends AbstractC0254a implements ActionBarOverlayLayout.InterfaceC0088d {

    /* renamed from: a */
    public Context f1081a;

    /* renamed from: b */
    public Context f1082b;

    /* renamed from: c */
    public ActionBarOverlayLayout f1083c;

    /* renamed from: d */
    public ActionBarContainer f1084d;

    /* renamed from: e */
    public InterfaceC0492a0 f1085e;

    /* renamed from: f */
    public ActionBarContextView f1086f;

    /* renamed from: g */
    public final View f1087g;

    /* renamed from: h */
    public boolean f1088h;

    /* renamed from: i */
    public C0299d f1089i;

    /* renamed from: j */
    public C0299d f1090j;

    /* renamed from: k */
    public AbstractC0393a.InterfaceC0394a f1091k;

    /* renamed from: l */
    public boolean f1092l;

    /* renamed from: m */
    public final ArrayList<AbstractC0254a.InterfaceC0256b> f1093m;

    /* renamed from: n */
    public boolean f1094n;

    /* renamed from: o */
    public int f1095o;

    /* renamed from: p */
    public boolean f1096p;

    /* renamed from: q */
    public boolean f1097q;

    /* renamed from: r */
    public boolean f1098r;

    /* renamed from: s */
    public boolean f1099s;

    /* renamed from: t */
    public C0403g f1100t;

    /* renamed from: u */
    public boolean f1101u;

    /* renamed from: v */
    public boolean f1102v;

    /* renamed from: w */
    public final C0296a f1103w;

    /* renamed from: x */
    public final C0297b f1104x;

    /* renamed from: y */
    public final C0298c f1105y;

    /* renamed from: z */
    public static final AccelerateInterpolator f1080z = new AccelerateInterpolator();

    /* renamed from: A */
    public static final DecelerateInterpolator f1079A = new DecelerateInterpolator();

    /* renamed from: b.u$a */
    /* loaded from: classes.dex */
    public class C0296a extends C0736h {
        public C0296a() {
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            View view;
            C0295u c0295u = C0295u.this;
            if (c0295u.f1096p && (view = c0295u.f1087g) != null) {
                view.setTranslationY(0.0f);
                c0295u.f1084d.setTranslationY(0.0f);
            }
            c0295u.f1084d.setVisibility(8);
            c0295u.f1084d.setTransitioning(false);
            c0295u.f1100t = null;
            AbstractC0393a.InterfaceC0394a interfaceC0394a = c0295u.f1091k;
            if (interfaceC0394a != null) {
                interfaceC0394a.mo836b(c0295u.f1090j);
                c0295u.f1090j = null;
                c0295u.f1091k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = c0295u.f1083c;
            if (actionBarOverlayLayout != null) {
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                actionBarOverlayLayout.requestApplyInsets();
            }
        }
    }

    /* renamed from: b.u$b */
    /* loaded from: classes.dex */
    public class C0297b extends C0736h {
        public C0297b() {
        }

        @Override // p076y.InterfaceC0961r
        /* renamed from: b */
        public final void mo19b() {
            C0295u c0295u = C0295u.this;
            c0295u.f1100t = null;
            c0295u.f1084d.requestLayout();
        }
    }

    /* renamed from: b.u$c */
    /* loaded from: classes.dex */
    public class C0298c implements InterfaceC0962s {
        public C0298c() {
        }
    }

    /* renamed from: b.u$d */
    /* loaded from: classes.dex */
    public class C0299d extends AbstractC0393a implements C0068f.InterfaceC0069a {

        /* renamed from: d */
        public final Context f1109d;

        /* renamed from: e */
        public final C0068f f1110e;

        /* renamed from: f */
        public AbstractC0393a.InterfaceC0394a f1111f;

        /* renamed from: g */
        public WeakReference<View> f1112g;

        public C0299d(Context context, LayoutInflater$Factory2C0266j.C0270d c0270d) {
            this.f1109d = context;
            this.f1111f = c0270d;
            C0068f c0068f = new C0068f(context);
            c0068f.f233l = 1;
            this.f1110e = c0068f;
            c0068f.f226e = this;
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: a */
        public final boolean mo853a(C0068f c0068f, MenuItem menuItem) {
            AbstractC0393a.InterfaceC0394a interfaceC0394a = this.f1111f;
            if (interfaceC0394a != null) {
                return interfaceC0394a.mo834d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
        /* renamed from: b */
        public final void mo852b(C0068f c0068f) {
            if (this.f1111f == null) {
                return;
            }
            mo845i();
            C0122a c0122a = C0295u.this.f1086f.f1872e;
            if (c0122a != null) {
                c0122a.m1274l();
            }
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: c */
        public final void mo851c() {
            C0295u c0295u = C0295u.this;
            if (c0295u.f1089i != this) {
                return;
            }
            if (!(!c0295u.f1097q)) {
                c0295u.f1090j = this;
                c0295u.f1091k = this.f1111f;
            } else {
                this.f1111f.mo836b(this);
            }
            this.f1111f = null;
            c0295u.m1001p(false);
            ActionBarContextView actionBarContextView = c0295u.f1086f;
            if (actionBarContextView.f328l == null) {
                actionBarContextView.removeAllViews();
                actionBarContextView.f329m = null;
                actionBarContextView.f1871d = null;
            }
            c0295u.f1085e.mo646n().sendAccessibilityEvent(32);
            c0295u.f1083c.setHideOnContentScrollEnabled(c0295u.f1102v);
            c0295u.f1089i = null;
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: d */
        public final View mo850d() {
            WeakReference<View> weakReference = this.f1112g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: e */
        public final C0068f mo849e() {
            return this.f1110e;
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: f */
        public final MenuInflater mo848f() {
            return new C0400f(this.f1109d);
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: g */
        public final CharSequence mo847g() {
            return C0295u.this.f1086f.getSubtitle();
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: h */
        public final CharSequence mo846h() {
            return C0295u.this.f1086f.getTitle();
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: i */
        public final void mo845i() {
            if (C0295u.this.f1089i != this) {
                return;
            }
            C0068f c0068f = this.f1110e;
            c0068f.m1339w();
            try {
                this.f1111f.mo835c(this, c0068f);
            } finally {
                c0068f.m1340v();
            }
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: j */
        public final boolean mo844j() {
            return C0295u.this.f1086f.f335s;
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: k */
        public final void mo843k(View view) {
            C0295u.this.f1086f.setCustomView(view);
            this.f1112g = new WeakReference<>(view);
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: l */
        public final void mo842l(int i) {
            mo841m(C0295u.this.f1081a.getResources().getString(i));
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: m */
        public final void mo841m(CharSequence charSequence) {
            C0295u.this.f1086f.setSubtitle(charSequence);
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: n */
        public final void mo840n(int i) {
            mo839o(C0295u.this.f1081a.getResources().getString(i));
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: o */
        public final void mo839o(CharSequence charSequence) {
            C0295u.this.f1086f.setTitle(charSequence);
        }

        @Override // p016e.AbstractC0393a
        /* renamed from: p */
        public final void mo838p(boolean z) {
            this.f1456c = z;
            C0295u.this.f1086f.setTitleOptional(z);
        }
    }

    public C0295u(Activity activity, boolean z) {
        new ArrayList();
        this.f1093m = new ArrayList<>();
        this.f1095o = 0;
        this.f1096p = true;
        this.f1099s = true;
        this.f1103w = new C0296a();
        this.f1104x = new C0297b();
        this.f1105y = new C0298c();
        View decorView = activity.getWindow().getDecorView();
        m1000q(decorView);
        if (z) {
            return;
        }
        this.f1087g = decorView.findViewById(16908290);
    }

    public C0295u(Dialog dialog) {
        new ArrayList();
        this.f1093m = new ArrayList<>();
        this.f1095o = 0;
        this.f1096p = true;
        this.f1099s = true;
        this.f1103w = new C0296a();
        this.f1104x = new C0297b();
        this.f1105y = new C0298c();
        m1000q(dialog.getWindow().getDecorView());
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: b */
    public final boolean mo1011b() {
        InterfaceC0492a0 interfaceC0492a0 = this.f1085e;
        if (interfaceC0492a0 == null || !interfaceC0492a0.mo641s()) {
            return false;
        }
        this.f1085e.collapseActionView();
        return true;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: c */
    public final void mo1010c(boolean z) {
        if (z == this.f1092l) {
            return;
        }
        this.f1092l = z;
        ArrayList<AbstractC0254a.InterfaceC0256b> arrayList = this.f1093m;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m1048a();
        }
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: d */
    public final int mo1009d() {
        return this.f1085e.mo650j();
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: e */
    public final Context mo1008e() {
        if (this.f1082b == null) {
            TypedValue typedValue = new TypedValue();
            this.f1081a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f1082b = new ContextThemeWrapper(this.f1081a, i);
            } else {
                this.f1082b = this.f1081a;
            }
        }
        return this.f1082b;
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: g */
    public final void mo1007g() {
        m999r(this.f1081a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: i */
    public final boolean mo1006i(int i, KeyEvent keyEvent) {
        C0068f c0068f;
        int i2;
        C0299d c0299d = this.f1089i;
        if (c0299d == null || (c0068f = c0299d.f1110e) == null) {
            return false;
        }
        if (keyEvent != null) {
            i2 = keyEvent.getDeviceId();
        } else {
            i2 = -1;
        }
        boolean z = true;
        if (KeyCharacterMap.load(i2).getKeyboardType() == 1) {
            z = false;
        }
        c0068f.setQwertyMode(z);
        return c0068f.performShortcut(i, keyEvent, 0);
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: l */
    public final void mo1005l(boolean z) {
        int i;
        if (!this.f1088h) {
            if (z) {
                i = 4;
            } else {
                i = 0;
            }
            int mo650j = this.f1085e.mo650j();
            this.f1088h = true;
            this.f1085e.mo638v((i & 4) | (mo650j & (-5)));
        }
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: m */
    public final void mo1004m(boolean z) {
        C0403g c0403g;
        this.f1101u = z;
        if (z || (c0403g = this.f1100t) == null) {
            return;
        }
        c0403g.m828a();
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: n */
    public final void mo1003n(CharSequence charSequence) {
        this.f1085e.setWindowTitle(charSequence);
    }

    @Override // p004b.AbstractC0254a
    /* renamed from: o */
    public final AbstractC0393a mo1002o(LayoutInflater$Factory2C0266j.C0270d c0270d) {
        C0299d c0299d = this.f1089i;
        if (c0299d != null) {
            c0299d.mo851c();
        }
        this.f1083c.setHideOnContentScrollEnabled(false);
        ActionBarContextView actionBarContextView = this.f1086f;
        actionBarContextView.removeAllViews();
        actionBarContextView.f329m = null;
        actionBarContextView.f1871d = null;
        C0299d c0299d2 = new C0299d(this.f1086f.getContext(), c0270d);
        C0068f c0068f = c0299d2.f1110e;
        c0068f.m1339w();
        try {
            if (!c0299d2.f1111f.mo837a(c0299d2, c0068f)) {
                return null;
            }
            this.f1089i = c0299d2;
            c0299d2.mo845i();
            this.f1086f.m1321f(c0299d2);
            m1001p(true);
            this.f1086f.sendAccessibilityEvent(32);
            return c0299d2;
        } finally {
            c0068f.m1340v();
        }
    }

    /* renamed from: p */
    public final void m1001p(boolean z) {
        C0960q mo643q;
        C0960q m660e;
        long j;
        if (z) {
            if (!this.f1098r) {
                this.f1098r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1083c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                m998s(false);
            }
        } else if (this.f1098r) {
            this.f1098r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1083c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            m998s(false);
        }
        ActionBarContainer actionBarContainer = this.f1084d;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (actionBarContainer.isLaidOut()) {
            if (z) {
                m660e = this.f1085e.mo643q(4, 100L);
                mo643q = this.f1086f.m660e(0, 200L);
            } else {
                mo643q = this.f1085e.mo643q(0, 200L);
                m660e = this.f1086f.m660e(8, 100L);
            }
            C0403g c0403g = new C0403g();
            ArrayList<C0960q> arrayList = c0403g.f1513a;
            arrayList.add(m660e);
            View view = m660e.f2946a.get();
            if (view != null) {
                j = view.animate().getDuration();
            } else {
                j = 0;
            }
            View view2 = mo643q.f2946a.get();
            if (view2 != null) {
                view2.animate().setStartDelay(j);
            }
            arrayList.add(mo643q);
            c0403g.m827b();
        } else if (z) {
            this.f1085e.mo649k(4);
            this.f1086f.setVisibility(0);
        } else {
            this.f1085e.mo649k(0);
            this.f1086f.setVisibility(8);
        }
    }

    /* renamed from: q */
    public final void m1000q(View view) {
        String str;
        InterfaceC0492a0 wrapper;
        boolean z;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        this.f1083c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        View findViewById = view.findViewById(R.id.action_bar);
        if (findViewById instanceof InterfaceC0492a0) {
            wrapper = (InterfaceC0492a0) findViewById;
        } else if (findViewById instanceof Toolbar) {
            wrapper = ((Toolbar) findViewById).getWrapper();
        } else {
            if (findViewById != null) {
                str = findViewById.getClass().getSimpleName();
            } else {
                str = "null";
            }
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(str));
        }
        this.f1085e = wrapper;
        this.f1086f = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        this.f1084d = actionBarContainer;
        InterfaceC0492a0 interfaceC0492a0 = this.f1085e;
        if (interfaceC0492a0 != null && this.f1086f != null && actionBarContainer != null) {
            this.f1081a = interfaceC0492a0.mo645o();
            if ((this.f1085e.mo650j() & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f1088h = true;
            }
            Context context = this.f1081a;
            if (context.getApplicationInfo().targetSdkVersion < 14) {
            }
            this.f1085e.mo647m();
            m999r(context.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
            TypedArray obtainStyledAttributes = this.f1081a.obtainStyledAttributes(null, C0736h.f2560d, R.attr.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(14, false)) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1083c;
                if (actionBarOverlayLayout2.f348i) {
                    this.f1102v = true;
                    actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
                } else {
                    throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                }
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
            if (dimensionPixelSize != 0) {
                ActionBarContainer actionBarContainer2 = this.f1084d;
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                actionBarContainer2.setElevation(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(C0295u.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
    }

    /* renamed from: r */
    public final void m999r(boolean z) {
        this.f1094n = z;
        if (!z) {
            this.f1085e.mo651i();
            this.f1084d.setTabContainer(null);
        } else {
            this.f1084d.setTabContainer(null);
            this.f1085e.mo651i();
        }
        this.f1085e.mo644p();
        InterfaceC0492a0 interfaceC0492a0 = this.f1085e;
        boolean z2 = this.f1094n;
        interfaceC0492a0.mo639u(false);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1083c;
        boolean z3 = this.f1094n;
        actionBarOverlayLayout.setHasNonEmbeddedTabs(false);
    }

    /* renamed from: s */
    public final void m998s(boolean z) {
        boolean z2;
        int[] iArr;
        int[] iArr2;
        boolean z3 = this.f1097q;
        if (this.f1098r || !z3) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0959p c0959p = null;
        View view = this.f1087g;
        C0298c c0298c = this.f1105y;
        if (z2) {
            if (!this.f1099s) {
                this.f1099s = true;
                C0403g c0403g = this.f1100t;
                if (c0403g != null) {
                    c0403g.m828a();
                }
                this.f1084d.setVisibility(0);
                int i = this.f1095o;
                C0297b c0297b = this.f1104x;
                if (i == 0 && (this.f1101u || z)) {
                    this.f1084d.setTranslationY(0.0f);
                    float f = -this.f1084d.getHeight();
                    if (z) {
                        this.f1084d.getLocationInWindow(new int[]{0, 0});
                        f -= iArr2[1];
                    }
                    this.f1084d.setTranslationY(f);
                    C0403g c0403g2 = new C0403g();
                    C0960q m35a = C0954m.m35a(this.f1084d);
                    m35a.m20e(0.0f);
                    View view2 = m35a.f2946a.get();
                    if (view2 != null) {
                        if (c0298c != null) {
                            c0959p = new C0959p(c0298c, view2);
                        }
                        view2.animate().setUpdateListener(c0959p);
                    }
                    boolean z4 = c0403g2.f1517e;
                    ArrayList<C0960q> arrayList = c0403g2.f1513a;
                    if (!z4) {
                        arrayList.add(m35a);
                    }
                    if (this.f1096p && view != null) {
                        view.setTranslationY(f);
                        C0960q m35a2 = C0954m.m35a(view);
                        m35a2.m20e(0.0f);
                        if (!c0403g2.f1517e) {
                            arrayList.add(m35a2);
                        }
                    }
                    DecelerateInterpolator decelerateInterpolator = f1079A;
                    boolean z5 = c0403g2.f1517e;
                    if (!z5) {
                        c0403g2.f1515c = decelerateInterpolator;
                    }
                    if (!z5) {
                        c0403g2.f1514b = 250L;
                    }
                    if (!z5) {
                        c0403g2.f1516d = c0297b;
                    }
                    this.f1100t = c0403g2;
                    c0403g2.m827b();
                } else {
                    this.f1084d.setAlpha(1.0f);
                    this.f1084d.setTranslationY(0.0f);
                    if (this.f1096p && view != null) {
                        view.setTranslationY(0.0f);
                    }
                    c0297b.mo19b();
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1083c;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                    actionBarOverlayLayout.requestApplyInsets();
                }
            }
        } else if (this.f1099s) {
            this.f1099s = false;
            C0403g c0403g3 = this.f1100t;
            if (c0403g3 != null) {
                c0403g3.m828a();
            }
            int i2 = this.f1095o;
            C0296a c0296a = this.f1103w;
            if (i2 == 0 && (this.f1101u || z)) {
                this.f1084d.setAlpha(1.0f);
                this.f1084d.setTransitioning(true);
                C0403g c0403g4 = new C0403g();
                float f2 = -this.f1084d.getHeight();
                if (z) {
                    this.f1084d.getLocationInWindow(new int[]{0, 0});
                    f2 -= iArr[1];
                }
                C0960q m35a3 = C0954m.m35a(this.f1084d);
                m35a3.m20e(f2);
                View view3 = m35a3.f2946a.get();
                if (view3 != null) {
                    if (c0298c != null) {
                        c0959p = new C0959p(c0298c, view3);
                    }
                    view3.animate().setUpdateListener(c0959p);
                }
                boolean z6 = c0403g4.f1517e;
                ArrayList<C0960q> arrayList2 = c0403g4.f1513a;
                if (!z6) {
                    arrayList2.add(m35a3);
                }
                if (this.f1096p && view != null) {
                    C0960q m35a4 = C0954m.m35a(view);
                    m35a4.m20e(f2);
                    if (!c0403g4.f1517e) {
                        arrayList2.add(m35a4);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = f1080z;
                boolean z7 = c0403g4.f1517e;
                if (!z7) {
                    c0403g4.f1515c = accelerateInterpolator;
                }
                if (!z7) {
                    c0403g4.f1514b = 250L;
                }
                if (!z7) {
                    c0403g4.f1516d = c0296a;
                }
                this.f1100t = c0403g4;
                c0403g4.m827b();
                return;
            }
            c0296a.mo19b();
        }
    }
}
