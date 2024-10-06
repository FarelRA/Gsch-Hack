package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0160f;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes.dex */
public final class FragmentC0169k extends Fragment {

    /* renamed from: b */
    public static final /* synthetic */ int f701b = 0;

    /* renamed from: a */
    public final void m1203a(AbstractC0160f.EnumC0161a enumC0161a) {
        Activity activity = getActivity();
        if (activity instanceof InterfaceC0167i) {
            ((InterfaceC0167i) activity).getLifecycle().m1208b(enumC0161a);
        } else if (activity instanceof InterfaceC0163g) {
            AbstractC0160f lifecycle = ((InterfaceC0163g) activity).getLifecycle();
            if (lifecycle instanceof C0164h) {
                ((C0164h) lifecycle).m1208b(enumC0161a);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m1203a(AbstractC0160f.EnumC0161a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        m1203a(AbstractC0160f.EnumC0161a.ON_DESTROY);
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        m1203a(AbstractC0160f.EnumC0161a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        m1203a(AbstractC0160f.EnumC0161a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        m1203a(AbstractC0160f.EnumC0161a.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        m1203a(AbstractC0160f.EnumC0161a.ON_STOP);
    }
}
