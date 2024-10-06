package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import net.geschool.app.secure.R;
import p008c.C0315a;
/* renamed from: g.q */
/* loaded from: classes.dex */
public final class C0539q extends RadioButton {

    /* renamed from: b */
    public final C0514h f2036b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0539q(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        C0536o0.m582a(context);
        C0514h c0514h = new C0514h(this);
        this.f2036b = c0514h;
        c0514h.m617b(attributeSet, R.attr.radioButtonStyle);
        new C0558w(this).m550d(attributeSet, R.attr.radioButtonStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            c0514h.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportButtonTintList() {
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            return c0514h.f1956b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            return c0514h.f1957c;
        }
        return null;
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0315a.m994c(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            if (c0514h.f1960f) {
                c0514h.f1960f = false;
                return;
            }
            c0514h.f1960f = true;
            c0514h.m618a();
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            c0514h.f1956b = colorStateList;
            c0514h.f1958d = true;
            c0514h.m618a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0514h c0514h = this.f2036b;
        if (c0514h != null) {
            c0514h.f1957c = mode;
            c0514h.f1959e = true;
            c0514h.m618a();
        }
    }
}
