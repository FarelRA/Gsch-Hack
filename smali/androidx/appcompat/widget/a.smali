.class public final Landroidx/appcompat/widget/a;
.super Landroidx/appcompat/view/menu/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/a$b;,
        Landroidx/appcompat/widget/a$c;,
        Landroidx/appcompat/widget/a$f;,
        Landroidx/appcompat/widget/a$a;,
        Landroidx/appcompat/widget/a$e;,
        Landroidx/appcompat/widget/a$d;
    }
.end annotation


# instance fields
.field public j:Landroidx/appcompat/widget/a$d;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public t:Landroid/view/View;

.field public u:Landroidx/appcompat/widget/a$e;

.field public v:Landroidx/appcompat/widget/a$a;

.field public w:Landroidx/appcompat/widget/a$c;

.field public x:Landroidx/appcompat/widget/a$b;

.field public final y:Landroidx/appcompat/widget/a$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/a;->s:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/appcompat/widget/a$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/a$f;-><init>(Landroidx/appcompat/widget/a;)V

    iput-object p1, p0, Landroidx/appcompat/widget/a;->y:Landroidx/appcompat/widget/a$f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/a;->g()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/a;->v:Landroidx/appcompat/widget/a$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->j:Lf/f;

    .line 15
    .line 16
    invoke-interface {v0}, Lf/h;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->f:Landroidx/appcompat/view/menu/j$a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j$a;->a(Landroidx/appcompat/view/menu/f;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getActionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    :cond_0
    instance-of v0, p2, Landroidx/appcompat/view/menu/k$a;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p2, Landroidx/appcompat/view/menu/k$a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p2, p0, Landroidx/appcompat/view/menu/a;->h:I

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->e:Landroid/view/LayoutInflater;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/appcompat/view/menu/k$a;

    .line 30
    .line 31
    :goto_0
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/k$a;->b(Landroidx/appcompat/view/menu/h;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 35
    .line 36
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 37
    .line 38
    move-object v2, p2

    .line 39
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/f$b;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/appcompat/widget/a;->x:Landroidx/appcompat/widget/a$b;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Landroidx/appcompat/widget/a$b;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/a$b;-><init>(Landroidx/appcompat/widget/a;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/appcompat/widget/a;->x:Landroidx/appcompat/widget/a$b;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->x:Landroidx/appcompat/widget/a$b;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    .line 58
    .line 59
    .line 60
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/view/View;

    .line 62
    .line 63
    :cond_3
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/h;->C:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object v0
.end method

.method public final d()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->l()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/a;->q:I

    .line 20
    .line 21
    iget v5, v0, Landroidx/appcompat/widget/a;->p:I

    .line 22
    .line 23
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v7, v0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 28
    .line 29
    check-cast v7, Landroid/view/ViewGroup;

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    :goto_1
    const/4 v12, 0x2

    .line 36
    const/4 v13, 0x1

    .line 37
    if-ge v8, v3, :cond_6

    .line 38
    .line 39
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    check-cast v14, Landroidx/appcompat/view/menu/h;

    .line 44
    .line 45
    iget v15, v14, Landroidx/appcompat/view/menu/h;->y:I

    .line 46
    .line 47
    and-int/lit8 v2, v15, 0x2

    .line 48
    .line 49
    if-ne v2, v12, :cond_1

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    :goto_2
    if-eqz v2, :cond_2

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_2
    and-int/lit8 v2, v15, 0x1

    .line 60
    .line 61
    if-ne v2, v13, :cond_3

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/4 v2, 0x0

    .line 66
    :goto_3
    if-eqz v2, :cond_4

    .line 67
    .line 68
    add-int/lit8 v11, v11, 0x1

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/4 v9, 0x1

    .line 72
    :goto_4
    iget-boolean v2, v0, Landroidx/appcompat/widget/a;->r:Z

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget-boolean v2, v14, Landroidx/appcompat/view/menu/h;->C:Z

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    iget-boolean v2, v0, Landroidx/appcompat/widget/a;->m:Z

    .line 86
    .line 87
    if-eqz v2, :cond_8

    .line 88
    .line 89
    if-nez v9, :cond_7

    .line 90
    .line 91
    add-int/2addr v11, v10

    .line 92
    if-le v11, v4, :cond_8

    .line 93
    .line 94
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 95
    .line 96
    :cond_8
    sub-int/2addr v4, v10

    .line 97
    iget-object v2, v0, Landroidx/appcompat/widget/a;->s:Landroid/util/SparseBooleanArray;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 100
    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_5
    if-ge v8, v3, :cond_1c

    .line 105
    .line 106
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Landroidx/appcompat/view/menu/h;

    .line 111
    .line 112
    iget v11, v10, Landroidx/appcompat/view/menu/h;->y:I

    .line 113
    .line 114
    and-int/lit8 v14, v11, 0x2

    .line 115
    .line 116
    if-ne v14, v12, :cond_9

    .line 117
    .line 118
    const/4 v14, 0x1

    .line 119
    goto :goto_6

    .line 120
    :cond_9
    const/4 v14, 0x0

    .line 121
    :goto_6
    iget v15, v10, Landroidx/appcompat/view/menu/h;->b:I

    .line 122
    .line 123
    if-eqz v14, :cond_d

    .line 124
    .line 125
    iget-object v11, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v0, v10, v11, v7}, Landroidx/appcompat/widget/a;->c(Landroidx/appcompat/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    iget-object v14, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 132
    .line 133
    if-nez v14, :cond_a

    .line 134
    .line 135
    iput-object v11, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 136
    .line 137
    :cond_a
    invoke-virtual {v11, v6, v6}, Landroid/view/View;->measure(II)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    sub-int/2addr v5, v11

    .line 145
    if-nez v9, :cond_b

    .line 146
    .line 147
    move v9, v11

    .line 148
    :cond_b
    if-eqz v15, :cond_c

    .line 149
    .line 150
    invoke-virtual {v2, v15, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 151
    .line 152
    .line 153
    :cond_c
    invoke-virtual {v10, v13}, Landroidx/appcompat/view/menu/h;->f(Z)V

    .line 154
    .line 155
    .line 156
    :goto_7
    const/4 v0, 0x0

    .line 157
    goto/16 :goto_e

    .line 158
    .line 159
    :cond_d
    and-int/lit8 v11, v11, 0x1

    .line 160
    .line 161
    if-ne v11, v13, :cond_e

    .line 162
    .line 163
    const/4 v11, 0x1

    .line 164
    goto :goto_8

    .line 165
    :cond_e
    const/4 v11, 0x0

    .line 166
    :goto_8
    if-eqz v11, :cond_1b

    .line 167
    .line 168
    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-gtz v4, :cond_f

    .line 173
    .line 174
    if-eqz v11, :cond_10

    .line 175
    .line 176
    :cond_f
    if-lez v5, :cond_10

    .line 177
    .line 178
    const/4 v14, 0x1

    .line 179
    goto :goto_9

    .line 180
    :cond_10
    const/4 v14, 0x0

    .line 181
    :goto_9
    if-eqz v14, :cond_14

    .line 182
    .line 183
    iget-object v12, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {v0, v10, v12, v7}, Landroidx/appcompat/widget/a;->c(Landroidx/appcompat/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    iget-object v13, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 190
    .line 191
    if-nez v13, :cond_11

    .line 192
    .line 193
    iput-object v12, v0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 194
    .line 195
    :cond_11
    invoke-virtual {v12, v6, v6}, Landroid/view/View;->measure(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    sub-int/2addr v5, v12

    .line 203
    if-nez v9, :cond_12

    .line 204
    .line 205
    move v9, v12

    .line 206
    :cond_12
    add-int v12, v5, v9

    .line 207
    .line 208
    if-lez v12, :cond_13

    .line 209
    .line 210
    const/4 v12, 0x1

    .line 211
    goto :goto_a

    .line 212
    :cond_13
    const/4 v12, 0x0

    .line 213
    :goto_a
    and-int/2addr v14, v12

    .line 214
    :cond_14
    if-eqz v14, :cond_15

    .line 215
    .line 216
    if-eqz v15, :cond_15

    .line 217
    .line 218
    const/4 v12, 0x1

    .line 219
    invoke-virtual {v2, v15, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 220
    .line 221
    .line 222
    goto :goto_d

    .line 223
    :cond_15
    if-eqz v11, :cond_19

    .line 224
    .line 225
    const/4 v11, 0x0

    .line 226
    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 227
    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    :goto_b
    if-ge v11, v8, :cond_19

    .line 231
    .line 232
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    check-cast v12, Landroidx/appcompat/view/menu/h;

    .line 237
    .line 238
    iget v13, v12, Landroidx/appcompat/view/menu/h;->b:I

    .line 239
    .line 240
    if-ne v13, v15, :cond_18

    .line 241
    .line 242
    iget v13, v12, Landroidx/appcompat/view/menu/h;->x:I

    .line 243
    .line 244
    const/16 v0, 0x20

    .line 245
    .line 246
    and-int/2addr v13, v0

    .line 247
    if-ne v13, v0, :cond_16

    .line 248
    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_c

    .line 251
    :cond_16
    const/4 v0, 0x0

    .line 252
    :goto_c
    if-eqz v0, :cond_17

    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    :cond_17
    const/4 v0, 0x0

    .line 257
    invoke-virtual {v12, v0}, Landroidx/appcompat/view/menu/h;->f(Z)V

    .line 258
    .line 259
    .line 260
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 261
    .line 262
    move-object/from16 v0, p0

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_19
    :goto_d
    if-eqz v14, :cond_1a

    .line 266
    .line 267
    add-int/lit8 v4, v4, -0x1

    .line 268
    .line 269
    :cond_1a
    invoke-virtual {v10, v14}, Landroidx/appcompat/view/menu/h;->f(Z)V

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_1b
    const/4 v0, 0x0

    .line 274
    invoke-virtual {v10, v0}, Landroidx/appcompat/view/menu/h;->f(Z)V

    .line 275
    .line 276
    .line 277
    :goto_e
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    const/4 v12, 0x2

    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    const/4 v13, 0x1

    .line 283
    goto/16 :goto_5

    .line 284
    .line 285
    :cond_1c
    const/4 v4, 0x1

    .line 286
    return v4
.end method

.method public final e(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->n:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/appcompat/widget/a;->m:Z

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/a;->o:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    .line 43
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 44
    .line 45
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    .line 47
    const/16 v3, 0x258

    .line 48
    .line 49
    if-gt p1, v3, :cond_6

    .line 50
    .line 51
    if-gt v0, v3, :cond_6

    .line 52
    .line 53
    const/16 p1, 0x2d0

    .line 54
    .line 55
    const/16 v3, 0x3c0

    .line 56
    .line 57
    if-le v0, v3, :cond_1

    .line 58
    .line 59
    if-gt v2, p1, :cond_6

    .line 60
    .line 61
    :cond_1
    if-le v0, p1, :cond_2

    .line 62
    .line 63
    if-le v2, v3, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 p1, 0x1f4

    .line 67
    .line 68
    if-ge v0, p1, :cond_5

    .line 69
    .line 70
    const/16 p1, 0x1e0

    .line 71
    .line 72
    const/16 v3, 0x280

    .line 73
    .line 74
    if-le v0, v3, :cond_3

    .line 75
    .line 76
    if-gt v2, p1, :cond_5

    .line 77
    .line 78
    :cond_3
    if-le v0, p1, :cond_4

    .line 79
    .line 80
    if-le v2, v3, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/16 p1, 0x168

    .line 84
    .line 85
    if-lt v0, p1, :cond_7

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_0
    const/4 v1, 0x4

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    const/4 v1, 0x5

    .line 92
    :cond_7
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/a;->q:I

    .line 93
    .line 94
    iget p1, p0, Landroidx/appcompat/widget/a;->o:I

    .line 95
    .line 96
    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->m:Z

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    new-instance v0, Landroidx/appcompat/widget/a$d;

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->b:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/a$d;-><init>(Landroidx/appcompat/widget/a;Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 113
    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/a;->l:Z

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v2, p0, Landroidx/appcompat/widget/a;->k:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lg/m;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Landroidx/appcompat/widget/a;->k:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    iput-boolean v3, p0, Landroidx/appcompat/widget/a;->l:Z

    .line 127
    .line 128
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v2, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 133
    .line 134
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sub-int/2addr p1, v0

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    iput-object v1, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 146
    .line 147
    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/a;->p:I

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .line 155
    iput-object v1, p0, Landroidx/appcompat/widget/a;->t:Landroid/view/View;

    .line 156
    .line 157
    return-void
.end method

.method public final f()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-object v4, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 13
    .line 14
    if-eqz v4, :cond_7

    .line 15
    .line 16
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/f;->i()V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/f;->l()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_0
    if-ge v6, v5, :cond_8

    .line 32
    .line 33
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/appcompat/view/menu/h;

    .line 38
    .line 39
    iget v9, v8, Landroidx/appcompat/view/menu/h;->x:I

    .line 40
    .line 41
    const/16 v10, 0x20

    .line 42
    .line 43
    and-int/2addr v9, v10

    .line 44
    if-ne v9, v10, :cond_1

    .line 45
    .line 46
    const/4 v9, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v9, 0x0

    .line 49
    :goto_1
    if-eqz v9, :cond_6

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    instance-of v10, v9, Landroidx/appcompat/view/menu/k$a;

    .line 56
    .line 57
    if-eqz v10, :cond_2

    .line 58
    .line 59
    move-object v10, v9

    .line 60
    check-cast v10, Landroidx/appcompat/view/menu/k$a;

    .line 61
    .line 62
    invoke-interface {v10}, Landroidx/appcompat/view/menu/k$a;->getItemData()Landroidx/appcompat/view/menu/h;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-object v10, v1

    .line 68
    :goto_2
    invoke-virtual {p0, v8, v9, v0}, Landroidx/appcompat/widget/a;->c(Landroidx/appcompat/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    if-eq v8, v10, :cond_3

    .line 73
    .line 74
    invoke-virtual {v11, v3}, Landroid/view/View;->setPressed(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 78
    .line 79
    .line 80
    :cond_3
    if-eq v11, v9, :cond_5

    .line 81
    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v8, :cond_4

    .line 89
    .line 90
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v8, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 94
    .line 95
    check-cast v8, Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {v8, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    const/4 v7, 0x0

    .line 106
    :cond_8
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ge v7, v4, :cond_a

    .line 111
    .line 112
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v5, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 117
    .line 118
    if-ne v4, v5, :cond_9

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    goto :goto_4

    .line 122
    :cond_9
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 123
    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    :goto_4
    if-nez v4, :cond_8

    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_a
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 132
    .line 133
    check-cast v0, Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->i()V

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->i:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    const/4 v5, 0x0

    .line 152
    :goto_6
    if-ge v5, v4, :cond_b

    .line 153
    .line 154
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Landroidx/appcompat/view/menu/h;

    .line 159
    .line 160
    iget-object v6, v6, Landroidx/appcompat/view/menu/h;->A:Ly/b;

    .line 161
    .line 162
    add-int/lit8 v5, v5, 0x1

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 166
    .line 167
    if-eqz v0, :cond_c

    .line 168
    .line 169
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->i()V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Landroidx/appcompat/view/menu/f;->j:Ljava/util/ArrayList;

    .line 173
    .line 174
    :cond_c
    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->m:Z

    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    if-eqz v1, :cond_e

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ne v0, v2, :cond_d

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 191
    .line 192
    iget-boolean v0, v0, Landroidx/appcompat/view/menu/h;->C:Z

    .line 193
    .line 194
    xor-int/lit8 v3, v0, 0x1

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_d
    if-lez v0, :cond_e

    .line 198
    .line 199
    const/4 v3, 0x1

    .line 200
    :cond_e
    :goto_7
    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 201
    .line 202
    if-eqz v3, :cond_11

    .line 203
    .line 204
    if-nez v0, :cond_f

    .line 205
    .line 206
    new-instance v0, Landroidx/appcompat/widget/a$d;

    .line 207
    .line 208
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroid/content/Context;

    .line 209
    .line 210
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/a$d;-><init>(Landroidx/appcompat/widget/a;Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    iput-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 214
    .line 215
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    .line 223
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 224
    .line 225
    if-eq v0, v1, :cond_12

    .line 226
    .line 227
    if-eqz v0, :cond_10

    .line 228
    .line 229
    iget-object v1, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 235
    .line 236
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 237
    .line 238
    iget-object v1, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v3, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 244
    .line 245
    invoke-direct {v3}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    .line 246
    .line 247
    .line 248
    const/16 v4, 0x10

    .line 249
    .line 250
    iput v4, v3, Landroidx/appcompat/widget/b$a;->b:I

    .line 251
    .line 252
    iput-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    .line 253
    .line 254
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_11
    if-eqz v0, :cond_12

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 265
    .line 266
    if-ne v0, v1, :cond_12

    .line 267
    .line 268
    check-cast v1, Landroid/view/ViewGroup;

    .line 269
    .line 270
    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    :cond_12
    :goto_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 276
    .line 277
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 278
    .line 279
    iget-boolean v1, p0, Landroidx/appcompat/widget/a;->m:Z

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->w:Landroidx/appcompat/widget/a$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/a;->w:Landroidx/appcompat/widget/a$c;

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a;->u:Landroidx/appcompat/widget/a$e;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->j:Lf/f;

    .line 30
    .line 31
    invoke-interface {v0}, Lf/h;->dismiss()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a;->u:Landroidx/appcompat/widget/a$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(Landroidx/appcompat/view/menu/m;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/m;->z:Landroidx/appcompat/view/menu/f;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    check-cast v0, Landroidx/appcompat/view/menu/m;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 21
    .line 22
    check-cast v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-ge v4, v3, :cond_4

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    instance-of v6, v5, Landroidx/appcompat/view/menu/k$a;

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    check-cast v6, Landroidx/appcompat/view/menu/k$a;

    .line 44
    .line 45
    invoke-interface {v6}, Landroidx/appcompat/view/menu/k$a;->getItemData()Landroidx/appcompat/view/menu/h;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v7, v0, Landroidx/appcompat/view/menu/m;->A:Landroidx/appcompat/view/menu/h;

    .line 50
    .line 51
    if-ne v6, v7, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 58
    :goto_3
    if-nez v5, :cond_5

    .line 59
    .line 60
    return v1

    .line 61
    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/m;->A:Landroidx/appcompat/view/menu/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_4
    const/4 v3, 0x1

    .line 72
    if-ge v2, v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/f;->getItem(I)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_6

    .line 83
    .line 84
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    goto :goto_5

    .line 92
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_7
    const/4 v0, 0x0

    .line 96
    :goto_5
    new-instance v2, Landroidx/appcompat/widget/a$a;

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/appcompat/view/menu/a;->c:Landroid/content/Context;

    .line 99
    .line 100
    invoke-direct {v2, p0, v4, p1, v5}, Landroidx/appcompat/widget/a$a;-><init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Landroidx/appcompat/view/menu/m;Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, Landroidx/appcompat/widget/a;->v:Landroidx/appcompat/widget/a$a;

    .line 104
    .line 105
    iput-boolean v0, v2, Landroidx/appcompat/view/menu/i;->h:Z

    .line 106
    .line 107
    iget-object v2, v2, Landroidx/appcompat/view/menu/i;->j:Lf/f;

    .line 108
    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lf/f;->o(Z)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/a;->v:Landroidx/appcompat/widget/a$a;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    :goto_6
    const/4 v1, 0x1

    .line 123
    goto :goto_7

    .line 124
    :cond_9
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->f:Landroid/view/View;

    .line 125
    .line 126
    if-nez v2, :cond_a

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_a
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/i;->d(IIZZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :goto_7
    if-eqz v1, :cond_c

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->f:Landroidx/appcompat/view/menu/j$a;

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/f;)Z

    .line 140
    .line 141
    .line 142
    :cond_b
    return v3

    .line 143
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method

.method public final l()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/a;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/a;->w:Landroidx/appcompat/widget/a$c;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->i()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroidx/appcompat/widget/a$e;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->c:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->d:Landroidx/appcompat/view/menu/f;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 41
    .line 42
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/a$e;-><init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Landroidx/appcompat/view/menu/f;Landroidx/appcompat/widget/a$d;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/appcompat/widget/a$c;

    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/a$c;-><init>(Landroidx/appcompat/widget/a;Landroidx/appcompat/widget/a$e;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/appcompat/widget/a;->w:Landroidx/appcompat/widget/a$c;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 53
    .line 54
    check-cast v0, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->f:Landroidx/appcompat/view/menu/j$a;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/f;)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v0, 0x1

    .line 68
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    return v0
.end method
