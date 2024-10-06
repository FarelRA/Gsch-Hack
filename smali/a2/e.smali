.class public final La2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Li2/b;->a:I

    .line 2
    .line 3
    const-class v0, La2/e;

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
    sput-object v0, La2/e;->a:Li2/a;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 4

    sget-object v0, La2/e;->a:Li2/a;

    mul-int/lit8 p0, p0, 0x8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v2

    if-gt p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string v3, "max allowed key length for {} is {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2, v3}, Li2/a;->e(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "Unknown/unsupported algorithm, {} {}"

    invoke-interface {v0, p1, p0, v2}, Li2/a;->e(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
