.class public final Lz0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lz0/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lz0/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lz0/c;->c:I

    iput-boolean p4, p0, Lz0/c;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz0/c;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-boolean p1, p0, Lz0/c;->a:Z

    .line 2
    .line 3
    if-nez p1, :cond_7

    .line 4
    .line 5
    iget-object p1, p0, Lz0/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v3, v5, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$d;

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroidx/appcompat/widget/Toolbar$d;

    .line 48
    .line 49
    iget v6, v6, Lb/a$a;->a:I

    .line 50
    .line 51
    const v7, 0x800007

    .line 52
    .line 53
    .line 54
    and-int/2addr v6, v7

    .line 55
    const v7, 0x800003

    .line 56
    .line 57
    .line 58
    if-ne v6, v7, :cond_1

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 v6, 0x0

    .line 63
    :goto_2
    if-eqz v6, :cond_3

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object p1, p0, Lz0/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    :goto_4
    sub-int/2addr v4, v0

    .line 97
    iget v0, p0, Lz0/c;->c:I

    .line 98
    .line 99
    if-ne v0, v2, :cond_6

    .line 100
    .line 101
    iget-boolean v0, p0, Lz0/c;->d:Z

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    int-to-float v0, v4

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    const/4 v0, 0x0

    .line 108
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    .line 110
    .line 111
    :cond_7
    return-void
.end method
