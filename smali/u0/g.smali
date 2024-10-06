.class public final Lu0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lu0/l;

.field public final synthetic c:Lu0/h;


# direct methods
.method public constructor <init>(Lu0/h;Lu0/l;)V
    .locals 0

    iput-object p1, p0, Lu0/g;->c:Lu0/h;

    iput-object p2, p0, Lu0/g;->b:Lu0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/g;->c:Lu0/h;

    .line 2
    .line 3
    iget-object v0, v0, Lu0/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lu0/g;->c:Lu0/h;

    .line 7
    .line 8
    iget-object v1, v1, Lu0/h;->c:Lu0/b;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lu0/g;->b:Lu0/l;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lu0/b;->b(Lu0/l;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method
