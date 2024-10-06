.class public final Lq1/b;
.super Lq1/g;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lq1/g;-><init>()V

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lq1/g;->a:I

    .line 2
    new-instance v0, Lf/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lq1/g;-><init>()V

    const/16 p1, 0x9

    .line 4
    iput p1, p0, Lq1/g;->a:I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lq1/g;-><init>()V

    const/16 p1, 0x8

    .line 6
    iput p1, p0, Lq1/g;->a:I

    return-void
.end method
