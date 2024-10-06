package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p014d1.InterfaceC0373a;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.AbstractC0138c<View> {

    /* renamed from: a */
    public int f1334a;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnPreDrawListenerC0348a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: b */
        public final /* synthetic */ View f1335b;

        /* renamed from: c */
        public final /* synthetic */ int f1336c;

        /* renamed from: d */
        public final /* synthetic */ InterfaceC0373a f1337d;

        public ViewTreeObserver$OnPreDrawListenerC0348a(View view, int i, InterfaceC0373a interfaceC0373a) {
            this.f1335b = view;
            this.f1336c = i;
            this.f1337d = interfaceC0373a;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            View view = this.f1335b;
            view.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.f1334a == this.f1336c) {
                InterfaceC0373a interfaceC0373a = this.f1337d;
                expandableBehavior.mo910s((View) interfaceC0373a, view, interfaceC0373a.mo863a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f1334a = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1334a = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: b */
    public abstract boolean mo912b(View view, View view2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: d */
    public final boolean mo918d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        boolean z;
        int i;
        InterfaceC0373a interfaceC0373a = (InterfaceC0373a) view2;
        int i2 = 2;
        if (!interfaceC0373a.mo863a() ? this.f1334a != 1 : (i = this.f1334a) != 0 && i != 2) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        if (interfaceC0373a.mo863a()) {
            i2 = 1;
        }
        this.f1334a = i2;
        mo910s((View) interfaceC0373a, view, interfaceC0373a.mo863a(), true);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0138c
    /* renamed from: f */
    public final boolean mo77f(CoordinatorLayout coordinatorLayout, View view, int i) {
        InterfaceC0373a interfaceC0373a;
        boolean z;
        int i2;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (!view.isLaidOut()) {
            ArrayList m1260j = coordinatorLayout.m1260j(view);
            int size = m1260j.size();
            int i3 = 0;
            while (true) {
                if (i3 < size) {
                    View view2 = (View) m1260j.get(i3);
                    if (mo912b(view, view2)) {
                        interfaceC0373a = (InterfaceC0373a) view2;
                        break;
                    }
                    i3++;
                } else {
                    interfaceC0373a = null;
                    break;
                }
            }
            if (interfaceC0373a != null) {
                int i4 = 2;
                if (!interfaceC0373a.mo863a() ? this.f1334a != 1 : (i2 = this.f1334a) != 0 && i2 != 2) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    if (interfaceC0373a.mo863a()) {
                        i4 = 1;
                    }
                    this.f1334a = i4;
                    view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC0348a(view, i4, interfaceC0373a));
                }
            }
        }
        return false;
    }

    /* renamed from: s */
    public abstract void mo910s(View view, View view2, boolean z, boolean z2);
}
