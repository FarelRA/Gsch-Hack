.class public final Landroidx/recyclerview/widget/n;
.super Ly/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/n$a;
    }
.end annotation


# instance fields
.field public final d:Landroidx/recyclerview/widget/k;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 0

    invoke-direct {p0}, Ly/a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    new-instance p1, Landroidx/recyclerview/widget/n$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/n$a;-><init>(Landroidx/recyclerview/widget/n;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ly/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/recyclerview/widget/k;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    instance-of v0, p1, Landroidx/recyclerview/widget/k;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 18
    .line 19
    iget-boolean v1, v0, Landroidx/recyclerview/widget/k;->p:Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, v0, Landroidx/recyclerview/widget/k;->w:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 47
    .line 48
    check-cast p1, Landroidx/recyclerview/widget/k;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k$j;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final b(Landroid/view/View;Lz/d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object p2, p2, Lz/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    const-class p1, Landroidx/recyclerview/widget/k;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 18
    .line 19
    iget-boolean v0, p1, Landroidx/recyclerview/widget/k;->p:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p1, Landroidx/recyclerview/widget/k;->w:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p1, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 48
    :goto_2
    if-nez v0, :cond_7

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 61
    .line 62
    iget-object v3, v0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 63
    .line 64
    const/4 v4, -0x1

    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    iget-object v5, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    :cond_3
    const/16 v4, 0x2000

    .line 80
    .line 81
    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v4, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_5

    .line 94
    .line 95
    iget-object v4, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    :cond_5
    const/16 v4, 0x1000

    .line 104
    .line 105
    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 112
    .line 113
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/k$j;->y(Landroidx/recyclerview/widget/k$p;Landroidx/recyclerview/widget/k$s;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/k$j;->q(Landroidx/recyclerview/widget/k$p;Landroidx/recyclerview/widget/k$s;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-static {v2, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    return-void
.end method

.method public final d(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Ly/a;->d(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 10
    .line 11
    iget-boolean v0, p1, Landroidx/recyclerview/widget/k;->p:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/recyclerview/widget/k;->w:Z

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 39
    :goto_2
    if-nez v0, :cond_a

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_a

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 52
    .line 53
    iget-object v2, v0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 54
    .line 55
    const/16 v2, 0x1000

    .line 56
    .line 57
    if-eq p2, v2, :cond_6

    .line 58
    .line 59
    const/16 v2, 0x2000

    .line 60
    .line 61
    if-eq p2, v2, :cond_4

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    goto :goto_5

    .line 65
    :cond_4
    const/4 p2, -0x1

    .line 66
    invoke-virtual {v0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget v0, p1, Landroidx/recyclerview/widget/k$j;->g:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->v()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sub-int/2addr v0, v2

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->s()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    sub-int/2addr v0, v2

    .line 84
    neg-int v0, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const/4 v0, 0x0

    .line 87
    :goto_3
    iget-object v2, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 88
    .line 89
    invoke-virtual {v2, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_8

    .line 94
    .line 95
    iget p2, p1, Landroidx/recyclerview/widget/k$j;->f:I

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->t()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    sub-int/2addr p2, v2

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->u()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    sub-int/2addr p2, v2

    .line 107
    neg-int p2, p2

    .line 108
    goto :goto_6

    .line 109
    :cond_6
    invoke-virtual {v0, p3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_7

    .line 114
    .line 115
    iget p2, p1, Landroidx/recyclerview/widget/k$j;->g:I

    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->v()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sub-int/2addr p2, v0

    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->s()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sub-int/2addr p2, v0

    .line 127
    move v0, p2

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    const/4 v0, 0x0

    .line 130
    :goto_4
    iget-object p2, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    iget p2, p1, Landroidx/recyclerview/widget/k$j;->f:I

    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->t()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    sub-int/2addr p2, v2

    .line 145
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->u()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    sub-int/2addr p2, v2

    .line 150
    goto :goto_6

    .line 151
    :cond_8
    :goto_5
    const/4 p2, 0x0

    .line 152
    :goto_6
    if-nez v0, :cond_9

    .line 153
    .line 154
    if-nez p2, :cond_9

    .line 155
    .line 156
    const/4 p3, 0x0

    .line 157
    goto :goto_7

    .line 158
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 159
    .line 160
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/k;->v(II)V

    .line 161
    .line 162
    .line 163
    :goto_7
    return p3

    .line 164
    :cond_a
    return v1
.end method
