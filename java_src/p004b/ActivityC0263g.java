package p004b;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p004b.LayoutInflater$Factory2C0266j;
import p016e.AbstractC0393a;
import p016e.C0400f;
import p017e0.ActivityC0415d;
import p024g.C0516i;
import p024g.C0562x0;
import p039k.C0658e;
import p049o.C0787a;
import p049o.C0791d;
import p049o.C0793f;
import p052p.C0819a;
/* renamed from: b.g */
/* loaded from: classes.dex */
public class ActivityC0263g extends ActivityC0415d implements InterfaceC0264h, C0793f.InterfaceC0794a {

    /* renamed from: n */
    public LayoutInflater$Factory2C0266j f965n;

    /* renamed from: o */
    public int f966o = 0;

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1032q();
        ((ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290)).addView(view, layoutParams);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0254a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.mo1021a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // p049o.ActivityC0789c, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0254a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.mo1018j(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1032q();
        return (T) layoutInflater$Factory2C0266j.f986c.findViewById(i);
    }

    public AbstractC0265i getDelegate() {
        if (this.f965n == null) {
            this.f965n = new LayoutInflater$Factory2C0266j(this, getWindow(), this);
        }
        return this.f965n;
    }

    public InterfaceC0258b getDrawerToggleDelegate() {
        ((LayoutInflater$Factory2C0266j) getDelegate()).getClass();
        return new LayoutInflater$Factory2C0266j.C0268b();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        Context context;
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        if (layoutInflater$Factory2C0266j.f991h == null) {
            layoutInflater$Factory2C0266j.m1029t();
            AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
            if (abstractC0254a != null) {
                context = abstractC0254a.mo1008e();
            } else {
                context = layoutInflater$Factory2C0266j.f985b;
            }
            layoutInflater$Factory2C0266j.f991h = new C0400f(context);
        }
        return layoutInflater$Factory2C0266j.f991h;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        int i = C0562x0.f2108a;
        return super.getResources();
    }

    public AbstractC0254a getSupportActionBar() {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1029t();
        return layoutInflater$Factory2C0266j.f990g;
    }

    @Override // p049o.C0793f.InterfaceC0794a
    public Intent getSupportParentActivityIntent() {
        return C0791d.m219a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().mo1044e();
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        if (layoutInflater$Factory2C0266j.f1007x && layoutInflater$Factory2C0266j.f1001r) {
            layoutInflater$Factory2C0266j.m1029t();
            AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
            if (abstractC0254a != null) {
                abstractC0254a.mo1007g();
            }
        }
        C0516i m610g = C0516i.m610g();
        Context context = layoutInflater$Factory2C0266j.f985b;
        synchronized (m610g) {
            C0658e<WeakReference<Drawable.ConstantState>> c0658e = m610g.f1973d.get(context);
            if (c0658e != null) {
                c0658e.m427b();
            }
        }
        layoutInflater$Factory2C0266j.mo1046c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    @Override // p017e0.ActivityC0415d, p049o.ActivityC0789c, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        AbstractC0265i delegate = getDelegate();
        delegate.mo1045d();
        delegate.mo1043f(bundle);
        if (delegate.mo1046c() && (i = this.f966o) != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                onApplyThemeResource(getTheme(), this.f966o, false);
            } else {
                setTheme(i);
            }
        }
        super.onCreate(bundle);
    }

    public void onCreateSupportNavigateUpTaskStack(C0793f c0793f) {
        Intent component;
        c0793f.getClass();
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = C0791d.m219a(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component2 = supportParentActivityIntent.getComponent();
            Context context = c0793f.f2675b;
            if (component2 == null) {
                component2 = supportParentActivityIntent.resolveActivity(context.getPackageManager());
            }
            ArrayList<Intent> arrayList = c0793f.f2674a;
            int size = arrayList.size();
            while (true) {
                try {
                    String m218b = C0791d.m218b(context, component2);
                    if (m218b == null) {
                        component = null;
                    } else {
                        ComponentName componentName = new ComponentName(component2.getPackageName(), m218b);
                        if (C0791d.m218b(context, componentName) == null) {
                            component = Intent.makeMainActivity(componentName);
                        } else {
                            component = new Intent().setComponent(componentName);
                        }
                    }
                    if (component != null) {
                        arrayList.add(size, component);
                        component2 = component.getComponent();
                    } else {
                        arrayList.add(supportParentActivityIntent);
                        return;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e);
                }
            }
        }
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onDestroy() {
        C0282o c0282o;
        super.onDestroy();
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        if (layoutInflater$Factory2C0266j.f978K) {
            layoutInflater$Factory2C0266j.f986c.getDecorView().removeCallbacks(layoutInflater$Factory2C0266j.f980M);
        }
        layoutInflater$Factory2C0266j.f974G = true;
        AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
        if (abstractC0254a != null) {
            abstractC0254a.mo1019h();
        }
        LayoutInflater$Factory2C0266j.C0273f c0273f = layoutInflater$Factory2C0266j.f977J;
        if (c0273f != null && (c0282o = c0273f.f1018c) != null) {
            LayoutInflater$Factory2C0266j.this.f985b.unregisterReceiver(c0282o);
            c0273f.f1018c = null;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC0254a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.mo1009d() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((LayoutInflater$Factory2C0266j) getDelegate()).m1032q();
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1029t();
        AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
        if (abstractC0254a != null) {
            abstractC0254a.mo1004m(true);
        }
    }

    public void onPrepareSupportNavigateUpTaskStack(C0793f c0793f) {
    }

    @Override // p017e0.ActivityC0415d, p049o.ActivityC0789c, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        int i = ((LayoutInflater$Factory2C0266j) getDelegate()).f975H;
        if (i != -100) {
            bundle.putInt("appcompat:local_night_mode", i);
        }
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onStart() {
        super.onStart();
        ((LayoutInflater$Factory2C0266j) getDelegate()).mo1046c();
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onStop() {
        C0282o c0282o;
        super.onStop();
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1029t();
        AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
        if (abstractC0254a != null) {
            abstractC0254a.mo1004m(false);
        }
        LayoutInflater$Factory2C0266j.C0273f c0273f = layoutInflater$Factory2C0266j.f977J;
        if (c0273f != null && (c0282o = c0273f.f1018c) != null) {
            LayoutInflater$Factory2C0266j.this.f985b.unregisterReceiver(c0282o);
            c0273f.f1018c = null;
        }
    }

    @Override // p004b.InterfaceC0264h
    public void onSupportActionModeFinished(AbstractC0393a abstractC0393a) {
    }

    @Override // p004b.InterfaceC0264h
    public void onSupportActionModeStarted(AbstractC0393a abstractC0393a) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
            C0793f c0793f = new C0793f(this);
            onCreateSupportNavigateUpTaskStack(c0793f);
            onPrepareSupportNavigateUpTaskStack(c0793f);
            ArrayList<Intent> arrayList = c0793f.f2674a;
            if (!arrayList.isEmpty()) {
                Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
                intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                Object obj = C0819a.f2712a;
                c0793f.f2675b.startActivities(intentArr, null);
                try {
                    int i = C0787a.f2671b;
                    finishAffinity();
                    return true;
                } catch (IllegalStateException unused) {
                    finish();
                    return true;
                }
            }
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        supportNavigateUpTo(supportParentActivityIntent);
        return true;
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().mo1040i(charSequence);
    }

    @Override // p004b.InterfaceC0264h
    public AbstractC0393a onWindowStartingSupportActionMode(AbstractC0393a.InterfaceC0394a interfaceC0394a) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0254a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.mo1017k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        getDelegate().mo1041h(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1032q();
        ViewGroup viewGroup = (ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }

    public void setSupportActionBar(Toolbar toolbar) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        Window.Callback callback = layoutInflater$Factory2C0266j.f987d;
        if (callback instanceof Activity) {
            layoutInflater$Factory2C0266j.m1029t();
            AbstractC0254a abstractC0254a = layoutInflater$Factory2C0266j.f990g;
            if (!(abstractC0254a instanceof C0295u)) {
                layoutInflater$Factory2C0266j.f991h = null;
                if (abstractC0254a != null) {
                    abstractC0254a.mo1019h();
                }
                LayoutInflater$Factory2C0266j.C0272e c0272e = layoutInflater$Factory2C0266j.f988e;
                Window window = layoutInflater$Factory2C0266j.f986c;
                if (toolbar != null) {
                    C0286r c0286r = new C0286r(toolbar, ((Activity) callback).getTitle(), c0272e);
                    layoutInflater$Factory2C0266j.f990g = c0286r;
                    window.setCallback(c0286r.f1058c);
                } else {
                    layoutInflater$Factory2C0266j.f990g = null;
                    window.setCallback(c0272e);
                }
                layoutInflater$Factory2C0266j.mo1044e();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        this.f966o = i;
    }

    public AbstractC0393a startSupportActionMode(AbstractC0393a.InterfaceC0394a interfaceC0394a) {
        return getDelegate().mo1039j(interfaceC0394a);
    }

    @Override // p017e0.ActivityC0415d
    public void supportInvalidateOptionsMenu() {
        getDelegate().mo1044e();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().mo1042g(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflater$Factory2C0266j layoutInflater$Factory2C0266j = (LayoutInflater$Factory2C0266j) getDelegate();
        layoutInflater$Factory2C0266j.m1032q();
        ViewGroup viewGroup = (ViewGroup) layoutInflater$Factory2C0266j.f1002s.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        layoutInflater$Factory2C0266j.f987d.onContentChanged();
    }
}
