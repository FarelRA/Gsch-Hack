package p004b;

import android.view.View;
import android.widget.AbsListView;
import androidx.appcompat.app.AlertController;
/* renamed from: b.d */
/* loaded from: classes.dex */
public final class C0260d implements AbsListView.OnScrollListener {

    /* renamed from: a */
    public final /* synthetic */ View f959a;

    /* renamed from: b */
    public final /* synthetic */ View f960b;

    public C0260d(View view, View view2) {
        this.f959a = view;
        this.f960b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.m1363a(absListView, this.f959a, this.f960b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
