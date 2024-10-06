.class public final La2/a$c;
.super La2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "HmacSHA512"

    const/16 v1, 0x20

    const-string v2, "A256CBC-HS512"

    const/16 v3, 0x40

    invoke-direct {p0, v2, v3, v0, v1}, La2/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method
