package p016e;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.LayoutInflater;
/* renamed from: e.c */
/* loaded from: classes.dex */
public final class C0396c extends ContextWrapper {

    /* renamed from: a */
    public int f1457a;

    /* renamed from: b */
    public Resources.Theme f1458b;

    /* renamed from: c */
    public LayoutInflater f1459c;

    /* renamed from: d */
    public Resources f1460d;

    public C0396c() {
        super(null);
    }

    public C0396c(Context context, int i) {
        super(context);
        this.f1457a = i;
    }

    /* renamed from: a */
    public final void m854a() {
        boolean z;
        if (this.f1458b == null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.f1458b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f1458b.setTo(theme);
            }
        }
        this.f1458b.applyStyle(this.f1457a, true);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f1460d == null) {
            this.f1460d = super.getResources();
        }
        return this.f1460d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f1459c == null) {
                this.f1459c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f1459c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f1458b;
        if (theme != null) {
            return theme;
        }
        if (this.f1457a == 0) {
            this.f1457a = 2131624257;
        }
        m854a();
        return this.f1458b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f1457a != i) {
            this.f1457a = i;
            m854a();
        }
    }
}
