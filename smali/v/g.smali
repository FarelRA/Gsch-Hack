.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lv/f$b;


# direct methods
.method public constructor <init>(Lv/b;Landroid/os/Handler;Lv/d;)V
    .locals 0

    iput-object p1, p0, Lv/g;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lv/g;->c:Landroid/os/Handler;

    iput-object p3, p0, Lv/g;->d:Lv/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lv/g;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lv/g$a;

    invoke-direct {v1, p0, v0}, Lv/g$a;-><init>(Lv/g;Ljava/lang/Object;)V

    iget-object v0, p0, Lv/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
