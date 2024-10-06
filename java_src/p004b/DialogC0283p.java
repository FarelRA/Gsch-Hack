package p004b;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import net.geschool.app.secure.R;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.AbstractC0393a;
import p076y.C0943c;
/* renamed from: b.p */
/* loaded from: classes.dex */
public class DialogC0283p extends Dialog implements InterfaceC0264h {

    /* renamed from: b */
    public LayoutInflater$Factory2C0266j f1045b;

    /* renamed from: c */
    public final C0284a f1046c;

    /* renamed from: b.p$a */
    /* loaded from: classes.dex */
    public class C0284a implements C0943c.InterfaceC0944a {

        /* renamed from: b */
        public final /* synthetic */ DialogC0283p f1047b;

        public C0284a(DialogInterfaceC0262f dialogInterfaceC0262f) {
            this.f1047b = dialogInterfaceC0262f;
        }

        @Override // p076y.C0943c.InterfaceC0944a
        public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return this.f1047b.m1023b(keyEvent);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DialogC0283p(Context context, int i) {
        super(context, i);
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i = typedValue.resourceId;
        }
        this.f1046c = new C0284a((DialogInterfaceC0262f) this);
        m1024a().mo1043f(null);
        m1024a().mo1046c();
    }

    /* renamed from: a */
    public final AbstractC0265i m1024a() {
        if (this.f1045b == null) {
            this.f1045b = new LayoutInflater$Factory2C0266j(getContext(), getWindow(), this);
        }
        return this.f1045b;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) m1024a();
        layoutInflater$Factory2C0266j.m1032q();
        ((ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290)).addView(view, layoutParams);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }

    /* renamed from: b */
    final boolean m1023b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0943c.m56b(this.f1046c, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final <T extends View> T findViewById(int i) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) m1024a();
        layoutInflater$Factory2C0266j.m1032q();
        return (T) layoutInflater$Factory2C0266j.f986c.findViewById(i);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        m1024a().mo1044e();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m1024a().mo1045d();
        super.onCreate(bundle);
        m1024a().mo1043f(bundle);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        C0282o c0282o;
        super.onStop();
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) m1024a();
        layoutInflater$Factory2C0266j.m1029t();
        AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
        if (abstractC0254a != null) {
            abstractC0254a.mo1004m(false);
        }
        LayoutInflater$Factory2C0266j.C0273f c0273f = layoutInflater$Factory2C0266j.f977J;
        if (c0273f != null && (c0282o = c0273f.f1018c) != null) {
            LayoutInflater$Factory2C0266j.this.f985b.unregisterReceiver(c0282o);
            c0273f.f1018c = null;
        }
    }

    @Override // p004b.InterfaceC0264h
    public final void onSupportActionModeFinished(AbstractC0393a abstractC0393a) {
    }

    @Override // p004b.InterfaceC0264h
    public final void onSupportActionModeStarted(AbstractC0393a abstractC0393a) {
    }

    @Override // p004b.InterfaceC0264h
    public final AbstractC0393a onWindowStartingSupportActionMode(AbstractC0393a.InterfaceC0394a interfaceC0394a) {
        return null;
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        m1024a().mo1041h(i);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) m1024a();
        layoutInflater$Factory2C0266j.m1032q();
        ViewGroup viewGroup = (ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        m1024a().mo1040i(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m1024a().mo1040i(charSequence);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) m1024a();
        layoutInflater$Factory2C0266j.m1032q();
        ViewGroup viewGroup = (ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }
}
