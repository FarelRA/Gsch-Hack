package p004b;

import android.view.View;
import androidx.appcompat.app.AlertController;
/* renamed from: b.e */
/* loaded from: classes.dex */
public final class RunnableC0261e implements Runnable {

    /* renamed from: b */
    public final /* synthetic */ View f961b;

    /* renamed from: c */
    public final /* synthetic */ View f962c;

    /* renamed from: d */
    public final /* synthetic */ AlertController f963d;

    public RunnableC0261e(AlertController alertController, View view, View view2) {
        this.f963d = alertController;
        this.f961b = view;
        this.f962c = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertController.m1363a(this.f963d.f96e, this.f961b, this.f962c);
    }
}
