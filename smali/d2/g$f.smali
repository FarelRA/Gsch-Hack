.class public final Ld2/g$f;
.super Ld2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RS512"

    const-string v1, "SHA512withRSA"

    invoke-direct {p0, v0, v1}, Ld2/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
