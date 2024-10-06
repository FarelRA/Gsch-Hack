.class public abstract Le0/e;
.super Lh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lh/c;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Le0/g;


# direct methods
.method public constructor <init>(Le0/d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le0/d;->d:Le0/d$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Le0/g;

    .line 7
    .line 8
    invoke-direct {v1}, Le0/g;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Le0/e;->d:Le0/g;

    .line 12
    .line 13
    iput-object p1, p0, Le0/e;->a:Landroid/app/Activity;

    .line 14
    .line 15
    iput-object p1, p0, Le0/e;->b:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Le0/e;->c:Landroid/os/Handler;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string v0, "handler == null"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
