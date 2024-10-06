package androidx.appcompat.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes.dex */
public final class C0055a implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    public final /* synthetic */ AlertController f130b;

    /* renamed from: c */
    public final /* synthetic */ AlertController.C0051b f131c;

    public C0055a(AlertController.C0051b c0051b, AlertController alertController) {
        this.f131c = c0051b;
        this.f130b = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        AlertController.C0051b c0051b = this.f131c;
        DialogInterface.OnClickListener onClickListener = c0051b.f124g;
        AlertController alertController = this.f130b;
        onClickListener.onClick(alertController.f93b, i);
        c0051b.getClass();
        alertController.f93b.dismiss();
    }
}
