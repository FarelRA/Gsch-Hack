.class public abstract Lx0/a;
.super Lx0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lx0/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public c:Lx0/a$a;

.field public d:Landroid/widget/OverScroller;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx0/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx0/a;->f:I

    iput v0, p0, Lx0/a;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx0/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lx0/a;->f:I

    iput p1, p0, Lx0/a;->h:I

    return-void
.end method


# virtual methods
.method public final A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lx0/a;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    return-void
.end method

.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lx0/a;->h:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lx0/a;->h:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lx0/a;->e:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    if-eq v0, v2, :cond_5

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x3

    .line 45
    if-eq v0, p2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p2, p0, Lx0/a;->f:I

    .line 49
    .line 50
    if-ne p2, p1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-ne p2, p1, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    float-to-int p1, p1

    .line 65
    iget p2, p0, Lx0/a;->g:I

    .line 66
    .line 67
    sub-int p2, p1, p2

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget v0, p0, Lx0/a;->h:I

    .line 74
    .line 75
    if-le p2, v0, :cond_7

    .line 76
    .line 77
    iput-boolean v2, p0, Lx0/a;->e:Z

    .line 78
    .line 79
    iput p1, p0, Lx0/a;->g:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    iput-boolean v3, p0, Lx0/a;->e:Z

    .line 83
    .line 84
    iput p1, p0, Lx0/a;->f:I

    .line 85
    .line 86
    iget-object p1, p0, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    iput-boolean v3, p0, Lx0/a;->e:Z

    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    float-to-int v0, v0

    .line 104
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    float-to-int v1, v1

    .line 109
    invoke-virtual {p0, p2}, Lx0/a;->u(Landroid/view/View;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    iput v1, p0, Lx0/a;->g:I

    .line 122
    .line 123
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, p0, Lx0/a;->f:I

    .line 128
    .line 129
    iget-object p1, p0, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 130
    .line 131
    if-nez p1, :cond_7

    .line 132
    .line 133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 138
    .line 139
    :cond_7
    :goto_0
    iget-object p1, p0, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-boolean p1, p0, Lx0/a;->e:Z

    .line 147
    .line 148
    return p1
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    iget v0, v6, Lx0/a;->h:I

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, v6, Lx0/a;->h:I

    .line 26
    .line 27
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_a

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, -0x1

    .line 37
    if-eq v0, v8, :cond_5

    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    if-eq v0, v9, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    if-eq v0, v1, :cond_9

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    iget v0, v6, Lx0/a;->f:I

    .line 48
    .line 49
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v5, :cond_2

    .line 54
    .line 55
    return v3

    .line 56
    :cond_2
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    iget v3, v6, Lx0/a;->g:I

    .line 62
    .line 63
    sub-int/2addr v3, v0

    .line 64
    iget-boolean v4, v6, Lx0/a;->e:Z

    .line 65
    .line 66
    if-nez v4, :cond_4

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget v5, v6, Lx0/a;->h:I

    .line 73
    .line 74
    if-le v4, v5, :cond_4

    .line 75
    .line 76
    iput-boolean v8, v6, Lx0/a;->e:Z

    .line 77
    .line 78
    if-lez v3, :cond_3

    .line 79
    .line 80
    sub-int/2addr v3, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    add-int/2addr v3, v5

    .line 83
    :cond_4
    :goto_0
    iget-boolean v4, v6, Lx0/a;->e:Z

    .line 84
    .line 85
    if-eqz v4, :cond_b

    .line 86
    .line 87
    iput v0, v6, Lx0/a;->g:I

    .line 88
    .line 89
    invoke-virtual {v6, v2}, Lx0/a;->v(Landroid/view/View;)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lx0/a;->x()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    sub-int v3, v0, v3

    .line 99
    .line 100
    move-object/from16 v0, p0

    .line 101
    .line 102
    move-object/from16 v1, p1

    .line 103
    .line 104
    move-object/from16 v2, p2

    .line 105
    .line 106
    invoke-virtual/range {v0 .. v5}, Lx0/a;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_5
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 112
    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 119
    .line 120
    const/16 v9, 0x3e8

    .line 121
    .line 122
    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 126
    .line 127
    iget v9, v6, Lx0/a;->f:I

    .line 128
    .line 129
    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {v6, v2}, Lx0/a;->w(Landroid/view/View;)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    neg-int v9, v9

    .line 138
    const/16 v18, 0x0

    .line 139
    .line 140
    iget-object v10, v6, Lx0/a;->c:Lx0/a$a;

    .line 141
    .line 142
    if-eqz v10, :cond_6

    .line 143
    .line 144
    invoke-virtual {v2, v10}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    iput-object v4, v6, Lx0/a;->c:Lx0/a$a;

    .line 148
    .line 149
    :cond_6
    iget-object v10, v6, Lx0/a;->d:Landroid/widget/OverScroller;

    .line 150
    .line 151
    if-nez v10, :cond_7

    .line 152
    .line 153
    new-instance v10, Landroid/widget/OverScroller;

    .line 154
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-direct {v10, v11}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    iput-object v10, v6, Lx0/a;->d:Landroid/widget/OverScroller;

    .line 163
    .line 164
    :cond_7
    iget-object v10, v6, Lx0/a;->d:Landroid/widget/OverScroller;

    .line 165
    .line 166
    const/4 v11, 0x0

    .line 167
    invoke-virtual/range {p0 .. p0}, Lx0/c;->s()I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    const/4 v13, 0x0

    .line 172
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    const/4 v15, 0x0

    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    move/from16 v17, v9

    .line 180
    .line 181
    invoke-virtual/range {v10 .. v18}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 182
    .line 183
    .line 184
    iget-object v0, v6, Lx0/a;->d:Landroid/widget/OverScroller;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    new-instance v0, Lx0/a$a;

    .line 193
    .line 194
    invoke-direct {v0, v6, v1, v2}, Lx0/a$a;-><init>(Lx0/a;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, v6, Lx0/a;->c:Lx0/a$a;

    .line 198
    .line 199
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    invoke-virtual {v6, v2, v1}, Lx0/a;->y(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 206
    .line 207
    .line 208
    :cond_9
    :goto_1
    iput-boolean v3, v6, Lx0/a;->e:Z

    .line 209
    .line 210
    iput v5, v6, Lx0/a;->f:I

    .line 211
    .line 212
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 213
    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 217
    .line 218
    .line 219
    iput-object v4, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    float-to-int v0, v0

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    float-to-int v4, v4

    .line 232
    invoke-virtual {v1, v2, v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    invoke-virtual {v6, v2}, Lx0/a;->u(Landroid/view/View;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_d

    .line 243
    .line 244
    iput v4, v6, Lx0/a;->g:I

    .line 245
    .line 246
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    iput v0, v6, Lx0/a;->f:I

    .line 251
    .line 252
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 253
    .line 254
    if-nez v0, :cond_b

    .line 255
    .line 256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 261
    .line 262
    :cond_b
    :goto_2
    iget-object v0, v6, Lx0/a;->i:Landroid/view/VelocityTracker;

    .line 263
    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 267
    .line 268
    .line 269
    :cond_c
    return v8

    .line 270
    :cond_d
    return v3
.end method

.method public u(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public v(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public w(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public x()I
    .locals 1

    invoke-virtual {p0}, Lx0/c;->s()I

    move-result v0

    return v0
.end method

.method public y(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    return-void
.end method

.method public z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx0/c;->s()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p4, :cond_2

    .line 6
    .line 7
    if-lt p1, p4, :cond_2

    .line 8
    .line 9
    if-gt p1, p5, :cond_2

    .line 10
    .line 11
    invoke-static {p3, p4, p5}, Lm1/h;->o(III)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eq p1, p2, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lx0/c;->a:Lx0/d;

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget p4, p3, Lx0/d;->d:I

    .line 22
    .line 23
    if-eq p4, p2, :cond_1

    .line 24
    .line 25
    iput p2, p3, Lx0/d;->d:I

    .line 26
    .line 27
    invoke-virtual {p3}, Lx0/d;->a()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput p2, p0, Lx0/c;->b:I

    .line 32
    .line 33
    :cond_1
    :goto_0
    sub-int/2addr p1, p2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_1
    return p1
.end method
