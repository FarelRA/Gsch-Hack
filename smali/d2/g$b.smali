.class public final Ld2/g$b;
.super Ld2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v0, "PS384"

    .line 2
    .line 3
    const-string v1, "SHA384withRSAandMGF1"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ld2/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v5, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 9
    .line 10
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "MGF1"

    .line 17
    .line 18
    const/16 v6, 0x30

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    move-object v2, v0

    .line 22
    invoke-direct/range {v2 .. v7}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ld2/a;->d:Ljava/security/spec/AlgorithmParameterSpec;

    .line 26
    .line 27
    return-void
.end method
