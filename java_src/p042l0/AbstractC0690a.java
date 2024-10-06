package p042l0;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p039k.C0655b;
/* renamed from: l0.a */
/* loaded from: classes.dex */
public abstract class AbstractC0690a {

    /* renamed from: a */
    public final C0655b<String, Method> f2427a;

    /* renamed from: b */
    public final C0655b<String, Method> f2428b;

    /* renamed from: c */
    public final C0655b<String, Class> f2429c;

    public AbstractC0690a(C0655b<String, Method> c0655b, C0655b<String, Method> c0655b2, C0655b<String, Class> c0655b3) {
        this.f2427a = c0655b;
        this.f2428b = c0655b2;
        this.f2429c = c0655b3;
    }

    /* renamed from: a */
    public abstract C0691b mo363a();

    /* renamed from: b */
    public final Class m368b(Class<? extends InterfaceC0692c> cls) {
        String name = cls.getName();
        C0655b<String, Class> c0655b = this.f2429c;
        Class orDefault = c0655b.getOrDefault(name, null);
        if (orDefault == null) {
            Class<?> cls2 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            c0655b.put(cls.getName(), cls2);
            return cls2;
        }
        return orDefault;
    }

    /* renamed from: c */
    public final Method m367c(String str) {
        C0655b<String, Method> c0655b = this.f2427a;
        Method orDefault = c0655b.getOrDefault(str, null);
        if (orDefault == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, AbstractC0690a.class.getClassLoader()).getDeclaredMethod("read", AbstractC0690a.class);
            c0655b.put(str, declaredMethod);
            return declaredMethod;
        }
        return orDefault;
    }

    /* renamed from: d */
    public final Method m366d(Class cls) {
        String name = cls.getName();
        C0655b<String, Method> c0655b = this.f2428b;
        Method orDefault = c0655b.getOrDefault(name, null);
        if (orDefault == null) {
            Class m368b = m368b(cls);
            System.currentTimeMillis();
            Method declaredMethod = m368b.getDeclaredMethod("write", cls, AbstractC0690a.class);
            c0655b.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return orDefault;
    }

    /* renamed from: e */
    public abstract boolean mo362e();

    /* renamed from: f */
    public abstract byte[] mo361f();

    /* renamed from: g */
    public abstract CharSequence mo360g();

    /* renamed from: h */
    public abstract boolean mo359h(int i);

    /* renamed from: i */
    public abstract int mo358i();

    /* renamed from: j */
    public abstract <T extends Parcelable> T mo357j();

    /* renamed from: k */
    public abstract String mo356k();

    /* renamed from: l */
    public final <T extends InterfaceC0692c> T m365l() {
        String mo356k = mo356k();
        if (mo356k == null) {
            return null;
        }
        try {
            return (T) m367c(mo356k).invoke(null, mo363a());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: m */
    public abstract void mo355m(int i);

    /* renamed from: n */
    public abstract void mo354n(boolean z);

    /* renamed from: o */
    public abstract void mo353o(byte[] bArr);

    /* renamed from: p */
    public abstract void mo352p(CharSequence charSequence);

    /* renamed from: q */
    public abstract void mo351q(int i);

    /* renamed from: r */
    public abstract void mo350r(Parcelable parcelable);

    /* renamed from: s */
    public abstract void mo349s(String str);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public final void m364t(InterfaceC0692c interfaceC0692c) {
        if (interfaceC0692c == null) {
            mo349s(null);
            return;
        }
        try {
            mo349s(m368b(interfaceC0692c.getClass()).getName());
            C0691b mo363a = mo363a();
            try {
                m366d(interfaceC0692c.getClass()).invoke(null, interfaceC0692c, mo363a);
                mo363a.m348u();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(interfaceC0692c.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
