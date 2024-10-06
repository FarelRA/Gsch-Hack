.class public final Lm0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/p$a;,
        Lm0/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lm0/b$a;

.field public final c:Lm0/r;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm0/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/p;->d:Z

    iput-object p1, p0, Lm0/p;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm0/p;->b:Lm0/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/p;->c:Lm0/r;

    return-void
.end method

.method public constructor <init>(Lm0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/p;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lm0/p;->a:Ljava/lang/Object;

    iput-object v0, p0, Lm0/p;->b:Lm0/b$a;

    iput-object p1, p0, Lm0/p;->c:Lm0/r;

    return-void
.end method
