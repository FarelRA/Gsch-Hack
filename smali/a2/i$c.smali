.class public final La2/i$c;
.super La2/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, La2/d$c;

    .line 2
    .line 3
    invoke-direct {v0}, La2/d$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, La2/n;->f:Z

    .line 8
    .line 9
    const-string v1, "ECDH-ES+A256KW"

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, La2/i;-><init>(Ljava/lang/String;La2/d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
