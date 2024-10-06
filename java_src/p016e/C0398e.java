package p016e;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0068f;
import java.util.ArrayList;
import p016e.AbstractC0393a;
import p020f.C0466e;
import p020f.MenuC0469g;
import p039k.C0666h;
import p063t.InterfaceMenuItemC0873b;
/* renamed from: e.e */
/* loaded from: classes.dex */
public final class C0398e extends ActionMode {

    /* renamed from: a */
    public final Context f1467a;

    /* renamed from: b */
    public final AbstractC0393a f1468b;

    /* renamed from: e.e$a */
    /* loaded from: classes.dex */
    public static class C0399a implements AbstractC0393a.InterfaceC0394a {

        /* renamed from: a */
        public final ActionMode.Callback f1469a;

        /* renamed from: b */
        public final Context f1470b;

        /* renamed from: c */
        public final ArrayList<C0398e> f1471c = new ArrayList<>();

        /* renamed from: d */
        public final C0666h<Menu, Menu> f1472d = new C0666h<>();

        public C0399a(Context context, ActionMode.Callback callback) {
            this.f1470b = context;
            this.f1469a = callback;
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: a */
        public final boolean mo837a(AbstractC0393a abstractC0393a, C0068f c0068f) {
            C0398e m833e = m833e(abstractC0393a);
            C0666h<Menu, Menu> c0666h = this.f1472d;
            Menu orDefault = c0666h.getOrDefault(c0068f, null);
            if (orDefault == null) {
                orDefault = new MenuC0469g(this.f1470b, c0068f);
                c0666h.put(c0068f, orDefault);
            }
            return this.f1469a.onCreateActionMode(m833e, orDefault);
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: b */
        public final void mo836b(AbstractC0393a abstractC0393a) {
            this.f1469a.onDestroyActionMode(m833e(abstractC0393a));
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: c */
        public final boolean mo835c(AbstractC0393a abstractC0393a, C0068f c0068f) {
            C0398e m833e = m833e(abstractC0393a);
            C0666h<Menu, Menu> c0666h = this.f1472d;
            Menu orDefault = c0666h.getOrDefault(c0068f, null);
            if (orDefault == null) {
                orDefault = new MenuC0469g(this.f1470b, c0068f);
                c0666h.put(c0068f, orDefault);
            }
            return this.f1469a.onPrepareActionMode(m833e, orDefault);
        }

        @Override // p016e.AbstractC0393a.InterfaceC0394a
        /* renamed from: d */
        public final boolean mo834d(AbstractC0393a abstractC0393a, MenuItem menuItem) {
            return this.f1469a.onActionItemClicked(m833e(abstractC0393a), new C0466e(this.f1470b, (InterfaceMenuItemC0873b) menuItem));
        }

        /* renamed from: e */
        public final C0398e m833e(AbstractC0393a abstractC0393a) {
            ArrayList<C0398e> arrayList = this.f1471c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                C0398e c0398e = arrayList.get(i);
                if (c0398e != null && c0398e.f1468b == abstractC0393a) {
                    return c0398e;
                }
            }
            C0398e c0398e2 = new C0398e(this.f1470b, abstractC0393a);
            arrayList.add(c0398e2);
            return c0398e2;
        }
    }

    public C0398e(Context context, AbstractC0393a abstractC0393a) {
        this.f1467a = context;
        this.f1468b = abstractC0393a;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f1468b.mo851c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f1468b.mo850d();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC0469g(this.f1467a, this.f1468b.mo849e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f1468b.mo848f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f1468b.mo847g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f1468b.f1455b;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f1468b.mo846h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f1468b.f1456c;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f1468b.mo845i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f1468b.mo844j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f1468b.mo843k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f1468b.mo842l(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f1468b.mo841m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f1468b.f1455b = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f1468b.mo840n(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f1468b.mo839o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f1468b.mo838p(z);
    }
}
