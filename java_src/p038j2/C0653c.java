package p038j2;

import java.io.Serializable;
import p034i2.InterfaceC0598a;
/* renamed from: j2.c */
/* loaded from: classes.dex */
public final class C0653c implements InterfaceC0598a {

    /* renamed from: a */
    public final String f2260a;

    /* renamed from: b */
    public volatile InterfaceC0598a f2261b;

    public C0653c(String str) {
        this.f2260a = str;
    }

    @Override // p034i2.InterfaceC0598a
    /* renamed from: a */
    public final void mo439a(Object obj, String str) {
        m434f().mo439a(obj, str);
    }

    @Override // p034i2.InterfaceC0598a
    /* renamed from: b */
    public final void mo438b(String str, Object... objArr) {
        m434f().mo438b(str, objArr);
    }

    @Override // p034i2.InterfaceC0598a
    /* renamed from: c */
    public final boolean mo437c() {
        return m434f().mo437c();
    }

    @Override // p034i2.InterfaceC0598a
    /* renamed from: d */
    public final void mo436d(String str) {
        m434f().mo436d(str);
    }

    @Override // p034i2.InterfaceC0598a
    /* renamed from: e */
    public final void mo435e(Object obj, Serializable serializable, String str) {
        m434f().mo435e(obj, serializable, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C0653c.class == obj.getClass() && this.f2260a.equals(((C0653c) obj).f2260a);
    }

    /* renamed from: f */
    public final InterfaceC0598a m434f() {
        return this.f2261b != null ? this.f2261b : C0652b.f2259a;
    }

    public final int hashCode() {
        return this.f2260a.hashCode();
    }
}
