.class public final La2/b$c;
.super La2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "A256GCM"

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, La2/b;-><init>(ILjava/lang/String;)V

    return-void
.end method
