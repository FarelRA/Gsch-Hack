.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$b;
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public static w(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lw0/h;F)F
    .locals 6

    .line 1
    iget-wide v0, p1, Lw0/h;->a:J

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 4
    .line 5
    const-string v2, "expansion"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-wide v2, p0, Lw0/h;->a:J

    .line 12
    .line 13
    iget-wide v4, p0, Lw0/h;->b:J

    .line 14
    .line 15
    add-long/2addr v2, v4

    .line 16
    const-wide/16 v4, 0x11

    .line 17
    .line 18
    add-long/2addr v2, v4

    .line 19
    sub-long/2addr v2, v0

    .line 20
    long-to-float p0, v2

    .line 21
    iget-wide v0, p1, Lw0/h;->b:J

    .line 22
    .line 23
    long-to-float v0, v0

    .line 24
    div-float/2addr p0, v0

    .line 25
    invoke-virtual {p1}, Lw0/h;->b()Landroid/animation/TimeInterpolator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    sget-object p1, Lw0/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    sub-float/2addr p1, p2

    .line 37
    mul-float p1, p1, p0

    .line 38
    .line 39
    add-float/2addr p1, p2

    .line 40
    return p1
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    instance-of v0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 1

    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    :cond_0
    return-void
.end method

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 23

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
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v6, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v7, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getElevation()F

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getElevation()F

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    sub-float/2addr v7, v8

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    if-nez p4, :cond_0

    .line 44
    .line 45
    neg-float v7, v7

    .line 46
    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 47
    .line 48
    .line 49
    :cond_0
    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 50
    .line 51
    new-array v11, v9, [F

    .line 52
    .line 53
    aput v8, v11, v10

    .line 54
    .line 55
    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 61
    .line 62
    new-array v12, v9, [F

    .line 63
    .line 64
    neg-float v7, v7

    .line 65
    aput v7, v12, v10

    .line 66
    .line 67
    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    :goto_0
    iget-object v11, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 72
    .line 73
    const-string v12, "elevation"

    .line 74
    .line 75
    invoke-virtual {v11, v12}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11, v7}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget-object v11, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lm1/h;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(Landroid/view/View;Landroid/view/View;Lm1/h;)F

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    iget-object v12, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lm1/h;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Lm1/h;)F

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    cmpl-float v13, v11, v8

    .line 100
    .line 101
    if-eqz v13, :cond_6

    .line 102
    .line 103
    cmpl-float v13, v12, v8

    .line 104
    .line 105
    if-nez v13, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    if-eqz v3, :cond_3

    .line 109
    .line 110
    cmpg-float v14, v12, v8

    .line 111
    .line 112
    if-ltz v14, :cond_4

    .line 113
    .line 114
    :cond_3
    if-nez v3, :cond_5

    .line 115
    .line 116
    if-lez v13, :cond_5

    .line 117
    .line 118
    :cond_4
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 119
    .line 120
    const-string v14, "translationXCurveUpwards"

    .line 121
    .line 122
    invoke-virtual {v13, v14}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    iget-object v14, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 127
    .line 128
    const-string v15, "translationYCurveUpwards"

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 132
    .line 133
    const-string v14, "translationXCurveDownwards"

    .line 134
    .line 135
    invoke-virtual {v13, v14}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    iget-object v14, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 140
    .line 141
    const-string v15, "translationYCurveDownwards"

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    :goto_1
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 145
    .line 146
    const-string v14, "translationXLinear"

    .line 147
    .line 148
    invoke-virtual {v13, v14}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    iget-object v14, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 153
    .line 154
    const-string v15, "translationYLinear"

    .line 155
    .line 156
    :goto_2
    invoke-virtual {v14, v15}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 161
    .line 162
    iget-object v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 163
    .line 164
    if-eqz v3, :cond_8

    .line 165
    .line 166
    if-nez p4, :cond_7

    .line 167
    .line 168
    neg-float v10, v11

    .line 169
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 170
    .line 171
    .line 172
    neg-float v10, v12

    .line 173
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 174
    .line 175
    .line 176
    :cond_7
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 177
    .line 178
    move-object/from16 v18, v6

    .line 179
    .line 180
    new-array v6, v9, [F

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    aput v16, v6, v17

    .line 187
    .line 188
    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 193
    .line 194
    move-object/from16 v19, v6

    .line 195
    .line 196
    new-array v6, v9, [F

    .line 197
    .line 198
    aput v16, v6, v17

    .line 199
    .line 200
    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    neg-float v10, v11

    .line 205
    neg-float v11, v12

    .line 206
    invoke-static {v4, v13, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lw0/h;F)F

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    invoke-static {v4, v14, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lw0/h;F)F

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    invoke-virtual {v2, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v15, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 230
    .line 231
    .line 232
    move-object v10, v6

    .line 233
    move-object/from16 v6, v19

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_8
    move-object/from16 v18, v6

    .line 237
    .line 238
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 239
    .line 240
    new-array v10, v9, [F

    .line 241
    .line 242
    neg-float v11, v11

    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    aput v11, v10, v17

    .line 246
    .line 247
    invoke-static {v2, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 252
    .line 253
    new-array v11, v9, [F

    .line 254
    .line 255
    neg-float v12, v12

    .line 256
    aput v12, v11, v17

    .line 257
    .line 258
    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    :goto_3
    invoke-virtual {v13, v6}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v10}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    instance-of v11, v2, Lb1/d;

    .line 283
    .line 284
    if-eqz v11, :cond_d

    .line 285
    .line 286
    instance-of v12, v1, Landroid/widget/ImageView;

    .line 287
    .line 288
    if-nez v12, :cond_9

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_9
    move-object v12, v2

    .line 292
    check-cast v12, Lb1/d;

    .line 293
    .line 294
    move-object v13, v1

    .line 295
    check-cast v13, Landroid/widget/ImageView;

    .line 296
    .line 297
    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    if-nez v13, :cond_a

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_a
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    .line 307
    const/16 v14, 0xff

    .line 308
    .line 309
    if-eqz v3, :cond_c

    .line 310
    .line 311
    if-nez p4, :cond_b

    .line 312
    .line 313
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 314
    .line 315
    .line 316
    :cond_b
    sget-object v14, Lw0/d;->a:Lw0/d;

    .line 317
    .line 318
    move/from16 v19, v10

    .line 319
    .line 320
    new-array v10, v9, [I

    .line 321
    .line 322
    const/16 v17, 0x0

    .line 323
    .line 324
    aput v17, v10, v17

    .line 325
    .line 326
    invoke-static {v13, v14, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    move/from16 v20, v6

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_c
    move/from16 v19, v10

    .line 334
    .line 335
    const/16 v17, 0x0

    .line 336
    .line 337
    sget-object v10, Lw0/d;->a:Lw0/d;

    .line 338
    .line 339
    move/from16 v20, v6

    .line 340
    .line 341
    new-array v6, v9, [I

    .line 342
    .line 343
    aput v14, v6, v17

    .line 344
    .line 345
    invoke-static {v13, v10, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    :goto_4
    new-instance v6, Lcom/google/android/material/transformation/a;

    .line 350
    .line 351
    invoke-direct {v6, v2}, Lcom/google/android/material/transformation/a;-><init>(Landroid/view/View;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    .line 356
    .line 357
    iget-object v6, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 358
    .line 359
    const-string v14, "iconFade"

    .line 360
    .line 361
    invoke-virtual {v6, v14}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v6, v10}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    new-instance v6, Lcom/google/android/material/transformation/b;

    .line 372
    .line 373
    invoke-direct {v6, v12, v13}, Lcom/google/android/material/transformation/b;-><init>(Lb1/d;Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v10, v18

    .line 377
    .line 378
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_d
    :goto_5
    move/from16 v20, v6

    .line 383
    .line 384
    move/from16 v19, v10

    .line 385
    .line 386
    move-object/from16 v10, v18

    .line 387
    .line 388
    :goto_6
    if-nez v11, :cond_e

    .line 389
    .line 390
    move-object v0, v4

    .line 391
    move-object v3, v10

    .line 392
    move/from16 v20, v11

    .line 393
    .line 394
    goto/16 :goto_a

    .line 395
    .line 396
    :cond_e
    move-object v6, v2

    .line 397
    check-cast v6, Lb1/d;

    .line 398
    .line 399
    iget-object v12, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lm1/h;

    .line 400
    .line 401
    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(Landroid/view/View;Landroid/view/View;Lm1/h;)F

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    neg-float v12, v12

    .line 412
    const/4 v13, 0x0

    .line 413
    invoke-virtual {v15, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    iget v14, v15, Landroid/graphics/RectF;->left:F

    .line 421
    .line 422
    sub-float/2addr v12, v14

    .line 423
    iget-object v14, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lm1/h;

    .line 424
    .line 425
    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1, v2, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Lm1/h;)F

    .line 432
    .line 433
    .line 434
    move-result v14

    .line 435
    neg-float v14, v14

    .line 436
    invoke-virtual {v15, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    iget v13, v15, Landroid/graphics/RectF;->top:F

    .line 444
    .line 445
    sub-float/2addr v7, v13

    .line 446
    move-object v13, v1

    .line 447
    check-cast v13, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 448
    .line 449
    invoke-virtual {v13, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f(Landroid/graphics/Rect;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    int-to-float v8, v8

    .line 457
    const/high16 v13, 0x40000000    # 2.0f

    .line 458
    .line 459
    div-float/2addr v8, v13

    .line 460
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 461
    .line 462
    const-string v14, "expansion"

    .line 463
    .line 464
    invoke-virtual {v13, v14}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    if-eqz v3, :cond_15

    .line 469
    .line 470
    if-nez p4, :cond_f

    .line 471
    .line 472
    new-instance v9, Lb1/d$d;

    .line 473
    .line 474
    invoke-direct {v9, v12, v7, v8}, Lb1/d$d;-><init>(FFF)V

    .line 475
    .line 476
    .line 477
    invoke-interface {v6, v9}, Lb1/d;->setRevealInfo(Lb1/d$d;)V

    .line 478
    .line 479
    .line 480
    :cond_f
    if-eqz p4, :cond_10

    .line 481
    .line 482
    invoke-interface {v6}, Lb1/d;->getRevealInfo()Lb1/d$d;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    iget v8, v8, Lb1/d$d;->c:F

    .line 487
    .line 488
    :cond_10
    const/4 v9, 0x0

    .line 489
    sub-float v14, v9, v12

    .line 490
    .line 491
    sub-float v15, v9, v7

    .line 492
    .line 493
    float-to-double v0, v14

    .line 494
    float-to-double v14, v15

    .line 495
    move-object/from16 v22, v10

    .line 496
    .line 497
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 498
    .line 499
    .line 500
    move-result-wide v9

    .line 501
    double-to-float v9, v9

    .line 502
    sub-float v10, v20, v12

    .line 503
    .line 504
    move/from16 v20, v11

    .line 505
    .line 506
    float-to-double v10, v10

    .line 507
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 508
    .line 509
    .line 510
    move-result-wide v14

    .line 511
    double-to-float v14, v14

    .line 512
    sub-float v15, v19, v7

    .line 513
    .line 514
    move-object/from16 v19, v4

    .line 515
    .line 516
    float-to-double v3, v15

    .line 517
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 518
    .line 519
    .line 520
    move-result-wide v10

    .line 521
    double-to-float v10, v10

    .line 522
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 523
    .line 524
    .line 525
    move-result-wide v0

    .line 526
    double-to-float v0, v0

    .line 527
    cmpl-float v1, v9, v14

    .line 528
    .line 529
    if-lez v1, :cond_11

    .line 530
    .line 531
    cmpl-float v1, v9, v10

    .line 532
    .line 533
    if-lez v1, :cond_11

    .line 534
    .line 535
    cmpl-float v1, v9, v0

    .line 536
    .line 537
    if-lez v1, :cond_11

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_11
    cmpl-float v1, v14, v10

    .line 541
    .line 542
    if-lez v1, :cond_12

    .line 543
    .line 544
    cmpl-float v1, v14, v0

    .line 545
    .line 546
    if-lez v1, :cond_12

    .line 547
    .line 548
    move v9, v14

    .line 549
    goto :goto_7

    .line 550
    :cond_12
    cmpl-float v1, v10, v0

    .line 551
    .line 552
    if-lez v1, :cond_13

    .line 553
    .line 554
    move v9, v10

    .line 555
    goto :goto_7

    .line 556
    :cond_13
    move v9, v0

    .line 557
    :goto_7
    invoke-static {v6, v12, v7, v9}, Lb1/b;->a(Lb1/d;FFF)Landroid/animation/AnimatorSet;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    new-instance v1, Lcom/google/android/material/transformation/c;

    .line 562
    .line 563
    invoke-direct {v1, v6}, Lcom/google/android/material/transformation/c;-><init>(Lb1/d;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    .line 568
    .line 569
    iget-wide v3, v13, Lw0/h;->a:J

    .line 570
    .line 571
    float-to-int v1, v12

    .line 572
    float-to-int v7, v7

    .line 573
    const-wide/16 v9, 0x0

    .line 574
    .line 575
    cmp-long v11, v3, v9

    .line 576
    .line 577
    if-lez v11, :cond_14

    .line 578
    .line 579
    invoke-static {v2, v1, v7, v8, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :cond_14
    move-object v1, v0

    .line 593
    move-object/from16 v0, v19

    .line 594
    .line 595
    goto :goto_9

    .line 596
    :cond_15
    move-object/from16 v19, v4

    .line 597
    .line 598
    move-object/from16 v22, v10

    .line 599
    .line 600
    move/from16 v20, v11

    .line 601
    .line 602
    invoke-interface {v6}, Lb1/d;->getRevealInfo()Lb1/d$d;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iget v0, v0, Lb1/d$d;->c:F

    .line 607
    .line 608
    invoke-static {v6, v12, v7, v8}, Lb1/b;->a(Lb1/d;FFF)Landroid/animation/AnimatorSet;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    iget-wide v3, v13, Lw0/h;->a:J

    .line 613
    .line 614
    float-to-int v9, v12

    .line 615
    float-to-int v7, v7

    .line 616
    const-wide/16 v10, 0x0

    .line 617
    .line 618
    cmp-long v12, v3, v10

    .line 619
    .line 620
    if-lez v12, :cond_16

    .line 621
    .line 622
    invoke-static {v2, v9, v7, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    :cond_16
    move-object/from16 v0, v19

    .line 636
    .line 637
    iget-object v3, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 638
    .line 639
    iget-object v3, v3, Lw0/g;->a:Lk/h;

    .line 640
    .line 641
    iget v4, v3, Lk/h;->c:I

    .line 642
    .line 643
    move-wide v14, v10

    .line 644
    const/4 v10, 0x0

    .line 645
    :goto_8
    if-ge v10, v4, :cond_17

    .line 646
    .line 647
    invoke-virtual {v3, v10}, Lk/h;->j(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v11

    .line 651
    check-cast v11, Lw0/h;

    .line 652
    .line 653
    move-object v12, v3

    .line 654
    move/from16 v19, v4

    .line 655
    .line 656
    iget-wide v3, v11, Lw0/h;->a:J

    .line 657
    .line 658
    move-object/from16 v21, v12

    .line 659
    .line 660
    iget-wide v11, v11, Lw0/h;->b:J

    .line 661
    .line 662
    add-long/2addr v3, v11

    .line 663
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 664
    .line 665
    .line 666
    move-result-wide v14

    .line 667
    add-int/lit8 v10, v10, 0x1

    .line 668
    .line 669
    move/from16 v4, v19

    .line 670
    .line 671
    move-object/from16 v3, v21

    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_17
    iget-wide v3, v13, Lw0/h;->a:J

    .line 675
    .line 676
    iget-wide v10, v13, Lw0/h;->b:J

    .line 677
    .line 678
    add-long/2addr v3, v10

    .line 679
    cmp-long v10, v3, v14

    .line 680
    .line 681
    if-gez v10, :cond_18

    .line 682
    .line 683
    invoke-static {v2, v9, v7, v8, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 684
    .line 685
    .line 686
    move-result-object v7

    .line 687
    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 688
    .line 689
    .line 690
    sub-long/2addr v14, v3

    .line 691
    invoke-virtual {v7, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    :cond_18
    :goto_9
    invoke-virtual {v13, v1}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    new-instance v1, Lb1/a;

    .line 704
    .line 705
    invoke-direct {v1, v6}, Lb1/a;-><init>(Lb1/d;)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v3, v22

    .line 709
    .line 710
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    :goto_a
    if-nez v20, :cond_19

    .line 714
    .line 715
    move/from16 v7, p3

    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_19
    move-object v1, v2

    .line 719
    check-cast v1, Lb1/d;

    .line 720
    .line 721
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 722
    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    if-eqz v4, :cond_1a

    .line 728
    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    .line 730
    .line 731
    .line 732
    move-result-object v6

    .line 733
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 734
    .line 735
    .line 736
    move-result v7

    .line 737
    invoke-virtual {v4, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 738
    .line 739
    .line 740
    move-result v4

    .line 741
    goto :goto_b

    .line 742
    :cond_1a
    const/4 v4, 0x0

    .line 743
    :goto_b
    const v6, 0xffffff

    .line 744
    .line 745
    .line 746
    and-int/2addr v6, v4

    .line 747
    move/from16 v7, p3

    .line 748
    .line 749
    if-eqz v7, :cond_1c

    .line 750
    .line 751
    if-nez p4, :cond_1b

    .line 752
    .line 753
    invoke-interface {v1, v4}, Lb1/d;->setCircularRevealScrimColor(I)V

    .line 754
    .line 755
    .line 756
    :cond_1b
    sget-object v4, Lb1/d$c;->a:Lb1/d$c;

    .line 757
    .line 758
    const/4 v8, 0x1

    .line 759
    new-array v9, v8, [I

    .line 760
    .line 761
    const/4 v10, 0x0

    .line 762
    aput v6, v9, v10

    .line 763
    .line 764
    invoke-static {v1, v4, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    goto :goto_c

    .line 769
    :cond_1c
    const/4 v8, 0x1

    .line 770
    const/4 v10, 0x0

    .line 771
    sget-object v6, Lb1/d$c;->a:Lb1/d$c;

    .line 772
    .line 773
    new-array v9, v8, [I

    .line 774
    .line 775
    aput v4, v9, v10

    .line 776
    .line 777
    invoke-static {v1, v6, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    :goto_c
    sget-object v4, Lw0/b;->a:Lw0/b;

    .line 782
    .line 783
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 784
    .line 785
    .line 786
    iget-object v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 787
    .line 788
    const-string v6, "color"

    .line 789
    .line 790
    invoke-virtual {v4, v6}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    invoke-virtual {v4, v1}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    :goto_d
    instance-of v1, v2, Landroid/view/ViewGroup;

    .line 801
    .line 802
    if-nez v1, :cond_1d

    .line 803
    .line 804
    goto :goto_11

    .line 805
    :cond_1d
    const v4, 0x7f080094

    .line 806
    .line 807
    .line 808
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    const/4 v6, 0x0

    .line 813
    if-eqz v4, :cond_1e

    .line 814
    .line 815
    goto :goto_f

    .line 816
    :cond_1e
    instance-of v4, v2, Ll1/c;

    .line 817
    .line 818
    if-nez v4, :cond_20

    .line 819
    .line 820
    instance-of v4, v2, Ll1/b;

    .line 821
    .line 822
    if-eqz v4, :cond_1f

    .line 823
    .line 824
    goto :goto_e

    .line 825
    :cond_1f
    if-eqz v1, :cond_21

    .line 826
    .line 827
    move-object v6, v2

    .line 828
    check-cast v6, Landroid/view/ViewGroup;

    .line 829
    .line 830
    goto :goto_10

    .line 831
    :cond_20
    :goto_e
    move-object v1, v2

    .line 832
    check-cast v1, Landroid/view/ViewGroup;

    .line 833
    .line 834
    const/4 v4, 0x0

    .line 835
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    move-object v4, v1

    .line 840
    :goto_f
    nop

    .line 841
    instance-of v1, v4, Landroid/view/ViewGroup;

    .line 842
    .line 843
    if-eqz v1, :cond_21

    .line 844
    .line 845
    move-object v6, v4

    .line 846
    check-cast v6, Landroid/view/ViewGroup;

    .line 847
    .line 848
    :cond_21
    :goto_10
    if-nez v6, :cond_22

    .line 849
    .line 850
    :goto_11
    const/4 v9, 0x0

    .line 851
    goto :goto_13

    .line 852
    :cond_22
    if-eqz v7, :cond_24

    .line 853
    .line 854
    if-nez p4, :cond_23

    .line 855
    .line 856
    sget-object v1, Lw0/c;->a:Lw0/c;

    .line 857
    .line 858
    const/4 v4, 0x0

    .line 859
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 860
    .line 861
    .line 862
    move-result-object v4

    .line 863
    invoke-virtual {v1, v6, v4}, Lw0/c;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    :cond_23
    sget-object v1, Lw0/c;->a:Lw0/c;

    .line 867
    .line 868
    const/4 v4, 0x1

    .line 869
    new-array v4, v4, [F

    .line 870
    .line 871
    const/high16 v8, 0x3f800000    # 1.0f

    .line 872
    .line 873
    const/4 v9, 0x0

    .line 874
    aput v8, v4, v9

    .line 875
    .line 876
    invoke-static {v6, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    goto :goto_12

    .line 881
    :cond_24
    const/4 v4, 0x1

    .line 882
    const/4 v9, 0x0

    .line 883
    sget-object v1, Lw0/c;->a:Lw0/c;

    .line 884
    .line 885
    new-array v4, v4, [F

    .line 886
    .line 887
    const/4 v8, 0x0

    .line 888
    aput v8, v4, v9

    .line 889
    .line 890
    invoke-static {v6, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    :goto_12
    iget-object v0, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lw0/g;

    .line 895
    .line 896
    const-string v4, "contentFade"

    .line 897
    .line 898
    invoke-virtual {v0, v4}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v0, v1}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    :goto_13
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 909
    .line 910
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 911
    .line 912
    .line 913
    invoke-static {v0, v5}, Lm1/h;->D(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 914
    .line 915
    .line 916
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    .line 917
    .line 918
    move-object/from16 v4, p1

    .line 919
    .line 920
    invoke-direct {v1, v7, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    const/4 v10, 0x0

    .line 931
    :goto_14
    if-ge v10, v1, :cond_25

    .line 932
    .line 933
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 938
    .line 939
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 940
    .line 941
    .line 942
    add-int/lit8 v10, v10, 0x1

    .line 943
    .line 944
    goto :goto_14

    .line 945
    :cond_25
    return-object v0
.end method

.method public final u(Landroid/view/View;Landroid/view/View;Lm1/h;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final v(Landroid/view/View;Landroid/view/View;Lm1/h;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final x(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public abstract y(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;
.end method
