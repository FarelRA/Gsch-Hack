.class public final Ld2/f;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements Ld2/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "none"

    .line 5
    .line 6
    iput-object v0, p0, Lz1/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d([BLjava/security/Key;[BLv1/a;)Z
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    array-length p1, p1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1

    .line 10
    :cond_1
    new-instance p1, Lg2/a;

    .line 11
    .line 12
    const-string p2, "JWS Plaintext (alg=none) must not use a key."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Ljava/security/Key;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lg2/a;

    const-string v0, "JWS Plaintext (alg=none) must not use a key."

    invoke-direct {p1, v0}, Lg2/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
