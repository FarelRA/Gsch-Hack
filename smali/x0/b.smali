.class public abstract Lx0/b;
.super Lx0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx0/c;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lx0/b;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lx0/b;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lx0/b;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx0/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lx0/b;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lx0/b;->d:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lx0/b;->e:I

    return-void
.end method


# virtual methods
.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    if-ne v0, v2, :cond_4

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lx0/b;->u(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    sget-object v3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 48
    .line 49
    .line 50
    return v4

    .line 51
    :cond_1
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    if-nez p5, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int/2addr p5, v3

    .line 66
    invoke-virtual {p0, v2}, Lx0/b;->w(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/2addr v2, p5

    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    const/high16 p5, 0x40000000    # 2.0f

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/high16 p5, -0x80000000

    .line 77
    .line 78
    :goto_0
    invoke-static {v2, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 79
    .line 80
    .line 81
    move-result p5

    .line 82
    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;III)V

    .line 83
    .line 84
    .line 85
    return v4

    .line 86
    :cond_4
    const/4 p1, 0x0

    .line 87
    return p1
.end method

.method public final t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lx0/b;->u(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr v4, v5

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr v5, v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    sub-int/2addr v6, v7

    .line 42
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    .line 44
    sub-int/2addr v6, v7

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    add-int/2addr v8, v7

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    sub-int/2addr v8, v7

    .line 59
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    .line 61
    sub-int/2addr v8, v7

    .line 62
    iget-object v12, v0, Lx0/b;->c:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v12, v4, v5, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Ly/t;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    sget-object v5, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_0

    .line 86
    .line 87
    iget v5, v12, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget-object v4, v4, Ly/t;->a:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v6, v4

    .line 92
    check-cast v6, Landroid/view/WindowInsets;

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    add-int/2addr v6, v5

    .line 99
    iput v6, v12, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget v5, v12, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    check-cast v4, Landroid/view/WindowInsets;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    sub-int/2addr v5, v4

    .line 110
    iput v5, v12, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    :cond_0
    iget-object v4, v0, Lx0/b;->d:Landroid/graphics/Rect;

    .line 113
    .line 114
    iget v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 115
    .line 116
    if-nez v3, :cond_1

    .line 117
    .line 118
    const v3, 0x800033

    .line 119
    .line 120
    .line 121
    const v9, 0x800033

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move v9, v3

    .line 126
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    move-object v13, v4

    .line 135
    move/from16 v14, p3

    .line 136
    .line 137
    invoke-static/range {v9 .. v14}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 138
    .line 139
    .line 140
    iget v3, v0, Lx0/b;->f:I

    .line 141
    .line 142
    if-nez v3, :cond_2

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p0, v1}, Lx0/b;->v(Landroid/view/View;)F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iget v5, v0, Lx0/b;->f:I

    .line 150
    .line 151
    int-to-float v6, v5

    .line 152
    mul-float v3, v3, v6

    .line 153
    .line 154
    float-to-int v3, v3

    .line 155
    invoke-static {v3, v2, v5}, Lm1/h;->o(III)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_1
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 160
    .line 161
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 162
    .line 163
    sub-int/2addr v5, v2

    .line 164
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 165
    .line 166
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    sub-int/2addr v7, v2

    .line 169
    move-object/from16 v8, p2

    .line 170
    .line 171
    invoke-virtual {v8, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 172
    .line 173
    .line 174
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    sub-int/2addr v2, v1

    .line 181
    goto :goto_2

    .line 182
    :cond_3
    move-object/from16 v8, p2

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    .line 185
    .line 186
    .line 187
    :goto_2
    iput v2, v0, Lx0/b;->e:I

    .line 188
    .line 189
    return-void
.end method

.method public abstract u(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;
.end method

.method public v(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public w(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method
