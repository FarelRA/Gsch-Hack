.class public final enum Lc2/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc2/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc2/b$b;

.field public static final enum b:Lc2/b$b;

.field public static final synthetic c:[Lc2/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc2/b$b;

    const/4 v1, 0x0

    const-string v2, "INCLUDE_PRIVATE"

    invoke-direct {v0, v1, v2}, Lc2/b$b;-><init>(ILjava/lang/String;)V

    new-instance v2, Lc2/b$b;

    const/4 v3, 0x1

    const-string v4, "INCLUDE_SYMMETRIC"

    invoke-direct {v2, v3, v4}, Lc2/b$b;-><init>(ILjava/lang/String;)V

    sput-object v2, Lc2/b$b;->a:Lc2/b$b;

    new-instance v4, Lc2/b$b;

    const/4 v5, 0x2

    const-string v6, "PUBLIC_ONLY"

    invoke-direct {v4, v5, v6}, Lc2/b$b;-><init>(ILjava/lang/String;)V

    sput-object v4, Lc2/b$b;->b:Lc2/b$b;

    const/4 v6, 0x3

    new-array v6, v6, [Lc2/b$b;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lc2/b$b;->c:[Lc2/b$b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc2/b$b;
    .locals 1

    const-class v0, Lc2/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc2/b$b;

    return-object p0
.end method

.method public static values()[Lc2/b$b;
    .locals 1

    sget-object v0, Lc2/b$b;->c:[Lc2/b$b;

    invoke-virtual {v0}, [Lc2/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc2/b$b;

    return-object v0
.end method
