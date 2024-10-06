.class public final Lz1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Li2/a;

.field public static final f:Lz1/e;


# instance fields
.field public a:Lz1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/d;"
        }
    .end annotation
.end field

.field public b:Lz1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/d;"
        }
    .end annotation
.end field

.field public c:Lz1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/d;"
        }
    .end annotation
.end field

.field public d:Lz1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/d;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Li2/b;->a:I

    .line 2
    .line 3
    const-class v0, Lz1/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Li2/b;->e(Ljava/lang/String;)Li2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lz1/e;->e:Li2/a;

    .line 14
    .line 15
    new-instance v0, Lz1/e;

    .line 16
    .line 17
    invoke-direct {v0}, Lz1/e;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lz1/e;->f:Lz1/e;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "Initializing jose4j (running with Java {} from {} at {} with {} security providers installed)..."

    sget-object v1, Lz1/e;->e:Li2/a;

    invoke-interface {v1, v0, v4}, Li2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lz1/d;

    const-class v4, Ld2/e;

    const-string v5, "alg"

    invoke-direct {v0, v4, v5}, Lz1/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/f;

    invoke-direct {v4}, Ld2/f;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/c$a;

    invoke-direct {v4}, Ld2/c$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/c$b;

    invoke-direct {v4}, Ld2/c$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/c$c;

    invoke-direct {v4}, Ld2/c$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/b$a;

    invoke-direct {v4}, Ld2/b$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/b$b;

    invoke-direct {v4}, Ld2/b$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/b$c;

    invoke-direct {v4}, Ld2/b$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$d;

    invoke-direct {v4}, Ld2/g$d;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$e;

    invoke-direct {v4}, Ld2/g$e;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$f;

    invoke-direct {v4}, Ld2/g$f;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$a;

    invoke-direct {v4}, Ld2/g$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$b;

    invoke-direct {v4}, Ld2/g$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    new-instance v4, Ld2/g$c;

    invoke-direct {v4}, Ld2/g$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->a:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->b()Ljava/util/Set;

    move-result-object v0

    const-string v4, "JWS signature algorithms: {}"

    invoke-interface {v1, v0, v4}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/d;

    const-class v4, La2/k;

    invoke-direct {v0, v4, v5}, Lz1/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/m$a;

    invoke-direct {v4}, La2/m$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/m$c;

    invoke-direct {v4}, La2/m$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/m$b;

    invoke-direct {v4}, La2/m$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/g;

    invoke-direct {v4}, La2/g;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/d$a;

    invoke-direct {v4}, La2/d$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/d$b;

    invoke-direct {v4}, La2/d$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/d$c;

    invoke-direct {v4}, La2/d$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/h;

    invoke-direct {v4}, La2/h;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/i$a;

    invoke-direct {v4}, La2/i$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/i$b;

    invoke-direct {v4}, La2/i$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/i$c;

    invoke-direct {v4}, La2/i$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/l$a;

    invoke-direct {v4}, La2/l$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/l$b;

    invoke-direct {v4}, La2/l$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/l$c;

    invoke-direct {v4}, La2/l$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/c$a;

    invoke-direct {v4}, La2/c$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/c$b;

    invoke-direct {v4}, La2/c$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    new-instance v4, La2/c$c;

    invoke-direct {v4}, La2/c$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->b:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->b()Ljava/util/Set;

    move-result-object v0

    const-string v4, "JWE key management algorithms: {}"

    invoke-interface {v1, v0, v4}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/d;

    const-string v4, "enc"

    const-class v5, La2/f;

    invoke-direct {v0, v5, v4}, Lz1/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/a$a;

    invoke-direct {v4}, La2/a$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/a$b;

    invoke-direct {v4}, La2/a$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/a$c;

    invoke-direct {v4}, La2/a$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/b$a;

    invoke-direct {v4}, La2/b$a;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/b$b;

    invoke-direct {v4}, La2/b$b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    new-instance v4, La2/b$c;

    invoke-direct {v4}, La2/b$c;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->c:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->b()Ljava/util/Set;

    move-result-object v0

    const-string v4, "JWE content encryption algorithms: {}"

    invoke-interface {v1, v0, v4}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/d;

    const-string v4, "zip"

    const-class v5, Lh2/a;

    invoke-direct {v0, v5, v4}, Lz1/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lz1/e;->d:Lz1/d;

    new-instance v4, Lh2/b;

    invoke-direct {v4}, Lh2/b;-><init>()V

    invoke-virtual {v0, v4}, Lz1/d;->c(Lz1/a;)V

    iget-object v0, p0, Lz1/e;->d:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->b()Ljava/util/Set;

    move-result-object v0

    const-string v4, "JWE compression algorithms: {}"

    invoke-interface {v1, v0, v4}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Initialized jose4j in {}ms"

    invoke-interface {v1, v0, v2}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
