.class public final La2/d$a;
.super La2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "A128KW"

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, La2/d;-><init>(ILjava/lang/String;)V

    return-void
.end method
