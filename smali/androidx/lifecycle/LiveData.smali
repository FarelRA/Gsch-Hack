.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$a;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Li/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/b<",
            "Ljava/lang/Object;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.a;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Li/b;

    sget-object v0, Landroidx/lifecycle/LiveData;->h:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lh/a;->f()Lh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lh/a;->a:Lh/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Cannot invoke "

    .line 33
    .line 34
    const-string v2, " on a background thread"

    .line 35
    .line 36
    invoke-static {v1, p0, v2}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LiveData$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->g:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->f:Z

    .line 10
    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->g:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    iget-boolean v2, p1, Landroidx/lifecycle/LiveData$a;->a:Z

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$a;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$a;->b(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget v2, p1, Landroidx/lifecycle/LiveData$a;->b:I

    .line 33
    .line 34
    iget v3, p0, Landroidx/lifecycle/LiveData;->e:I

    .line 35
    .line 36
    if-lt v2, v3, :cond_4

    .line 37
    .line 38
    :goto_0
    move-object p1, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_4
    iput v3, p1, Landroidx/lifecycle/LiveData$a;->b:I

    .line 41
    .line 42
    throw v1

    .line 43
    :cond_5
    iget-object v2, p0, Landroidx/lifecycle/LiveData;->b:Li/b;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v3, Li/b$d;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Li/b$d;-><init>(Li/b;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v2, Li/b;->a:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-virtual {v3}, Li/b$d;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_a

    .line 65
    .line 66
    invoke-virtual {v3}, Li/b$d;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroidx/lifecycle/LiveData$a;

    .line 77
    .line 78
    iget-boolean v4, v2, Landroidx/lifecycle/LiveData$a;->a:Z

    .line 79
    .line 80
    if-nez v4, :cond_7

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData$a;->c()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_8

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData$a;->b(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_8
    iget v4, v2, Landroidx/lifecycle/LiveData$a;->b:I

    .line 94
    .line 95
    iget v5, p0, Landroidx/lifecycle/LiveData;->e:I

    .line 96
    .line 97
    if-lt v4, v5, :cond_9

    .line 98
    .line 99
    :goto_1
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->g:Z

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_9
    iput v5, v2, Landroidx/lifecycle/LiveData$a;->b:I

    .line 105
    .line 106
    throw v1

    .line 107
    :cond_a
    :goto_2
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->g:Z

    .line 108
    .line 109
    if-nez v1, :cond_1

    .line 110
    .line 111
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->f:Z

    .line 112
    .line 113
    return-void
.end method
