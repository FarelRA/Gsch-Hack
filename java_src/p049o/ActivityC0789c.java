package p049o;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.AbstractC0160f;
import androidx.lifecycle.C0164h;
import androidx.lifecycle.FragmentC0169k;
import androidx.lifecycle.InterfaceC0163g;
import p039k.C0666h;
import p076y.C0943c;
/* renamed from: o.c */
/* loaded from: classes.dex */
public class ActivityC0789c extends Activity implements InterfaceC0163g, C0943c.InterfaceC0944a {

    /* renamed from: b */
    public final C0666h<Class<? extends C0790a>, C0790a> f2672b = new C0666h<>();

    /* renamed from: c */
    public final C0164h f2673c = new C0164h(this);

    @Deprecated
    /* renamed from: o.c$a */
    /* loaded from: classes.dex */
    public static class C0790a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0943c.m57a(decorView, keyEvent)) {
            return C0943c.m56b(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0943c.m57a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Deprecated
    public <T extends C0790a> T getExtraData(Class<T> cls) {
        return (T) this.f2672b.getOrDefault(cls, null);
    }

    public AbstractC0160f getLifecycle() {
        return this.f2673c;
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = FragmentC0169k.f701b;
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0169k(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f2673c.m1207c(AbstractC0160f.EnumC0162b.f687c);
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void putExtraData(C0790a c0790a) {
        this.f2672b.put(c0790a.getClass(), c0790a);
    }

    @Override // p076y.C0943c.InterfaceC0944a
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
