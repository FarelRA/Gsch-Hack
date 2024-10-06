.class public Ld2/g;
.super Ld2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/g$f;,
        Ld2/g$e;,
        Ld2/g$d;,
        Ld2/g$c;,
        Ld2/g$b;,
        Ld2/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final l(Ljava/security/PublicKey;)V
    .locals 0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lm1/h;->k(Ljava/security/interfaces/RSAKey;)V

    return-void
.end method
