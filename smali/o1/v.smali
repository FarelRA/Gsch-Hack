.class public final Lo1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lo1/c;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo1/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lo1/v;->c:Ljava/lang/Object;

    iput-object v0, p0, Lo1/v;->b:Ljava/lang/Object;

    iput-object p1, p0, Lo1/v;->a:Lo1/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    const-string v0, "Scoped provider was invoked recursively returning different results: "

    iget-object v1, p0, Lo1/v;->b:Ljava/lang/Object;

    sget-object v2, Lo1/v;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lo1/v;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lo1/v;->a:Lo1/c;

    invoke-interface {v1}, Lo1/c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lo1/v;->b:Ljava/lang/Object;

    if-eq v3, v2, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-object v1, p0, Lo1/v;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lo1/v;->a:Lo1/c;

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method
