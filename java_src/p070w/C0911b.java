package p070w;
/* renamed from: w.b */
/* loaded from: classes.dex */
public final class C0911b {

    /* renamed from: a */
    public static final C0915d f2867a = new C0915d(false);

    /* renamed from: b */
    public static final C0915d f2868b = new C0915d(true);

    /* renamed from: w.b$a */
    /* loaded from: classes.dex */
    public static class C0912a implements InterfaceC0913b {

        /* renamed from: a */
        public static final C0912a f2869a = new C0912a();

        @Override // p070w.C0911b.InterfaceC0913b
        /* renamed from: a */
        public final int mo101a(CharSequence charSequence, int i) {
            int i2 = i + 0;
            int i3 = 2;
            for (int i4 = 0; i4 < i2 && i3 == 2; i4++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i4));
                C0915d c0915d = C0911b.f2867a;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                i3 = 2;
                                break;
                        }
                    }
                    i3 = 0;
                }
                i3 = 1;
            }
            return i3;
        }
    }

    /* renamed from: w.b$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0913b {
        /* renamed from: a */
        int mo101a(CharSequence charSequence, int i);
    }

    /* renamed from: w.b$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0914c {

        /* renamed from: a */
        public final InterfaceC0913b f2870a;

        public AbstractC0914c(C0912a c0912a) {
            this.f2870a = c0912a;
        }

        /* renamed from: a */
        public abstract boolean mo100a();
    }

    /* renamed from: w.b$d */
    /* loaded from: classes.dex */
    public static class C0915d extends AbstractC0914c {

        /* renamed from: b */
        public final boolean f2871b;

        public C0915d(boolean z) {
            super(C0912a.f2869a);
            this.f2871b = z;
        }

        @Override // p070w.C0911b.AbstractC0914c
        /* renamed from: a */
        public final boolean mo100a() {
            return this.f2871b;
        }
    }
}
