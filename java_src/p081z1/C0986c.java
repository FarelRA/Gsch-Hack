package p081z1;

import java.util.Arrays;
import java.util.HashSet;
import p027g2.C0569a;
import p045m0.C0716n;
import p057q1.C0844h;
/* renamed from: z1.c */
/* loaded from: classes.dex */
public final class C0986c {

    /* renamed from: c */
    public static final C0986c f2993c = new C0986c(2, new String[0]);

    /* renamed from: d */
    public static final C0986c f2994d = new C0986c(2, "none");

    /* renamed from: a */
    public final int f2995a;

    /* renamed from: b */
    public final HashSet f2996b;

    static {
        new C0986c(1, "none");
    }

    public C0986c(int i, String... strArr) {
        if (i == 0) {
            throw new NullPointerException("ConstraintType cannot be null");
        }
        this.f2995a = i;
        this.f2996b = new HashSet(Arrays.asList(strArr));
    }

    /* renamed from: a */
    public final void m4a(String str) {
        int m330a = C0716n.m330a(this.f2995a);
        HashSet hashSet = this.f2996b;
        if (m330a != 0) {
            if (m330a == 1 && hashSet.contains(str)) {
                throw new C0569a(C0844h.m187a("'", str, "' is a blacklisted algorithm."));
            }
        } else if (hashSet.contains(str)) {
        } else {
            throw new C0569a(C0844h.m187a("'", str, "' is not a whitelisted algorithm."));
        }
    }
}
