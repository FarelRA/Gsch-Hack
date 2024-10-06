package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.C0212k;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes.dex */
public final class C0209h extends AbstractC0211j {
    public C0209h(C0212k.AbstractC0224j abstractC0224j) {
        super(abstractC0224j);
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: b */
    public final int mo1147b(View view) {
        this.f822a.getClass();
        return view.getRight() + ((C0212k.C0228k) view.getLayoutParams()).f904a.right + ((ViewGroup.MarginLayoutParams) ((C0212k.C0228k) view.getLayoutParams())).rightMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: c */
    public final int mo1146c(View view) {
        this.f822a.getClass();
        return (view.getLeft() - ((C0212k.C0228k) view.getLayoutParams()).f904a.left) - ((ViewGroup.MarginLayoutParams) ((C0212k.C0228k) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: d */
    public final int mo1145d() {
        C0212k.AbstractC0224j abstractC0224j = this.f822a;
        return abstractC0224j.f896f - abstractC0224j.m1085u();
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: e */
    public final int mo1144e() {
        return this.f822a.m1086t();
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: f */
    public final int mo1143f() {
        C0212k.AbstractC0224j abstractC0224j = this.f822a;
        return (abstractC0224j.f896f - abstractC0224j.m1086t()) - abstractC0224j.m1085u();
    }
}
