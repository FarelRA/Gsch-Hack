.class public final La2/m$b;
.super La2/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 2
    .line 3
    const-string v1, "RSA-OAEP-256"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, La2/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 9
    .line 10
    sget-object v1, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 11
    .line 12
    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 13
    .line 14
    const-string v3, "SHA-256"

    .line 15
    .line 16
    const-string v4, "MGF1"

    .line 17
    .line 18
    invoke-direct {v0, v3, v4, v1, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, La2/n;->e:Ljava/security/spec/AlgorithmParameterSpec;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lc2/b$a;->a()Lc2/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lx/b;

    .line 6
    .line 7
    const-string v2, "AES"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    invoke-direct {v1, v4, v3, v2}, Lx/b;-><init>(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lc2/b;->d:Ljava/security/Key;

    .line 16
    .line 17
    new-instance v2, Lv1/a;

    .line 18
    .line 19
    invoke-direct {v2}, Lv1/a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0, v2}, La2/n;->j(Lx/b;Ljava/security/Key;Lv1/a;)V
    :try_end_0
    .catch Lg2/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lz1/f;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " is not available due to "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lm1/h;->K(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, La2/n;->d:Li2/a;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Li2/a;->d(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return v0
.end method
