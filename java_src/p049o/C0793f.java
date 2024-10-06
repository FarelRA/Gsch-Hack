package p049o;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: o.f */
/* loaded from: classes.dex */
public final class C0793f implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f2674a = new ArrayList<>();

    /* renamed from: b */
    public final Context f2675b;

    /* renamed from: o.f$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0794a {
        Intent getSupportParentActivityIntent();
    }

    public C0793f(Context context) {
        this.f2675b = context;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public final Iterator<Intent> iterator() {
        return this.f2674a.iterator();
    }
}
