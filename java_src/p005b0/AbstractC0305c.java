package p005b0;

import android.content.Context;
import android.view.LayoutInflater;
/* renamed from: b0.c */
/* loaded from: classes.dex */
public abstract class AbstractC0305c extends AbstractC0300a {

    /* renamed from: j */
    public final int f1125j;

    /* renamed from: k */
    public final int f1126k;

    /* renamed from: l */
    public final LayoutInflater f1127l;

    @Deprecated
    public AbstractC0305c(Context context, int i) {
        super(context);
        this.f1126k = i;
        this.f1125j = i;
        this.f1127l = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
