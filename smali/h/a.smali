.class public final Lh/a;
.super Lh/c;
.source "SourceFile"


# static fields
.field public static volatile b:Lh/a;


# instance fields
.field public final a:Lh/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/c;-><init>()V

    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    iput-object v0, p0, Lh/a;->a:Lh/b;

    return-void
.end method

.method public static f()Lh/a;
    .locals 2

    sget-object v0, Lh/a;->b:Lh/a;

    if-eqz v0, :cond_0

    sget-object v0, Lh/a;->b:Lh/a;

    return-object v0

    :cond_0
    const-class v0, Lh/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh/a;->b:Lh/a;

    if-nez v1, :cond_1

    new-instance v1, Lh/a;

    invoke-direct {v1}, Lh/a;-><init>()V

    sput-object v1, Lh/a;->b:Lh/a;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lh/a;->b:Lh/a;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
