package p004b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.AbstractC0393a;
import p046m1.C0736h;
/* renamed from: b.a */
/* loaded from: classes.dex */
public abstract class AbstractC0254a {

    /* renamed from: b.a$a */
    /* loaded from: classes.dex */
    public static class C0255a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f958a;

        public C0255a() {
            super(-2, -2);
            this.f958a = 8388627;
        }

        public C0255a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f958a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0736h.f2562e);
            this.f958a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public C0255a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f958a = 0;
        }

        public C0255a(C0255a c0255a) {
            super((ViewGroup.MarginLayoutParams) c0255a);
            this.f958a = 0;
            this.f958a = c0255a.f958a;
        }
    }

    /* renamed from: b.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0256b {
        /* renamed from: a */
        void m1048a();
    }

    @Deprecated
    /* renamed from: b.a$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0257c {
    }

    /* renamed from: a */
    public boolean mo1021a() {
        return false;
    }

    /* renamed from: b */
    public abstract boolean mo1011b();

    /* renamed from: c */
    public abstract void mo1010c(boolean z);

    /* renamed from: d */
    public abstract int mo1009d();

    /* renamed from: e */
    public abstract Context mo1008e();

    /* renamed from: f */
    public boolean mo1020f() {
        return false;
    }

    /* renamed from: g */
    public abstract void mo1007g();

    /* renamed from: h */
    public void mo1019h() {
    }

    /* renamed from: i */
    public abstract boolean mo1006i(int i, KeyEvent keyEvent);

    /* renamed from: j */
    public boolean mo1018j(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: k */
    public boolean mo1017k() {
        return false;
    }

    /* renamed from: l */
    public abstract void mo1005l(boolean z);

    /* renamed from: m */
    public abstract void mo1004m(boolean z);

    /* renamed from: n */
    public abstract void mo1003n(CharSequence charSequence);

    /* renamed from: o */
    public AbstractC0393a mo1002o(LayoutInflater$Factory2C0266j.C0270d c0270d) {
        return null;
    }
}
