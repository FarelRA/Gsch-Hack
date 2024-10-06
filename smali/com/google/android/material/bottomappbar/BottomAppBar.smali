.class public final Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$a;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field public static final synthetic V:I


# instance fields
.field public Q:Landroid/animation/Animator;

.field public R:Landroid/animation/Animator;

.field public S:I

.field public T:Z

.field public U:Z


# direct methods
.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFabTranslationX()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    .line 2
    .line 3
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    sub-int/2addr v0, v3

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    :cond_1
    mul-int v3, v0, v2

    .line 29
    .line 30
    :cond_2
    int-to-float v0, v3

    .line 31
    return v0
.end method

.method private getFabTranslationY()F
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    int-to-float v4, v4

    .line 24
    cmpl-float v2, v4, v2

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v4, v2

    .line 33
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    sub-int/2addr v2, v5

    .line 40
    int-to-float v2, v2

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sub-int/2addr v5, v3

    .line 50
    int-to-float v3, v5

    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    neg-float v5, v5

    .line 56
    const/high16 v6, 0x40000000    # 2.0f

    .line 57
    .line 58
    div-float/2addr v4, v6

    .line 59
    add-float/2addr v4, v5

    .line 60
    add-float/2addr v4, v2

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-float v1, v1

    .line 66
    sub-float/2addr v3, v1

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    neg-int v1, v1

    .line 72
    int-to-float v1, v1

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v4, v3

    .line 77
    :goto_0
    add-float v2, v1, v4

    .line 78
    .line 79
    :goto_1
    return v2
.end method

.method public static p(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static synthetic q(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result p0

    return p0
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:Z

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Landroid/animation/Animator;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 10
    .line 11
    iget-object v0, p1, Lc0/a;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->c:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->d:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 23
    .line 24
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    check-cast v0, Landroidx/appcompat/widget/Toolbar$f;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;-><init>(Landroidx/appcompat/widget/Toolbar$f;)V

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->c:I

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->d:Z

    return-object v1
.end method

.method public final r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Lm/a;

    .line 18
    .line 19
    iget-object v2, v2, Lm/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lk/h;

    .line 22
    .line 23
    invoke-virtual {v2, p0, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/view/View;

    .line 54
    .line 55
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFabAlignmentMode(I)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, p1, :cond_6

    .line 7
    .line 8
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Landroid/animation/Animator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-boolean v4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 30
    .line 31
    if-nez v4, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-array v5, v2, [F

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-ne v6, v2, :cond_2

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v6, 0x0

    .line 48
    :goto_0
    if-ne p1, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    div-int/2addr v7, v1

    .line 55
    sub-int/2addr v7, v3

    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    const/4 v6, -0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v6, 0x1

    .line 61
    :goto_1
    mul-int v7, v7, v6

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/4 v7, 0x0

    .line 65
    :goto_2
    int-to-float v6, v7

    .line 66
    aput v6, v5, v3

    .line 67
    .line 68
    const-string v6, "translationX"

    .line 69
    .line 70
    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-wide/16 v5, 0x12c

    .line 75
    .line 76
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    iput-object v4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Landroid/animation/Animator;

    .line 91
    .line 92
    new-instance v0, Lz0/a;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lz0/a;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Landroid/animation/Animator;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const/4 p1, 0x0

    .line 107
    throw p1

    .line 108
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 109
    .line 110
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    .line 121
    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 125
    .line 126
    .line 127
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_9

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_9

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    goto :goto_4

    .line 146
    :cond_9
    const/4 v5, 0x0

    .line 147
    :goto_4
    if-nez v5, :cond_a

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    goto :goto_5

    .line 152
    :cond_a
    move v5, p1

    .line 153
    :goto_5
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-nez v6, :cond_b

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_b
    new-array v7, v2, [F

    .line 161
    .line 162
    const/high16 v8, 0x3f800000    # 1.0f

    .line 163
    .line 164
    aput v8, v7, v3

    .line 165
    .line 166
    const-string v9, "alpha"

    .line 167
    .line 168
    invoke-static {v6, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    iget-boolean v10, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 173
    .line 174
    if-nez v10, :cond_d

    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    if-eqz v10, :cond_c

    .line 183
    .line 184
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_c

    .line 189
    .line 190
    const/4 v10, 0x1

    .line 191
    goto :goto_6

    .line 192
    :cond_c
    const/4 v10, 0x0

    .line 193
    :goto_6
    if-eqz v10, :cond_e

    .line 194
    .line 195
    :cond_d
    iget v10, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    .line 196
    .line 197
    if-eq v10, v2, :cond_f

    .line 198
    .line 199
    if-ne v5, v2, :cond_e

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    cmpg-float v0, v0, v8

    .line 207
    .line 208
    if-gez v0, :cond_10

    .line 209
    .line 210
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_f
    :goto_7
    new-array v8, v2, [F

    .line 215
    .line 216
    const/4 v10, 0x0

    .line 217
    aput v10, v8, v3

    .line 218
    .line 219
    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    new-instance v9, Lz0/c;

    .line 224
    .line 225
    invoke-direct {v9, p0, v6, v5, v0}, Lz0/c;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 232
    .line 233
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .line 235
    .line 236
    const-wide/16 v5, 0x96

    .line 237
    .line 238
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 239
    .line 240
    .line 241
    new-array v1, v1, [Landroid/animation/Animator;

    .line 242
    .line 243
    aput-object v8, v1, v3

    .line 244
    .line 245
    aput-object v7, v1, v2

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_10
    :goto_8
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 254
    .line 255
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    .line 262
    .line 263
    new-instance v1, Lz0/b;

    .line 264
    .line 265
    invoke-direct {v1, p0}, Lz0/b;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 274
    .line 275
    .line 276
    :goto_9
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:I

    .line 277
    .line 278
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFabDiameter(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
