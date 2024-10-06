.class public abstract Lj0/v;
.super Lj0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/v$a;,
        Lj0/v$b;
    }
.end annotation


# static fields
.field public static final x:[Ljava/lang/String;


# instance fields
.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/v;->x:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj0/g;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lj0/v;->w:I

    return-void
.end method

.method public static I(Lj0/n;Lj0/n;)Lj0/v$b;
    .locals 8

    new-instance v0, Lj0/v$b;

    invoke-direct {v0}, Lj0/v$b;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj0/v$b;->a:Z

    iput-boolean v1, v0, Lj0/v$b;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    iget-object v6, p0, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Lj0/v$b;->c:I

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lj0/v$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v4, v0, Lj0/v$b;->c:I

    iput-object v3, v0, Lj0/v$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lj0/v$b;->d:I

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lj0/v$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v4, v0, Lj0/v$b;->d:I

    iput-object v3, v0, Lj0/v$b;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget p0, v0, Lj0/v$b;->c:I

    iget p1, v0, Lj0/v$b;->d:I

    if-ne p0, p1, :cond_2

    iget-object v3, v0, Lj0/v$b;->e:Landroid/view/ViewGroup;

    iget-object v4, v0, Lj0/v$b;->f:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    if-eq p0, p1, :cond_4

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    if-nez p1, :cond_8

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lj0/v$b;->f:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, v0, Lj0/v$b;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    iget p0, v0, Lj0/v$b;->d:I

    if-nez p0, :cond_7

    :goto_2
    iput-boolean v2, v0, Lj0/v$b;->b:Z

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    iget p0, v0, Lj0/v$b;->c:I

    if-nez p0, :cond_8

    :goto_3
    iput-boolean v1, v0, Lj0/v$b;->b:Z

    :goto_4
    iput-boolean v2, v0, Lj0/v$b;->a:Z

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final H(Lj0/n;)V
    .locals 3

    iget-object v0, p1, Lj0/n;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Lj0/n;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lj0/n;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "android:visibility:parent"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p1, p1, Lj0/n;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string p1, "android:visibility:screenLocation"

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Lj0/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj0/v;->H(Lj0/n;)V

    return-void
.end method

.method public final k(Landroid/view/ViewGroup;Lj0/n;Lj0/n;)Landroid/animation/Animator;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static/range {p2 .. p3}, Lj0/v;->I(Lj0/n;Lj0/n;)Lj0/v$b;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Lj0/v$b;->a:Z

    .line 14
    .line 15
    if-eqz v5, :cond_20

    .line 16
    .line 17
    iget-object v5, v4, Lj0/v$b;->e:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iget-object v5, v4, Lj0/v$b;->f:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v5, :cond_20

    .line 24
    .line 25
    :cond_0
    iget-boolean v5, v4, Lj0/v$b;->b:Z

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    const-string v8, "android:fade:transitionAlpha"

    .line 29
    .line 30
    const/high16 v9, 0x3f800000    # 1.0f

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    if-eqz v5, :cond_6

    .line 35
    .line 36
    iget v1, v0, Lj0/v;->w:I

    .line 37
    .line 38
    and-int/2addr v1, v7

    .line 39
    if-ne v1, v7, :cond_5

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v1, v3, Lj0/n;->b:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v11}, Lj0/g;->n(Landroid/view/View;Z)Lj0/n;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v1, v11}, Lj0/g;->q(Landroid/view/View;Z)Lj0/n;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v4, v1}, Lj0/v;->I(Lj0/n;Lj0/n;)Lj0/v$b;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-boolean v1, v1, Lj0/v$b;->a:Z

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object v1, v3, Lj0/n;->b:Landroid/view/View;

    .line 72
    .line 73
    move-object v3, v0

    .line 74
    check-cast v3, Lj0/d;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v2, v2, Lj0/n;->a:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Float;

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    :goto_0
    cmpl-float v4, v2, v9

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move v10, v2

    .line 100
    :goto_1
    invoke-virtual {v3, v1, v10, v9}, Lj0/d;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 106
    :goto_3
    return-object v6

    .line 107
    :cond_6
    iget v4, v4, Lj0/v$b;->d:I

    .line 108
    .line 109
    iget v5, v0, Lj0/v;->w:I

    .line 110
    .line 111
    const/4 v12, 0x2

    .line 112
    and-int/2addr v5, v12

    .line 113
    if-eq v5, v12, :cond_7

    .line 114
    .line 115
    goto/16 :goto_14

    .line 116
    .line 117
    :cond_7
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v5, v2, Lj0/n;->b:Landroid/view/View;

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    const/4 v5, 0x0

    .line 123
    :goto_4
    if-eqz v3, :cond_9

    .line 124
    .line 125
    iget-object v3, v3, Lj0/n;->b:Landroid/view/View;

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    const/4 v3, 0x0

    .line 129
    :goto_5
    if-eqz v3, :cond_d

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    if-nez v13, :cond_a

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_a
    const/4 v13, 0x4

    .line 139
    if-ne v4, v13, :cond_b

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_b
    if-ne v5, v3, :cond_c

    .line 143
    .line 144
    :goto_6
    move/from16 v18, v4

    .line 145
    .line 146
    move-object/from16 v19, v8

    .line 147
    .line 148
    goto/16 :goto_f

    .line 149
    .line 150
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroid/view/View;

    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    .line 158
    .line 159
    move-object v5, v3

    .line 160
    :goto_8
    move/from16 v18, v4

    .line 161
    .line 162
    move-object/from16 v19, v8

    .line 163
    .line 164
    goto/16 :goto_e

    .line 165
    .line 166
    :cond_e
    if-eqz v5, :cond_19

    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-nez v3, :cond_f

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    instance-of v3, v3, Landroid/view/View;

    .line 180
    .line 181
    if-eqz v3, :cond_19

    .line 182
    .line 183
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v0, v3, v7}, Lj0/g;->q(Landroid/view/View;Z)Lj0/n;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    invoke-virtual {v0, v3, v7}, Lj0/g;->n(Landroid/view/View;Z)Lj0/n;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-static {v13, v14}, Lj0/v;->I(Lj0/n;Lj0/n;)Lj0/v$b;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    iget-boolean v13, v13, Lj0/v$b;->a:Z

    .line 202
    .line 203
    if-nez v13, :cond_17

    .line 204
    .line 205
    :goto_9
    sget-boolean v13, Lj0/m;->a:Z

    .line 206
    .line 207
    new-instance v13, Landroid/graphics/Matrix;

    .line 208
    .line 209
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    neg-int v14, v14

    .line 217
    int-to-float v14, v14

    .line 218
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    neg-int v3, v3

    .line 223
    int-to-float v3, v3

    .line 224
    invoke-virtual {v13, v14, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 225
    .line 226
    .line 227
    sget-object v3, Lj0/q;->a:Lj0/s;

    .line 228
    .line 229
    invoke-virtual {v3, v5, v13}, Lj0/s;->R(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v1, v13}, Lj0/s;->S(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 233
    .line 234
    .line 235
    new-instance v3, Landroid/graphics/RectF;

    .line 236
    .line 237
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    int-to-float v14, v14

    .line 242
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v15

    .line 246
    int-to-float v15, v15

    .line 247
    invoke-direct {v3, v10, v10, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 251
    .line 252
    .line 253
    iget v14, v3, Landroid/graphics/RectF;->left:F

    .line 254
    .line 255
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    iget v15, v3, Landroid/graphics/RectF;->top:F

    .line 260
    .line 261
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 266
    .line 267
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 272
    .line 273
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    new-instance v12, Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-direct {v12, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 287
    .line 288
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    .line 290
    .line 291
    sget-boolean v11, Lj0/m;->a:Z

    .line 292
    .line 293
    if-eqz v11, :cond_10

    .line 294
    .line 295
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 296
    .line 297
    .line 298
    move-result v11

    .line 299
    xor-int/2addr v11, v7

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 301
    .line 302
    .line 303
    move-result v16

    .line 304
    goto :goto_a

    .line 305
    :cond_10
    const/4 v11, 0x0

    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    :goto_a
    sget-boolean v17, Lj0/m;->b:Z

    .line 309
    .line 310
    if-eqz v17, :cond_12

    .line 311
    .line 312
    if-eqz v11, :cond_12

    .line 313
    .line 314
    if-nez v16, :cond_11

    .line 315
    .line 316
    move/from16 v18, v4

    .line 317
    .line 318
    move-object/from16 v19, v8

    .line 319
    .line 320
    const/4 v0, 0x0

    .line 321
    goto/16 :goto_d

    .line 322
    .line 323
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 324
    .line 325
    .line 326
    move-result-object v16

    .line 327
    move-object/from16 v7, v16

    .line 328
    .line 329
    check-cast v7, Landroid/view/ViewGroup;

    .line 330
    .line 331
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-virtual {v9, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 340
    .line 341
    .line 342
    move/from16 v9, v16

    .line 343
    .line 344
    goto :goto_b

    .line 345
    :cond_12
    const/4 v7, 0x0

    .line 346
    const/4 v9, 0x0

    .line 347
    :goto_b
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 348
    .line 349
    .line 350
    move-result v16

    .line 351
    move/from16 v18, v4

    .line 352
    .line 353
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 358
    .line 359
    .line 360
    move-result v16

    .line 361
    move-object/from16 v19, v8

    .line 362
    .line 363
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    if-lez v4, :cond_14

    .line 368
    .line 369
    if-lez v8, :cond_14

    .line 370
    .line 371
    mul-int v0, v4, v8

    .line 372
    .line 373
    int-to-float v0, v0

    .line 374
    const/high16 v16, 0x49800000    # 1048576.0f

    .line 375
    .line 376
    div-float v0, v16, v0

    .line 377
    .line 378
    const/high16 v2, 0x3f800000    # 1.0f

    .line 379
    .line 380
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    int-to-float v4, v4

    .line 385
    mul-float v4, v4, v0

    .line 386
    .line 387
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    int-to-float v8, v8

    .line 392
    mul-float v8, v8, v0

    .line 393
    .line 394
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    iget v2, v3, Landroid/graphics/RectF;->left:F

    .line 399
    .line 400
    neg-float v2, v2

    .line 401
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 402
    .line 403
    neg-float v3, v3

    .line 404
    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 405
    .line 406
    .line 407
    invoke-virtual {v13, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 408
    .line 409
    .line 410
    sget-boolean v0, Lj0/m;->c:Z

    .line 411
    .line 412
    if-eqz v0, :cond_13

    .line 413
    .line 414
    new-instance v0, Landroid/graphics/Picture;

    .line 415
    .line 416
    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v4, v8}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 430
    .line 431
    .line 432
    invoke-static {v0}, La0/g;->d(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    goto :goto_c

    .line 437
    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 438
    .line 439
    invoke-static {v4, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    new-instance v2, Landroid/graphics/Canvas;

    .line 444
    .line 445
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 452
    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_14
    const/4 v0, 0x0

    .line 456
    :goto_c
    if-eqz v17, :cond_15

    .line 457
    .line 458
    if-eqz v11, :cond_15

    .line 459
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v7, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 468
    .line 469
    .line 470
    :cond_15
    :goto_d
    if-eqz v0, :cond_16

    .line 471
    .line 472
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    .line 474
    .line 475
    :cond_16
    sub-int v0, v6, v14

    .line 476
    .line 477
    const/high16 v2, 0x40000000    # 2.0f

    .line 478
    .line 479
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    sub-int v3, v10, v15

    .line 484
    .line 485
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    invoke-virtual {v12, v0, v2}, Landroid/view/View;->measure(II)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v12, v14, v15, v6, v10}, Landroid/view/View;->layout(IIII)V

    .line 493
    .line 494
    .line 495
    move-object v5, v12

    .line 496
    goto :goto_e

    .line 497
    :cond_17
    move/from16 v18, v4

    .line 498
    .line 499
    move-object/from16 v19, v8

    .line 500
    .line 501
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    if-nez v0, :cond_18

    .line 506
    .line 507
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    const/4 v2, -0x1

    .line 512
    if-eq v0, v2, :cond_18

    .line 513
    .line 514
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 515
    .line 516
    .line 517
    :cond_18
    const/4 v5, 0x0

    .line 518
    :goto_e
    const/4 v3, 0x0

    .line 519
    goto :goto_10

    .line 520
    :cond_19
    move/from16 v18, v4

    .line 521
    .line 522
    move-object/from16 v19, v8

    .line 523
    .line 524
    const/4 v3, 0x0

    .line 525
    :goto_f
    const/4 v5, 0x0

    .line 526
    :goto_10
    if-eqz v5, :cond_1d

    .line 527
    .line 528
    move-object/from16 v0, p2

    .line 529
    .line 530
    const/high16 v2, 0x3f800000    # 1.0f

    .line 531
    .line 532
    if-eqz v0, :cond_1c

    .line 533
    .line 534
    iget-object v0, v0, Lj0/n;->a:Ljava/util/HashMap;

    .line 535
    .line 536
    const-string v3, "android:visibility:screenLocation"

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    check-cast v3, [I

    .line 543
    .line 544
    const/4 v4, 0x0

    .line 545
    aget v6, v3, v4

    .line 546
    .line 547
    const/4 v7, 0x1

    .line 548
    aget v3, v3, v7

    .line 549
    .line 550
    const/4 v8, 0x2

    .line 551
    new-array v8, v8, [I

    .line 552
    .line 553
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 554
    .line 555
    .line 556
    aget v4, v8, v4

    .line 557
    .line 558
    sub-int/2addr v6, v4

    .line 559
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    sub-int/2addr v6, v4

    .line 564
    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 565
    .line 566
    .line 567
    aget v4, v8, v7

    .line 568
    .line 569
    sub-int/2addr v3, v4

    .line 570
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    sub-int/2addr v3, v4

    .line 575
    invoke-virtual {v5, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 576
    .line 577
    .line 578
    new-instance v3, Lf/c;

    .line 579
    .line 580
    invoke-direct {v3, v1}, Lf/c;-><init>(Landroid/view/ViewGroup;)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v3, Lf/c;->a:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v1, Landroid/view/ViewGroupOverlay;

    .line 586
    .line 587
    invoke-virtual {v1, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 588
    .line 589
    .line 590
    move-object/from16 v1, p0

    .line 591
    .line 592
    move-object v4, v1

    .line 593
    check-cast v4, Lj0/d;

    .line 594
    .line 595
    sget-object v6, Lj0/q;->a:Lj0/s;

    .line 596
    .line 597
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    move-object/from16 v6, v19

    .line 601
    .line 602
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Ljava/lang/Float;

    .line 607
    .line 608
    if-eqz v0, :cond_1a

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 611
    .line 612
    .line 613
    move-result v9

    .line 614
    const/4 v0, 0x0

    .line 615
    goto :goto_11

    .line 616
    :cond_1a
    const/4 v0, 0x0

    .line 617
    const/high16 v9, 0x3f800000    # 1.0f

    .line 618
    .line 619
    :goto_11
    invoke-virtual {v4, v5, v9, v0}, Lj0/d;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    if-nez v6, :cond_1b

    .line 624
    .line 625
    invoke-virtual {v3, v5}, Lf/c;->b(Landroid/view/View;)V

    .line 626
    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_1b
    new-instance v0, Lj0/u;

    .line 630
    .line 631
    invoke-direct {v0, v3, v5}, Lj0/u;-><init>(Lf/c;Landroid/view/View;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    .line 636
    .line 637
    goto :goto_15

    .line 638
    :cond_1c
    move-object/from16 v1, p0

    .line 639
    .line 640
    goto :goto_12

    .line 641
    :cond_1d
    const/high16 v2, 0x3f800000    # 1.0f

    .line 642
    .line 643
    move-object/from16 v1, p0

    .line 644
    .line 645
    move-object/from16 v0, p2

    .line 646
    .line 647
    :goto_12
    move-object/from16 v6, v19

    .line 648
    .line 649
    if-eqz v3, :cond_21

    .line 650
    .line 651
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 652
    .line 653
    .line 654
    move-result v4

    .line 655
    const/4 v5, 0x0

    .line 656
    invoke-static {v3, v5}, Lj0/q;->c(Landroid/view/View;I)V

    .line 657
    .line 658
    .line 659
    move-object v5, v1

    .line 660
    check-cast v5, Lj0/d;

    .line 661
    .line 662
    sget-object v7, Lj0/q;->a:Lj0/s;

    .line 663
    .line 664
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    if-eqz v0, :cond_1e

    .line 668
    .line 669
    iget-object v0, v0, Lj0/n;->a:Ljava/util/HashMap;

    .line 670
    .line 671
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Ljava/lang/Float;

    .line 676
    .line 677
    if-eqz v0, :cond_1e

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 680
    .line 681
    .line 682
    move-result v9

    .line 683
    const/4 v0, 0x0

    .line 684
    goto :goto_13

    .line 685
    :cond_1e
    const/4 v0, 0x0

    .line 686
    const/high16 v9, 0x3f800000    # 1.0f

    .line 687
    .line 688
    :goto_13
    invoke-virtual {v5, v3, v9, v0}, Lj0/d;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    if-eqz v6, :cond_1f

    .line 693
    .line 694
    new-instance v0, Lj0/v$a;

    .line 695
    .line 696
    move/from16 v2, v18

    .line 697
    .line 698
    invoke-direct {v0, v3, v2}, Lj0/v$a;-><init>(Landroid/view/View;I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v0}, Lj0/g;->a(Lj0/g$d;)V

    .line 708
    .line 709
    .line 710
    goto :goto_15

    .line 711
    :cond_1f
    invoke-static {v3, v4}, Lj0/q;->c(Landroid/view/View;I)V

    .line 712
    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_20
    :goto_14
    move-object v1, v0

    .line 716
    :cond_21
    const/4 v6, 0x0

    .line 717
    :goto_15
    return-object v6
.end method

.method public final p()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lj0/v;->x:[Ljava/lang/String;

    return-object v0
.end method

.method public final r(Lj0/n;Lj0/n;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lj0/n;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Lj0/v;->I(Lj0/n;Lj0/n;)Lj0/v$b;

    move-result-object p1

    iget-boolean p2, p1, Lj0/v$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lj0/v$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Lj0/v$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
