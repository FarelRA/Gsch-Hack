.class public final Lm1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/a;
.implements Lu0/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lm1/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm1/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm1/o;->a:Ljava/lang/Object;

    check-cast v0, Lo1/c;

    invoke-interface {v0}, Lo1/c;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm1/o;->b:Ljava/lang/Object;

    check-cast v1, Lo1/c;

    invoke-interface {v1}, Lo1/c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/l;

    new-instance v2, Lm1/m;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0, v1}, Lm1/m;-><init>(Landroid/content/Context;Lo1/l;)V

    return-object v2
.end method

.method public final b(Lu0/l;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lm1/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lo1/s;

    .line 4
    .line 5
    iget-object v0, p0, Lm1/o;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lu0/d;

    .line 8
    .line 9
    iget-object v1, p1, Lo1/s;->f:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p1, p1, Lo1/s;->e:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method
