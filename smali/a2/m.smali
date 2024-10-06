.class public La2/m;
.super La2/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/m$a;,
        La2/m$b;,
        La2/m$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La2/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lz1/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lm1/h;->u(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Lg2/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 0

    const-class p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1, p2}, Lm1/h;->i(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lm1/h;->k(Ljava/security/interfaces/RSAKey;)V

    return-void
.end method
