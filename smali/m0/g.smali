.class public final Lm0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/g$b;
    }
.end annotation


# instance fields
.field public final a:Lm0/g$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/g$a;

    invoke-direct {v0, p1}, Lm0/g$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lm0/g;->a:Lm0/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lm0/m;Lm0/p;Lm0/c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/m;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p1, Lm0/m;->j:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-string v0, "post-response"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lm0/m;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lm0/g;->a:Lm0/g$a;

    .line 14
    .line 15
    new-instance v1, Lm0/g$b;

    .line 16
    .line 17
    invoke-direct {v1, p1, p2, p3}, Lm0/g$b;-><init>(Lm0/m;Lm0/p;Lm0/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lm0/g$a;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method
