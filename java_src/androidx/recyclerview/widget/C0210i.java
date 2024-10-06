package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.C0212k;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes.dex */
public final class C0210i extends AbstractC0211j {
    public C0210i(C0212k.AbstractC0224j abstractC0224j) {
        super(abstractC0224j);
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: b */
    public final int mo1147b(View view) {
        this.f822a.getClass();
        return view.getBottom() + ((C0212k.C0228k) view.getLayoutParams()).f904a.bottom + ((ViewGroup.MarginLayoutParams) ((C0212k.C0228k) view.getLayoutParams())).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: c */
    public final int mo1146c(View view) {
        this.f822a.getClass();
        return (view.getTop() - ((C0212k.C0228k) view.getLayoutParams()).f904a.top) - ((ViewGroup.MarginLayoutParams) ((C0212k.C0228k) view.getLayoutParams())).topMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: d */
    public final int mo1145d() {
        C0212k.AbstractC0224j abstractC0224j = this.f822a;
        return abstractC0224j.f897g - abstractC0224j.m1087s();
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: e */
    public final int mo1144e() {
        return this.f822a.m1084v();
    }

    @Override // androidx.recyclerview.widget.AbstractC0211j
    /* renamed from: f */
    public final int mo1143f() {
        C0212k.AbstractC0224j abstractC0224j = this.f822a;
        return (abstractC0224j.f897g - abstractC0224j.m1084v()) - abstractC0224j.m1087s();
    }
}
