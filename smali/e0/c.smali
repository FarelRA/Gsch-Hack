.class public final Le0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/g;
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/c$b;,
        Le0/c$c;
    }
.end annotation


# static fields
.field public static final P:Lk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final Q:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public final E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Le0/c$b;

.field public L:Z

.field public M:Z

.field public final N:Landroidx/lifecycle/h;

.field public final O:Landroidx/lifecycle/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/j<",
            "Landroidx/lifecycle/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Landroid/os/Bundle;

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/Bundle;

.field public h:Le0/c;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Le0/g;

.field public s:Le0/e;

.field public t:Le0/g;

.field public u:Le0/h;

.field public v:Landroidx/lifecycle/m;

.field public w:Le0/c;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/h;

    invoke-direct {v0}, Lk/h;-><init>()V

    sput-object v0, Le0/c;->P:Lk/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le0/c;->Q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le0/c;->b:I

    const/4 v0, -0x1

    iput v0, p0, Le0/c;->e:I

    iput v0, p0, Le0/c;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Le0/c;->E:Z

    iput-boolean v0, p0, Le0/c;->J:Z

    new-instance v0, Landroidx/lifecycle/h;

    invoke-direct {v0, p0}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v0, p0, Le0/c;->N:Landroidx/lifecycle/h;

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0}, Landroidx/lifecycle/j;-><init>()V

    iput-object v0, p0, Le0/c;->O:Landroidx/lifecycle/j;

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;
    .locals 4

    .line 1
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    .line 2
    .line 3
    const-string v1, "Unable to instantiate fragment "

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Le0/c;->P:Lk/h;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, p1, v3}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Class;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, p1, v3}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    new-array v2, p0, [Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-array p0, p0, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Le0/c;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Le0/c;->h(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :cond_1
    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p2, Le0/c$c;

    .line 61
    .line 62
    const-string v0, ": calling Fragment constructor caused an exception"

    .line 63
    .line 64
    invoke-static {v1, p1, v0}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1, p0}, Le0/c$c;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :catch_1
    move-exception p0

    .line 73
    new-instance p2, Le0/c$c;

    .line 74
    .line 75
    const-string v0, ": could not find Fragment constructor"

    .line 76
    .line 77
    invoke-static {v1, p1, v0}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p2, p1, p0}, Le0/c$c;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :catch_2
    move-exception p0

    .line 86
    new-instance p2, Le0/c$c;

    .line 87
    .line 88
    invoke-static {v1, p1, v0}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1, p0}, Le0/c$c;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :catch_3
    move-exception p0

    .line 97
    new-instance p2, Le0/c$c;

    .line 98
    .line 99
    invoke-static {v1, p1, v0}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1, p0}, Le0/c$c;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    .line 104
    .line 105
    .line 106
    throw p2

    .line 107
    :catch_4
    move-exception p0

    .line 108
    new-instance p2, Le0/c$c;

    .line 109
    .line 110
    invoke-static {v1, p1, v0}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1, p0}, Le0/c$c;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    .line 115
    .line 116
    .line 117
    throw p2
.end method


# virtual methods
.method public final a()Le0/c$b;
    .locals 1

    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    if-nez v0, :cond_0

    new-instance v0, Le0/c$b;

    invoke-direct {v0}, Le0/c$b;-><init>()V

    iput-object v0, p0, Le0/c;->K:Le0/c$b;

    :cond_0
    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Le0/c$b;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Le0/c$b;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le0/c;->s:Le0/e;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Le0/g;

    .line 6
    .line 7
    invoke-direct {v0}, Le0/g;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Le0/c;->t:Le0/g;

    .line 11
    .line 12
    iget-object v1, p0, Le0/c;->s:Le0/e;

    .line 13
    .line 14
    new-instance v2, Le0/c$a;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Le0/c$a;-><init>(Le0/c;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Le0/g;->l:Le0/e;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iput-object v1, v0, Le0/g;->l:Le0/e;

    .line 24
    .line 25
    iput-object v2, v0, Le0/g;->m:Lh/c;

    .line 26
    .line 27
    iput-object p0, v0, Le0/g;->n:Le0/c;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Already attached"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "Fragment has not been attached yet."

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/view/LayoutInflater;
    .locals 4

    .line 1
    iget-object v0, p0, Le0/c;->s:Le0/e;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast v0, Le0/d$b;

    .line 6
    .line 7
    iget-object v0, v0, Le0/d$b;->e:Le0/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Le0/c;->e()V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Le0/c;->b:I

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    const/4 v3, 0x0

    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 31
    .line 32
    iput-boolean v3, v1, Le0/g;->p:Z

    .line 33
    .line 34
    iput-boolean v3, v1, Le0/g;->q:Z

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Le0/g;->C(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x3

    .line 41
    if-lt v1, v2, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 44
    .line 45
    iput-boolean v3, v1, Le0/g;->p:Z

    .line 46
    .line 47
    iput-boolean v3, v1, Le0/g;->q:Z

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Le0/g;->C(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v2, 0x2

    .line 54
    if-lt v1, v2, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 57
    .line 58
    iput-boolean v3, v1, Le0/g;->p:Z

    .line 59
    .line 60
    iput-boolean v3, v1, Le0/g;->q:Z

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Le0/g;->C(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x1

    .line 67
    if-lt v1, v2, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 70
    .line 71
    iput-boolean v3, v1, Le0/g;->p:Z

    .line 72
    .line 73
    iput-boolean v3, v1, Le0/g;->q:Z

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Le0/g;->C(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    iget-object v1, p0, Le0/c;->t:Le0/g;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "android:support:fragments"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Le0/c;->t:Le0/g;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Le0/c;->e()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Le0/c;->t:Le0/g;

    .line 19
    .line 20
    iget-object v1, p0, Le0/c;->u:Le0/h;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Le0/g;->R(Landroid/os/Parcelable;Le0/h;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Le0/c;->u:Le0/h;

    .line 27
    .line 28
    iget-object p1, p0, Le0/c;->t:Le0/g;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p1, Le0/g;->p:Z

    .line 32
    .line 33
    iput-boolean v0, p1, Le0/g;->q:Z

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Le0/g;->C(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/f;
    .locals 1

    iget-object v0, p0, Le0/c;->N:Landroidx/lifecycle/h;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/m;
    .locals 2

    .line 1
    iget-object v0, p0, Le0/c;->s:Le0/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Le0/e;->b:Landroid/content/Context;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Le0/c;->v:Landroidx/lifecycle/m;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/m;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Le0/c;->v:Landroidx/lifecycle/m;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Le0/c;->v:Landroidx/lifecycle/m;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Le0/c;->e:I

    .line 2
    .line 3
    if-ltz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v2, v0, Le0/g;->p:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, v0, Le0/g;->q:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "Fragment already active and state has been saved"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_4
    :goto_1
    iput-object p1, p0, Le0/c;->g:Landroid/os/Bundle;

    .line 32
    .line 33
    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(ILe0/c;)V
    .locals 0

    iput p1, p0, Le0/c;->e:I

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Le0/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "android:fragment:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p2, p0, Le0/c;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le0/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le0/c;->a()Le0/c$b;

    move-result-object v0

    iput p1, v0, Le0/c$b;->d:I

    return-void
.end method

.method public final k(Le0/g$d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le0/c;->a()Le0/c$b;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le0/c;->K:Le0/c$b;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v0, p1, Le0/g$d;->a:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p1, Le0/g$d;->a:I

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le0/c;->F:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/c;->s:Le0/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Le0/e;->a:Landroid/app/Activity;

    .line 8
    .line 9
    check-cast v0, Le0/d;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le0/c;->F:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lm1/h;->h(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Le0/c;->e:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le0/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Le0/c;->x:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le0/c;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Le0/c;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le0/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
