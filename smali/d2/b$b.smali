.class public final Ld2/b$b;
.super Ld2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ES384"

    const-string v1, "SHA384withECDSA"

    const-string v2, "P-384"

    invoke-direct {p0, v0, v1, v2}, Ld2/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
