package p024g;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import net.geschool.app.secure.R;
/* renamed from: g.w0 */
/* loaded from: classes.dex */
public final class C0560w0 {

    /* renamed from: a */
    public final Context f2098a;

    /* renamed from: b */
    public final View f2099b;

    /* renamed from: c */
    public final TextView f2100c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f2101d;

    /* renamed from: e */
    public final Rect f2102e;

    /* renamed from: f */
    public final int[] f2103f;

    /* renamed from: g */
    public final int[] f2104g;

    public C0560w0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f2101d = layoutParams;
        this.f2102e = new Rect();
        this.f2103f = new int[2];
        this.f2104g = new int[2];
        this.f2098a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f2099b = inflate;
        this.f2100c = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle(C0560w0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = 2131623940;
        layoutParams.flags = 24;
    }
}
