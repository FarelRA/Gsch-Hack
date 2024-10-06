.class public final La2/c$b;
.super La2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x18

    const-string v1, "A192GCMKW"

    invoke-direct {p0, v0, v1}, La2/c;-><init>(ILjava/lang/String;)V

    return-void
.end method
