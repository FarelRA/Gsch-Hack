.class public final Lq1/j;
.super Lq1/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/g;"
    }
.end annotation


# instance fields
.field public final b:Lf/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq1/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    iput v0, p0, Lq1/g;->a:I

    .line 6
    .line 7
    new-instance v1, Lf/c;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lf/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lq1/j;->b:Lf/c;

    .line 13
    .line 14
    return-void
.end method
