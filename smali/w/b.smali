.class public final Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/b$a;,
        Lw/b$b;,
        Lw/b$d;,
        Lw/b$c;
    }
.end annotation


# static fields
.field public static final a:Lw/b$d;

.field public static final b:Lw/b$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw/b$d;-><init>(Z)V

    sput-object v0, Lw/b;->a:Lw/b$d;

    new-instance v0, Lw/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw/b$d;-><init>(Z)V

    sput-object v0, Lw/b;->b:Lw/b$d;

    return-void
.end method
