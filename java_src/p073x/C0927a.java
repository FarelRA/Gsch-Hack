package p073x;

import android.util.Log;
import java.io.Writer;
/* renamed from: x.a */
/* loaded from: classes.dex */
public final class C0927a extends Writer {

    /* renamed from: b */
    public final StringBuilder f2891b = new StringBuilder(128);

    /* renamed from: a */
    public final String f2890a = "FragmentManager";

    /* renamed from: a */
    public final void m93a() {
        StringBuilder sb = this.f2891b;
        if (sb.length() > 0) {
            Log.d(this.f2890a, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m93a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        m93a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m93a();
            } else {
                this.f2891b.append(c);
            }
        }
    }
}
