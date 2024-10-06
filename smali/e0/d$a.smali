.class public final Le0/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le0/d;


# direct methods
.method public constructor <init>(Le0/d;)V
    .locals 0

    iput-object p1, p0, Le0/d$a;->a:Le0/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Le0/d$a;->a:Le0/d;

    .line 11
    .line 12
    iget-object v0, p1, Le0/d;->e:Lf/c;

    .line 13
    .line 14
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Le0/e;

    .line 17
    .line 18
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Le0/g;->p:Z

    .line 22
    .line 23
    iput-boolean v1, v0, Le0/g;->q:Z

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Le0/g;->C(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Le0/d;->e:Lf/c;

    .line 30
    .line 31
    iget-object p1, p1, Lf/c;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Le0/e;

    .line 34
    .line 35
    iget-object p1, p1, Le0/e;->d:Le0/g;

    .line 36
    .line 37
    invoke-virtual {p1}, Le0/g;->F()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
