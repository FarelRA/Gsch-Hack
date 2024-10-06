package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import net.geschool.app.secure.R;
import p000a0.C0010i;
import p046m1.C0736h;
/* renamed from: g.j */
/* loaded from: classes.dex */
public class C0524j extends EditText {

    /* renamed from: b */
    public final C0499d f1982b;

    /* renamed from: c */
    public final C0558w f1983c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0524j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        C0536o0.m582a(context);
        C0499d c0499d = new C0499d(this);
        this.f1982b = c0499d;
        c0499d.m629d(attributeSet, R.attr.editTextStyle);
        C0558w c0558w = new C0558w(this);
        this.f1983c = c0558w;
        c0558w.m550d(attributeSet, R.attr.editTextStyle);
        c0558w.m552b();
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            c0499d.m632a();
        }
        C0558w c0558w = this.f1983c;
        if (c0558w != null) {
            c0558w.m552b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
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
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0010i.m1375f(callback, this));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f1982b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0558w c0558w = this.f1983c;
        if (c0558w != null) {
            c0558w.m549e(context, i);
        }
    }
}
