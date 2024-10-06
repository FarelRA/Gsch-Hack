package p024g;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import p000a0.C0010i;
import p008c.C0315a;
import p046m1.C0736h;
/* renamed from: g.g */
/* loaded from: classes.dex */
public final class C0507g extends CheckedTextView {

    /* renamed from: c */
    public static final int[] f1920c = {16843016};

    /* renamed from: b */
    public final C0558w f1921b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0507g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16843720);
        C0536o0.m582a(context);
        C0558w c0558w = new C0558w(this);
        this.f1921b = c0558w;
        c0558w.m550d(attributeSet, 16843720);
        c0558w.m552b();
        C0542r0 m569l = C0542r0.m569l(getContext(), attributeSet, f1920c, 16843720);
        setCheckMarkDrawable(m569l.m576e(0));
        m569l.m568m();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0558w c0558w = this.f1921b;
        if (c0558w != null) {
            c0558w.m552b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0736h.m310C(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0315a.m994c(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0010i.m1375f(callback, this));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0558w c0558w = this.f1921b;
        if (c0558w != null) {
            c0558w.m549e(context, i);
        }
    }
}
