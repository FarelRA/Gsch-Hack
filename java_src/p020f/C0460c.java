package p020f;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p017e0.AbstractC0419e;
import p034i2.ILoggerFactory;
import p034i2.InterfaceC0598a;
import p036j0.InterfaceC0635o;
import p038j2.C0653c;
import p046m1.C0737i;
import p046m1.C0741m;
import p051o1.InterfaceC0797a;
import p051o1.InterfaceC0799c;
import p067u1.C0889a;
/* renamed from: f.c */
/* loaded from: classes.dex */
public class C0460c implements InterfaceC0635o, InterfaceC0797a, ILoggerFactory {

    /* renamed from: a */
    public Object f1797a;

    public C0460c(int i) {
        if (i == 7) {
            this.f1797a = new StringBuilder();
        } else if (i == 8) {
            this.f1797a = new C0889a(-1, null, true);
        } else if (i == 10) {
            try {
                this.f1797a = CertificateFactory.getInstance("X.509");
            } catch (CertificateException e) {
                throw new IllegalStateException("Couldn't find X.509 CertificateFactory!?!", e);
            }
        } else if (i != 11) {
            this.f1797a = new HashMap();
        } else {
            this.f1797a = new ConcurrentHashMap();
        }
    }

    @Override // p051o1.InterfaceC0799c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo207a() {
        return new C0737i((C0741m) ((InterfaceC0799c) this.f1797a).mo207a());
    }

    @Override // p036j0.InterfaceC0635o
    /* renamed from: b */
    public final void mo457b(View view) {
        ((ViewGroupOverlay) this.f1797a).remove(view);
    }

    @Override // p034i2.ILoggerFactory
    /* renamed from: c */
    public final InterfaceC0598a mo295c(String str) {
        C0653c c0653c = (C0653c) ((ConcurrentMap) this.f1797a).get(str);
        if (c0653c == null) {
            C0653c c0653c2 = new C0653c(str);
            C0653c c0653c3 = (C0653c) ((ConcurrentMap) this.f1797a).putIfAbsent(str, c0653c2);
            return c0653c3 != null ? c0653c3 : c0653c2;
        }
        return c0653c;
    }

    public void clear() {
        ((ConcurrentMap) this.f1797a).clear();
    }

    /* renamed from: f */
    public final byte[] m699f(String str) {
        return ((C0889a) this.f1797a).m114b(str);
    }

    /* renamed from: g */
    public final String m698g(byte[] bArr) {
        return ((C0889a) this.f1797a).m112d(bArr);
    }

    /* renamed from: h */
    public final StringBuilder m697h() {
        ((StringBuilder) this.f1797a).setLength(0);
        return (StringBuilder) this.f1797a;
    }

    /* renamed from: i */
    public final void m696i() {
        ((AbstractC0419e) this.f1797a).f1629d.m774O();
    }

    public C0460c(ViewGroup viewGroup) {
        this.f1797a = viewGroup.getOverlay();
    }

    public C0460c(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1797a = obj;
    }
}
