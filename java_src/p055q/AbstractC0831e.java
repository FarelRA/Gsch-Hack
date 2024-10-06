package p055q;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import p024g.C0558w;
/* renamed from: q.e */
/* loaded from: classes.dex */
public abstract class AbstractC0831e {

    /* renamed from: q.e$a */
    /* loaded from: classes.dex */
    public class RunnableC0832a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ Typeface f2732b;

        public RunnableC0832a(Typeface typeface) {
            this.f2732b = typeface;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0558w.C0559a c0559a = (C0558w.C0559a) AbstractC0831e.this;
            C0558w c0558w = C0558w.this;
            if (c0558w.f2095k) {
                Typeface typeface = this.f2732b;
                c0558w.f2094j = typeface;
                TextView textView = (TextView) c0559a.f2096a.get();
                if (textView != null) {
                    textView.setTypeface(typeface, c0558w.f2093i);
                }
            }
        }
    }

    /* renamed from: q.e$b */
    /* loaded from: classes.dex */
    public class RunnableC0833b implements Runnable {
        public RunnableC0833b(int i) {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0831e.this.getClass();
        }
    }

    /* renamed from: a */
    public final void m199a(int i, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new RunnableC0833b(i));
    }

    /* renamed from: b */
    public final void m198b(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new RunnableC0832a(typeface));
    }
}
