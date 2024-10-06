.class public final Lj0/b;
.super Lj0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/b$i;
    }
.end annotation


# static fields
.field public static final A:Lj0/b$e;

.field public static final B:Lj0/b$f;

.field public static final w:[Ljava/lang/String;

.field public static final x:Lj0/b$b;

.field public static final y:Lj0/b$c;

.field public static final z:Lj0/b$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->w:[Ljava/lang/String;

    new-instance v0, Lj0/b$a;

    invoke-direct {v0}, Lj0/b$a;-><init>()V

    new-instance v0, Lj0/b$b;

    invoke-direct {v0}, Lj0/b$b;-><init>()V

    sput-object v0, Lj0/b;->x:Lj0/b$b;

    new-instance v0, Lj0/b$c;

    invoke-direct {v0}, Lj0/b$c;-><init>()V

    sput-object v0, Lj0/b;->y:Lj0/b$c;

    new-instance v0, Lj0/b$d;

    invoke-direct {v0}, Lj0/b$d;-><init>()V

    sput-object v0, Lj0/b;->z:Lj0/b$d;

    new-instance v0, Lj0/b$e;

    invoke-direct {v0}, Lj0/b$e;-><init>()V

    sput-object v0, Lj0/b;->A:Lj0/b$e;

    new-instance v0, Lj0/b$f;

    invoke-direct {v0}, Lj0/b$f;-><init>()V

    sput-object v0, Lj0/b;->B:Lj0/b$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj0/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final H(Lj0/n;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lj0/n;->b:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p1, Lj0/n;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    const-string v0, "android:changeBounds:bounds"

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lj0/n;->b:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final d(Lj0/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj0/b;->H(Lj0/n;)V

    return-void
.end method

.method public final g(Lj0/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj0/b;->H(Lj0/n;)V

    return-void
.end method

.method public final k(Landroid/view/ViewGroup;Lj0/n;Lj0/n;)Landroid/animation/Animator;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    if-eqz v1, :cond_13

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget-object v1, v1, Lj0/n;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v4, v2, Lj0/n;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v5, "android:changeBounds:parent"

    .line 18
    .line 19
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v6, :cond_12

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_1
    iget-object v2, v2, Lj0/n;->b:Landroid/view/View;

    .line 38
    .line 39
    const-string v5, "android:changeBounds:bounds"

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    iget v12, v5, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    sub-int v13, v11, v7

    .line 70
    .line 71
    sub-int v14, v6, v9

    .line 72
    .line 73
    sub-int v15, v12, v8

    .line 74
    .line 75
    sub-int v3, v5, v10

    .line 76
    .line 77
    const-string v0, "android:changeBounds:clip"

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/graphics/Rect;

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    if-eqz v13, :cond_2

    .line 93
    .line 94
    if-nez v14, :cond_3

    .line 95
    .line 96
    :cond_2
    if-eqz v15, :cond_7

    .line 97
    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    :cond_3
    if-ne v7, v8, :cond_5

    .line 101
    .line 102
    if-eq v9, v10, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const/16 v16, 0x0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    :goto_0
    const/16 v16, 0x1

    .line 109
    .line 110
    :goto_1
    if-ne v11, v12, :cond_6

    .line 111
    .line 112
    if-eq v6, v5, :cond_8

    .line 113
    .line 114
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    const/16 v16, 0x0

    .line 118
    .line 119
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    if-eqz v17, :cond_a

    .line 126
    .line 127
    :cond_9
    if-nez v1, :cond_b

    .line 128
    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 132
    .line 133
    :cond_b
    move/from16 v0, v16

    .line 134
    .line 135
    if-lez v0, :cond_11

    .line 136
    .line 137
    invoke-static {v2, v7, v9, v11, v6}, Lj0/q;->a(Landroid/view/View;IIII)V

    .line 138
    .line 139
    .line 140
    const/4 v1, 0x2

    .line 141
    if-ne v0, v1, :cond_d

    .line 142
    .line 143
    if-ne v13, v15, :cond_c

    .line 144
    .line 145
    if-ne v14, v3, :cond_c

    .line 146
    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    iget-object v1, v0, Lj0/g;->s:Lh/c;

    .line 150
    .line 151
    int-to-float v3, v7

    .line 152
    int-to-float v5, v9

    .line 153
    int-to-float v6, v8

    .line 154
    int-to-float v7, v10

    .line 155
    invoke-virtual {v1, v3, v5, v6, v7}, Lh/c;->b(FFFF)Landroid/graphics/Path;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v3, Lj0/b;->B:Lj0/b$f;

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_c
    move-object/from16 v0, p0

    .line 163
    .line 164
    new-instance v3, Lj0/b$i;

    .line 165
    .line 166
    invoke-direct {v3, v2}, Lj0/b$i;-><init>(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    iget-object v13, v0, Lj0/g;->s:Lh/c;

    .line 170
    .line 171
    int-to-float v7, v7

    .line 172
    int-to-float v9, v9

    .line 173
    int-to-float v8, v8

    .line 174
    int-to-float v10, v10

    .line 175
    invoke-virtual {v13, v7, v9, v8, v10}, Lh/c;->b(FFFF)Landroid/graphics/Path;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    sget-object v8, Lj0/b;->x:Lj0/b$b;

    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    invoke-static {v3, v8, v9, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    iget-object v8, v0, Lj0/g;->s:Lh/c;

    .line 187
    .line 188
    int-to-float v10, v11

    .line 189
    int-to-float v6, v6

    .line 190
    int-to-float v11, v12

    .line 191
    int-to-float v5, v5

    .line 192
    invoke-virtual {v8, v10, v6, v11, v5}, Lh/c;->b(FFFF)Landroid/graphics/Path;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    sget-object v6, Lj0/b;->y:Lj0/b$c;

    .line 197
    .line 198
    invoke-static {v3, v6, v9, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 203
    .line 204
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    .line 206
    .line 207
    new-array v1, v1, [Landroid/animation/Animator;

    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    aput-object v7, v1, v8

    .line 211
    .line 212
    aput-object v5, v1, v4

    .line 213
    .line 214
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Lj0/b$g;

    .line 218
    .line 219
    invoke-direct {v1, v3}, Lj0/b$g;-><init>(Lj0/b$i;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    move-object/from16 v0, p0

    .line 227
    .line 228
    if-ne v7, v8, :cond_f

    .line 229
    .line 230
    if-eq v9, v10, :cond_e

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_e
    iget-object v1, v0, Lj0/g;->s:Lh/c;

    .line 234
    .line 235
    int-to-float v3, v11

    .line 236
    int-to-float v6, v6

    .line 237
    int-to-float v7, v12

    .line 238
    int-to-float v5, v5

    .line 239
    invoke-virtual {v1, v3, v6, v7, v5}, Lh/c;->b(FFFF)Landroid/graphics/Path;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    sget-object v3, Lj0/b;->z:Lj0/b$d;

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_f
    :goto_3
    iget-object v1, v0, Lj0/g;->s:Lh/c;

    .line 247
    .line 248
    int-to-float v3, v7

    .line 249
    int-to-float v5, v9

    .line 250
    int-to-float v6, v8

    .line 251
    int-to-float v7, v10

    .line 252
    invoke-virtual {v1, v3, v5, v6, v7}, Lh/c;->b(FFFF)Landroid/graphics/Path;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    sget-object v3, Lj0/b;->A:Lj0/b$e;

    .line 257
    .line 258
    :goto_4
    const/4 v5, 0x0

    .line 259
    invoke-static {v2, v3, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 268
    .line 269
    if-eqz v1, :cond_10

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Landroid/view/ViewGroup;

    .line 276
    .line 277
    invoke-static {v1, v4}, Lj0/p;->a(Landroid/view/ViewGroup;Z)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Lj0/b$h;

    .line 281
    .line 282
    invoke-direct {v2, v1}, Lj0/b$h;-><init>(Landroid/view/ViewGroup;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v2}, Lj0/g;->a(Lj0/g$d;)V

    .line 286
    .line 287
    .line 288
    :cond_10
    return-object v6

    .line 289
    :cond_11
    move-object/from16 v0, p0

    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    return-object v1

    .line 293
    :cond_12
    :goto_6
    const/4 v1, 0x0

    .line 294
    return-object v1

    .line 295
    :cond_13
    :goto_7
    const/4 v1, 0x0

    .line 296
    return-object v1
.end method

.method public final p()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lj0/b;->w:[Ljava/lang/String;

    return-object v0
.end method
