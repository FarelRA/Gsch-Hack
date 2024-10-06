package androidx.lifecycle;

import android.util.Log;
import androidx.lifecycle.AbstractC0160f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p032i.C0584a;
/* renamed from: androidx.lifecycle.h */
/* loaded from: classes.dex */
public final class C0164h extends AbstractC0160f {

    /* renamed from: c */
    public final WeakReference<InterfaceC0163g> f693c;

    /* renamed from: a */
    public final C0584a<Object, C0166b> f691a = new C0584a<>();

    /* renamed from: d */
    public int f694d = 0;

    /* renamed from: e */
    public boolean f695e = false;

    /* renamed from: f */
    public boolean f696f = false;

    /* renamed from: g */
    public final ArrayList<AbstractC0160f.EnumC0162b> f697g = new ArrayList<>();

    /* renamed from: b */
    public AbstractC0160f.EnumC0162b f692b = AbstractC0160f.EnumC0162b.f686b;

    /* renamed from: androidx.lifecycle.h$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0165a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f698a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f699b;

        static {
            int[] iArr = new int[AbstractC0160f.EnumC0162b.values().length];
            f699b = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f699b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f699b[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f699b[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f699b[0] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[AbstractC0160f.EnumC0161a.values().length];
            f698a = iArr2;
            try {
                iArr2[AbstractC0160f.EnumC0161a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f698a[AbstractC0160f.EnumC0161a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.h$b */
    /* loaded from: classes.dex */
    public static class C0166b {

        /* renamed from: a */
        public AbstractC0160f.EnumC0162b f700a;

        /* renamed from: a */
        public final void m1204a(InterfaceC0163g interfaceC0163g, AbstractC0160f.EnumC0161a enumC0161a) {
            AbstractC0160f.EnumC0162b m1209a = C0164h.m1209a(enumC0161a);
            AbstractC0160f.EnumC0162b enumC0162b = this.f700a;
            if (m1209a.compareTo(enumC0162b) >= 0) {
                m1209a = enumC0162b;
            }
            this.f700a = m1209a;
            throw null;
        }
    }

    public C0164h(InterfaceC0163g interfaceC0163g) {
        this.f693c = new WeakReference<>(interfaceC0163g);
    }

    /* renamed from: a */
    public static AbstractC0160f.EnumC0162b m1209a(AbstractC0160f.EnumC0161a enumC0161a) {
        switch (C0165a.f698a[enumC0161a.ordinal()]) {
            case 1:
            case 2:
                return AbstractC0160f.EnumC0162b.f687c;
            case 3:
            case 4:
                return AbstractC0160f.EnumC0162b.f688d;
            case 5:
                return AbstractC0160f.EnumC0162b.f689e;
            case 6:
                return AbstractC0160f.EnumC0162b.f685a;
            default:
                throw new IllegalArgumentException("Unexpected event value " + enumC0161a);
        }
    }

    /* renamed from: e */
    public static AbstractC0160f.EnumC0161a m1205e(AbstractC0160f.EnumC0162b enumC0162b) {
        int ordinal = enumC0162b.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            return AbstractC0160f.EnumC0161a.ON_CREATE;
        }
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal != 4) {
                    throw new IllegalArgumentException("Unexpected state value " + enumC0162b);
                }
                throw new IllegalArgumentException();
            }
            return AbstractC0160f.EnumC0161a.ON_RESUME;
        }
        return AbstractC0160f.EnumC0161a.ON_START;
    }

    /* renamed from: b */
    public final void m1208b(AbstractC0160f.EnumC0161a enumC0161a) {
        m1207c(m1209a(enumC0161a));
    }

    /* renamed from: c */
    public final void m1207c(AbstractC0160f.EnumC0162b enumC0162b) {
        if (this.f692b == enumC0162b) {
            return;
        }
        this.f692b = enumC0162b;
        if (this.f695e || this.f694d != 0) {
            this.f696f = true;
            return;
        }
        this.f695e = true;
        m1206d();
        this.f695e = false;
    }

    /* renamed from: d */
    public final void m1206d() {
        if (this.f693c.get() == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        C0584a<Object, C0166b> c0584a = this.f691a;
        if (c0584a.f2135b == 0) {
            this.f696f = false;
        } else {
            c0584a.getClass();
            throw null;
        }
    }
}
