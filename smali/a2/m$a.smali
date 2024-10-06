.class public final La2/m$a;
.super La2/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    const-string v1, "RSA1_5"

    invoke-direct {p0, v0, v1}, La2/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
