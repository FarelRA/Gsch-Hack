package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.InterfaceC0076j;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p020f.AbstractC0468f;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes.dex */
public class C0074i {

    /* renamed from: a */
    public final Context f279a;

    /* renamed from: b */
    public final C0068f f280b;

    /* renamed from: c */
    public final boolean f281c;

    /* renamed from: d */
    public final int f282d;

    /* renamed from: e */
    public final int f283e;

    /* renamed from: f */
    public View f284f;

    /* renamed from: g */
    public int f285g;

    /* renamed from: h */
    public boolean f286h;

    /* renamed from: i */
    public InterfaceC0076j.InterfaceC0077a f287i;

    /* renamed from: j */
    public AbstractC0468f f288j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f289k;

    /* renamed from: l */
    public final C0075a f290l;

    /* renamed from: androidx.appcompat.view.menu.i$a */
    /* loaded from: classes.dex */
    public class C0075a implements PopupWindow.OnDismissListener {
        public C0075a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            C0074i.this.mo1271c();
        }
    }

    public C0074i(int i, int i2, Context context, View view, C0068f c0068f, boolean z) {
        this.f285g = 8388611;
        this.f290l = new C0075a();
        this.f279a = context;
        this.f280b = c0068f;
        this.f284f = view;
        this.f281c = z;
        this.f282d = i;
        this.f283e = i2;
    }

    public C0074i(Context context, C0068f c0068f, View view, boolean z) {
        this(R.attr.actionOverflowMenuStyle, 0, context, view, c0068f, z);
    }

    /* renamed from: a */
    public final AbstractC0468f m1334a() {
        boolean z;
        AbstractC0468f view$OnKeyListenerC0080l;
        if (this.f288j == null) {
            Context context = this.f279a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                view$OnKeyListenerC0080l = new View$OnKeyListenerC0059b(this.f279a, this.f284f, this.f282d, this.f283e, this.f281c);
            } else {
                Context context2 = this.f279a;
                C0068f c0068f = this.f280b;
                view$OnKeyListenerC0080l = new View$OnKeyListenerC0080l(this.f282d, this.f283e, context2, this.f284f, c0068f, this.f281c);
            }
            view$OnKeyListenerC0080l.mo691l(this.f280b);
            view$OnKeyListenerC0080l.mo685r(this.f290l);
            view$OnKeyListenerC0080l.mo689n(this.f284f);
            view$OnKeyListenerC0080l.mo1331i(this.f287i);
            view$OnKeyListenerC0080l.mo688o(this.f286h);
            view$OnKeyListenerC0080l.mo687p(this.f285g);
            this.f288j = view$OnKeyListenerC0080l;
        }
        return this.f288j;
    }

    /* renamed from: b */
    public final boolean m1333b() {
        AbstractC0468f abstractC0468f = this.f288j;
        return abstractC0468f != null && abstractC0468f.mo620g();
    }

    /* renamed from: c */
    public void mo1271c() {
        this.f288j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f289k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: d */
    public final void m1332d(int i, int i2, boolean z, boolean z2) {
        AbstractC0468f m1334a = m1334a();
        m1334a.mo684s(z2);
        if (z) {
            int i3 = this.f285g;
            View view = this.f284f;
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if ((Gravity.getAbsoluteGravity(i3, view.getLayoutDirection()) & 7) == 5) {
                i -= this.f284f.getWidth();
            }
            m1334a.mo686q(i);
            m1334a.mo683t(i2);
            int i4 = (int) ((this.f279a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m1334a.f1805b = new Rect(i - i4, i2 - i4, i + i4, i2 + i4);
        }
        m1334a.mo560c();
    }
}
