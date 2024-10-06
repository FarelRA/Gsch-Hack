.class public final Lj0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lj0/g;

.field public final c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lj0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj0/k$a;->b:Lj0/g;

    iput-object p1, p0, Lj0/k$a;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lj0/k$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    sget-object v1, Lj0/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_0

    return v7

    :cond_0
    invoke-static {}, Lj0/k;->a()Lk/b;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v4}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v3

    :goto_1
    iget-object v8, v0, Lj0/k$a;->b:Lj0/g;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lj0/k$a$a;

    invoke-direct {v4, v0, v1}, Lj0/k$a$a;-><init>(Lj0/k$a;Lk/b;)V

    invoke-virtual {v8, v4}, Lj0/g;->a(Lj0/g$d;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Lj0/g;->h(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj0/g;

    invoke-virtual {v5, v2}, Lj0/g;->x(Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 5
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lj0/g;->k:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lj0/g;->l:Ljava/util/ArrayList;

    iget-object v4, v8, Lj0/g;->g:Lm/a;

    iget-object v5, v8, Lj0/g;->h:Lm/a;

    .line 6
    new-instance v6, Lk/b;

    iget-object v9, v4, Lm/a;->a:Ljava/lang/Object;

    check-cast v9, Lk/b;

    invoke-direct {v6, v9}, Lk/b;-><init>(Lk/b;)V

    new-instance v9, Lk/b;

    iget-object v10, v5, Lm/a;->a:Ljava/lang/Object;

    check-cast v10, Lk/b;

    invoke-direct {v9, v10}, Lk/b;-><init>(Lk/b;)V

    const/4 v10, 0x0

    :goto_3
    iget-object v11, v8, Lj0/g;->j:[I

    array-length v12, v11

    if-ge v10, v12, :cond_11

    aget v11, v11, v10

    if-eq v11, v7, :cond_e

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object v7, v8

    goto/16 :goto_9

    :cond_5
    iget-object v11, v4, Lm/a;->c:Ljava/lang/Object;

    check-cast v11, Lk/e;

    iget-object v12, v5, Lm/a;->c:Ljava/lang/Object;

    check-cast v12, Lk/e;

    .line 7
    iget-boolean v13, v11, Lk/e;->a:Z

    if-eqz v13, :cond_6

    .line 8
    invoke-virtual {v11}, Lk/e;->d()V

    :cond_6
    iget v13, v11, Lk/e;->d:I

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    .line 9
    invoke-virtual {v11, v14}, Lk/e;->g(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_8

    invoke-virtual {v8, v15}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 10
    iget-boolean v1, v11, Lk/e;->a:Z

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lk/e;->d()V

    :cond_7
    iget-object v1, v11, Lk/e;->b:[J

    move-object/from16 v17, v8

    aget-wide v7, v1, v14

    .line 11
    invoke-virtual {v12, v7, v8, v3}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/View;

    move-object/from16 v7, v17

    if-eqz v1, :cond_9

    invoke-virtual {v7, v1}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 13
    invoke-virtual {v6, v15, v3}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 14
    check-cast v8, Lj0/n;

    .line 15
    invoke-virtual {v9, v1, v3}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 16
    move-object/from16 v3, v17

    check-cast v3, Lj0/n;

    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    iget-object v0, v7, Lj0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lj0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    move-object v7, v8

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    move-object v7, v8

    .line 17
    iget-object v0, v4, Lm/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, v5, Lm/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_10

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v7, v11}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_b

    invoke-virtual {v7, v12}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    .line 19
    invoke-virtual {v6, v11, v13}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 20
    check-cast v14, Lj0/n;

    .line 21
    invoke-virtual {v9, v12, v13}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 22
    check-cast v15, Lj0/n;

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    iget-object v13, v7, Lj0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v7, Lj0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    move-object v7, v8

    .line 23
    iget-object v0, v4, Lm/a;->d:Ljava/lang/Object;

    check-cast v0, Lk/b;

    iget-object v1, v5, Lm/a;->d:Ljava/lang/Object;

    check-cast v1, Lk/b;

    .line 24
    iget v3, v0, Lk/h;->c:I

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_10

    .line 25
    invoke-virtual {v0, v8}, Lk/h;->j(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_d

    invoke-virtual {v7, v11}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v0, v8}, Lk/h;->h(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    .line 26
    invoke-virtual {v1, v12, v13}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 27
    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_d

    invoke-virtual {v7, v12}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 28
    invoke-virtual {v6, v11, v13}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 29
    check-cast v14, Lj0/n;

    .line 30
    invoke-virtual {v9, v12, v13}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 31
    check-cast v15, Lj0/n;

    if-eqz v14, :cond_d

    if-eqz v15, :cond_d

    iget-object v13, v7, Lj0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v7, Lj0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    move-object v7, v8

    .line 32
    iget v0, v6, Lk/h;->c:I

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 33
    invoke-virtual {v6, v0}, Lk/h;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_f

    invoke-virtual {v7, v1}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v9, v1}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/n;

    if-eqz v1, :cond_f

    iget-object v3, v1, Lj0/n;->b:Landroid/view/View;

    if-eqz v3, :cond_f

    invoke-virtual {v7, v3}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v6, v0}, Lk/h;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/n;

    iget-object v8, v7, Lj0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lj0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_11
    move-object v7, v8

    const/4 v0, 0x0

    .line 34
    :goto_a
    iget v1, v6, Lk/h;->c:I

    if-ge v0, v1, :cond_13

    .line 35
    invoke-virtual {v6, v0}, Lk/h;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/n;

    iget-object v3, v1, Lj0/n;->b:Landroid/view/View;

    invoke-virtual {v7, v3}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lj0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lj0/g;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    .line 36
    :goto_b
    iget v1, v9, Lk/h;->c:I

    if-ge v0, v1, :cond_15

    .line 37
    invoke-virtual {v9, v0}, Lk/h;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/n;

    iget-object v3, v1, Lj0/n;->b:Landroid/view/View;

    invoke-virtual {v7, v3}, Lj0/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v7, Lj0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lj0/g;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 38
    :cond_15
    invoke-static {}, Lj0/g;->o()Lk/b;

    move-result-object v0

    .line 39
    iget v1, v0, Lk/h;->c:I

    .line 40
    sget-object v3, Lj0/q;->a:Lj0/s;

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_c
    if-ltz v1, :cond_1c

    .line 42
    invoke-virtual {v0, v1}, Lk/h;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const/4 v5, 0x0

    if-eqz v4, :cond_1b

    .line 43
    invoke-virtual {v0, v4, v5}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 44
    check-cast v6, Lj0/g$b;

    if-eqz v6, :cond_1b

    iget-object v8, v6, Lj0/g$b;->a:Landroid/view/View;

    if-eqz v8, :cond_1b

    .line 45
    iget-object v9, v6, Lj0/g$b;->d:Lj0/x;

    instance-of v10, v9, Lj0/w;

    if-eqz v10, :cond_16

    check-cast v9, Lj0/w;

    iget-object v9, v9, Lj0/w;->a:Landroid/view/WindowId;

    invoke-virtual {v9, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    goto :goto_d

    :cond_16
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_1b

    const/4 v9, 0x1

    .line 46
    invoke-virtual {v7, v8, v9}, Lj0/g;->q(Landroid/view/View;Z)Lj0/n;

    move-result-object v10

    invoke-virtual {v7, v8, v9}, Lj0/g;->n(Landroid/view/View;Z)Lj0/n;

    move-result-object v8

    if-nez v10, :cond_17

    if-eqz v8, :cond_18

    :cond_17
    iget-object v9, v6, Lj0/g$b;->e:Lj0/g;

    iget-object v6, v6, Lj0/g$b;->c:Lj0/n;

    invoke-virtual {v9, v6, v8}, Lj0/g;->r(Lj0/n;Lj0/n;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_e

    :cond_18
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1b

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {v0, v4}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1a
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_1b
    :goto_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_1c
    iget-object v3, v7, Lj0/g;->g:Lm/a;

    iget-object v4, v7, Lj0/g;->h:Lm/a;

    iget-object v5, v7, Lj0/g;->k:Ljava/util/ArrayList;

    iget-object v6, v7, Lj0/g;->l:Ljava/util/ArrayList;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lj0/g;->l(Landroid/view/ViewGroup;Lm/a;Lm/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Lj0/g;->y()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj0/k$a;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lj0/k;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lj0/k;->a()Lk/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lj0/g;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lj0/g;->x(Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lj0/k$a;->b:Lj0/g;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lj0/g;->i(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
