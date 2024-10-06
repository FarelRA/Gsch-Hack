.class public final Landroidx/lifecycle/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/f$b;


# virtual methods
.method public final a(Landroidx/lifecycle/g;Landroidx/lifecycle/f$a;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/f$a;)Landroidx/lifecycle/f$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/f$b;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, p2

    .line 15
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/f$b;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
