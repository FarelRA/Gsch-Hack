.class public final Lf2/b;
.super Lf2/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf2/b;->b:I

    invoke-direct {p0}, Lf2/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lf2/d;->a()Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lg2/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key spec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
