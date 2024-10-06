.class public final Lm0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lm0/m;

.field public final c:Lm0/p;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lm0/m;Lm0/p;Lm0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/g$b;->b:Lm0/m;

    iput-object p2, p0, Lm0/g$b;->c:Lm0/p;

    iput-object p3, p0, Lm0/g$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/g$b;->b:Lm0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/m;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/g$b;->c:Lm0/p;

    .line 7
    .line 8
    iget-object v1, v0, Lm0/p;->c:Lm0/r;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lm0/g$b;->b:Lm0/m;

    .line 18
    .line 19
    iget-object v0, v0, Lm0/p;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lm0/m;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lm0/g$b;->b:Lm0/m;

    .line 26
    .line 27
    iget-object v2, v0, Lm0/m;->e:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v0, v0, Lm0/m;->f:Lm0/p$a;

    .line 31
    .line 32
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lm0/p$a;->a(Lm0/r;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    iget-object v0, p0, Lm0/g$b;->c:Lm0/p;

    .line 39
    .line 40
    iget-boolean v0, v0, Lm0/p;->d:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lm0/g$b;->b:Lm0/m;

    .line 45
    .line 46
    const-string v1, "intermediate-response"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lm0/m;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v0, p0, Lm0/g$b;->b:Lm0/m;

    .line 53
    .line 54
    const-string v1, "done"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lm0/m;->c(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    iget-object v0, p0, Lm0/g$b;->d:Ljava/lang/Runnable;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw v0
.end method
