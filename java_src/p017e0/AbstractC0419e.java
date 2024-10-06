package p017e0;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import p017e0.ActivityC0415d;
import p028h.AbstractC0574c;
/* renamed from: e0.e */
/* loaded from: classes.dex */
public abstract class AbstractC0419e<E> extends AbstractC0574c {

    /* renamed from: a */
    public final Activity f1626a;

    /* renamed from: b */
    public final Context f1627b;

    /* renamed from: c */
    public final Handler f1628c;

    /* renamed from: d */
    public final LayoutInflater$Factory2C0421g f1629d;

    public AbstractC0419e(ActivityC0415d activityC0415d) {
        ActivityC0415d.HandlerC0416a handlerC0416a = activityC0415d.f1611d;
        this.f1629d = new LayoutInflater$Factory2C0421g();
        this.f1626a = activityC0415d;
        this.f1627b = activityC0415d;
        if (handlerC0416a != null) {
            this.f1628c = handlerC0416a;
            return;
        }
        throw new NullPointerException("handler == null");
    }
}
