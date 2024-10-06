.class public abstract Landroidx/recyclerview/widget/k$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/k$j$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/b;

.field public b:Landroidx/recyclerview/widget/k;

.field public final c:Landroidx/recyclerview/widget/q;

.field public final d:Landroidx/recyclerview/widget/q;

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/k$j$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/k$j$a;-><init>(Landroidx/recyclerview/widget/k$j;)V

    new-instance v1, Landroidx/recyclerview/widget/k$j$b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/k$j$b;-><init>(Landroidx/recyclerview/widget/k$j;)V

    new-instance v2, Landroidx/recyclerview/widget/q;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/q$b;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/k$j;->c:Landroidx/recyclerview/widget/q;

    new-instance v0, Landroidx/recyclerview/widget/q;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/q$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/k$j;->d:Landroidx/recyclerview/widget/q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k$j;->e:Z

    return-void
.end method

.method public static e(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static r(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/k;->j0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/k$k;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/recyclerview/widget/k$k;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    sub-int/2addr v2, v3

    .line 18
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    sub-int/2addr v3, v4

    .line 28
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    .line 30
    sub-int/2addr v3, v4

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    add-int/2addr v4, v5

    .line 38
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 39
    .line 40
    add-int/2addr v4, v5

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    add-int/2addr p0, v1

    .line 48
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    .line 50
    add-int/2addr p0, v0

    .line 51
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static w(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/k$k;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static x(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/k$j$c;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/k$j$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/k$j$c;-><init>()V

    sget-object v1, Lm1/h;->K:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Landroidx/recyclerview/widget/k$j$c;->a:I

    const/16 p3, 0x9

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroidx/recyclerview/widget/k$j$c;->b:I

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Landroidx/recyclerview/widget/k$j$c;->c:Z

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/k$j$c;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public A(Landroidx/recyclerview/widget/k;)V
    .locals 0

    return-void
.end method

.method public B(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public C(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public D()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E(I)V
    .locals 0

    return-void
.end method

.method public final F(Landroidx/recyclerview/widget/k$p;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->p()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k$j;->o(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    const/4 p1, 0x0

    throw p1
.end method

.method public final G(Landroidx/recyclerview/widget/k$p;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    iget-object v2, p1, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-gez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/k$p;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/recyclerview/widget/k$v;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public final H(Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->v()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/k$j;->f:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->u()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, p0, Landroidx/recyclerview/widget/k$j;->g:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->s()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    add-int/2addr v4, v5

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget v6, p3, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    add-int/2addr v5, v6

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    sub-int/2addr v5, p2

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    add-int/2addr p2, v4

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    add-int/2addr p3, v5

    .line 57
    sub-int/2addr v4, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    sub-int/2addr v5, v1

    .line 64
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr p2, v2

    .line 69
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr p3, v3

    .line 74
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iget-object v3, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 79
    .line 80
    sget-object v7, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v7, 0x1

    .line 87
    if-ne v3, v7, :cond_1

    .line 88
    .line 89
    if-eqz v2, :cond_0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    if-eqz v6, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    :goto_0
    move v2, v6

    .line 105
    :goto_1
    if-eqz v1, :cond_3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_2
    if-eqz p5, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-nez p2, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->t()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->v()I

    .line 126
    .line 127
    .line 128
    move-result p5

    .line 129
    iget v3, p0, Landroidx/recyclerview/widget/k$j;->f:I

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->u()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    sub-int/2addr v3, v4

    .line 136
    iget v4, p0, Landroidx/recyclerview/widget/k$j;->g:I

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$j;->s()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    sub-int/2addr v4, v5

    .line 143
    iget-object v5, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 144
    .line 145
    iget-object v5, v5, Landroidx/recyclerview/widget/k;->h:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-static {p2, v5}, Landroidx/recyclerview/widget/k$j;->r(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 148
    .line 149
    .line 150
    iget p2, v5, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    sub-int/2addr p2, v2

    .line 153
    if-ge p2, v3, :cond_6

    .line 154
    .line 155
    iget p2, v5, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    sub-int/2addr p2, v2

    .line 158
    if-le p2, p3, :cond_6

    .line 159
    .line 160
    iget p2, v5, Landroid/graphics/Rect;->top:I

    .line 161
    .line 162
    sub-int/2addr p2, v1

    .line 163
    if-ge p2, v4, :cond_6

    .line 164
    .line 165
    iget p2, v5, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    sub-int/2addr p2, v1

    .line 168
    if-gt p2, p5, :cond_5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    const/4 p2, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    :goto_3
    const/4 p2, 0x0

    .line 174
    :goto_4
    if-eqz p2, :cond_8

    .line 175
    .line 176
    :cond_7
    if-nez v2, :cond_9

    .line 177
    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    return v0

    .line 182
    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 183
    .line 184
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/k;->scrollBy(II)V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_a
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/k;->v(II)V

    .line 189
    .line 190
    .line 191
    :goto_6
    return v7
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final J(Landroidx/recyclerview/widget/k;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    iput-object p1, p0, Landroidx/recyclerview/widget/k$j;->a:Landroidx/recyclerview/widget/b;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/k$j;->f:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    iget-object v0, p1, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    iput-object v0, p0, Landroidx/recyclerview/widget/k$j;->a:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/k$j;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/k$j;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/k$k;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroidx/recyclerview/widget/k$s;)V
    .locals 0

    return-void
.end method

.method public h(Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroidx/recyclerview/widget/k$s;)V
    .locals 0

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract l()Landroidx/recyclerview/widget/k$k;
.end method

.method public m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/k$k;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/k$k;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/k$k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public n(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/k$k;
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/k$k;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/k$k;

    check-cast p1, Landroidx/recyclerview/widget/k$k;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/k$k;-><init>(Landroidx/recyclerview/widget/k$k;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/k$k;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/k$k;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/k$k;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/k$k;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final o(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->a:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->a:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/k$p;Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Landroidx/recyclerview/widget/k$p;Landroidx/recyclerview/widget/k$s;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
