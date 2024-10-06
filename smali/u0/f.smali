.class public final Lu0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lm1/b;)Lu0/l;
    .locals 3

    .line 1
    new-instance v0, Lu0/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lu0/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lu0/l;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lu0/l;->e()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lu0/l;->c:Z

    .line 14
    .line 15
    iput-object p0, v0, Lu0/l;->e:Ljava/lang/Exception;

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, v0, Lu0/l;->b:Lu0/j;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lu0/j;->a(Lu0/l;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method
