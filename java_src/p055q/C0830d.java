package p055q;

import java.util.ArrayList;
/* renamed from: q.d */
/* loaded from: classes.dex */
public final class C0830d {

    /* renamed from: a */
    public final int[] f2730a;

    /* renamed from: b */
    public final float[] f2731b;

    public C0830d(int i, int i2) {
        this.f2730a = new int[]{i, i2};
        this.f2731b = new float[]{0.0f, 1.0f};
    }

    public C0830d(int i, int i2, int i3) {
        this.f2730a = new int[]{i, i2, i3};
        this.f2731b = new float[]{0.0f, 0.5f, 1.0f};
    }

    public C0830d(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        this.f2730a = new int[size];
        this.f2731b = new float[size];
        for (int i = 0; i < size; i++) {
            this.f2730a[i] = ((Integer) arrayList.get(i)).intValue();
            this.f2731b[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }
}
