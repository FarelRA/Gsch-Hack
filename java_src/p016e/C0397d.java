package p016e;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0068f;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0122a;
import java.lang.ref.WeakReference;
import p016e.AbstractC0393a;
/* renamed from: e.d */
/* loaded from: classes.dex */
public final class C0397d extends AbstractC0393a implements C0068f.InterfaceC0069a {

    /* renamed from: d */
    public final Context f1461d;

    /* renamed from: e */
    public final ActionBarContextView f1462e;

    /* renamed from: f */
    public final AbstractC0393a.InterfaceC0394a f1463f;

    /* renamed from: g */
    public WeakReference<View> f1464g;

    /* renamed from: h */
    public boolean f1465h;

    /* renamed from: i */
    public final C0068f f1466i;

    public C0397d(Context context, ActionBarContextView actionBarContextView, AbstractC0393a.InterfaceC0394a interfaceC0394a) {
        this.f1461d = context;
        this.f1462e = actionBarContextView;
        this.f1463f = interfaceC0394a;
        C0068f c0068f = new C0068f(actionBarContextView.getContext());
        c0068f.f233l = 1;
        this.f1466i = c0068f;
        c0068f.f226e = this;
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
    /* renamed from: a */
    public final boolean mo853a(C0068f c0068f, MenuItem menuItem) {
        return this.f1463f.mo834d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0068f.InterfaceC0069a
    /* renamed from: b */
    public final void mo852b(C0068f c0068f) {
        mo845i();
        C0122a c0122a = this.f1462e.f1872e;
        if (c0122a != null) {
            c0122a.m1274l();
        }
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: c */
    public final void mo851c() {
        if (this.f1465h) {
            return;
        }
        this.f1465h = true;
        this.f1462e.sendAccessibilityEvent(32);
        this.f1463f.mo836b(this);
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: d */
    public final View mo850d() {
        WeakReference<View> weakReference = this.f1464g;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: e */
    public final C0068f mo849e() {
        return this.f1466i;
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: f */
    public final MenuInflater mo848f() {
        return new C0400f(this.f1462e.getContext());
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: g */
    public final CharSequence mo847g() {
        return this.f1462e.getSubtitle();
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: h */
    public final CharSequence mo846h() {
        return this.f1462e.getTitle();
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: i */
    public final void mo845i() {
        this.f1463f.mo835c(this, this.f1466i);
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: j */
    public final boolean mo844j() {
        return this.f1462e.f335s;
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: k */
    public final void mo843k(View view) {
        this.f1462e.setCustomView(view);
        this.f1464g = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: l */
    public final void mo842l(int i) {
        mo841m(this.f1461d.getString(i));
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: m */
    public final void mo841m(CharSequence charSequence) {
        this.f1462e.setSubtitle(charSequence);
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: n */
    public final void mo840n(int i) {
        mo839o(this.f1461d.getString(i));
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: o */
    public final void mo839o(CharSequence charSequence) {
        this.f1462e.setTitle(charSequence);
    }

    @Override // p016e.AbstractC0393a
    /* renamed from: p */
    public final void mo838p(boolean z) {
        this.f1456c = z;
        this.f1462e.setTitleOptional(z);
    }
}
