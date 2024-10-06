.class public final Landroidx/recyclerview/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/r$a;
    }
.end annotation


# instance fields
.field public final a:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Landroidx/recyclerview/widget/k$v;",
            "Landroidx/recyclerview/widget/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "Landroidx/recyclerview/widget/k$v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/r;->a:Lk/b;

    new-instance v0, Lk/e;

    invoke-direct {v0}, Lk/e;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/r;->b:Lk/e;

    return-void
.end method
