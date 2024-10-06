package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import net.geschool.app.secure.R;
import p000a0.C0010i;
import p008c.C0315a;
import p046m1.C0736h;
/* renamed from: g.c */
/* loaded from: classes.dex */
public class C0495c extends AutoCompleteTextView {

    /* renamed from: d */
    public static final int[] f1881d = {16843126};

    /* renamed from: b */
    public final C0499d f1882b;

    /* renamed from: c */
    public final C0558w f1883c;

    public C0495c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0495c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        C0536o0.m582a(context);
        C0542r0 m569l = C0542r0.m569l(getContext(), attributeSet, f1881d, R.attr.autoCompleteTextViewStyle);
        if (m569l.m570k(0)) {
            setDropDownBackgroundDrawable(m569l.m576e(0));
        }
        m569l.m568m();
        C0499d c0499d = new C0499d(this);
        this.f1882b = c0499d;
        c0499d.m629d(attributeSet, R.attr.autoCompleteTextViewStyle);
        C0558w c0558w = new C0558w(this);
        this.f1883c = c0558w;
        c0558w.m550d(attributeSet, R.attr.autoCompleteTextViewStyle);
        c0558w.m552b();
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            c0499d.m632a();
        }
        C0558w c0558w = this.f1883c;
        if (c0558w != null) {
            c0558w.m552b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0736h.m310C(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0010i.m1375f(callback, this));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0315a.m994c(getContext(), i));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f1882b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0558w c0558w = this.f1883c;
        if (c0558w != null) {
            c0558w.m549e(context, i);
        }
    }
}
