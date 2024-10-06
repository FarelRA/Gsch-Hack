package p047n0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: n0.b */
/* loaded from: classes.dex */
public final class C0745b {

    /* renamed from: e */
    public static final C0746a f2605e = new C0746a();

    /* renamed from: a */
    public final ArrayList f2606a = new ArrayList();

    /* renamed from: b */
    public final ArrayList f2607b = new ArrayList(64);

    /* renamed from: c */
    public int f2608c = 0;

    /* renamed from: d */
    public final int f2609d = 4096;

    /* renamed from: n0.b$a */
    /* loaded from: classes.dex */
    public class C0746a implements Comparator<byte[]> {
        @Override // java.util.Comparator
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    /* renamed from: a */
    public final synchronized byte[] m270a(int i) {
        for (int i2 = 0; i2 < this.f2607b.size(); i2++) {
            byte[] bArr = (byte[]) this.f2607b.get(i2);
            if (bArr.length >= i) {
                this.f2608c -= bArr.length;
                this.f2607b.remove(i2);
                this.f2606a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }

    /* renamed from: b */
    public final synchronized void m269b(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f2609d) {
                this.f2606a.add(bArr);
                int binarySearch = Collections.binarySearch(this.f2607b, bArr, f2605e);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f2607b.add(binarySearch, bArr);
                this.f2608c += bArr.length;
                m268c();
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m268c() {
        while (this.f2608c > this.f2609d) {
            byte[] bArr = (byte[]) this.f2606a.remove(0);
            this.f2607b.remove(bArr);
            this.f2608c -= bArr.length;
        }
    }
}
