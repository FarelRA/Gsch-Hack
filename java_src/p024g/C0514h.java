package p024g;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
import p000a0.C0005d;
import p008c.C0315a;
import p046m1.C0736h;
import p061s.C0863a;
/* renamed from: g.h */
/* loaded from: classes.dex */
public final class C0514h {

    /* renamed from: a */
    public final CompoundButton f1955a;

    /* renamed from: b */
    public ColorStateList f1956b = null;

    /* renamed from: c */
    public PorterDuff.Mode f1957c = null;

    /* renamed from: d */
    public boolean f1958d = false;

    /* renamed from: e */
    public boolean f1959e = false;

    /* renamed from: f */
    public boolean f1960f;

    public C0514h(CompoundButton compoundButton) {
        this.f1955a = compoundButton;
    }

    /* renamed from: a */
    public final void m618a() {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        CompoundButton compoundButton = this.f1955a;
        if (i >= 23) {
            drawable = compoundButton.getButtonDrawable();
        } else {
            if (!C0005d.f29b) {
                try {
                    Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    C0005d.f28a = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
                }
                C0005d.f29b = true;
            }
            Field field = C0005d.f28a;
            if (field != null) {
                try {
                    drawable = (Drawable) field.get(compoundButton);
                } catch (IllegalAccessException e2) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
                    C0005d.f28a = null;
                }
            }
            drawable = null;
        }
        if (drawable != null) {
            if (this.f1958d || this.f1959e) {
                Drawable mutate = C0863a.m138f(drawable).mutate();
                if (this.f1958d) {
                    mutate.setTintList(this.f1956b);
                }
                if (this.f1959e) {
                    mutate.setTintMode(this.f1957c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* renamed from: b */
    public final void m617b(AttributeSet attributeSet, int i) {
        int resourceId;
        CompoundButton compoundButton = this.f1955a;
        TypedArray obtainStyledAttributes = compoundButton.getContext().obtainStyledAttributes(attributeSet, C0736h.f2578r, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(C0315a.m994c(compoundButton.getContext(), resourceId));
            }
            if (obtainStyledAttributes.hasValue(1)) {
                compoundButton.setButtonTintList(obtainStyledAttributes.getColorStateList(1));
            }
            if (obtainStyledAttributes.hasValue(2)) {
                compoundButton.setButtonTintMode(C0494b0.m635c(obtainStyledAttributes.getInt(2, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
