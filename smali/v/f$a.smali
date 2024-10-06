.class public final Lv/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/f;


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 0

    iput-object p1, p0, Lv/f$a;->a:Lv/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lv/f$a;->a:Lv/f;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lv/f;->a(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object p1, p0, Lv/f$a;->a:Lv/f;

    .line 20
    .line 21
    iget-object v0, p1, Lv/f;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v2, p1, Lv/f;->c:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v2, p1, Lv/f;->b:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput-object v2, p1, Lv/f;->b:Landroid/os/HandlerThread;

    .line 41
    .line 42
    iput-object v2, p1, Lv/f;->c:Landroid/os/Handler;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    return v1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method
