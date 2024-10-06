package p081z1;

import java.security.Security;
import java.util.Arrays;
import p002a2.C0015a;
import p002a2.C0019b;
import p002a2.C0023c;
import p002a2.C0027d;
import p002a2.C0033g;
import p002a2.C0034h;
import p002a2.C0035i;
import p002a2.C0041l;
import p002a2.C0045m;
import p002a2.InterfaceC0032f;
import p002a2.InterfaceC0040k;
import p015d2.C0375b;
import p015d2.C0379c;
import p015d2.C0385f;
import p015d2.C0386g;
import p015d2.InterfaceC0384e;
import p031h2.C0583b;
import p031h2.InterfaceC0582a;
import p034i2.C0599b;
import p034i2.InterfaceC0598a;
/* renamed from: z1.e */
/* loaded from: classes.dex */
public final class C0988e {

    /* renamed from: e */
    public static final InterfaceC0598a f3000e;

    /* renamed from: f */
    public static final C0988e f3001f;

    /* renamed from: a */
    public C0987d f3002a;

    /* renamed from: b */
    public C0987d f3003b;

    /* renamed from: c */
    public C0987d f3004c;

    /* renamed from: d */
    public C0987d f3005d;

    static {
        int i = C0599b.f2144a;
        f3000e = C0599b.m507e(C0988e.class.getName());
        f3001f = new C0988e();
    }

    public C0988e() {
        Object[] objArr = {System.getProperty("java.version"), System.getProperty("java.vendor"), System.getProperty("java.home"), Arrays.toString(Security.getProviders())};
        InterfaceC0598a interfaceC0598a = f3000e;
        interfaceC0598a.mo438b("Initializing jose4j (running with Java {} from {} at {} with {} security providers installed)...", objArr);
        long currentTimeMillis = System.currentTimeMillis();
        C0987d c0987d = new C0987d(InterfaceC0384e.class, "alg");
        this.f3002a = c0987d;
        c0987d.m1c(new C0385f());
        this.f3002a.m1c(new C0379c.C0380a());
        this.f3002a.m1c(new C0379c.C0381b());
        this.f3002a.m1c(new C0379c.C0382c());
        this.f3002a.m1c(new C0375b.C0376a());
        this.f3002a.m1c(new C0375b.C0377b());
        this.f3002a.m1c(new C0375b.C0378c());
        this.f3002a.m1c(new C0386g.C0390d());
        this.f3002a.m1c(new C0386g.C0391e());
        this.f3002a.m1c(new C0386g.C0392f());
        this.f3002a.m1c(new C0386g.C0387a());
        this.f3002a.m1c(new C0386g.C0388b());
        this.f3002a.m1c(new C0386g.C0389c());
        interfaceC0598a.mo439a(this.f3002a.m2b(), "JWS signature algorithms: {}");
        C0987d c0987d2 = new C0987d(InterfaceC0040k.class, "alg");
        this.f3003b = c0987d2;
        c0987d2.m1c(new C0045m.C0046a());
        this.f3003b.m1c(new C0045m.C0048c());
        this.f3003b.m1c(new C0045m.C0047b());
        this.f3003b.m1c(new C0033g());
        this.f3003b.m1c(new C0027d.C0028a());
        this.f3003b.m1c(new C0027d.C0029b());
        this.f3003b.m1c(new C0027d.C0030c());
        this.f3003b.m1c(new C0034h());
        this.f3003b.m1c(new C0035i.C0036a());
        this.f3003b.m1c(new C0035i.C0037b());
        this.f3003b.m1c(new C0035i.C0038c());
        this.f3003b.m1c(new C0041l.C0042a());
        this.f3003b.m1c(new C0041l.C0043b());
        this.f3003b.m1c(new C0041l.C0044c());
        this.f3003b.m1c(new C0023c.C0024a());
        this.f3003b.m1c(new C0023c.C0025b());
        this.f3003b.m1c(new C0023c.C0026c());
        interfaceC0598a.mo439a(this.f3003b.m2b(), "JWE key management algorithms: {}");
        C0987d c0987d3 = new C0987d(InterfaceC0032f.class, "enc");
        this.f3004c = c0987d3;
        c0987d3.m1c(new C0015a.C0016a());
        this.f3004c.m1c(new C0015a.C0017b());
        this.f3004c.m1c(new C0015a.C0018c());
        this.f3004c.m1c(new C0019b.C0020a());
        this.f3004c.m1c(new C0019b.C0021b());
        this.f3004c.m1c(new C0019b.C0022c());
        interfaceC0598a.mo439a(this.f3004c.m2b(), "JWE content encryption algorithms: {}");
        C0987d c0987d4 = new C0987d(InterfaceC0582a.class, "zip");
        this.f3005d = c0987d4;
        c0987d4.m1c(new C0583b());
        interfaceC0598a.mo439a(this.f3005d.m2b(), "JWE compression algorithms: {}");
        interfaceC0598a.mo439a(Long.valueOf(System.currentTimeMillis() - currentTimeMillis), "Initialized jose4j in {}ms");
    }
}
