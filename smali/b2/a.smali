.class public final Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/security/MessageDigest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Li2/b;->a:I

    .line 2
    .line 3
    const-class v0, Lb2/a;

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
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iput-object v0, p0, Lb2/a;->b:Ljava/security/MessageDigest;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0x8

    .line 17
    .line 18
    iput v0, p0, Lb2/a;->a:I

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lu0/c;

    .line 23
    .line 24
    const-string v2, "Unable to get a MessageDigest implementation of algorithm name: SHA-256 using provider null"

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lu0/c;-><init>(Ljava/lang/String;Ljava/security/GeneralSecurityException;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :catch_1
    new-instance v0, Lu0/c;

    .line 31
    .line 32
    const-string v1, "Unable to get MessageDigest instance with SHA-256"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lu0/c;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
