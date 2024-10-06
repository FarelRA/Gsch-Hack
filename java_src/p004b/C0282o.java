package p004b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p004b.LayoutInflater$Factory2C0266j;
/* renamed from: b.o */
/* loaded from: classes.dex */
public final class C0282o extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C0266j.C0273f f1044a;

    public C0282o(LayoutInflater$Factory2C0266j.C0273f c0273f) {
        this.f1044a = c0273f;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        LayoutInflater$Factory2C0266j.C0273f c0273f = this.f1044a;
        boolean m1012a = c0273f.f1016a.m1012a();
        if (m1012a != c0273f.f1017b) {
            c0273f.f1017b = m1012a;
            LayoutInflater$Factory2C0266j.this.mo1046c();
        }
    }
}
