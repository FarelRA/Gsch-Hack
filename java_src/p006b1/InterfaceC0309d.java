package p006b1;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
/* renamed from: b1.d */
/* loaded from: classes.dex */
public interface InterfaceC0309d {

    /* renamed from: b1.d$a */
    /* loaded from: classes.dex */
    public static class C0310a implements TypeEvaluator<C0313d> {

        /* renamed from: b */
        public static final C0310a f1129b = new C0310a();

        /* renamed from: a */
        public final C0313d f1130a = new C0313d();

        @Override // android.animation.TypeEvaluator
        public final C0313d evaluate(float f, C0313d c0313d, C0313d c0313d2) {
            C0313d c0313d3 = c0313d;
            C0313d c0313d4 = c0313d2;
            float f2 = c0313d3.f1133a;
            float f3 = 1.0f - f;
            float f4 = (c0313d4.f1133a * f) + (f2 * f3);
            float f5 = c0313d3.f1134b;
            float f6 = c0313d4.f1134b * f;
            float f7 = c0313d3.f1135c;
            float f8 = f * c0313d4.f1135c;
            C0313d c0313d5 = this.f1130a;
            c0313d5.f1133a = f4;
            c0313d5.f1134b = f6 + (f5 * f3);
            c0313d5.f1135c = f8 + (f3 * f7);
            return c0313d5;
        }
    }

    /* renamed from: b1.d$b */
    /* loaded from: classes.dex */
    public static class C0311b extends Property<InterfaceC0309d, C0313d> {

        /* renamed from: a */
        public static final C0311b f1131a = new C0311b();

        public C0311b() {
            super(C0313d.class, "circularReveal");
        }

        @Override // android.util.Property
        public final C0313d get(InterfaceC0309d interfaceC0309d) {
            return interfaceC0309d.getRevealInfo();
        }

        @Override // android.util.Property
        public final void set(InterfaceC0309d interfaceC0309d, C0313d c0313d) {
            interfaceC0309d.setRevealInfo(c0313d);
        }
    }

    /* renamed from: b1.d$c */
    /* loaded from: classes.dex */
    public static class C0312c extends Property<InterfaceC0309d, Integer> {

        /* renamed from: a */
        public static final C0312c f1132a = new C0312c();

        public C0312c() {
            super(Integer.class, "circularRevealScrimColor");
        }

        @Override // android.util.Property
        public final Integer get(InterfaceC0309d interfaceC0309d) {
            return Integer.valueOf(interfaceC0309d.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public final void set(InterfaceC0309d interfaceC0309d, Integer num) {
            interfaceC0309d.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: b1.d$d */
    /* loaded from: classes.dex */
    public static class C0313d {

        /* renamed from: a */
        public float f1133a;

        /* renamed from: b */
        public float f1134b;

        /* renamed from: c */
        public float f1135c;

        public C0313d() {
        }

        public C0313d(float f, float f2, float f3) {
            this.f1133a = f;
            this.f1134b = f2;
            this.f1135c = f3;
        }
    }

    /* renamed from: a */
    void mo993a();

    /* renamed from: b */
    void mo992b();

    int getCircularRevealScrimColor();

    C0313d getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C0313d c0313d);
}
