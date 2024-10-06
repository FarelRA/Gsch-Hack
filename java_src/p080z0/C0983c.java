package p080z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.bottomappbar.BottomAppBar;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: z0.c */
/* loaded from: classes.dex */
public final class C0983c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f2987a;

    /* renamed from: b */
    public final /* synthetic */ ActionMenuView f2988b;

    /* renamed from: c */
    public final /* synthetic */ int f2989c;

    /* renamed from: d */
    public final /* synthetic */ boolean f2990d;

    /* renamed from: e */
    public final /* synthetic */ BottomAppBar f2991e;

    public C0983c(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.f2991e = bottomAppBar;
        this.f2988b = actionMenuView;
        this.f2989c = i;
        this.f2990d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2987a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z;
        int left;
        boolean z2;
        int right;
        if (!this.f2987a) {
            BottomAppBar bottomAppBar = this.f2991e;
            bottomAppBar.getClass();
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            if (bottomAppBar.getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            int i = 0;
            for (int i2 = 0; i2 < bottomAppBar.getChildCount(); i2++) {
                View childAt = bottomAppBar.getChildAt(i2);
                if ((childAt.getLayoutParams() instanceof Toolbar.C0117d) && (((Toolbar.C0117d) childAt.getLayoutParams()).f958a & 8388615) == 8388611) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    if (z) {
                        right = childAt.getLeft();
                    } else {
                        right = childAt.getRight();
                    }
                    i = Math.max(i, right);
                }
            }
            ActionMenuView actionMenuView = this.f2988b;
            if (z) {
                left = actionMenuView.getRight();
            } else {
                left = actionMenuView.getLeft();
            }
            actionMenuView.setTranslationX((this.f2989c == 1 && this.f2990d) ? i - left : 0.0f);
        }
    }
}
