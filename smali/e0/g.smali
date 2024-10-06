.class public final Le0/g;
.super Le0/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/g$d;,
        Le0/g$c;,
        Le0/g$b;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public b:Z

.field public c:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le0/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Le0/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Le0/e;

.field public m:Lh/c;

.field public n:Le0/c;

.field public o:Le0/c;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/c;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroid/os/Bundle;

.field public x:Le0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le0/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le0/g;->c:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Le0/g;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Le0/g;->w:Landroid/os/Bundle;

    new-instance v0, Le0/g$a;

    invoke-direct {v0, p0}, Le0/g$a;-><init>(Le0/g;)V

    return-void
.end method

.method public static W(Le0/h;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le0/h;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Le0/c;->D:Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le0/h;->b:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/h;

    invoke-static {v0}, Le0/g;->W(Le0/h;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Le0/c;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v2, Le0/c;->t:Le0/g;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Le0/g;->A(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final B()Z
    .locals 6

    .line 1
    iget v0, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-object v4, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ge v0, v5, :cond_3

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Le0/c;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-boolean v5, v4, Le0/c;->A:Z

    .line 27
    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    iget-object v4, v4, Le0/c;->t:Le0/g;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4}, Le0/g;->B()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    or-int/2addr v4, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_1
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return v3
.end method

.method public final C(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Le0/g;->b:Z

    invoke-virtual {p0, p1, v1}, Le0/g;->M(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Le0/g;->b:Z

    invoke-virtual {p0}, Le0/g;->F()V

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Le0/g;->b:Z

    throw p1
.end method

.method public final D(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_11

    iget-object v4, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le0/c;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_10

    .line 1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mContainerId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mTag="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->z:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->b:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mIndex="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->e:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mWho="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->f:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mBackStackNesting="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->q:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAdded="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->k:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRemoving="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->l:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mFromLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->m:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mInLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->n:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHidden="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->A:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mDetached="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->B:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mMenuVisible="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->E:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHasMenu="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mRetainInstance="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->C:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRetaining="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->D:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mUserVisibleHint="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Le0/c;->J:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v5, v4, Le0/c;->r:Le0/g;

    if-eqz v5, :cond_0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentManager="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->r:Le0/g;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v4, Le0/c;->s:Le0/e;

    if-eqz v5, :cond_1

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHost="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->s:Le0/e;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v4, Le0/c;->w:Le0/c;

    if-eqz v5, :cond_2

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mParentFragment="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->w:Le0/c;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v4, Le0/c;->g:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mArguments="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v5, v4, Le0/c;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedFragmentState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v5, v4, Le0/c;->d:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedViewState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v5, v4, Le0/c;->h:Le0/c;

    if-eqz v5, :cond_6

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTarget="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->h:Le0/c;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " mTargetRequestCode="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Le0/c;->j:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2
    :cond_6
    iget-object v5, v4, Le0/c;->K:Le0/c$b;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    iget v5, v5, Le0/c$b;->d:I

    :goto_1
    if-eqz v5, :cond_9

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mNextAnim="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object v5, v4, Le0/c;->K:Le0/c$b;

    if-nez v5, :cond_8

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    iget v5, v5, Le0/c$b;->d:I

    .line 5
    :goto_2
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    iget-object v5, v4, Le0/c;->G:Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mContainer="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Le0/c;->G:Landroid/view/ViewGroup;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v5, v4, Le0/c;->H:Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mInnerView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v4}, Le0/c;->b()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAnimatingAway="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Le0/c;->b()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStateAfterAnimating="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-object v5, v4, Le0/c;->K:Le0/c$b;

    if-nez v5, :cond_c

    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    iget v5, v5, Le0/c$b;->c:I

    .line 7
    :goto_3
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 8
    :cond_d
    iget-object v5, v4, Le0/c;->s:Le0/e;

    if-nez v5, :cond_e

    goto :goto_4

    .line 9
    :cond_e
    iget-object v6, v5, Le0/e;->b:Landroid/content/Context;

    :goto_4
    if-eqz v6, :cond_f

    .line 10
    invoke-static {v4}, Lh0/a;->a(Landroidx/lifecycle/g;)Lh0/b;

    move-result-object v5

    invoke-virtual {v5, v0, p3}, Lh0/b;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_f
    iget-object v5, v4, Le0/c;->t:Le0/g;

    if-eqz v5, :cond_10

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Child "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Le0/c;->t:Le0/g;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Le0/c;->t:Le0/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3, p4}, Le0/g;->D(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 11
    :cond_11
    iget-object p2, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_5
    if-ge p4, p2, :cond_12

    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Le0/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_12
    iget-object p2, p0, Le0/g;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_6
    if-ge p4, p2, :cond_13

    iget-object v1, p0, Le0/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Le0/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_13
    iget-object p2, p0, Le0/g;->f:Ljava/util/ArrayList;

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_22

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p2, :cond_22

    iget-object v1, p0, Le0/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Le0/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mName="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Le0/a;->j:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mIndex="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->k:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mCommitted="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget v3, v1, Le0/a;->g:I

    if-eqz v3, :cond_14

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mTransition=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mTransitionStyle=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    iget v3, v1, Le0/a;->c:I

    if-nez v3, :cond_15

    iget v3, v1, Le0/a;->d:I

    if-eqz v3, :cond_16

    :cond_15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mEnterAnim=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mExitAnim=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    iget v3, v1, Le0/a;->e:I

    if-nez v3, :cond_17

    iget v3, v1, Le0/a;->f:I

    if-eqz v3, :cond_18

    :cond_17
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mPopEnterAnim=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mPopExitAnim=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    iget v3, v1, Le0/a;->l:I

    if-nez v3, :cond_19

    iget-object v3, v1, Le0/a;->m:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    :cond_19
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mBreadCrumbTitleText="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Le0/a;->m:Ljava/lang/CharSequence;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1a
    iget v3, v1, Le0/a;->n:I

    if-nez v3, :cond_1b

    iget-object v3, v1, Le0/a;->o:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    :cond_1b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Le0/a;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Le0/a;->o:Ljava/lang/CharSequence;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1c
    iget-object v1, v1, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Operations:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_21

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le0/a$a;

    iget v6, v5, Le0/a$a;->a:I

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cmd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Le0/a$a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :pswitch_0
    const-string v6, "UNSET_PRIMARY_NAV"

    goto :goto_9

    :pswitch_1
    const-string v6, "SET_PRIMARY_NAV"

    goto :goto_9

    :pswitch_2
    const-string v6, "ATTACH"

    goto :goto_9

    :pswitch_3
    const-string v6, "DETACH"

    goto :goto_9

    :pswitch_4
    const-string v6, "SHOW"

    goto :goto_9

    :pswitch_5
    const-string v6, "HIDE"

    goto :goto_9

    :pswitch_6
    const-string v6, "REMOVE"

    goto :goto_9

    :pswitch_7
    const-string v6, "REPLACE"

    goto :goto_9

    :pswitch_8
    const-string v6, "ADD"

    goto :goto_9

    :pswitch_9
    const-string v6, "NULL"

    :goto_9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  Op #"

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Le0/a$a;->b:Le0/c;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v6, v5, Le0/a$a;->c:I

    if-nez v6, :cond_1d

    iget v6, v5, Le0/a$a;->d:I

    if-eqz v6, :cond_1e

    :cond_1d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "enterAnim=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Le0/a$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " exitAnim=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Le0/a$a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    iget v6, v5, Le0/a$a;->e:I

    if-nez v6, :cond_1f

    iget v6, v5, Le0/a$a;->f:I

    if-eqz v6, :cond_20

    :cond_1f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "popEnterAnim=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Le0/a$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " popExitAnim=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v5, Le0/a$a;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_21
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_7

    .line 13
    :cond_22
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Le0/g;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_23

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    if-ge v2, p2, :cond_23

    iget-object p4, p0, Le0/g;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le0/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    iget-object p2, p0, Le0/g;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_24

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Le0/g;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Le0/g;->l:Le0/e;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Le0/g;->m:Lh/c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Le0/g;->n:Le0/c;

    if-eqz p2, :cond_25

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Le0/g;->n:Le0/c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mCurState="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Le0/g;->k:I

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " mStateSaved="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Le0/g;->p:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mStopped="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Le0/g;->q:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mDestroyed="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Le0/g;->r:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le0/g;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Le0/g;->l:Le0/e;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Le0/g;->l:Le0/e;

    .line 14
    .line 15
    iget-object v1, v1, Le0/e;->c:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Le0/g;->u:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Le0/g;->b:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0, v1, v1}, Le0/g;->H(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    iput-boolean v0, p0, Le0/g;->b:Z

    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    iput-boolean v0, p0, Le0/g;->b:Z

    .line 54
    .line 55
    throw v1

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "Must be called from main thread of fragment host"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "Fragment host has been destroyed"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v1, "FragmentManager is already executing transactions"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public final F()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le0/g;->E()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-boolean v0, p0, Le0/g;->s:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Le0/g;->s:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Le0/g;->X()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Le0/g;->d()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public final G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v10, p4

    .line 10
    .line 11
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Le0/a;

    .line 16
    .line 17
    iget-boolean v11, v1, Le0/a;->r:Z

    .line 18
    .line 19
    iget-object v1, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v2, v7, Le0/g;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, v7, Le0/g;->o:Le0/c;

    .line 42
    .line 43
    move v2, v9

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_1
    const/4 v15, 0x1

    .line 46
    if-ge v2, v10, :cond_11

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Le0/a;

    .line 53
    .line 54
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_b

    .line 65
    .line 66
    iget-object v5, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    :goto_2
    iget-object v13, v4, Le0/a;->b:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-ge v12, v14, :cond_e

    .line 76
    .line 77
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    check-cast v14, Le0/a$a;

    .line 82
    .line 83
    iget v6, v14, Le0/a$a;->a:I

    .line 84
    .line 85
    if-eq v6, v15, :cond_a

    .line 86
    .line 87
    const/4 v15, 0x2

    .line 88
    const/16 v9, 0x9

    .line 89
    .line 90
    if-eq v6, v15, :cond_4

    .line 91
    .line 92
    const/4 v15, 0x3

    .line 93
    if-eq v6, v15, :cond_2

    .line 94
    .line 95
    const/4 v15, 0x6

    .line 96
    if-eq v6, v15, :cond_2

    .line 97
    .line 98
    const/4 v15, 0x7

    .line 99
    if-eq v6, v15, :cond_a

    .line 100
    .line 101
    const/16 v15, 0x8

    .line 102
    .line 103
    if-eq v6, v15, :cond_1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_1
    new-instance v6, Le0/a$a;

    .line 107
    .line 108
    invoke-direct {v6, v9, v1}, Le0/a$a;-><init>(ILe0/c;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v12, v12, 0x1

    .line 115
    .line 116
    iget-object v1, v14, Le0/a$a;->b:Le0/c;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    iget-object v6, v14, Le0/a$a;->b:Le0/c;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    iget-object v6, v14, Le0/a$a;->b:Le0/c;

    .line 125
    .line 126
    if-ne v6, v1, :cond_3

    .line 127
    .line 128
    new-instance v1, Le0/a$a;

    .line 129
    .line 130
    invoke-direct {v1, v9, v6}, Le0/a$a;-><init>(ILe0/c;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v12, v12, 0x1

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    const/4 v1, 0x0

    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :cond_3
    :goto_3
    const/4 v0, 0x1

    .line 143
    goto/16 :goto_7

    .line 144
    .line 145
    :cond_4
    iget-object v6, v14, Le0/a$a;->b:Le0/c;

    .line 146
    .line 147
    iget v15, v6, Le0/c;->y:I

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v17

    .line 153
    const/16 v16, -0x1

    .line 154
    .line 155
    add-int/lit8 v17, v17, -0x1

    .line 156
    .line 157
    move/from16 v9, v17

    .line 158
    .line 159
    const/16 v17, 0x0

    .line 160
    .line 161
    :goto_4
    if-ltz v9, :cond_8

    .line 162
    .line 163
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v18

    .line 167
    move-object/from16 v8, v18

    .line 168
    .line 169
    check-cast v8, Le0/c;

    .line 170
    .line 171
    iget v0, v8, Le0/c;->y:I

    .line 172
    .line 173
    if-ne v0, v15, :cond_7

    .line 174
    .line 175
    if-ne v8, v6, :cond_5

    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    const/16 v17, 0x1

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_5
    if-ne v8, v1, :cond_6

    .line 182
    .line 183
    new-instance v0, Le0/a$a;

    .line 184
    .line 185
    const/16 v1, 0x9

    .line 186
    .line 187
    invoke-direct {v0, v1, v8}, Le0/a$a;-><init>(ILe0/c;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v12, v12, 0x1

    .line 194
    .line 195
    const/4 v1, 0x0

    .line 196
    :cond_6
    new-instance v0, Le0/a$a;

    .line 197
    .line 198
    move-object/from16 v18, v1

    .line 199
    .line 200
    const/4 v1, 0x3

    .line 201
    invoke-direct {v0, v1, v8}, Le0/a$a;-><init>(ILe0/c;)V

    .line 202
    .line 203
    .line 204
    iget v1, v14, Le0/a$a;->c:I

    .line 205
    .line 206
    iput v1, v0, Le0/a$a;->c:I

    .line 207
    .line 208
    iget v1, v14, Le0/a$a;->e:I

    .line 209
    .line 210
    iput v1, v0, Le0/a$a;->e:I

    .line 211
    .line 212
    iget v1, v14, Le0/a$a;->d:I

    .line 213
    .line 214
    iput v1, v0, Le0/a$a;->d:I

    .line 215
    .line 216
    iget v1, v14, Le0/a$a;->f:I

    .line 217
    .line 218
    iput v1, v0, Le0/a$a;->f:I

    .line 219
    .line 220
    invoke-virtual {v13, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    const/4 v0, 0x1

    .line 227
    add-int/2addr v12, v0

    .line 228
    move-object/from16 v1, v18

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_7
    const/4 v0, 0x1

    .line 232
    :goto_5
    add-int/lit8 v9, v9, -0x1

    .line 233
    .line 234
    move-object/from16 v0, p1

    .line 235
    .line 236
    move-object/from16 v8, p2

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_8
    const/4 v0, 0x1

    .line 240
    if-eqz v17, :cond_9

    .line 241
    .line 242
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    add-int/lit8 v12, v12, -0x1

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_9
    iput v0, v14, Le0/a$a;->a:I

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_a
    const/4 v0, 0x1

    .line 252
    iget-object v6, v14, Le0/a$a;->b:Le0/c;

    .line 253
    .line 254
    :goto_6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :goto_7
    add-int/2addr v12, v0

    .line 258
    move-object/from16 v0, p1

    .line 259
    .line 260
    move-object/from16 v8, p2

    .line 261
    .line 262
    move/from16 v9, p3

    .line 263
    .line 264
    const/4 v15, 0x1

    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_b
    const/4 v0, 0x1

    .line 268
    iget-object v5, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    :goto_8
    iget-object v8, v4, Le0/a;->b:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    if-ge v6, v9, :cond_e

    .line 278
    .line 279
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    check-cast v8, Le0/a$a;

    .line 284
    .line 285
    iget v9, v8, Le0/a$a;->a:I

    .line 286
    .line 287
    if-eq v9, v0, :cond_d

    .line 288
    .line 289
    const/4 v0, 0x3

    .line 290
    if-eq v9, v0, :cond_c

    .line 291
    .line 292
    packed-switch v9, :pswitch_data_0

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :pswitch_0
    iget-object v1, v8, Le0/a$a;->b:Le0/c;

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :pswitch_1
    const/4 v1, 0x0

    .line 300
    goto :goto_9

    .line 301
    :cond_c
    :pswitch_2
    iget-object v8, v8, Le0/a$a;->b:Le0/c;

    .line 302
    .line 303
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_d
    const/4 v0, 0x3

    .line 308
    :pswitch_3
    iget-object v8, v8, Le0/a$a;->b:Le0/c;

    .line 309
    .line 310
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    goto :goto_8

    .line 317
    :cond_e
    if-nez v3, :cond_10

    .line 318
    .line 319
    iget-boolean v0, v4, Le0/a;->i:Z

    .line 320
    .line 321
    if-eqz v0, :cond_f

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_f
    const/4 v3, 0x0

    .line 325
    goto :goto_b

    .line 326
    :cond_10
    :goto_a
    const/4 v3, 0x1

    .line 327
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 328
    .line 329
    move-object/from16 v0, p1

    .line 330
    .line 331
    move-object/from16 v8, p2

    .line 332
    .line 333
    move/from16 v9, p3

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_11
    iget-object v0, v7, Le0/g;->v:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    .line 341
    .line 342
    if-nez v11, :cond_12

    .line 343
    .line 344
    const/4 v6, 0x0

    .line 345
    move-object/from16 v1, p0

    .line 346
    .line 347
    move-object/from16 v2, p1

    .line 348
    .line 349
    move-object/from16 v3, p2

    .line 350
    .line 351
    move/from16 v4, p3

    .line 352
    .line 353
    move/from16 v5, p4

    .line 354
    .line 355
    invoke-static/range {v1 .. v6}, Le0/o;->i(Le0/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 356
    .line 357
    .line 358
    :cond_12
    move/from16 v0, p3

    .line 359
    .line 360
    :goto_c
    if-ge v0, v10, :cond_15

    .line 361
    .line 362
    move-object/from16 v8, p1

    .line 363
    .line 364
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Le0/a;

    .line 369
    .line 370
    move-object/from16 v9, p2

    .line 371
    .line 372
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_14

    .line 383
    .line 384
    const/4 v2, -0x1

    .line 385
    invoke-virtual {v1, v2}, Le0/a;->f(I)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v2, v10, -0x1

    .line 389
    .line 390
    if-ne v0, v2, :cond_13

    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    goto :goto_d

    .line 394
    :cond_13
    const/4 v2, 0x0

    .line 395
    :goto_d
    invoke-virtual {v1, v2}, Le0/a;->h(Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_e

    .line 399
    :cond_14
    const/4 v2, 0x1

    .line 400
    invoke-virtual {v1, v2}, Le0/a;->f(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Le0/a;->g()V

    .line 404
    .line 405
    .line 406
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_15
    move-object/from16 v8, p1

    .line 410
    .line 411
    move-object/from16 v9, p2

    .line 412
    .line 413
    if-eqz v11, :cond_19

    .line 414
    .line 415
    new-instance v0, Lk/d;

    .line 416
    .line 417
    invoke-direct {v0}, Lk/d;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v0}, Le0/g;->a(Lk/d;)V

    .line 421
    .line 422
    .line 423
    add-int/lit8 v1, v10, -0x1

    .line 424
    .line 425
    move/from16 v12, p3

    .line 426
    .line 427
    :goto_f
    if-lt v1, v12, :cond_17

    .line 428
    .line 429
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    check-cast v2, Le0/a;

    .line 434
    .line 435
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Ljava/lang/Boolean;

    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 442
    .line 443
    .line 444
    const/4 v3, 0x0

    .line 445
    :goto_10
    iget-object v4, v2, Le0/a;->b:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-ge v3, v5, :cond_16

    .line 452
    .line 453
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    check-cast v4, Le0/a$a;

    .line 458
    .line 459
    iget-object v4, v4, Le0/a$a;->b:Le0/c;

    .line 460
    .line 461
    add-int/lit8 v3, v3, 0x1

    .line 462
    .line 463
    goto :goto_10

    .line 464
    :cond_16
    add-int/lit8 v1, v1, -0x1

    .line 465
    .line 466
    goto :goto_f

    .line 467
    :cond_17
    iget v1, v0, Lk/d;->c:I

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    :goto_11
    if-ge v2, v1, :cond_1a

    .line 471
    .line 472
    iget-object v3, v0, Lk/d;->b:[Ljava/lang/Object;

    .line 473
    .line 474
    aget-object v3, v3, v2

    .line 475
    .line 476
    check-cast v3, Le0/c;

    .line 477
    .line 478
    iget-boolean v3, v3, Le0/c;->k:Z

    .line 479
    .line 480
    if-eqz v3, :cond_18

    .line 481
    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    .line 484
    goto :goto_11

    .line 485
    :cond_18
    const/4 v2, 0x0

    .line 486
    throw v2

    .line 487
    :cond_19
    move/from16 v12, p3

    .line 488
    .line 489
    :cond_1a
    if-eq v10, v12, :cond_1b

    .line 490
    .line 491
    if-eqz v11, :cond_1b

    .line 492
    .line 493
    const/4 v6, 0x1

    .line 494
    move-object/from16 v1, p0

    .line 495
    .line 496
    move-object/from16 v2, p1

    .line 497
    .line 498
    move-object/from16 v3, p2

    .line 499
    .line 500
    move/from16 v4, p3

    .line 501
    .line 502
    move/from16 v5, p4

    .line 503
    .line 504
    invoke-static/range {v1 .. v6}, Le0/o;->i(Le0/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 505
    .line 506
    .line 507
    iget v0, v7, Le0/g;->k:I

    .line 508
    .line 509
    const/4 v1, 0x1

    .line 510
    invoke-virtual {v7, v0, v1}, Le0/g;->M(IZ)V

    .line 511
    .line 512
    .line 513
    :cond_1b
    :goto_12
    if-ge v12, v10, :cond_1e

    .line 514
    .line 515
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Le0/a;

    .line 520
    .line 521
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    check-cast v1, Ljava/lang/Boolean;

    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-eqz v1, :cond_1d

    .line 532
    .line 533
    iget v1, v0, Le0/a;->k:I

    .line 534
    .line 535
    if-ltz v1, :cond_1d

    .line 536
    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iget-object v2, v7, Le0/g;->h:Ljava/util/ArrayList;

    .line 539
    .line 540
    const/4 v3, 0x0

    .line 541
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    iget-object v2, v7, Le0/g;->i:Ljava/util/ArrayList;

    .line 545
    .line 546
    if-nez v2, :cond_1c

    .line 547
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .line 552
    .line 553
    iput-object v2, v7, Le0/g;->i:Ljava/util/ArrayList;

    .line 554
    .line 555
    :cond_1c
    iget-object v2, v7, Le0/g;->i:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    const/4 v1, -0x1

    .line 566
    iput v1, v0, Le0/a;->k:I

    .line 567
    .line 568
    goto :goto_13

    .line 569
    :catchall_0
    move-exception v0

    .line 570
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    throw v0

    .line 572
    :cond_1d
    const/4 v1, -0x1

    .line 573
    const/4 v3, 0x0

    .line 574
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    add-int/lit8 v12, v12, 0x1

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_1e
    return-void

    .line 581
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final I(I)Le0/c;
    .locals 4

    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le0/c;

    if-eqz v2, :cond_0

    iget v3, v2, Le0/c;->x:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    if-eqz v1, :cond_2

    iget v2, v1, Le0/c;->x:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final J(Ljava/lang/String;)Le0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    if-ltz v0, :cond_3

    .line 13
    .line 14
    iget-object v2, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Le0/c;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Le0/c;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, v2, Le0/c;->t:Le0/g;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Le0/g;->J(Ljava/lang/String;)Le0/c;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v1

    .line 43
    :goto_0
    if-eqz v2, :cond_0

    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_3
    return-object v1
.end method

.method public final K(Le0/c;)V
    .locals 2

    iget v0, p1, Le0/c;->e:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Le0/g;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le0/g;->c:I

    iget-object v1, p0, Le0/g;->n:Le0/c;

    invoke-virtual {p1, v0, v1}, Le0/c;->i(ILe0/c;)V

    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    iget v1, p1, Le0/c;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final L(Le0/c;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Le0/g;->k:I

    .line 5
    .line 6
    iget-boolean v1, p1, Le0/c;->l:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v1, p1, Le0/c;->q:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_3
    :goto_1
    move v5, v0

    .line 31
    iget-object v0, p1, Le0/c;->K:Le0/c$b;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_4
    iget v1, v0, Le0/c$b;->e:I

    .line 38
    .line 39
    move v6, v1

    .line 40
    :goto_2
    if-nez v0, :cond_5

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    goto :goto_3

    .line 44
    :cond_5
    iget v0, v0, Le0/c$b;->f:I

    .line 45
    .line 46
    move v7, v0

    .line 47
    :goto_3
    const/4 v8, 0x0

    .line 48
    move-object v3, p0

    .line 49
    move-object v4, p1

    .line 50
    invoke-virtual/range {v3 .. v8}, Le0/g;->N(Le0/c;IIIZ)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p1, Le0/c;->L:Z

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    iput-boolean v2, p1, Le0/c;->L:Z

    .line 58
    .line 59
    :cond_6
    return-void
.end method

.method public final M(IZ)V
    .locals 3

    iget-object v0, p0, Le0/g;->l:Le0/e;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Le0/g;->k:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Le0/g;->k:I

    iget-object p1, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    iget-object p1, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le0/c;

    invoke-virtual {p0, v2}, Le0/g;->L(Le0/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_6

    iget-object p2, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le0/c;

    if-eqz p2, :cond_5

    iget-boolean v1, p2, Le0/c;->l:Z

    if-nez v1, :cond_4

    iget-boolean v1, p2, Le0/c;->B:Z

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Le0/g;->L(Le0/c;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Le0/g;->X()V

    :cond_7
    return-void
.end method

.method public final N(Le0/c;IIIZ)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v0, v7, Le0/c;->k:Z

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v7, Le0/c;->B:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v0, p2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move/from16 v0, p2

    .line 19
    .line 20
    if-le v0, v8, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_2
    :goto_1
    iget-boolean v1, v7, Le0/c;->l:Z

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    iget v1, v7, Le0/c;->b:I

    .line 29
    .line 30
    if-le v0, v1, :cond_5

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    iget v0, v7, Le0/c;->q:I

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    const/4 v0, 0x0

    .line 41
    :goto_2
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move v0, v1

    .line 46
    :cond_5
    :goto_3
    iget-boolean v1, v7, Le0/c;->I:Z

    .line 47
    .line 48
    const/4 v10, 0x2

    .line 49
    const/4 v11, 0x3

    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    iget v1, v7, Le0/c;->b:I

    .line 53
    .line 54
    if-ge v1, v11, :cond_6

    .line 55
    .line 56
    if-le v0, v10, :cond_6

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    const/4 v12, 0x2

    .line 60
    goto :goto_4

    .line 61
    :cond_6
    move v12, v0

    .line 62
    :goto_4
    iget v0, v7, Le0/c;->b:I

    .line 63
    .line 64
    iget-object v13, v7, Le0/c;->N:Landroidx/lifecycle/h;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const-string v14, "Fragment "

    .line 68
    .line 69
    if-gt v0, v12, :cond_2e

    .line 70
    .line 71
    iget-boolean v0, v7, Le0/c;->m:Z

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iget-boolean v0, v7, Le0/c;->n:Z

    .line 76
    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    return-void

    .line 80
    :cond_7
    invoke-virtual/range {p1 .. p1}, Le0/c;->b()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_9

    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Le0/c;->c()Landroid/animation/Animator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const/4 v0, -0x1

    .line 94
    const/4 v15, -0x1

    .line 95
    goto :goto_7

    .line 96
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Le0/c;->a()Le0/c$b;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v1, v0, Le0/c$b;->a:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Le0/c;->a()Le0/c$b;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v1, v0, Le0/c$b;->b:Landroid/animation/Animator;

    .line 107
    .line 108
    iget-object v0, v7, Le0/c;->K:Le0/c$b;

    .line 109
    .line 110
    if-nez v0, :cond_a

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    iget v0, v0, Le0/c$b;->c:I

    .line 116
    .line 117
    move v2, v0

    .line 118
    :goto_6
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    const/4 v5, 0x1

    .line 121
    const/4 v15, -0x1

    .line 122
    move-object/from16 v0, p0

    .line 123
    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    invoke-virtual/range {v0 .. v5}, Le0/g;->N(Le0/c;IIIZ)V

    .line 127
    .line 128
    .line 129
    :goto_7
    iget v0, v7, Le0/c;->b:I

    .line 130
    .line 131
    if-eqz v0, :cond_b

    .line 132
    .line 133
    if-eq v0, v8, :cond_1c

    .line 134
    .line 135
    if-eq v0, v10, :cond_28

    .line 136
    .line 137
    if-eq v0, v11, :cond_2b

    .line 138
    .line 139
    goto/16 :goto_1a

    .line 140
    .line 141
    :cond_b
    if-lez v12, :cond_1c

    .line 142
    .line 143
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 144
    .line 145
    if-eqz v0, :cond_f

    .line 146
    .line 147
    iget-object v1, v6, Le0/g;->l:Le0/e;

    .line 148
    .line 149
    iget-object v1, v1, Le0/e;->b:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 159
    .line 160
    const-string v1, "android:view_state"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, v7, Le0/c;->d:Landroid/util/SparseArray;

    .line 167
    .line 168
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 169
    .line 170
    const-string v1, "android:target_state"

    .line 171
    .line 172
    invoke-virtual {v0, v1, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-ne v0, v15, :cond_c

    .line 177
    .line 178
    const/4 v0, 0x0

    .line 179
    goto :goto_8

    .line 180
    :cond_c
    iget-object v1, v6, Le0/g;->e:Landroid/util/SparseArray;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Le0/c;

    .line 187
    .line 188
    if-eqz v1, :cond_e

    .line 189
    .line 190
    move-object v0, v1

    .line 191
    :goto_8
    iput-object v0, v7, Le0/c;->h:Le0/c;

    .line 192
    .line 193
    if-eqz v0, :cond_d

    .line 194
    .line 195
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string v1, "android:target_req_state"

    .line 198
    .line 199
    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iput v0, v7, Le0/c;->j:I

    .line 204
    .line 205
    :cond_d
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 206
    .line 207
    const-string v1, "android:user_visible_hint"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iput-boolean v0, v7, Le0/c;->J:Z

    .line 214
    .line 215
    if-nez v0, :cond_f

    .line 216
    .line 217
    iput-boolean v8, v7, Le0/c;->I:Z

    .line 218
    .line 219
    if-le v12, v10, :cond_f

    .line 220
    .line 221
    const/4 v0, 0x2

    .line 222
    const/4 v12, 0x2

    .line 223
    goto :goto_9

    .line 224
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "Fragment no longer exists for key android:target_state: index "

    .line 229
    .line 230
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v1}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    .line 244
    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    throw v0

    .line 248
    :cond_f
    :goto_9
    iget-object v0, v6, Le0/g;->l:Le0/e;

    .line 249
    .line 250
    iput-object v0, v7, Le0/c;->s:Le0/e;

    .line 251
    .line 252
    iget-object v1, v6, Le0/g;->n:Le0/c;

    .line 253
    .line 254
    iput-object v1, v7, Le0/c;->w:Le0/c;

    .line 255
    .line 256
    if-eqz v1, :cond_10

    .line 257
    .line 258
    iget-object v0, v1, Le0/c;->t:Le0/g;

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_10
    iget-object v0, v0, Le0/e;->d:Le0/g;

    .line 262
    .line 263
    :goto_a
    iput-object v0, v7, Le0/c;->r:Le0/g;

    .line 264
    .line 265
    iget-object v0, v7, Le0/c;->h:Le0/c;

    .line 266
    .line 267
    if-eqz v0, :cond_12

    .line 268
    .line 269
    iget-object v1, v6, Le0/g;->e:Landroid/util/SparseArray;

    .line 270
    .line 271
    iget v0, v0, Le0/c;->e:I

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object v1, v7, Le0/c;->h:Le0/c;

    .line 278
    .line 279
    if-ne v0, v1, :cond_11

    .line 280
    .line 281
    iget v0, v1, Le0/c;->b:I

    .line 282
    .line 283
    if-ge v0, v8, :cond_12

    .line 284
    .line 285
    const/4 v2, 0x1

    .line 286
    const/4 v3, 0x0

    .line 287
    const/4 v4, 0x0

    .line 288
    const/4 v5, 0x1

    .line 289
    move-object/from16 v0, p0

    .line 290
    .line 291
    invoke-virtual/range {v0 .. v5}, Le0/g;->N(Le0/c;IIIZ)V

    .line 292
    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v2, " declared target fragment "

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v2, v7, Le0/c;->h:Le0/c;

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v2, " that does not belong to this FragmentManager!"

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_12
    :goto_b
    iget-object v0, v6, Le0/g;->l:Le0/e;

    .line 329
    .line 330
    iget-object v0, v0, Le0/e;->b:Landroid/content/Context;

    .line 331
    .line 332
    invoke-virtual {v6, v9}, Le0/g;->r(Z)V

    .line 333
    .line 334
    .line 335
    iput-boolean v9, v7, Le0/c;->F:Z

    .line 336
    .line 337
    iget-object v0, v6, Le0/g;->l:Le0/e;

    .line 338
    .line 339
    iget-object v1, v0, Le0/e;->b:Landroid/content/Context;

    .line 340
    .line 341
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 342
    .line 343
    iget-object v1, v7, Le0/c;->s:Le0/e;

    .line 344
    .line 345
    if-nez v1, :cond_13

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    goto :goto_c

    .line 349
    :cond_13
    iget-object v1, v1, Le0/e;->a:Landroid/app/Activity;

    .line 350
    .line 351
    :goto_c
    if-eqz v1, :cond_14

    .line 352
    .line 353
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 354
    .line 355
    :cond_14
    iget-boolean v1, v7, Le0/c;->F:Z

    .line 356
    .line 357
    if-eqz v1, :cond_1b

    .line 358
    .line 359
    iget-object v1, v7, Le0/c;->w:Le0/c;

    .line 360
    .line 361
    if-nez v1, :cond_15

    .line 362
    .line 363
    check-cast v0, Le0/d$b;

    .line 364
    .line 365
    iget-object v0, v0, Le0/d$b;->e:Le0/d;

    .line 366
    .line 367
    invoke-virtual {v0, v7}, Le0/d;->onAttachFragment(Le0/c;)V

    .line 368
    .line 369
    .line 370
    :cond_15
    iget-object v0, v6, Le0/g;->l:Le0/e;

    .line 371
    .line 372
    iget-object v0, v0, Le0/e;->b:Landroid/content/Context;

    .line 373
    .line 374
    invoke-virtual {v6, v9}, Le0/g;->m(Z)V

    .line 375
    .line 376
    .line 377
    iget-boolean v0, v7, Le0/c;->M:Z

    .line 378
    .line 379
    if-nez v0, :cond_1a

    .line 380
    .line 381
    invoke-virtual {v6, v9}, Le0/g;->s(Z)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 385
    .line 386
    iget-object v1, v7, Le0/c;->t:Le0/g;

    .line 387
    .line 388
    if-eqz v1, :cond_16

    .line 389
    .line 390
    invoke-virtual {v1}, Le0/g;->O()V

    .line 391
    .line 392
    .line 393
    :cond_16
    iput v8, v7, Le0/c;->b:I

    .line 394
    .line 395
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 396
    .line 397
    invoke-virtual {v7, v0}, Le0/c;->g(Landroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 401
    .line 402
    if-eqz v0, :cond_18

    .line 403
    .line 404
    iget v1, v0, Le0/g;->k:I

    .line 405
    .line 406
    if-lt v1, v8, :cond_17

    .line 407
    .line 408
    const/4 v1, 0x1

    .line 409
    goto :goto_d

    .line 410
    :cond_17
    const/4 v1, 0x0

    .line 411
    :goto_d
    if-nez v1, :cond_18

    .line 412
    .line 413
    iput-boolean v9, v0, Le0/g;->p:Z

    .line 414
    .line 415
    iput-boolean v9, v0, Le0/g;->q:Z

    .line 416
    .line 417
    invoke-virtual {v0, v8}, Le0/g;->C(I)V

    .line 418
    .line 419
    .line 420
    :cond_18
    iput-boolean v8, v7, Le0/c;->M:Z

    .line 421
    .line 422
    iget-boolean v0, v7, Le0/c;->F:Z

    .line 423
    .line 424
    if-eqz v0, :cond_19

    .line 425
    .line 426
    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    .line 427
    .line 428
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6, v9}, Le0/g;->n(Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_e

    .line 435
    :cond_19
    new-instance v0, Le0/v;

    .line 436
    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v2, " did not call through to super.onCreate()"

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-direct {v0, v1}, Le0/v;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_1a
    iget-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 459
    .line 460
    invoke-virtual {v7, v0}, Le0/c;->g(Landroid/os/Bundle;)V

    .line 461
    .line 462
    .line 463
    iput v8, v7, Le0/c;->b:I

    .line 464
    .line 465
    :goto_e
    iput-boolean v9, v7, Le0/c;->D:Z

    .line 466
    .line 467
    goto :goto_f

    .line 468
    :cond_1b
    new-instance v0, Le0/v;

    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, " did not call through to super.onAttach()"

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-direct {v0, v1}, Le0/v;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v0

    .line 491
    :cond_1c
    :goto_f
    iget-boolean v0, v7, Le0/c;->m:Z

    .line 492
    .line 493
    if-eqz v0, :cond_1e

    .line 494
    .line 495
    iget-boolean v0, v7, Le0/c;->p:Z

    .line 496
    .line 497
    if-nez v0, :cond_1e

    .line 498
    .line 499
    invoke-virtual/range {p1 .. p1}, Le0/c;->f()Landroid/view/LayoutInflater;

    .line 500
    .line 501
    .line 502
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 503
    .line 504
    if-eqz v0, :cond_1d

    .line 505
    .line 506
    invoke-virtual {v0}, Le0/g;->O()V

    .line 507
    .line 508
    .line 509
    :cond_1d
    iput-boolean v8, v7, Le0/c;->p:Z

    .line 510
    .line 511
    const/4 v0, 0x0

    .line 512
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    iput-object v0, v7, Le0/c;->H:Landroid/view/View;

    .line 519
    .line 520
    :cond_1e
    if-le v12, v8, :cond_28

    .line 521
    .line 522
    iget-boolean v0, v7, Le0/c;->m:Z

    .line 523
    .line 524
    if-nez v0, :cond_25

    .line 525
    .line 526
    iget v0, v7, Le0/c;->y:I

    .line 527
    .line 528
    if-eqz v0, :cond_23

    .line 529
    .line 530
    if-eq v0, v15, :cond_22

    .line 531
    .line 532
    iget-object v1, v6, Le0/g;->m:Lh/c;

    .line 533
    .line 534
    invoke-virtual {v1, v0}, Lh/c;->d(I)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Landroid/view/ViewGroup;

    .line 539
    .line 540
    if-nez v0, :cond_21

    .line 541
    .line 542
    iget-boolean v1, v7, Le0/c;->o:Z

    .line 543
    .line 544
    if-nez v1, :cond_21

    .line 545
    .line 546
    :try_start_0
    iget-object v0, v7, Le0/c;->s:Le0/e;

    .line 547
    .line 548
    if-nez v0, :cond_1f

    .line 549
    .line 550
    const/4 v0, 0x0

    .line 551
    goto :goto_10

    .line 552
    :cond_1f
    iget-object v0, v0, Le0/e;->b:Landroid/content/Context;

    .line 553
    .line 554
    :goto_10
    if-eqz v0, :cond_20

    .line 555
    .line 556
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget v1, v7, Le0/c;->y:I

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    goto :goto_11

    .line 567
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 568
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v2, " not attached to a context."

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :catch_0
    const-string v0, "unknown"

    .line 591
    .line 592
    :goto_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 593
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v3, "No view found for id 0x"

    .line 597
    .line 598
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget v3, v7, Le0/c;->y:I

    .line 602
    .line 603
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v3, " ("

    .line 611
    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v0, ") for fragment "

    .line 619
    .line 620
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v6, v1}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    .line 634
    .line 635
    .line 636
    const/4 v0, 0x0

    .line 637
    throw v0

    .line 638
    :cond_21
    const/4 v1, 0x0

    .line 639
    goto :goto_12

    .line 640
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 641
    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v2, "Cannot create fragment "

    .line 645
    .line 646
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v2, " for a container view with no id"

    .line 653
    .line 654
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v6, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    .line 665
    .line 666
    .line 667
    const/4 v0, 0x0

    .line 668
    throw v0

    .line 669
    :cond_23
    const/4 v0, 0x0

    .line 670
    move-object v1, v0

    .line 671
    :goto_12
    iput-object v0, v7, Le0/c;->G:Landroid/view/ViewGroup;

    .line 672
    .line 673
    invoke-virtual/range {p1 .. p1}, Le0/c;->f()Landroid/view/LayoutInflater;

    .line 674
    .line 675
    .line 676
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 677
    .line 678
    if-eqz v0, :cond_24

    .line 679
    .line 680
    invoke-virtual {v0}, Le0/g;->O()V

    .line 681
    .line 682
    .line 683
    :cond_24
    iput-boolean v8, v7, Le0/c;->p:Z

    .line 684
    .line 685
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    iput-object v1, v7, Le0/c;->H:Landroid/view/View;

    .line 692
    .line 693
    :cond_25
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 694
    .line 695
    if-eqz v0, :cond_26

    .line 696
    .line 697
    invoke-virtual {v0}, Le0/g;->O()V

    .line 698
    .line 699
    .line 700
    :cond_26
    iput v10, v7, Le0/c;->b:I

    .line 701
    .line 702
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 703
    .line 704
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 705
    .line 706
    if-eqz v0, :cond_27

    .line 707
    .line 708
    iput-boolean v9, v0, Le0/g;->p:Z

    .line 709
    .line 710
    iput-boolean v9, v0, Le0/g;->q:Z

    .line 711
    .line 712
    invoke-virtual {v0, v10}, Le0/g;->C(I)V

    .line 713
    .line 714
    .line 715
    :cond_27
    invoke-virtual {v6, v9}, Le0/g;->l(Z)V

    .line 716
    .line 717
    .line 718
    const/4 v0, 0x0

    .line 719
    iput-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 720
    .line 721
    :cond_28
    if-le v12, v10, :cond_2b

    .line 722
    .line 723
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 724
    .line 725
    if-eqz v0, :cond_29

    .line 726
    .line 727
    invoke-virtual {v0}, Le0/g;->O()V

    .line 728
    .line 729
    .line 730
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 731
    .line 732
    invoke-virtual {v0}, Le0/g;->F()V

    .line 733
    .line 734
    .line 735
    :cond_29
    iput v11, v7, Le0/c;->b:I

    .line 736
    .line 737
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 738
    .line 739
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 740
    .line 741
    if-eqz v0, :cond_2a

    .line 742
    .line 743
    iput-boolean v9, v0, Le0/g;->p:Z

    .line 744
    .line 745
    iput-boolean v9, v0, Le0/g;->q:Z

    .line 746
    .line 747
    invoke-virtual {v0, v11}, Le0/g;->C(I)V

    .line 748
    .line 749
    .line 750
    :cond_2a
    sget-object v0, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    .line 751
    .line 752
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v6, v9}, Le0/g;->v(Z)V

    .line 756
    .line 757
    .line 758
    :cond_2b
    if-le v12, v11, :cond_45

    .line 759
    .line 760
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 761
    .line 762
    if-eqz v0, :cond_2c

    .line 763
    .line 764
    invoke-virtual {v0}, Le0/g;->O()V

    .line 765
    .line 766
    .line 767
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 768
    .line 769
    invoke-virtual {v0}, Le0/g;->F()V

    .line 770
    .line 771
    .line 772
    :cond_2c
    const/4 v0, 0x4

    .line 773
    iput v0, v7, Le0/c;->b:I

    .line 774
    .line 775
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 776
    .line 777
    iget-object v1, v7, Le0/c;->t:Le0/g;

    .line 778
    .line 779
    if-eqz v1, :cond_2d

    .line 780
    .line 781
    iput-boolean v9, v1, Le0/g;->p:Z

    .line 782
    .line 783
    iput-boolean v9, v1, Le0/g;->q:Z

    .line 784
    .line 785
    invoke-virtual {v1, v0}, Le0/g;->C(I)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 789
    .line 790
    invoke-virtual {v0}, Le0/g;->F()V

    .line 791
    .line 792
    .line 793
    :cond_2d
    sget-object v0, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    .line 794
    .line 795
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v9}, Le0/g;->t(Z)V

    .line 799
    .line 800
    .line 801
    const/4 v0, 0x0

    .line 802
    iput-object v0, v7, Le0/c;->c:Landroid/os/Bundle;

    .line 803
    .line 804
    iput-object v0, v7, Le0/c;->d:Landroid/util/SparseArray;

    .line 805
    .line 806
    goto/16 :goto_1a

    .line 807
    .line 808
    :cond_2e
    const/4 v1, -0x1

    .line 809
    if-le v0, v12, :cond_45

    .line 810
    .line 811
    if-eq v0, v8, :cond_36

    .line 812
    .line 813
    if-eq v0, v10, :cond_33

    .line 814
    .line 815
    if-eq v0, v11, :cond_31

    .line 816
    .line 817
    const/4 v2, 0x4

    .line 818
    if-eq v0, v2, :cond_2f

    .line 819
    .line 820
    goto/16 :goto_1a

    .line 821
    .line 822
    :cond_2f
    if-ge v12, v2, :cond_31

    .line 823
    .line 824
    sget-object v0, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    .line 825
    .line 826
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 827
    .line 828
    .line 829
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 830
    .line 831
    if-eqz v0, :cond_30

    .line 832
    .line 833
    invoke-virtual {v0, v11}, Le0/g;->C(I)V

    .line 834
    .line 835
    .line 836
    :cond_30
    iput v11, v7, Le0/c;->b:I

    .line 837
    .line 838
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 839
    .line 840
    invoke-virtual {v6, v9}, Le0/g;->q(Z)V

    .line 841
    .line 842
    .line 843
    :cond_31
    if-ge v12, v11, :cond_33

    .line 844
    .line 845
    sget-object v0, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    .line 846
    .line 847
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 848
    .line 849
    .line 850
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 851
    .line 852
    if-eqz v0, :cond_32

    .line 853
    .line 854
    iput-boolean v8, v0, Le0/g;->q:Z

    .line 855
    .line 856
    invoke-virtual {v0, v10}, Le0/g;->C(I)V

    .line 857
    .line 858
    .line 859
    :cond_32
    iput v10, v7, Le0/c;->b:I

    .line 860
    .line 861
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 862
    .line 863
    invoke-virtual {v6, v9}, Le0/g;->w(Z)V

    .line 864
    .line 865
    .line 866
    :cond_33
    if-ge v12, v10, :cond_36

    .line 867
    .line 868
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 869
    .line 870
    if-eqz v0, :cond_34

    .line 871
    .line 872
    invoke-virtual {v0, v8}, Le0/g;->C(I)V

    .line 873
    .line 874
    .line 875
    :cond_34
    iput v8, v7, Le0/c;->b:I

    .line 876
    .line 877
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 878
    .line 879
    invoke-static/range {p1 .. p1}, Lh0/a;->a(Landroidx/lifecycle/g;)Lh0/b;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iget-object v0, v0, Lh0/b;->b:Lh0/b$b;

    .line 884
    .line 885
    iget-object v0, v0, Lh0/b$b;->a:Lk/i;

    .line 886
    .line 887
    invoke-virtual {v0}, Lk/i;->f()I

    .line 888
    .line 889
    .line 890
    move-result v2

    .line 891
    const/4 v3, 0x0

    .line 892
    :goto_13
    if-ge v3, v2, :cond_35

    .line 893
    .line 894
    invoke-virtual {v0, v3}, Lk/i;->g(I)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    check-cast v4, Lh0/b$a;

    .line 899
    .line 900
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    add-int/lit8 v3, v3, 0x1

    .line 904
    .line 905
    goto :goto_13

    .line 906
    :cond_35
    iput-boolean v9, v7, Le0/c;->p:Z

    .line 907
    .line 908
    invoke-virtual {v6, v9}, Le0/g;->x(Z)V

    .line 909
    .line 910
    .line 911
    const/4 v0, 0x0

    .line 912
    iput-object v0, v7, Le0/c;->G:Landroid/view/ViewGroup;

    .line 913
    .line 914
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    iget-object v2, v7, Le0/c;->O:Landroidx/lifecycle/j;

    .line 918
    .line 919
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    const-string v3, "setValue"

    .line 923
    .line 924
    invoke-static {v3}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    iget v3, v2, Landroidx/lifecycle/LiveData;->e:I

    .line 928
    .line 929
    add-int/2addr v3, v8

    .line 930
    iput v3, v2, Landroidx/lifecycle/LiveData;->e:I

    .line 931
    .line 932
    iput-object v0, v2, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    .line 933
    .line 934
    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$a;)V

    .line 935
    .line 936
    .line 937
    iput-object v0, v7, Le0/c;->H:Landroid/view/View;

    .line 938
    .line 939
    iput-boolean v9, v7, Le0/c;->n:Z

    .line 940
    .line 941
    :cond_36
    if-ge v12, v8, :cond_45

    .line 942
    .line 943
    iget-boolean v0, v6, Le0/g;->r:Z

    .line 944
    .line 945
    if-eqz v0, :cond_38

    .line 946
    .line 947
    invoke-virtual/range {p1 .. p1}, Le0/c;->b()Landroid/view/View;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    if-eqz v0, :cond_37

    .line 952
    .line 953
    invoke-virtual/range {p1 .. p1}, Le0/c;->b()Landroid/view/View;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-virtual/range {p1 .. p1}, Le0/c;->a()Le0/c$b;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    const/4 v3, 0x0

    .line 962
    iput-object v3, v2, Le0/c$b;->a:Landroid/view/View;

    .line 963
    .line 964
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 965
    .line 966
    .line 967
    goto :goto_14

    .line 968
    :cond_37
    const/4 v0, 0x0

    .line 969
    invoke-virtual/range {p1 .. p1}, Le0/c;->c()Landroid/animation/Animator;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    if-eqz v2, :cond_38

    .line 974
    .line 975
    invoke-virtual/range {p1 .. p1}, Le0/c;->c()Landroid/animation/Animator;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    invoke-virtual/range {p1 .. p1}, Le0/c;->a()Le0/c$b;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    iput-object v0, v3, Le0/c$b;->b:Landroid/animation/Animator;

    .line 984
    .line 985
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 986
    .line 987
    .line 988
    :cond_38
    :goto_14
    invoke-virtual/range {p1 .. p1}, Le0/c;->b()Landroid/view/View;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    if-nez v0, :cond_44

    .line 993
    .line 994
    invoke-virtual/range {p1 .. p1}, Le0/c;->c()Landroid/animation/Animator;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    if-eqz v0, :cond_39

    .line 999
    .line 1000
    goto/16 :goto_19

    .line 1001
    .line 1002
    :cond_39
    iget-boolean v0, v7, Le0/c;->D:Z

    .line 1003
    .line 1004
    if-nez v0, :cond_3f

    .line 1005
    .line 1006
    sget-object v0, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    .line 1007
    .line 1008
    invoke-virtual {v13, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/f$a;)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 1012
    .line 1013
    if-eqz v0, :cond_3a

    .line 1014
    .line 1015
    invoke-virtual {v0}, Le0/g;->i()V

    .line 1016
    .line 1017
    .line 1018
    :cond_3a
    iput v9, v7, Le0/c;->b:I

    .line 1019
    .line 1020
    iput-boolean v9, v7, Le0/c;->M:Z

    .line 1021
    .line 1022
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 1023
    .line 1024
    iget-object v0, v7, Le0/c;->s:Le0/e;

    .line 1025
    .line 1026
    if-nez v0, :cond_3b

    .line 1027
    .line 1028
    const/4 v0, 0x0

    .line 1029
    goto :goto_15

    .line 1030
    :cond_3b
    iget-object v0, v0, Le0/e;->a:Landroid/app/Activity;

    .line 1031
    .line 1032
    check-cast v0, Le0/d;

    .line 1033
    .line 1034
    :goto_15
    if-eqz v0, :cond_3c

    .line 1035
    .line 1036
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    if-eqz v0, :cond_3c

    .line 1041
    .line 1042
    const/4 v0, 0x1

    .line 1043
    goto :goto_16

    .line 1044
    :cond_3c
    const/4 v0, 0x0

    .line 1045
    :goto_16
    iget-object v2, v7, Le0/c;->v:Landroidx/lifecycle/m;

    .line 1046
    .line 1047
    if-eqz v2, :cond_3d

    .line 1048
    .line 1049
    if-nez v0, :cond_3d

    .line 1050
    .line 1051
    invoke-virtual {v2}, Landroidx/lifecycle/m;->a()V

    .line 1052
    .line 1053
    .line 1054
    :cond_3d
    iget-boolean v0, v7, Le0/c;->F:Z

    .line 1055
    .line 1056
    if-eqz v0, :cond_3e

    .line 1057
    .line 1058
    const/4 v0, 0x0

    .line 1059
    iput-object v0, v7, Le0/c;->t:Le0/g;

    .line 1060
    .line 1061
    invoke-virtual {v6, v9}, Le0/g;->o(Z)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_17

    .line 1065
    :cond_3e
    new-instance v0, Le0/v;

    .line 1066
    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    const-string v2, " did not call through to super.onDestroy()"

    .line 1076
    .line 1077
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    invoke-direct {v0, v1}, Le0/v;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    throw v0

    .line 1088
    :cond_3f
    iput v9, v7, Le0/c;->b:I

    .line 1089
    .line 1090
    :goto_17
    iput-boolean v8, v7, Le0/c;->F:Z

    .line 1091
    .line 1092
    iget-object v0, v7, Le0/c;->t:Le0/g;

    .line 1093
    .line 1094
    if-eqz v0, :cond_41

    .line 1095
    .line 1096
    iget-boolean v2, v7, Le0/c;->D:Z

    .line 1097
    .line 1098
    if-eqz v2, :cond_40

    .line 1099
    .line 1100
    invoke-virtual {v0}, Le0/g;->i()V

    .line 1101
    .line 1102
    .line 1103
    const/4 v0, 0x0

    .line 1104
    iput-object v0, v7, Le0/c;->t:Le0/g;

    .line 1105
    .line 1106
    goto :goto_18

    .line 1107
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1108
    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    const-string v2, "Child FragmentManager of "

    .line 1112
    .line 1113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    .line 1120
    .line 1121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    throw v0

    .line 1132
    :cond_41
    :goto_18
    invoke-virtual {v6, v9}, Le0/g;->p(Z)V

    .line 1133
    .line 1134
    .line 1135
    if-nez p5, :cond_45

    .line 1136
    .line 1137
    iget-boolean v0, v7, Le0/c;->D:Z

    .line 1138
    .line 1139
    if-nez v0, :cond_43

    .line 1140
    .line 1141
    iget v0, v7, Le0/c;->e:I

    .line 1142
    .line 1143
    if-gez v0, :cond_42

    .line 1144
    .line 1145
    goto :goto_1a

    .line 1146
    :cond_42
    iget-object v2, v6, Le0/g;->e:Landroid/util/SparseArray;

    .line 1147
    .line 1148
    const/4 v3, 0x0

    .line 1149
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    iput v1, v7, Le0/c;->e:I

    .line 1153
    .line 1154
    iput-object v3, v7, Le0/c;->f:Ljava/lang/String;

    .line 1155
    .line 1156
    iput-boolean v9, v7, Le0/c;->k:Z

    .line 1157
    .line 1158
    iput-boolean v9, v7, Le0/c;->l:Z

    .line 1159
    .line 1160
    iput-boolean v9, v7, Le0/c;->m:Z

    .line 1161
    .line 1162
    iput-boolean v9, v7, Le0/c;->n:Z

    .line 1163
    .line 1164
    iput-boolean v9, v7, Le0/c;->o:Z

    .line 1165
    .line 1166
    iput v9, v7, Le0/c;->q:I

    .line 1167
    .line 1168
    iput-object v3, v7, Le0/c;->r:Le0/g;

    .line 1169
    .line 1170
    iput-object v3, v7, Le0/c;->t:Le0/g;

    .line 1171
    .line 1172
    iput-object v3, v7, Le0/c;->s:Le0/e;

    .line 1173
    .line 1174
    iput v9, v7, Le0/c;->x:I

    .line 1175
    .line 1176
    iput v9, v7, Le0/c;->y:I

    .line 1177
    .line 1178
    iput-object v3, v7, Le0/c;->z:Ljava/lang/String;

    .line 1179
    .line 1180
    iput-boolean v9, v7, Le0/c;->A:Z

    .line 1181
    .line 1182
    iput-boolean v9, v7, Le0/c;->B:Z

    .line 1183
    .line 1184
    iput-boolean v9, v7, Le0/c;->D:Z

    .line 1185
    .line 1186
    goto :goto_1a

    .line 1187
    :cond_43
    const/4 v0, 0x0

    .line 1188
    iput-object v0, v7, Le0/c;->s:Le0/e;

    .line 1189
    .line 1190
    iput-object v0, v7, Le0/c;->w:Le0/c;

    .line 1191
    .line 1192
    iput-object v0, v7, Le0/c;->r:Le0/g;

    .line 1193
    .line 1194
    goto :goto_1a

    .line 1195
    :cond_44
    :goto_19
    invoke-virtual/range {p1 .. p1}, Le0/c;->a()Le0/c$b;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    iput v12, v0, Le0/c$b;->c:I

    .line 1200
    .line 1201
    goto :goto_1b

    .line 1202
    :cond_45
    :goto_1a
    move v8, v12

    .line 1203
    :goto_1b
    iget v0, v7, Le0/c;->b:I

    .line 1204
    .line 1205
    if-eq v0, v8, :cond_46

    .line 1206
    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    const-string v1, "moveToState: Fragment state for "

    .line 1210
    .line 1211
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    .line 1217
    const-string v1, " not updated inline; expected state "

    .line 1218
    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    const-string v1, " found "

    .line 1226
    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    iget v1, v7, Le0/c;->b:I

    .line 1231
    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    const-string v1, "FragmentManager"

    .line 1240
    .line 1241
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .line 1243
    .line 1244
    iput v8, v7, Le0/c;->b:I

    .line 1245
    .line 1246
    :cond_46
    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le0/g;->x:Le0/h;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le0/g;->p:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Le0/g;->q:Z

    .line 8
    .line 9
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Le0/c;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v3, v3, Le0/c;->t:Le0/g;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Le0/g;->O()V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final P()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Le0/g;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Le0/g;->q:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-nez v0, :cond_e

    .line 16
    .line 17
    invoke-virtual {p0}, Le0/g;->F()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Le0/g;->E()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Le0/g;->o:Le0/c;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Le0/c;->t:Le0/g;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Le0/g;->P()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_9

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v3, p0, Le0/g;->u:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v4, p0, Le0/g;->f:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    sub-int/2addr v4, v1

    .line 53
    if-gez v4, :cond_4

    .line 54
    .line 55
    :goto_2
    const/4 v0, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object v5, p0, Le0/g;->f:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :goto_3
    if-eqz v0, :cond_c

    .line 73
    .line 74
    iput-boolean v1, p0, Le0/g;->b:Z

    .line 75
    .line 76
    :try_start_0
    iget-object v3, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object v4, p0, Le0/g;->u:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v3, :cond_b

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_5
    if-eqz v4, :cond_a

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-ne v5, v6, :cond_a

    .line 100
    .line 101
    invoke-virtual {p0, v3, v4}, Le0/g;->H(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    :goto_4
    if-ge v6, v5, :cond_9

    .line 111
    .line 112
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Le0/a;

    .line 117
    .line 118
    iget-boolean v8, v8, Le0/a;->r:Z

    .line 119
    .line 120
    if-nez v8, :cond_8

    .line 121
    .line 122
    if-eq v7, v6, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0, v3, v4, v7, v6}, Le0/g;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 125
    .line 126
    .line 127
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_7

    .line 140
    .line 141
    :goto_5
    if-ge v7, v5, :cond_7

    .line 142
    .line 143
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_7

    .line 154
    .line 155
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Le0/a;

    .line 160
    .line 161
    iget-boolean v8, v8, Le0/a;->r:Z

    .line 162
    .line 163
    if-nez v8, :cond_7

    .line 164
    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_7

    .line 170
    :cond_7
    invoke-virtual {p0, v3, v4, v6, v7}, Le0/g;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v6, v7, -0x1

    .line 174
    .line 175
    :cond_8
    add-int/2addr v6, v1

    .line 176
    goto :goto_4

    .line 177
    :cond_9
    if-eq v7, v5, :cond_b

    .line 178
    .line 179
    invoke-virtual {p0, v3, v4, v7, v5}, Le0/g;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v1, "Internal error with the back stack records"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_b
    :goto_6
    iput-boolean v2, p0, Le0/g;->b:Z

    .line 192
    .line 193
    iget-object v1, p0, Le0/g;->u:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 201
    .line 202
    .line 203
    goto :goto_8

    .line 204
    :goto_7
    iput-boolean v2, p0, Le0/g;->b:Z

    .line 205
    .line 206
    iget-object v1, p0, Le0/g;->u:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Le0/g;->t:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_c
    :goto_8
    iget-boolean v1, p0, Le0/g;->s:Z

    .line 218
    .line 219
    if-eqz v1, :cond_d

    .line 220
    .line 221
    iput-boolean v2, p0, Le0/g;->s:Z

    .line 222
    .line 223
    invoke-virtual {p0}, Le0/g;->X()V

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {p0}, Le0/g;->d()V

    .line 227
    .line 228
    .line 229
    move v1, v0

    .line 230
    :goto_9
    return v1

    .line 231
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0
.end method

.method public final Q(Le0/c;)V
    .locals 4

    .line 1
    iget v0, p1, Le0/c;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    xor-int/2addr v0, v1

    .line 11
    iget-boolean v3, p1, Le0/c;->B:Z

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v3, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iput-boolean v2, p1, Le0/c;->k:Z

    .line 27
    .line 28
    iput-boolean v1, p1, Le0/c;->l:Z

    .line 29
    .line 30
    :cond_2
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public final R(Landroid/os/Parcelable;Le0/h;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    move-object/from16 v2, p1

    .line 9
    .line 10
    check-cast v2, Le0/i;

    .line 11
    .line 12
    iget-object v3, v2, Le0/i;->a:[Le0/j;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    iget-object v5, v0, Le0/h;->a:Ljava/util/List;

    .line 22
    .line 23
    iget-object v6, v0, Le0/h;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object v7, v0, Le0/h;->c:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v8, 0x0

    .line 35
    :goto_0
    const/4 v9, 0x0

    .line 36
    :goto_1
    if-ge v9, v8, :cond_7

    .line 37
    .line 38
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    check-cast v10, Le0/c;

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    :goto_2
    iget-object v12, v2, Le0/i;->a:[Le0/j;

    .line 46
    .line 47
    array-length v13, v12

    .line 48
    if-ge v11, v13, :cond_3

    .line 49
    .line 50
    aget-object v13, v12, v11

    .line 51
    .line 52
    iget v13, v13, Le0/j;->b:I

    .line 53
    .line 54
    iget v14, v10, Le0/c;->e:I

    .line 55
    .line 56
    if-eq v13, v14, :cond_3

    .line 57
    .line 58
    add-int/lit8 v11, v11, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    array-length v13, v12

    .line 62
    if-eq v11, v13, :cond_5

    .line 63
    .line 64
    aget-object v11, v12, v11

    .line 65
    .line 66
    iput-object v10, v11, Le0/j;->l:Le0/c;

    .line 67
    .line 68
    iput-object v3, v10, Le0/c;->d:Landroid/util/SparseArray;

    .line 69
    .line 70
    iput v4, v10, Le0/c;->q:I

    .line 71
    .line 72
    iput-boolean v4, v10, Le0/c;->n:Z

    .line 73
    .line 74
    iput-boolean v4, v10, Le0/c;->k:Z

    .line 75
    .line 76
    iput-object v3, v10, Le0/c;->h:Le0/c;

    .line 77
    .line 78
    iget-object v12, v11, Le0/j;->k:Landroid/os/Bundle;

    .line 79
    .line 80
    if-eqz v12, :cond_4

    .line 81
    .line 82
    iget-object v13, v1, Le0/g;->l:Le0/e;

    .line 83
    .line 84
    iget-object v13, v13, Le0/e;->b:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 91
    .line 92
    .line 93
    iget-object v12, v11, Le0/j;->k:Landroid/os/Bundle;

    .line 94
    .line 95
    const-string v13, "android:view_state"

    .line 96
    .line 97
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    iput-object v12, v10, Le0/c;->d:Landroid/util/SparseArray;

    .line 102
    .line 103
    iget-object v11, v11, Le0/j;->k:Landroid/os/Bundle;

    .line 104
    .line 105
    iput-object v11, v10, Le0/c;->c:Landroid/os/Bundle;

    .line 106
    .line 107
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Could not find active fragment with index "

    .line 115
    .line 116
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v4, v10, Le0/c;->e:I

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    .line 132
    .line 133
    .line 134
    throw v3

    .line 135
    :cond_6
    move-object v6, v3

    .line 136
    move-object v7, v6

    .line 137
    :cond_7
    new-instance v5, Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v8, v2, Le0/i;->a:[Le0/j;

    .line 140
    .line 141
    array-length v8, v8

    .line 142
    invoke-direct {v5, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 143
    .line 144
    .line 145
    iput-object v5, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    :goto_3
    iget-object v8, v2, Le0/i;->a:[Le0/j;

    .line 149
    .line 150
    array-length v9, v8

    .line 151
    const/4 v10, 0x1

    .line 152
    if-ge v5, v9, :cond_f

    .line 153
    .line 154
    aget-object v8, v8, v5

    .line 155
    .line 156
    if-eqz v8, :cond_e

    .line 157
    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-ge v5, v9, :cond_8

    .line 165
    .line 166
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Le0/h;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    move-object v9, v3

    .line 174
    :goto_4
    if-eqz v7, :cond_9

    .line 175
    .line 176
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-ge v5, v11, :cond_9

    .line 181
    .line 182
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    check-cast v11, Landroidx/lifecycle/m;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_9
    move-object v11, v3

    .line 190
    :goto_5
    iget-object v12, v1, Le0/g;->l:Le0/e;

    .line 191
    .line 192
    iget-object v13, v1, Le0/g;->m:Lh/c;

    .line 193
    .line 194
    iget-object v14, v1, Le0/g;->n:Le0/c;

    .line 195
    .line 196
    iget-object v15, v8, Le0/j;->l:Le0/c;

    .line 197
    .line 198
    if-nez v15, :cond_d

    .line 199
    .line 200
    iget-object v15, v12, Le0/e;->b:Landroid/content/Context;

    .line 201
    .line 202
    iget-object v4, v8, Le0/j;->i:Landroid/os/Bundle;

    .line 203
    .line 204
    if-eqz v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    iget-object v3, v8, Le0/j;->a:Ljava/lang/String;

    .line 214
    .line 215
    if-eqz v13, :cond_b

    .line 216
    .line 217
    invoke-virtual {v13, v15, v3, v4}, Lh/c;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    goto :goto_6

    .line 222
    :cond_b
    invoke-static {v15, v3, v4}, Le0/c;->d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    :goto_6
    iput-object v3, v8, Le0/j;->l:Le0/c;

    .line 227
    .line 228
    iget-object v3, v8, Le0/j;->k:Landroid/os/Bundle;

    .line 229
    .line 230
    if-eqz v3, :cond_c

    .line 231
    .line 232
    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, v8, Le0/j;->l:Le0/c;

    .line 240
    .line 241
    iget-object v4, v8, Le0/j;->k:Landroid/os/Bundle;

    .line 242
    .line 243
    iput-object v4, v3, Le0/c;->c:Landroid/os/Bundle;

    .line 244
    .line 245
    :cond_c
    iget-object v3, v8, Le0/j;->l:Le0/c;

    .line 246
    .line 247
    iget v4, v8, Le0/j;->b:I

    .line 248
    .line 249
    invoke-virtual {v3, v4, v14}, Le0/c;->i(ILe0/c;)V

    .line 250
    .line 251
    .line 252
    iget-object v3, v8, Le0/j;->l:Le0/c;

    .line 253
    .line 254
    iget-boolean v4, v8, Le0/j;->c:Z

    .line 255
    .line 256
    iput-boolean v4, v3, Le0/c;->m:Z

    .line 257
    .line 258
    iput-boolean v10, v3, Le0/c;->o:Z

    .line 259
    .line 260
    iget v4, v8, Le0/j;->d:I

    .line 261
    .line 262
    iput v4, v3, Le0/c;->x:I

    .line 263
    .line 264
    iget v4, v8, Le0/j;->e:I

    .line 265
    .line 266
    iput v4, v3, Le0/c;->y:I

    .line 267
    .line 268
    iget-object v4, v8, Le0/j;->f:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v4, v3, Le0/c;->z:Ljava/lang/String;

    .line 271
    .line 272
    iget-boolean v4, v8, Le0/j;->g:Z

    .line 273
    .line 274
    iput-boolean v4, v3, Le0/c;->C:Z

    .line 275
    .line 276
    iget-boolean v4, v8, Le0/j;->h:Z

    .line 277
    .line 278
    iput-boolean v4, v3, Le0/c;->B:Z

    .line 279
    .line 280
    iget-boolean v4, v8, Le0/j;->j:Z

    .line 281
    .line 282
    iput-boolean v4, v3, Le0/c;->A:Z

    .line 283
    .line 284
    iget-object v4, v12, Le0/e;->d:Le0/g;

    .line 285
    .line 286
    iput-object v4, v3, Le0/c;->r:Le0/g;

    .line 287
    .line 288
    :cond_d
    iget-object v3, v8, Le0/j;->l:Le0/c;

    .line 289
    .line 290
    iput-object v9, v3, Le0/c;->u:Le0/h;

    .line 291
    .line 292
    iput-object v11, v3, Le0/c;->v:Landroidx/lifecycle/m;

    .line 293
    .line 294
    iget-object v4, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 295
    .line 296
    iget v9, v3, Le0/c;->e:I

    .line 297
    .line 298
    invoke-virtual {v4, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const/4 v3, 0x0

    .line 302
    iput-object v3, v8, Le0/j;->l:Le0/c;

    .line 303
    .line 304
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    const/4 v3, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_f
    if-eqz v0, :cond_12

    .line 311
    .line 312
    iget-object v0, v0, Le0/h;->a:Ljava/util/List;

    .line 313
    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    goto :goto_7

    .line 321
    :cond_10
    const/4 v3, 0x0

    .line 322
    :goto_7
    const/4 v4, 0x0

    .line 323
    :goto_8
    if-ge v4, v3, :cond_12

    .line 324
    .line 325
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    check-cast v5, Le0/c;

    .line 330
    .line 331
    iget v6, v5, Le0/c;->i:I

    .line 332
    .line 333
    if-ltz v6, :cond_11

    .line 334
    .line 335
    iget-object v7, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 336
    .line 337
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    check-cast v6, Le0/c;

    .line 342
    .line 343
    iput-object v6, v5, Le0/c;->h:Le0/c;

    .line 344
    .line 345
    if-nez v6, :cond_11

    .line 346
    .line 347
    const-string v6, "FragmentManager"

    .line 348
    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v8, "Re-attaching retained fragment "

    .line 352
    .line 353
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v8, " target no longer exists: "

    .line 360
    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v5, v5, Le0/c;->i:I

    .line 365
    .line 366
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_12
    iget-object v0, v1, Le0/g;->d:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    .line 383
    .line 384
    iget-object v0, v2, Le0/i;->b:[I

    .line 385
    .line 386
    if-eqz v0, :cond_15

    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    :goto_9
    iget-object v3, v2, Le0/i;->b:[I

    .line 390
    .line 391
    array-length v4, v3

    .line 392
    if-ge v0, v4, :cond_15

    .line 393
    .line 394
    iget-object v4, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 395
    .line 396
    aget v3, v3, v0

    .line 397
    .line 398
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Le0/c;

    .line 403
    .line 404
    if-eqz v3, :cond_14

    .line 405
    .line 406
    iput-boolean v10, v3, Le0/c;->k:Z

    .line 407
    .line 408
    iget-object v4, v1, Le0/g;->d:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-nez v4, :cond_13

    .line 415
    .line 416
    iget-object v4, v1, Le0/g;->d:Ljava/util/ArrayList;

    .line 417
    .line 418
    monitor-enter v4

    .line 419
    :try_start_0
    iget-object v5, v1, Le0/g;->d:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    monitor-exit v4

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    throw v0

    .line 431
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 432
    .line 433
    const-string v2, "Already added!"

    .line 434
    .line 435
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :cond_14
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 440
    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    const-string v5, "No instantiated fragment for index #"

    .line 444
    .line 445
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object v2, v2, Le0/i;->b:[I

    .line 449
    .line 450
    aget v0, v2, v0

    .line 451
    .line 452
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v3}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    .line 463
    .line 464
    .line 465
    const/4 v0, 0x0

    .line 466
    throw v0

    .line 467
    :cond_15
    iget-object v0, v2, Le0/i;->c:[Le0/b;

    .line 468
    .line 469
    if-eqz v0, :cond_19

    .line 470
    .line 471
    new-instance v0, Ljava/util/ArrayList;

    .line 472
    .line 473
    iget-object v3, v2, Le0/i;->c:[Le0/b;

    .line 474
    .line 475
    array-length v3, v3

    .line 476
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    .line 478
    .line 479
    iput-object v0, v1, Le0/g;->f:Ljava/util/ArrayList;

    .line 480
    .line 481
    const/4 v0, 0x0

    .line 482
    :goto_a
    iget-object v3, v2, Le0/i;->c:[Le0/b;

    .line 483
    .line 484
    array-length v4, v3

    .line 485
    if-ge v0, v4, :cond_1a

    .line 486
    .line 487
    aget-object v3, v3, v0

    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    new-instance v4, Le0/a;

    .line 493
    .line 494
    invoke-direct {v4, v1}, Le0/a;-><init>(Le0/g;)V

    .line 495
    .line 496
    .line 497
    const/4 v5, 0x0

    .line 498
    :goto_b
    iget-object v6, v3, Le0/b;->a:[I

    .line 499
    .line 500
    array-length v7, v6

    .line 501
    if-ge v5, v7, :cond_17

    .line 502
    .line 503
    new-instance v7, Le0/a$a;

    .line 504
    .line 505
    invoke-direct {v7}, Le0/a$a;-><init>()V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v8, v5, 0x1

    .line 509
    .line 510
    aget v5, v6, v5

    .line 511
    .line 512
    iput v5, v7, Le0/a$a;->a:I

    .line 513
    .line 514
    add-int/lit8 v5, v8, 0x1

    .line 515
    .line 516
    aget v8, v6, v8

    .line 517
    .line 518
    if-ltz v8, :cond_16

    .line 519
    .line 520
    iget-object v9, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 521
    .line 522
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    check-cast v8, Le0/c;

    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_16
    const/4 v8, 0x0

    .line 530
    :goto_c
    iput-object v8, v7, Le0/a$a;->b:Le0/c;

    .line 531
    .line 532
    add-int/lit8 v8, v5, 0x1

    .line 533
    .line 534
    aget v5, v6, v5

    .line 535
    .line 536
    iput v5, v7, Le0/a$a;->c:I

    .line 537
    .line 538
    add-int/lit8 v9, v8, 0x1

    .line 539
    .line 540
    aget v8, v6, v8

    .line 541
    .line 542
    iput v8, v7, Le0/a$a;->d:I

    .line 543
    .line 544
    add-int/lit8 v11, v9, 0x1

    .line 545
    .line 546
    aget v9, v6, v9

    .line 547
    .line 548
    iput v9, v7, Le0/a$a;->e:I

    .line 549
    .line 550
    add-int/lit8 v12, v11, 0x1

    .line 551
    .line 552
    aget v6, v6, v11

    .line 553
    .line 554
    iput v6, v7, Le0/a$a;->f:I

    .line 555
    .line 556
    iput v5, v4, Le0/a;->c:I

    .line 557
    .line 558
    iput v8, v4, Le0/a;->d:I

    .line 559
    .line 560
    iput v9, v4, Le0/a;->e:I

    .line 561
    .line 562
    iput v6, v4, Le0/a;->f:I

    .line 563
    .line 564
    iget-object v5, v4, Le0/a;->b:Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    iget v5, v4, Le0/a;->c:I

    .line 570
    .line 571
    iput v5, v7, Le0/a$a;->c:I

    .line 572
    .line 573
    iget v5, v4, Le0/a;->d:I

    .line 574
    .line 575
    iput v5, v7, Le0/a$a;->d:I

    .line 576
    .line 577
    iget v5, v4, Le0/a;->e:I

    .line 578
    .line 579
    iput v5, v7, Le0/a$a;->e:I

    .line 580
    .line 581
    iget v5, v4, Le0/a;->f:I

    .line 582
    .line 583
    iput v5, v7, Le0/a$a;->f:I

    .line 584
    .line 585
    move v5, v12

    .line 586
    goto :goto_b

    .line 587
    :cond_17
    iget v5, v3, Le0/b;->b:I

    .line 588
    .line 589
    iput v5, v4, Le0/a;->g:I

    .line 590
    .line 591
    iget v5, v3, Le0/b;->c:I

    .line 592
    .line 593
    iput v5, v4, Le0/a;->h:I

    .line 594
    .line 595
    iget-object v5, v3, Le0/b;->d:Ljava/lang/String;

    .line 596
    .line 597
    iput-object v5, v4, Le0/a;->j:Ljava/lang/String;

    .line 598
    .line 599
    iget v5, v3, Le0/b;->e:I

    .line 600
    .line 601
    iput v5, v4, Le0/a;->k:I

    .line 602
    .line 603
    iput-boolean v10, v4, Le0/a;->i:Z

    .line 604
    .line 605
    iget v5, v3, Le0/b;->f:I

    .line 606
    .line 607
    iput v5, v4, Le0/a;->l:I

    .line 608
    .line 609
    iget-object v5, v3, Le0/b;->g:Ljava/lang/CharSequence;

    .line 610
    .line 611
    iput-object v5, v4, Le0/a;->m:Ljava/lang/CharSequence;

    .line 612
    .line 613
    iget v5, v3, Le0/b;->h:I

    .line 614
    .line 615
    iput v5, v4, Le0/a;->n:I

    .line 616
    .line 617
    iget-object v5, v3, Le0/b;->i:Ljava/lang/CharSequence;

    .line 618
    .line 619
    iput-object v5, v4, Le0/a;->o:Ljava/lang/CharSequence;

    .line 620
    .line 621
    iget-object v5, v3, Le0/b;->j:Ljava/util/ArrayList;

    .line 622
    .line 623
    iput-object v5, v4, Le0/a;->p:Ljava/util/ArrayList;

    .line 624
    .line 625
    iget-object v5, v3, Le0/b;->k:Ljava/util/ArrayList;

    .line 626
    .line 627
    iput-object v5, v4, Le0/a;->q:Ljava/util/ArrayList;

    .line 628
    .line 629
    iget-boolean v3, v3, Le0/b;->l:Z

    .line 630
    .line 631
    iput-boolean v3, v4, Le0/a;->r:Z

    .line 632
    .line 633
    invoke-virtual {v4, v10}, Le0/a;->f(I)V

    .line 634
    .line 635
    .line 636
    iget-object v3, v1, Le0/g;->f:Ljava/util/ArrayList;

    .line 637
    .line 638
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    iget v3, v4, Le0/a;->k:I

    .line 642
    .line 643
    if-ltz v3, :cond_18

    .line 644
    .line 645
    invoke-virtual {v1, v3, v4}, Le0/g;->U(ILe0/a;)V

    .line 646
    .line 647
    .line 648
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 649
    .line 650
    goto/16 :goto_a

    .line 651
    .line 652
    :cond_19
    const/4 v0, 0x0

    .line 653
    iput-object v0, v1, Le0/g;->f:Ljava/util/ArrayList;

    .line 654
    .line 655
    :cond_1a
    iget v0, v2, Le0/i;->d:I

    .line 656
    .line 657
    if-ltz v0, :cond_1b

    .line 658
    .line 659
    iget-object v3, v1, Le0/g;->e:Landroid/util/SparseArray;

    .line 660
    .line 661
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    check-cast v0, Le0/c;

    .line 666
    .line 667
    iput-object v0, v1, Le0/g;->o:Le0/c;

    .line 668
    .line 669
    :cond_1b
    iget v0, v2, Le0/i;->e:I

    .line 670
    .line 671
    iput v0, v1, Le0/g;->c:I

    .line 672
    .line 673
    return-void
.end method

.method public final S()Le0/i;
    .locals 11

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v1, :cond_5

    iget-object v4, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le0/c;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Le0/c;->b()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2
    iget-object v4, v6, Le0/c;->K:Le0/c$b;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    iget v4, v4, Le0/c$b;->c:I

    move v7, v4

    .line 3
    :goto_2
    invoke-virtual {v6}, Le0/c;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 4
    :cond_2
    invoke-virtual {v6}, Le0/c;->a()Le0/c$b;

    move-result-object v4

    iput-object v3, v4, Le0/c$b;->a:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    .line 5
    invoke-virtual/range {v5 .. v10}, Le0/g;->N(Le0/c;IIIZ)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Le0/c;->c()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Le0/c;->c()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_5
    invoke-virtual {p0}, Le0/g;->F()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Le0/g;->p:Z

    iput-object v3, p0, Le0/g;->x:Le0/h;

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [Le0/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    const-string v6, " has cleared index: "

    const-string v7, "Failure saving state: active "

    if-ge v4, v1, :cond_15

    iget-object v8, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le0/c;

    if-eqz v8, :cond_14

    iget v5, v8, Le0/c;->e:I

    if-ltz v5, :cond_13

    new-instance v5, Le0/j;

    invoke-direct {v5, v8}, Le0/j;-><init>(Le0/c;)V

    aput-object v5, v2, v4

    iget v6, v8, Le0/c;->b:I

    if-lez v6, :cond_11

    iget-object v6, v5, Le0/j;->k:Landroid/os/Bundle;

    if-nez v6, :cond_11

    .line 7
    iget-object v6, p0, Le0/g;->w:Landroid/os/Bundle;

    if-nez v6, :cond_7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Le0/g;->w:Landroid/os/Bundle;

    :cond_7
    iget-object v6, p0, Le0/g;->w:Landroid/os/Bundle;

    .line 8
    iget-object v7, v8, Le0/c;->t:Le0/g;

    if-eqz v7, :cond_8

    .line 9
    invoke-virtual {v7}, Le0/g;->S()Le0/i;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v9, "android:support:fragments"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    :cond_8
    invoke-virtual {p0, v0}, Le0/g;->u(Z)V

    iget-object v6, p0, Le0/g;->w:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Le0/g;->w:Landroid/os/Bundle;

    iput-object v3, p0, Le0/g;->w:Landroid/os/Bundle;

    goto :goto_5

    :cond_9
    move-object v6, v3

    :goto_5
    iget-object v7, v8, Le0/c;->d:Landroid/util/SparseArray;

    if-eqz v7, :cond_b

    if-nez v6, :cond_a

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v7, "android:view_state"

    iget-object v9, v8, Le0/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_b
    iget-boolean v7, v8, Le0/c;->J:Z

    if-nez v7, :cond_d

    if-nez v6, :cond_c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v7, "android:user_visible_hint"

    iget-boolean v9, v8, Le0/c;->J:Z

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_d
    iput-object v6, v5, Le0/j;->k:Landroid/os/Bundle;

    iget-object v7, v8, Le0/c;->h:Le0/c;

    if-eqz v7, :cond_12

    iget v7, v7, Le0/c;->e:I

    if-ltz v7, :cond_10

    if-nez v6, :cond_e

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Le0/j;->k:Landroid/os/Bundle;

    :cond_e
    iget-object v6, v5, Le0/j;->k:Landroid/os/Bundle;

    iget-object v7, v8, Le0/c;->h:Le0/c;

    .line 12
    iget v9, v7, Le0/c;->e:I

    if-ltz v9, :cond_f

    const-string v7, "android:target_state"

    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v6, v8, Le0/c;->j:I

    if-eqz v6, :cond_12

    iget-object v5, v5, Le0/j;->k:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 14
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    throw v3

    .line 15
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure saving state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Le0/c;->h:Le0/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_11
    iget-object v6, v8, Le0/c;->c:Landroid/os/Bundle;

    iput-object v6, v5, Le0/j;->k:Landroid/os/Bundle;

    :cond_12
    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Le0/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_14
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_15
    if-nez v5, :cond_16

    return-object v3

    :cond_16
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    new-array v5, v4, [I

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_19

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le0/c;

    iget v9, v9, Le0/c;->e:I

    aput v9, v5, v8

    if-ltz v9, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le0/g;->Y(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_18
    move-object v5, v3

    :cond_19
    iget-object v1, p0, Le0/g;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    new-array v3, v1, [Le0/b;

    :goto_9
    if-ge v0, v1, :cond_1a

    new-instance v4, Le0/b;

    iget-object v6, p0, Le0/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le0/a;

    invoke-direct {v4, v6}, Le0/b;-><init>(Le0/a;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    new-instance v0, Le0/i;

    invoke-direct {v0}, Le0/i;-><init>()V

    iput-object v2, v0, Le0/i;->a:[Le0/j;

    iput-object v5, v0, Le0/i;->b:[I

    iput-object v3, v0, Le0/i;->c:[Le0/b;

    iget-object v1, p0, Le0/g;->o:Le0/c;

    if-eqz v1, :cond_1b

    iget v1, v1, Le0/c;->e:I

    iput v1, v0, Le0/i;->d:I

    :cond_1b
    iget v1, p0, Le0/g;->c:I

    iput v1, v0, Le0/i;->e:I

    invoke-virtual {p0}, Le0/g;->T()V

    return-object v0

    :cond_1c
    :goto_a
    return-object v3
.end method

.method public final T()V
    .locals 9

    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v6, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le0/c;

    if-eqz v6, :cond_7

    iget-boolean v7, v6, Le0/c;->C:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Le0/c;->h:Le0/c;

    if-eqz v7, :cond_1

    iget v7, v7, Le0/c;->e:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Le0/c;->i:I

    :cond_2
    iget-object v7, v6, Le0/c;->t:Le0/g;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Le0/g;->T()V

    iget-object v7, v6, Le0/c;->t:Le0/g;

    iget-object v7, v7, Le0/g;->x:Le0/h;

    goto :goto_2

    :cond_3
    iget-object v7, v6, Le0/c;->u:Le0/h;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v5, :cond_6

    iget-object v7, v6, Le0/c;->v:Landroidx/lifecycle/m;

    if-eqz v7, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    iget-object v6, v6, Le0/c;->v:Landroidx/lifecycle/m;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    iput-object v1, p0, Le0/g;->x:Le0/h;

    goto :goto_5

    :cond_a
    new-instance v0, Le0/h;

    invoke-direct {v0, v3, v4, v5}, Le0/h;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Le0/g;->x:Le0/h;

    :goto_5
    return-void
.end method

.method public final U(ILe0/a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le0/g;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le0/g;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Le0/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Le0/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Le0/g;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Le0/g;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le0/g;->i:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Le0/g;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Le0/g;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final V(Le0/c;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p1, Le0/c;->e:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Le0/c;->s:Le0/e;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Le0/c;->r:Le0/g;

    .line 18
    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Fragment "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " is not an active fragment of FragmentManager "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    iput-object p1, p0, Le0/g;->o:Le0/c;

    .line 51
    .line 52
    return-void
.end method

.method public final X()V
    .locals 9

    .line 1
    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Le0/g;->e:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v4, v2

    .line 23
    check-cast v4, Le0/c;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-boolean v2, v4, Le0/c;->I:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Le0/g;->b:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    iput-boolean v2, p0, Le0/g;->s:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput-boolean v0, v4, Le0/c;->I:Z

    .line 40
    .line 41
    iget v5, p0, Le0/g;->k:I

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v3, p0

    .line 47
    invoke-virtual/range {v3 .. v8}, Le0/g;->N(Le0/c;IIIZ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method public final Y(Ljava/lang/RuntimeException;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Lx/a;

    .line 16
    .line 17
    invoke-direct {v0}, Lx/a;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Le0/g;->l:Le0/e;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const-string v5, "  "

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    .line 34
    .line 35
    check-cast v0, Le0/d$b;

    .line 36
    .line 37
    iget-object v0, v0, Le0/d$b;->e:Le0/d;

    .line 38
    .line 39
    invoke-virtual {v0, v5, v4, v2, v3}, Le0/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v5, v4, v2, v0}, Le0/g;->D(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v2, "Failed dumping state"

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    throw p1
.end method

.method public final a(Lk/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/d<",
            "Le0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x3

    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    :goto_0
    if-ge v9, v7, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Le0/c;

    .line 28
    .line 29
    iget v1, v2, Le0/c;->b:I

    .line 30
    .line 31
    if-ge v1, p1, :cond_3

    .line 32
    .line 33
    iget-object v1, v2, Le0/c;->K:Le0/c$b;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v3, v1, Le0/c$b;->d:I

    .line 40
    .line 41
    move v4, v3

    .line 42
    :goto_1
    if-nez v1, :cond_2

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget v1, v1, Le0/c$b;->e:I

    .line 47
    .line 48
    move v5, v1

    .line 49
    :goto_2
    const/4 v6, 0x0

    .line 50
    move-object v1, p0

    .line 51
    move v3, p1

    .line 52
    invoke-virtual/range {v1 .. v6}, Le0/g;->N(Le0/c;IIIZ)V

    .line 53
    .line 54
    .line 55
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return-void
.end method

.method public final b(Le0/c;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Le0/g;->K(Le0/c;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Le0/c;->B:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Le0/c;->k:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p1, Le0/c;->l:Z

    .line 30
    .line 31
    iput-boolean v0, p1, Le0/c;->L:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget v3, p0, Le0/g;->k:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move-object v2, p1

    .line 42
    invoke-virtual/range {v1 .. v6}, Le0/g;->N(Le0/c;IIIZ)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Fragment already added: "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Le0/c;)V
    .locals 3

    iget-boolean v0, p1, Le0/c;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Le0/c;->B:Z

    iget-boolean v0, p1, Le0/c;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Le0/c;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Le0/a;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Le0/a;->h(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le0/a;->g()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Le0/o;->i(Le0/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p1, p0, Le0/g;->k:I

    invoke-virtual {p0, p1, v6}, Le0/g;->M(IZ)V

    :cond_2
    iget-object p1, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    iget-object p3, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le0/c;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Le0/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v1, Le0/c;->F:Z

    .line 20
    .line 21
    iget-object v1, v1, Le0/c;->t:Le0/g;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Le0/g;->f()V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget v0, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v0, v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Le0/c;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    iget-boolean v4, v3, Le0/c;->A:Z

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget-object v3, v3, Le0/c;->t:Le0/g;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Le0/g;->g()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_1
    if-eqz v3, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v1
.end method

.method public final h()Z
    .locals 7

    .line 1
    iget v0, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    iget-object v5, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-ge v3, v6, :cond_4

    .line 18
    .line 19
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Le0/c;

    .line 24
    .line 25
    if-eqz v5, :cond_3

    .line 26
    .line 27
    iget-boolean v6, v5, Le0/c;->A:Z

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    iget-object v6, v5, Le0/c;->t:Le0/g;

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6}, Le0/g;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    or-int/2addr v6, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v6, 0x0

    .line 42
    :goto_1
    if-eqz v6, :cond_3

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object v2, p0, Le0/g;->g:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz v2, :cond_7

    .line 61
    .line 62
    :goto_2
    iget-object v2, p0, Le0/g;->g:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v1, v2, :cond_7

    .line 69
    .line 70
    iget-object v2, p0, Le0/g;->g:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Le0/c;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    iput-object v0, p0, Le0/g;->g:Ljava/util/ArrayList;

    .line 93
    .line 94
    return v4
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le0/g;->r:Z

    invoke-virtual {p0}, Le0/g;->F()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le0/g;->C(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Le0/g;->l:Le0/e;

    iput-object v0, p0, Le0/g;->m:Lh/c;

    iput-object v0, p0, Le0/g;->n:Le0/c;

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Le0/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v1, Le0/c;->F:Z

    .line 20
    .line 21
    iget-object v1, v1, Le0/c;->t:Le0/g;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Le0/g;->j()V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Le0/c;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v2, Le0/c;->t:Le0/g;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Le0/g;->k(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final l(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->l(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->m(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->n(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->o(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Le0/g$c;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Le0/g;->l:Le0/e;

    .line 1
    iget-object v1, v1, Le0/e;->b:Landroid/content/Context;

    .line 2
    :try_start_0
    sget-object v7, Le0/c;->P:Lk/h;

    .line 3
    invoke-virtual {v7, p2, v0}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4
    check-cast v8, Ljava/lang/Class;

    if-nez v8, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-class v1, Le0/c;

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_4
    if-ne v2, v4, :cond_6

    if-ne v5, v4, :cond_6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v5, v4, :cond_7

    invoke-virtual {p0, v5}, Le0/g;->I(I)Le0/c;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_c

    if-eqz v6, :cond_c

    .line 6
    iget-object p1, p0, Le0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    :goto_3
    if-ltz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le0/c;

    if-eqz v7, :cond_8

    iget-object v8, v7, Le0/c;->z:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object p1, v7

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Le0/g;->e:Landroid/util/SparseArray;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/2addr p1, v4

    :goto_4
    if-ltz p1, :cond_b

    iget-object v1, p0, Le0/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    if-eqz v1, :cond_a

    iget-object v7, v1, Le0/c;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object p1, v1

    goto :goto_5

    :cond_a
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_b
    move-object p1, v0

    :cond_c
    :goto_5
    if-nez p1, :cond_d

    if-eq v2, v4, :cond_d

    .line 7
    invoke-virtual {p0, v2}, Le0/g;->I(I)Le0/c;

    move-result-object p1

    :cond_d
    if-nez p1, :cond_11

    iget-object p1, p0, Le0/g;->m:Lh/c;

    invoke-virtual {p1, p3, p2, v0}, Lh/c;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;

    move-result-object p1

    iput-boolean v3, p1, Le0/c;->m:Z

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    move v5, v2

    :goto_6
    iput v5, p1, Le0/c;->x:I

    iput v2, p1, Le0/c;->y:I

    iput-object v6, p1, Le0/c;->z:Ljava/lang/String;

    iput-boolean v3, p1, Le0/c;->n:Z

    iput-object p0, p1, Le0/c;->r:Le0/g;

    iget-object p3, p0, Le0/g;->l:Le0/e;

    iput-object p3, p1, Le0/c;->s:Le0/e;

    .line 8
    iget-object p4, p3, Le0/e;->b:Landroid/content/Context;

    .line 9
    iput-boolean v3, p1, Le0/c;->F:Z

    if-nez p3, :cond_f

    goto :goto_7

    .line 10
    :cond_f
    iget-object v0, p3, Le0/e;->a:Landroid/app/Activity;

    :goto_7
    if-eqz v0, :cond_10

    .line 11
    iput-boolean v3, p1, Le0/c;->F:Z

    .line 12
    :cond_10
    invoke-virtual {p0, p1, v3}, Le0/g;->b(Le0/c;Z)V

    goto :goto_9

    :cond_11
    iget-boolean p3, p1, Le0/c;->n:Z

    if-nez p3, :cond_15

    iput-boolean v3, p1, Le0/c;->n:Z

    iget-object p3, p0, Le0/g;->l:Le0/e;

    iput-object p3, p1, Le0/c;->s:Le0/e;

    iget-boolean p4, p1, Le0/c;->D:Z

    if-nez p4, :cond_13

    .line 13
    iget-object p4, p3, Le0/e;->b:Landroid/content/Context;

    .line 14
    iput-boolean v3, p1, Le0/c;->F:Z

    if-nez p3, :cond_12

    goto :goto_8

    .line 15
    :cond_12
    iget-object v0, p3, Le0/e;->a:Landroid/app/Activity;

    :goto_8
    if-eqz v0, :cond_13

    .line 16
    iput-boolean v3, p1, Le0/c;->F:Z

    :cond_13
    :goto_9
    move-object v5, p1

    .line 17
    iget v6, p0, Le0/g;->k:I

    if-ge v6, v3, :cond_14

    iget-boolean p1, v5, Le0/c;->m:Z

    if-eqz p1, :cond_14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Le0/g;->N(Le0/c;IIIZ)V

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 18
    invoke-virtual/range {v4 .. v9}, Le0/g;->N(Le0/c;IIIZ)V

    .line 19
    :goto_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment "

    const-string p4, " did not create a view."

    .line 20
    invoke-static {p3, p2, p4}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Le0/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    return-object v0
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->p(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->q(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->r(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->s(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->t(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le0/g;->n:Le0/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le0/g;->l:Le0/e;

    :goto_0
    invoke-static {v1, v0}, Lm1/h;->h(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->u(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->v(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->w(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final x(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/g;->n:Le0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Le0/c;->r:Le0/g;

    .line 6
    .line 7
    instance-of v1, v0, Le0/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le0/g;->x(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le0/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Le0/g$b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    return-void
.end method

.method public final y()Z
    .locals 5

    .line 1
    iget v0, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v0, v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Le0/c;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    iget-boolean v4, v3, Le0/c;->A:Z

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget-object v3, v3, Le0/c;->t:Le0/g;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Le0/g;->y()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_1
    if-eqz v3, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v1
.end method

.method public final z()V
    .locals 3

    .line 1
    iget v0, p0, Le0/g;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Le0/g;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Le0/c;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-boolean v2, v1, Le0/c;->A:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v1, v1, Le0/c;->t:Le0/g;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Le0/g;->z()V

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method
