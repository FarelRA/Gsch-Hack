package p024g;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: g.f0 */
/* loaded from: classes.dex */
public final class C0506f0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: b */
    public final /* synthetic */ C0508g0 f1919b;

    public C0506f0(C0508g0 c0508g0) {
        this.f1919b = c0508g0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0496c0 c0496c0;
        if (i == -1 || (c0496c0 = this.f1919b.f1927d) == null) {
            return;
        }
        c0496c0.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
