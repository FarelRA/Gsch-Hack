.class public final Ld2/c$b;
.super Ld2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "HmacSHA384"

    const/16 v1, 0x180

    const-string v2, "HS384"

    invoke-direct {p0, v1, v2, v0}, Ld2/c;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
