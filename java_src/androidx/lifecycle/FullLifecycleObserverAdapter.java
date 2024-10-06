package androidx.lifecycle;

import androidx.lifecycle.AbstractC0160f;
/* loaded from: classes.dex */
class FullLifecycleObserverAdapter implements InterfaceC0159e {

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0153a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f674a;

        static {
            int[] iArr = new int[AbstractC0160f.EnumC0161a.values().length];
            f674a = iArr;
            try {
                iArr[AbstractC0160f.EnumC0161a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f674a[AbstractC0160f.EnumC0161a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // androidx.lifecycle.InterfaceC0159e
    /* renamed from: a */
    public final void mo1210a(InterfaceC0163g interfaceC0163g, AbstractC0160f.EnumC0161a enumC0161a) {
        switch (C0153a.f674a[enumC0161a.ordinal()]) {
            case 1:
                throw null;
            case 2:
                throw null;
            case 3:
                throw null;
            case 4:
                throw null;
            case 5:
                throw null;
            case 6:
                throw null;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}
