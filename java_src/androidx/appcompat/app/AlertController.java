package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
import net.geschool.app.secure.R;
import p004b.DialogC0283p;
import p046m1.C0736h;
/* loaded from: classes.dex */
public final class AlertController {

    /* renamed from: a */
    public final Context f92a;

    /* renamed from: b */
    public final DialogC0283p f93b;

    /* renamed from: c */
    public final Window f94c;

    /* renamed from: d */
    public CharSequence f95d;

    /* renamed from: e */
    public RecycleListView f96e;

    /* renamed from: f */
    public Button f97f;

    /* renamed from: g */
    public Button f98g;

    /* renamed from: h */
    public Button f99h;

    /* renamed from: i */
    public NestedScrollView f100i;

    /* renamed from: k */
    public Drawable f102k;

    /* renamed from: l */
    public ImageView f103l;

    /* renamed from: m */
    public TextView f104m;

    /* renamed from: n */
    public TextView f105n;

    /* renamed from: o */
    public View f106o;

    /* renamed from: p */
    public ListAdapter f107p;

    /* renamed from: r */
    public final int f109r;

    /* renamed from: s */
    public final int f110s;

    /* renamed from: t */
    public final int f111t;

    /* renamed from: u */
    public final boolean f112u;

    /* renamed from: v */
    public final HandlerC0052c f113v;

    /* renamed from: j */
    public int f101j = 0;

    /* renamed from: q */
    public int f108q = -1;

    /* renamed from: w */
    public final View$OnClickListenerC0050a f114w = new View$OnClickListenerC0050a();

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: b */
        public final int f115b;

        /* renamed from: c */
        public final int f116c;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2586z);
            this.f116c = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
            this.f115b = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0050a implements View.OnClickListener {
        public View$OnClickListenerC0050a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AlertController alertController = AlertController.this;
            Button button = alertController.f97f;
            Button button2 = alertController.f98g;
            Button button3 = alertController.f99h;
            alertController.f113v.obtainMessage(1, alertController.f93b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes.dex */
    public static class C0051b {

        /* renamed from: a */
        public final LayoutInflater f118a;

        /* renamed from: b */
        public Drawable f119b;

        /* renamed from: c */
        public CharSequence f120c;

        /* renamed from: d */
        public View f121d;

        /* renamed from: e */
        public DialogInterface.OnKeyListener f122e;

        /* renamed from: f */
        public ListAdapter f123f;

        /* renamed from: g */
        public DialogInterface.OnClickListener f124g;

        public C0051b(ContextThemeWrapper contextThemeWrapper) {
            this.f118a = (LayoutInflater) contextThemeWrapper.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes.dex */
    public static final class HandlerC0052c extends Handler {

        /* renamed from: a */
        public final WeakReference<DialogInterface> f125a;

        public HandlerC0052c(DialogInterface dialogInterface) {
            this.f125a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f125a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes.dex */
    public static class C0053d extends ArrayAdapter<CharSequence> {
        public C0053d(Context context, int i) {
            super(context, i, 16908308, (Object[]) null);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, DialogC0283p dialogC0283p, Window window) {
        this.f92a = context;
        this.f93b = dialogC0283p;
        this.f94c = window;
        this.f113v = new HandlerC0052c(dialogC0283p);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0736h.f2568h, R.attr.alertDialogStyle, 0);
        this.f109r = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.f110s = obtainStyledAttributes.getResourceId(4, 0);
        obtainStyledAttributes.getResourceId(5, 0);
        obtainStyledAttributes.getResourceId(7, 0);
        this.f111t = obtainStyledAttributes.getResourceId(3, 0);
        this.f112u = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        dialogC0283p.m1024a().mo1042g(1);
    }

    /* renamed from: a */
    public static void m1363a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: b */
    public static ViewGroup m1362b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
