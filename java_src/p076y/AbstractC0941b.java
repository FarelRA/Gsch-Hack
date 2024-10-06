package p076y;

import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0072h;
import androidx.appcompat.view.menu.SubMenuC0083m;
/* renamed from: y.b */
/* loaded from: classes.dex */
public abstract class AbstractC0941b {

    /* renamed from: a */
    public InterfaceC0942a f2921a;

    /* renamed from: y.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0942a {
    }

    /* renamed from: a */
    public boolean mo65a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo64b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo63c();

    /* renamed from: d */
    public View mo62d(MenuItem menuItem) {
        return mo63c();
    }

    /* renamed from: e */
    public boolean mo61e() {
        return false;
    }

    /* renamed from: f */
    public void mo60f(SubMenuC0083m subMenuC0083m) {
    }

    /* renamed from: g */
    public boolean mo59g() {
        return false;
    }

    /* renamed from: h */
    public void mo58h(C0072h.C0073a c0073a) {
        if (this.f2921a != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2921a = c0073a;
    }
}
