.class public Le0/d;
.super Lo/c;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/d$b;,
        Le0/d$c;
    }
.end annotation


# instance fields
.field public final d:Le0/d$a;

.field public final e:Lf/c;

.field public f:Landroidx/lifecycle/m;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Lk/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lo/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le0/d$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Le0/d$a;-><init>(Le0/d;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le0/d;->d:Le0/d$a;

    .line 10
    .line 11
    new-instance v0, Le0/d$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Le0/d$b;-><init>(Le0/d;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lf/c;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2, v0}, Lf/c;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Le0/d;->e:Lf/c;

    .line 23
    .line 24
    iput-boolean v2, p0, Le0/d;->i:Z

    .line 25
    .line 26
    return-void
.end method

.method public static b(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Le0/f;)Z
    .locals 6

    .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->c:Landroidx/lifecycle/f$b;

    .line 2
    .line 3
    check-cast p0, Le0/g;

    .line 4
    .line 5
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object p0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Le0/c;

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v4, v3, Le0/c;->N:Landroidx/lifecycle/h;

    .line 52
    .line 53
    iget-object v4, v4, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/f$b;

    .line 54
    .line 55
    sget-object v5, Landroidx/lifecycle/f$b;->d:Landroidx/lifecycle/f$b;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x1

    .line 62
    if-ltz v4, :cond_3

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v4, 0x0

    .line 67
    :goto_2
    if-eqz v4, :cond_4

    .line 68
    .line 69
    iget-object v2, v3, Le0/c;->N:Landroidx/lifecycle/h;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/f$b;)V

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    :cond_4
    iget-object v3, v3, Le0/c;->t:Le0/g;

    .line 76
    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-static {v3}, Le0/d;->c(Le0/f;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    or-int/2addr v2, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    return v2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
.end method


# virtual methods
.method public final a(Le0/c;)I
    .locals 4

    .line 1
    iget-object v0, p0, Le0/d;->m:Lk/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/i;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xfffe

    .line 8
    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Le0/d;->m:Lk/i;

    .line 13
    .line 14
    iget v2, p0, Le0/d;->l:I

    .line 15
    .line 16
    iget-boolean v3, v0, Lk/i;->a:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lk/i;->c()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Lk/i;->b:[I

    .line 24
    .line 25
    iget v0, v0, Lk/i;->d:I

    .line 26
    .line 27
    invoke-static {v0, v2, v3}, Lm1/h;->f(II[I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Le0/d;->l:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    rem-int/2addr v0, v1

    .line 38
    iput v0, p0, Le0/d;->l:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Le0/d;->l:I

    .line 42
    .line 43
    iget-object v2, p0, Le0/d;->m:Lk/i;

    .line 44
    .line 45
    iget-object p1, p1, Le0/c;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Lk/i;->e(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Le0/d;->l:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    rem-int/2addr p1, v1

    .line 55
    iput p1, p0, Le0/d;->l:I

    .line 56
    .line 57
    return v0

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "Too many pending Fragment activity results."

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "Local FragmentActivity "

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, " State:"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "  "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "mCreated="

    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Le0/d;->g:Z

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    .line 57
    .line 58
    const-string v1, " mResumed="

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Le0/d;->h:Z

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, " mStopped="

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Le0/d;->i:Z

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-static {p0}, Lh0/a;->a(Landroidx/lifecycle/g;)Lh0/b;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0, p3}, Lh0/b;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 92
    .line 93
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Le0/e;

    .line 96
    .line 97
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 98
    .line 99
    invoke-virtual {v0, p1, p2, p3, p4}, Le0/g;->D(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/d$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le0/d$c;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
    .locals 1

    invoke-super {p0}, Lo/c;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Le0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/e;

    .line 6
    .line 7
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSupportLoaderManager()Lh0/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lh0/a;->a(Landroidx/lifecycle/g;)Lh0/b;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/m;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/d$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le0/d$c;->b:Landroidx/lifecycle/m;

    iput-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    :cond_0
    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    :cond_1
    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/c;->i()V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v1, p1, 0x10

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    iget-object p1, p0, Le0/d;->m:Lk/i;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, v1, p2}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    iget-object p2, p0, Le0/d;->m:Lk/i;

    .line 22
    .line 23
    iget-object p3, p2, Lk/i;->b:[I

    .line 24
    .line 25
    iget v2, p2, Lk/i;->d:I

    .line 26
    .line 27
    invoke-static {v2, v1, p3}, Lm1/h;->f(II[I)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-ltz p3, :cond_0

    .line 32
    .line 33
    iget-object v1, p2, Lk/i;->c:[Ljava/lang/Object;

    .line 34
    .line 35
    aget-object v2, v1, p3

    .line 36
    .line 37
    sget-object v3, Lk/i;->e:Ljava/lang/Object;

    .line 38
    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    aput-object v3, v1, p3

    .line 42
    .line 43
    const/4 p3, 0x1

    .line 44
    iput-boolean p3, p2, Lk/i;->a:Z

    .line 45
    .line 46
    :cond_0
    const-string p2, "FragmentActivity"

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p1, "Activity result delivered for unknown Fragment."

    .line 51
    .line 52
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p3, v0, Lf/c;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p3, Le0/e;

    .line 59
    .line 60
    iget-object p3, p3, Le0/e;->d:Le0/g;

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Le0/g;->J(Ljava/lang/String;)Le0/c;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    if-nez p3, :cond_2

    .line 67
    .line 68
    const-string p3, "Activity result no fragment exists for who: "

    .line 69
    .line 70
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :cond_3
    sget v0, Lo/a;->b:I

    .line 79
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onAttachFragment(Le0/c;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/e;

    .line 6
    .line 7
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 8
    .line 9
    iget-boolean v1, v0, Le0/g;->p:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, v0, Le0/g;->q:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    :goto_1
    if-eqz v1, :cond_2

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x19

    .line 26
    .line 27
    if-gt v2, v3, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    if-nez v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Le0/g;->P()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 39
    .line 40
    .line 41
    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Le0/d;->e:Lf/c;

    .line 5
    .line 6
    invoke-virtual {p1}, Lf/c;->i()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lf/c;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Le0/e;

    .line 12
    .line 13
    iget-object p1, p1, Le0/e;->d:Le0/g;

    .line 14
    .line 15
    invoke-virtual {p1}, Le0/g;->f()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    iget-object v1, v0, Lf/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Le0/e;

    .line 6
    .line 7
    iget-object v2, v1, Le0/e;->d:Le0/g;

    .line 8
    .line 9
    iget-object v3, v2, Le0/g;->l:Le0/e;

    .line 10
    .line 11
    if-nez v3, :cond_6

    .line 12
    .line 13
    iput-object v1, v2, Le0/g;->l:Le0/e;

    .line 14
    .line 15
    iput-object v1, v2, Le0/g;->m:Lh/c;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v2, Le0/g;->n:Le0/c;

    .line 19
    .line 20
    invoke-super {p0, p1}, Lo/c;->onCreate(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Le0/d$c;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v3, v2, Le0/d$c;->b:Landroidx/lifecycle/m;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v4, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    iput-object v3, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 40
    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    const-string v4, "android:support:fragments"

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v1, v2, Le0/d$c;->c:Le0/h;

    .line 53
    .line 54
    :cond_1
    iget-object v2, v0, Lf/c;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Le0/e;

    .line 57
    .line 58
    iget-object v2, v2, Le0/e;->d:Le0/g;

    .line 59
    .line 60
    invoke-virtual {v2, v4, v1}, Le0/g;->R(Landroid/os/Parcelable;Le0/h;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "android:support:next_request_index"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, p0, Le0/d;->l:I

    .line 76
    .line 77
    const-string v1, "android:support:request_indicies"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "android:support:request_fragment_who"

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    array-length v2, v1

    .line 94
    array-length v4, p1

    .line 95
    if-eq v2, v4, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    new-instance v2, Lk/i;

    .line 99
    .line 100
    array-length v4, v1

    .line 101
    invoke-direct {v2, v4}, Lk/i;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Le0/d;->m:Lk/i;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v4, v1

    .line 108
    if-ge v2, v4, :cond_4

    .line 109
    .line 110
    iget-object v4, p0, Le0/d;->m:Lk/i;

    .line 111
    .line 112
    aget v5, v1, v2

    .line 113
    .line 114
    aget-object v6, p1, v2

    .line 115
    .line 116
    invoke-virtual {v4, v5, v6}, Lk/i;->e(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    .line 123
    .line 124
    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    .line 125
    .line 126
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-object p1, p0, Le0/d;->m:Lk/i;

    .line 130
    .line 131
    if-nez p1, :cond_5

    .line 132
    .line 133
    new-instance p1, Lk/i;

    .line 134
    .line 135
    invoke-direct {p1}, Lk/i;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Le0/d;->m:Lk/i;

    .line 139
    .line 140
    iput v3, p0, Le0/d;->l:I

    .line 141
    .line 142
    :cond_5
    iget-object p1, v0, Lf/c;->a:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Le0/e;

    .line 145
    .line 146
    iget-object p1, p1, Le0/e;->d:Le0/g;

    .line 147
    .line 148
    iput-boolean v3, p1, Le0/g;->p:Z

    .line 149
    .line 150
    iput-boolean v3, p1, Le0/g;->q:Z

    .line 151
    .line 152
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1, v0}, Le0/g;->C(I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v0, "Already attached"

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Le0/d;->e:Lf/c;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lf/c;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Le0/e;

    .line 15
    .line 16
    iget-object p2, p2, Le0/e;->d:Le0/g;

    .line 17
    .line 18
    invoke-virtual {p2}, Le0/g;->h()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    or-int/2addr p1, p2

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Le0/e;

    iget-object v0, v0, Le0/e;->d:Le0/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Le0/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 6
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 7
    check-cast v0, Le0/e;

    iget-object v0, v0, Le0/e;->d:Le0/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Le0/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/m;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 20
    .line 21
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Le0/e;

    .line 24
    .line 25
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 26
    .line 27
    invoke-virtual {v0}, Le0/g;->i()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 5
    .line 6
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Le0/e;

    .line 9
    .line 10
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Le0/g;->j()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p2, p0, Le0/d;->e:Lf/c;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    iget-object p1, p2, Lf/c;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Le0/e;

    .line 21
    .line 22
    iget-object p1, p1, Le0/e;->d:Le0/g;

    .line 23
    .line 24
    invoke-virtual {p1}, Le0/g;->g()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    iget-object p1, p2, Lf/c;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Le0/e;

    .line 32
    .line 33
    iget-object p1, p1, Le0/e;->d:Le0/g;

    .line 34
    .line 35
    invoke-virtual {p1}, Le0/g;->y()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/e;

    .line 6
    .line 7
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Le0/g;->k(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Le0/d;->e:Lf/c;

    invoke-virtual {p1}, Lf/c;->i()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 5
    .line 6
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Le0/e;

    .line 9
    .line 10
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Le0/g;->z()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le0/d;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, Le0/d;->d:Le0/d$a;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Le0/d;->e:Lf/c;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v4, Lf/c;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Le0/e;

    .line 24
    .line 25
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 26
    .line 27
    iput-boolean v0, v1, Le0/g;->p:Z

    .line 28
    .line 29
    iput-boolean v0, v1, Le0/g;->q:Z

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, v0}, Le0/g;->C(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, v4, Lf/c;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Le0/e;

    .line 38
    .line 39
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1}, Le0/g;->C(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/e;

    .line 6
    .line 7
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Le0/g;->A(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le0/d;->d:Le0/d$a;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 11
    .line 12
    iget-object v1, v0, Lf/c;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Le0/e;

    .line 15
    .line 16
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Le0/g;->p:Z

    .line 20
    .line 21
    iput-boolean v2, v1, Le0/g;->q:Z

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1, v2}, Le0/g;->C(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Le0/e;

    .line 30
    .line 31
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 32
    .line 33
    invoke-virtual {v0}, Le0/g;->F()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Le0/d;->e:Lf/c;

    .line 11
    .line 12
    iget-object p2, p2, Lf/c;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Le0/e;

    .line 15
    .line 16
    iget-object p2, p2, Le0/e;->d:Le0/g;

    .line 17
    .line 18
    invoke-virtual {p2}, Le0/g;->B()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    or-int/2addr p1, p2

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object p2, p0, Le0/d;->e:Lf/c;

    .line 2
    .line 3
    invoke-virtual {p2}, Lf/c;->i()V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 p1, p1, 0x10

    .line 7
    .line 8
    const p3, 0xffff

    .line 9
    .line 10
    .line 11
    and-int/2addr p1, p3

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    iget-object p3, p0, Le0/d;->m:Lk/i;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p3, p1, v0}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Le0/d;->m:Lk/i;

    .line 26
    .line 27
    iget-object v1, v0, Lk/i;->b:[I

    .line 28
    .line 29
    iget v2, v0, Lk/i;->d:I

    .line 30
    .line 31
    invoke-static {v2, p1, v1}, Lm1/h;->f(II[I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ltz p1, :cond_0

    .line 36
    .line 37
    iget-object v1, v0, Lk/i;->c:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v2, v1, p1

    .line 40
    .line 41
    sget-object v3, Lk/i;->e:Ljava/lang/Object;

    .line 42
    .line 43
    if-eq v2, v3, :cond_0

    .line 44
    .line 45
    aput-object v3, v1, p1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, v0, Lk/i;->a:Z

    .line 49
    .line 50
    :cond_0
    const-string p1, "FragmentActivity"

    .line 51
    .line 52
    if-nez p3, :cond_1

    .line 53
    .line 54
    const-string p2, "Activity result delivered for unknown Fragment."

    .line 55
    .line 56
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object p2, p2, Lf/c;->a:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Le0/e;

    .line 63
    .line 64
    iget-object p2, p2, Le0/e;->d:Le0/g;

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Le0/g;->J(Ljava/lang/String;)Le0/c;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    const-string p2, "Activity result no fragment exists for who: "

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le0/d;->d:Le0/d$a;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le0/d;->h:Z

    .line 12
    .line 13
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 14
    .line 15
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Le0/e;

    .line 18
    .line 19
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 20
    .line 21
    invoke-virtual {v0}, Le0/g;->F()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le0/d;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Le0/d;->e:Lf/c;

    .line 6
    .line 7
    iget-object v1, v1, Lf/c;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Le0/e;

    .line 10
    .line 11
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 12
    .line 13
    iget-object v2, v1, Le0/g;->x:Le0/h;

    .line 14
    .line 15
    invoke-static {v2}, Le0/g;->W(Le0/h;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Le0/g;->x:Le0/h;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v2, Le0/d$c;

    .line 31
    .line 32
    invoke-direct {v2}, Le0/d$c;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, v2, Le0/d$c;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, p0, Le0/d;->f:Landroidx/lifecycle/m;

    .line 38
    .line 39
    iput-object v0, v2, Le0/d$c;->b:Landroidx/lifecycle/m;

    .line 40
    .line 41
    iput-object v1, v2, Le0/d$c;->c:Le0/h;

    .line 42
    .line 43
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lo/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :cond_0
    invoke-virtual {p0}, Le0/d;->getSupportFragmentManager()Le0/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Le0/d;->c(Le0/f;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Le0/d;->e:Lf/c;

    .line 15
    .line 16
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Le0/e;

    .line 19
    .line 20
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 21
    .line 22
    invoke-virtual {v0}, Le0/g;->S()Le0/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v1, "android:support:fragments"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Le0/d;->m:Lk/i;

    .line 34
    .line 35
    invoke-virtual {v0}, Lk/i;->f()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_4

    .line 40
    .line 41
    const-string v0, "android:support:next_request_index"

    .line 42
    .line 43
    iget v1, p0, Le0/d;->l:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Le0/d;->m:Lk/i;

    .line 49
    .line 50
    invoke-virtual {v0}, Lk/i;->f()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-array v0, v0, [I

    .line 55
    .line 56
    iget-object v1, p0, Le0/d;->m:Lk/i;

    .line 57
    .line 58
    invoke-virtual {v1}, Lk/i;->f()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    new-array v1, v1, [Ljava/lang/String;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_0
    iget-object v3, p0, Le0/d;->m:Lk/i;

    .line 66
    .line 67
    invoke-virtual {v3}, Lk/i;->f()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge v2, v3, :cond_3

    .line 72
    .line 73
    iget-object v3, p0, Le0/d;->m:Lk/i;

    .line 74
    .line 75
    iget-boolean v4, v3, Lk/i;->a:Z

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3}, Lk/i;->c()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v3, v3, Lk/i;->b:[I

    .line 83
    .line 84
    aget v3, v3, v2

    .line 85
    .line 86
    aput v3, v0, v2

    .line 87
    .line 88
    iget-object v3, p0, Le0/d;->m:Lk/i;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Lk/i;->g(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    aput-object v3, v1, v2

    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string v2, "android:support:request_indicies"

    .line 102
    .line 103
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 104
    .line 105
    .line 106
    const-string v0, "android:support:request_fragment_who"

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le0/d;->i:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Le0/d;->g:Z

    .line 8
    .line 9
    iget-object v2, p0, Le0/d;->e:Lf/c;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Le0/d;->g:Z

    .line 15
    .line 16
    iget-object v1, v2, Lf/c;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Le0/e;

    .line 19
    .line 20
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 21
    .line 22
    iput-boolean v0, v1, Le0/g;->p:Z

    .line 23
    .line 24
    iput-boolean v0, v1, Le0/g;->q:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-virtual {v1, v3}, Le0/g;->C(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Lf/c;->i()V

    .line 31
    .line 32
    .line 33
    iget-object v1, v2, Lf/c;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Le0/e;

    .line 36
    .line 37
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 38
    .line 39
    invoke-virtual {v1}, Le0/g;->F()V

    .line 40
    .line 41
    .line 42
    iget-object v1, v2, Lf/c;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Le0/e;

    .line 45
    .line 46
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 47
    .line 48
    iput-boolean v0, v1, Le0/g;->p:Z

    .line 49
    .line 50
    iput-boolean v0, v1, Le0/g;->q:Z

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    invoke-virtual {v1, v0}, Le0/g;->C(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Le0/d;->e:Lf/c;

    invoke-virtual {v0}, Lf/c;->i()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le0/d;->i:Z

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Le0/d;->getSupportFragmentManager()Le0/f;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Le0/d;->c(Le0/f;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Le0/d;->e:Lf/c;

    .line 18
    .line 19
    iget-object v1, v1, Lf/c;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Le0/e;

    .line 22
    .line 23
    iget-object v1, v1, Le0/e;->d:Le0/g;

    .line 24
    .line 25
    iput-boolean v0, v1, Le0/g;->q:Z

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {v1, v0}, Le0/g;->C(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setEnterSharedElementCallback(Lo/e;)V
    .locals 0

    .line 1
    sget p1, Lo/a;->b:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setExitSharedElementCallback(Lo/e;)V
    .locals 0

    .line 1
    sget p1, Lo/a;->b:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Le0/d;->k:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Le0/d;->b(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Le0/d;->k:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Le0/d;->b(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Le0/c;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Le0/d;->startActivityFromFragment(Le0/c;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Le0/c;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Le0/d;->k:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    :try_start_0
    sget p1, Lo/a;->b:I

    .line 1
    invoke-virtual {p0, p2, v1, p4}, Le0/d;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-boolean v2, p0, Le0/d;->k:Z

    return-void

    :cond_0
    :try_start_1
    invoke-static {p3}, Le0/d;->b(I)V

    invoke-virtual {p0, p1}, Le0/d;->a(Le0/c;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    sget p3, Lo/a;->b:I

    .line 3
    invoke-virtual {p0, p2, p1, p4}, Le0/d;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iput-boolean v2, p0, Le0/d;->k:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Le0/d;->k:Z

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1

    iget-boolean v0, p0, Le0/d;->j:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Le0/d;->b(I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Le0/d;->j:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Le0/d;->b(I)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Le0/c;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    iput-boolean v1, v9, Le0/d;->j:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    :try_start_0
    sget v1, Lo/a;->b:I

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v1 .. v8}, Le0/d;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-boolean v10, v9, Le0/d;->j:Z

    return-void

    :cond_0
    :try_start_1
    invoke-static {p3}, Le0/d;->b(I)V

    invoke-virtual {p0, p1}, Le0/d;->a(Le0/c;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    sget v0, Lo/a;->b:I

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 3
    invoke-virtual/range {v1 .. v8}, Le0/d;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iput-boolean v10, v9, Le0/d;->j:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Le0/d;->j:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 1
    sget v0, Lo/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lo/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lo/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Le0/d;->b(I)V

    :cond_0
    return-void
.end method
