.class public final La2/l$c;
.super La2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

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
    const-string v1, "PBES2-HS512+A256KW"

    .line 10
    .line 11
    const-string v2, "HmacSHA512"

    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v0}, La2/l;-><init>(Ljava/lang/String;Ljava/lang/String;La2/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
