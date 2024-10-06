package p017e0;

import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.AbstractC0160f;
import androidx.lifecycle.C0171m;
import androidx.lifecycle.InterfaceC0172n;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import p020f.C0460c;
import p029h0.AbstractC0575a;
import p039k.C0667i;
import p046m1.C0736h;
import p049o.AbstractC0792e;
import p049o.ActivityC0789c;
import p049o.C0787a;
/* renamed from: e0.d */
/* loaded from: classes.dex */
public class ActivityC0415d extends ActivityC0789c implements InterfaceC0172n {

    /* renamed from: f */
    public C0171m f1613f;

    /* renamed from: g */
    public boolean f1614g;

    /* renamed from: h */
    public boolean f1615h;

    /* renamed from: j */
    public boolean f1617j;

    /* renamed from: k */
    public boolean f1618k;

    /* renamed from: l */
    public int f1619l;

    /* renamed from: m */
    public C0667i<String> f1620m;

    /* renamed from: d */
    public final HandlerC0416a f1611d = new HandlerC0416a();

    /* renamed from: e */
    public final C0460c f1612e = new C0460c(1, new C0417b());

    /* renamed from: i */
    public boolean f1616i = true;

    /* renamed from: e0.d$a */
    /* loaded from: classes.dex */
    public class HandlerC0416a extends Handler {
        public HandlerC0416a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
                return;
            }
            ActivityC0415d activityC0415d = ActivityC0415d.this;
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) activityC0415d.f1612e.f1797a).f1629d;
            layoutInflater$Factory2C0421g.f1645p = false;
            layoutInflater$Factory2C0421g.f1646q = false;
            layoutInflater$Factory2C0421g.m786C(4);
            ((AbstractC0419e) activityC0415d.f1612e.f1797a).f1629d.m783F();
        }
    }

    /* renamed from: e0.d$b */
    /* loaded from: classes.dex */
    public class C0417b extends AbstractC0419e<ActivityC0415d> {
        public C0417b() {
            super(ActivityC0415d.this);
        }

        @Override // p028h.AbstractC0574c
        /* renamed from: d */
        public final View mo520d(int i) {
            return ActivityC0415d.this.findViewById(i);
        }

        @Override // p028h.AbstractC0574c
        /* renamed from: e */
        public final boolean mo519e() {
            Window window = ActivityC0415d.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    /* renamed from: e0.d$c */
    /* loaded from: classes.dex */
    public static final class C0418c {

        /* renamed from: a */
        public Object f1623a;

        /* renamed from: b */
        public C0171m f1624b;

        /* renamed from: c */
        public C0426h f1625c;
    }

    /* renamed from: b */
    public static void m790b(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    /* renamed from: c */
    public static boolean m789c(AbstractC0420f abstractC0420f) {
        List<ComponentCallbacksC0411c> list;
        boolean z;
        AbstractC0160f.EnumC0162b enumC0162b = AbstractC0160f.EnumC0162b.f687c;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = (LayoutInflater$Factory2C0421g) abstractC0420f;
        if (layoutInflater$Factory2C0421g.f1633d.isEmpty()) {
            list = Collections.emptyList();
        } else {
            synchronized (layoutInflater$Factory2C0421g.f1633d) {
                list = (List) layoutInflater$Factory2C0421g.f1633d.clone();
            }
        }
        boolean z2 = false;
        for (ComponentCallbacksC0411c componentCallbacksC0411c : list) {
            if (componentCallbacksC0411c != null) {
                if (componentCallbacksC0411c.f1574N.f692b.compareTo(AbstractC0160f.EnumC0162b.f688d) >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    componentCallbacksC0411c.f1574N.m1207c(enumC0162b);
                    z2 = true;
                }
                LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2 = componentCallbacksC0411c.f1594t;
                if (layoutInflater$Factory2C0421g2 != null) {
                    z2 |= m789c(layoutInflater$Factory2C0421g2);
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public final int m791a(ComponentCallbacksC0411c componentCallbacksC0411c) {
        if (this.f1620m.m391f() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (true) {
            C0667i<String> c0667i = this.f1620m;
            int i = this.f1619l;
            if (c0667i.f2308a) {
                c0667i.m394c();
            }
            if (C0736h.m294f(c0667i.f2311d, i, c0667i.f2309b) >= 0) {
                this.f1619l = (this.f1619l + 1) % 65534;
            } else {
                int i2 = this.f1619l;
                this.f1620m.m392e(i2, componentCallbacksC0411c.f1580f);
                this.f1619l = (this.f1619l + 1) % 65534;
                return i2;
            }
        }
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f1614g);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1615h);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1616i);
        if (getApplication() != null) {
            AbstractC0575a.m518a(this).m517b(str2, printWriter);
        }
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m785D(str, fileDescriptor, printWriter, strArr);
    }

    public Object getLastCustomNonConfigurationInstance() {
        C0418c c0418c = (C0418c) getLastNonConfigurationInstance();
        if (c0418c != null) {
            return c0418c.f1623a;
        }
        return null;
    }

    @Override // p049o.ActivityC0789c, androidx.lifecycle.InterfaceC0163g
    public AbstractC0160f getLifecycle() {
        return super.getLifecycle();
    }

    public AbstractC0420f getSupportFragmentManager() {
        return ((AbstractC0419e) this.f1612e.f1797a).f1629d;
    }

    @Deprecated
    public AbstractC0575a getSupportLoaderManager() {
        return AbstractC0575a.m518a(this);
    }

    @Override // androidx.lifecycle.InterfaceC0172n
    public C0171m getViewModelStore() {
        if (getApplication() != null) {
            if (this.f1613f == null) {
                C0418c c0418c = (C0418c) getLastNonConfigurationInstance();
                if (c0418c != null) {
                    this.f1613f = c0418c.f1624b;
                }
                if (this.f1613f == null) {
                    this.f1613f = new C0171m();
                }
            }
            return this.f1613f;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        C0460c c0460c = this.f1612e;
        c0460c.m696i();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String str = (String) this.f1620m.m393d(i4, null);
            C0667i<String> c0667i = this.f1620m;
            int m294f = C0736h.m294f(c0667i.f2311d, i4, c0667i.f2309b);
            if (m294f >= 0) {
                Object[] objArr = c0667i.f2310c;
                Object obj = objArr[m294f];
                Object obj2 = C0667i.f2307e;
                if (obj != obj2) {
                    objArr[m294f] = obj2;
                    c0667i.f2308a = true;
                }
            }
            if (str == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            } else if (((AbstractC0419e) c0460c.f1797a).f1629d.m779J(str) == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: ".concat(str));
                return;
            } else {
                return;
            }
        }
        int i5 = C0787a.f2671b;
        super.onActivityResult(i, i2, intent);
    }

    public void onAttachFragment(ComponentCallbacksC0411c componentCallbacksC0411c) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) this.f1612e.f1797a).f1629d;
        if (!layoutInflater$Factory2C0421g.f1645p && !layoutInflater$Factory2C0421g.f1646q) {
            z = false;
        } else {
            z = true;
        }
        if (z && Build.VERSION.SDK_INT <= 25) {
            return;
        }
        if (z || !layoutInflater$Factory2C0421g.m773P()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0460c c0460c = this.f1612e;
        c0460c.m696i();
        ((AbstractC0419e) c0460c.f1797a).f1629d.m758f();
    }

    @Override // p049o.ActivityC0789c, android.app.Activity
    public void onCreate(Bundle bundle) {
        C0171m c0171m;
        C0460c c0460c = this.f1612e;
        AbstractC0419e abstractC0419e = (AbstractC0419e) c0460c.f1797a;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = abstractC0419e.f1629d;
        if (layoutInflater$Factory2C0421g.f1641l == null) {
            layoutInflater$Factory2C0421g.f1641l = abstractC0419e;
            layoutInflater$Factory2C0421g.f1642m = abstractC0419e;
            C0426h c0426h = null;
            layoutInflater$Factory2C0421g.f1643n = null;
            super.onCreate(bundle);
            C0418c c0418c = (C0418c) getLastNonConfigurationInstance();
            if (c0418c != null && (c0171m = c0418c.f1624b) != null && this.f1613f == null) {
                this.f1613f = c0171m;
            }
            if (bundle != null) {
                Parcelable parcelable = bundle.getParcelable("android:support:fragments");
                if (c0418c != null) {
                    c0426h = c0418c.f1625c;
                }
                ((AbstractC0419e) c0460c.f1797a).f1629d.m771R(parcelable, c0426h);
                if (bundle.containsKey("android:support:next_request_index")) {
                    this.f1619l = bundle.getInt("android:support:next_request_index");
                    int[] intArray = bundle.getIntArray("android:support:request_indicies");
                    String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                    if (intArray != null && stringArray != null && intArray.length == stringArray.length) {
                        this.f1620m = new C0667i<>(intArray.length);
                        for (int i = 0; i < intArray.length; i++) {
                            this.f1620m.m392e(intArray[i], stringArray[i]);
                        }
                    } else {
                        Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                    }
                }
            }
            if (this.f1620m == null) {
                this.f1620m = new C0667i<>();
                this.f1619l = 0;
            }
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2 = ((AbstractC0419e) c0460c.f1797a).f1629d;
            layoutInflater$Factory2C0421g2.f1645p = false;
            layoutInflater$Factory2C0421g2.f1646q = false;
            layoutInflater$Factory2C0421g2.m786C(1);
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
            C0460c c0460c = this.f1612e;
            getMenuInflater();
            return onCreatePanelMenu | ((AbstractC0419e) c0460c.f1797a).f1629d.m756h();
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.onCreateView(view, str, context, attributeSet);
        return super.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f1613f != null && !isChangingConfigurations()) {
            this.f1613f.m1202a();
        }
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m755i();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m754j();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        C0460c c0460c = this.f1612e;
        if (i != 0) {
            if (i != 6) {
                return false;
            }
            return ((AbstractC0419e) c0460c.f1797a).f1629d.m757g();
        }
        return ((AbstractC0419e) c0460c.f1797a).f1629d.m739y();
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m753k(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f1612e.m696i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            ((AbstractC0419e) this.f1612e.f1797a).f1629d.m738z();
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1615h = false;
        HandlerC0416a handlerC0416a = this.f1611d;
        boolean hasMessages = handlerC0416a.hasMessages(2);
        C0460c c0460c = this.f1612e;
        if (hasMessages) {
            handlerC0416a.removeMessages(2);
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) c0460c.f1797a).f1629d;
            layoutInflater$Factory2C0421g.f1645p = false;
            layoutInflater$Factory2C0421g.f1646q = false;
            layoutInflater$Factory2C0421g.m786C(4);
        }
        ((AbstractC0419e) c0460c.f1797a).f1629d.m786C(3);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m788A(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f1611d.removeMessages(2);
        C0460c c0460c = this.f1612e;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) c0460c.f1797a).f1629d;
        layoutInflater$Factory2C0421g.f1645p = false;
        layoutInflater$Factory2C0421g.f1646q = false;
        layoutInflater$Factory2C0421g.m786C(4);
        ((AbstractC0419e) c0460c.f1797a).f1629d.m783F();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0 && menu != null) {
            return super.onPreparePanel(0, view, menu) | ((AbstractC0419e) this.f1612e.f1797a).f1629d.m787B();
        }
        return super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C0460c c0460c = this.f1612e;
        c0460c.m696i();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String str = (String) this.f1620m.m393d(i3, null);
            C0667i<String> c0667i = this.f1620m;
            int m294f = C0736h.m294f(c0667i.f2311d, i3, c0667i.f2309b);
            if (m294f >= 0) {
                Object[] objArr = c0667i.f2310c;
                Object obj = objArr[m294f];
                Object obj2 = C0667i.f2307e;
                if (obj != obj2) {
                    objArr[m294f] = obj2;
                    c0667i.f2308a = true;
                }
            }
            if (str == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            } else if (((AbstractC0419e) c0460c.f1797a).f1629d.m779J(str) == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: ".concat(str));
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1611d.sendEmptyMessage(2);
        this.f1615h = true;
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.m783F();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) this.f1612e.f1797a).f1629d;
        LayoutInflater$Factory2C0421g.m766W(layoutInflater$Factory2C0421g.f1653x);
        C0426h c0426h = layoutInflater$Factory2C0421g.f1653x;
        if (c0426h == null && this.f1613f == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        C0418c c0418c = new C0418c();
        c0418c.f1623a = onRetainCustomNonConfigurationInstance;
        c0418c.f1624b = this.f1613f;
        c0418c.f1625c = c0426h;
        return c0418c;
    }

    @Override // p049o.ActivityC0789c, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        do {
        } while (m789c(getSupportFragmentManager()));
        C0427i m770S = ((AbstractC0419e) this.f1612e.f1797a).f1629d.m770S();
        if (m770S != null) {
            bundle.putParcelable("android:support:fragments", m770S);
        }
        if (this.f1620m.m391f() > 0) {
            bundle.putInt("android:support:next_request_index", this.f1619l);
            int[] iArr = new int[this.f1620m.m391f()];
            String[] strArr = new String[this.f1620m.m391f()];
            for (int i = 0; i < this.f1620m.m391f(); i++) {
                C0667i<String> c0667i = this.f1620m;
                if (c0667i.f2308a) {
                    c0667i.m394c();
                }
                iArr[i] = c0667i.f2309b[i];
                strArr[i] = this.f1620m.m390g(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f1616i = false;
        boolean z = this.f1614g;
        C0460c c0460c = this.f1612e;
        if (!z) {
            this.f1614g = true;
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) c0460c.f1797a).f1629d;
            layoutInflater$Factory2C0421g.f1645p = false;
            layoutInflater$Factory2C0421g.f1646q = false;
            layoutInflater$Factory2C0421g.m786C(2);
        }
        c0460c.m696i();
        ((AbstractC0419e) c0460c.f1797a).f1629d.m783F();
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2 = ((AbstractC0419e) c0460c.f1797a).f1629d;
        layoutInflater$Factory2C0421g2.f1645p = false;
        layoutInflater$Factory2C0421g2.f1646q = false;
        layoutInflater$Factory2C0421g2.m786C(3);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f1612e.m696i();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1616i = true;
        do {
        } while (m789c(getSupportFragmentManager()));
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = ((AbstractC0419e) this.f1612e.f1797a).f1629d;
        layoutInflater$Factory2C0421g.f1646q = true;
        layoutInflater$Factory2C0421g.m786C(2);
    }

    public void setEnterSharedElementCallback(AbstractC0792e abstractC0792e) {
        int i = C0787a.f2671b;
        setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public void setExitSharedElementCallback(AbstractC0792e abstractC0792e) {
        int i = C0787a.f2671b;
        setExitSharedElementCallback((SharedElementCallback) null);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.f1618k && i != -1) {
            m790b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.f1618k && i != -1) {
            m790b(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    public void startActivityFromFragment(ComponentCallbacksC0411c componentCallbacksC0411c, Intent intent, int i) {
        startActivityFromFragment(componentCallbacksC0411c, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(ComponentCallbacksC0411c componentCallbacksC0411c, Intent intent, int i, Bundle bundle) {
        this.f1618k = true;
        try {
            if (i == -1) {
                int i2 = C0787a.f2671b;
                startActivityForResult(intent, -1, bundle);
                return;
            }
            m790b(i);
            int m791a = ((m791a(componentCallbacksC0411c) + 1) << 16) + (i & 65535);
            int i3 = C0787a.f2671b;
            startActivityForResult(intent, m791a, bundle);
        } finally {
            this.f1618k = false;
        }
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f1617j && i != -1) {
            m790b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f1617j && i != -1) {
            m790b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startIntentSenderFromFragment(ComponentCallbacksC0411c componentCallbacksC0411c, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.f1617j = true;
        try {
            if (i == -1) {
                int i5 = C0787a.f2671b;
                startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            m790b(i);
            int m791a = ((m791a(componentCallbacksC0411c) + 1) << 16) + (i & 65535);
            int i6 = C0787a.f2671b;
            startIntentSenderForResult(intentSender, m791a, intent, i2, i3, i4, bundle);
        } finally {
            this.f1617j = false;
        }
    }

    public void supportFinishAfterTransition() {
        int i = C0787a.f2671b;
        finishAfterTransition();
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        int i = C0787a.f2671b;
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        int i = C0787a.f2671b;
        startPostponedEnterTransition();
    }

    public final void validateRequestPermissionsRequestCode(int i) {
        if (i != -1) {
            m790b(i);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        ((AbstractC0419e) this.f1612e.f1797a).f1629d.onCreateView(null, str, context, attributeSet);
        return super.onCreateView(str, context, attributeSet);
    }
}
