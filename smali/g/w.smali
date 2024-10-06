.class public final Lg/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lg/p0;

.field public c:Lg/p0;

.field public d:Lg/p0;

.field public e:Lg/p0;

.field public f:Lg/p0;

.field public g:Lg/p0;

.field public final h:Lg/y;

.field public i:I

.field public j:Landroid/graphics/Typeface;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/w;->i:I

    iput-object p1, p0, Lg/w;->a:Landroid/widget/TextView;

    new-instance v0, Lg/y;

    invoke-direct {v0, p1}, Lg/y;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lg/w;->h:Lg/y;

    return-void
.end method

.method public static c(Landroid/content/Context;Lg/i;I)Lg/p0;
    .locals 0

    invoke-virtual {p1, p0, p2}, Lg/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lg/p0;

    invoke-direct {p1}, Lg/p0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lg/p0;->d:Z

    iput-object p0, p1, Lg/p0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lg/p0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lg/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lg/i;->n(Landroid/graphics/drawable/Drawable;Lg/p0;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lg/w;->b:Lg/p0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lg/w;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/w;->c:Lg/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/w;->d:Lg/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/w;->e:Lg/p0;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Lg/w;->b:Lg/p0;

    invoke-virtual {p0, v4, v5}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Lg/w;->c:Lg/p0;

    invoke-virtual {p0, v4, v5}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Lg/w;->d:Lg/p0;

    invoke-virtual {p0, v4, v5}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Lg/w;->e:Lg/p0;

    invoke-virtual {p0, v0, v4}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    :cond_1
    iget-object v0, p0, Lg/w;->f:Lg/p0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/w;->g:Lg/p0;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lg/w;->f:Lg/p0;

    invoke-virtual {p0, v2, v3}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lg/w;->g:Lg/p0;

    invoke-virtual {p0, v0, v1}, Lg/w;->a(Landroid/graphics/drawable/Drawable;Lg/p0;)V

    :cond_3
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lg/w;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {}, Lg/i;->g()Lg/i;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lm1/h;->n:[I

    .line 18
    .line 19
    invoke-static {v4, v1, v6, v2}, Lg/r0;->l(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/r0;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, -0x1

    .line 25
    invoke-virtual {v6, v7, v8}, Lg/r0;->i(II)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x3

    .line 30
    invoke-virtual {v6, v10}, Lg/r0;->k(I)Z

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    if-eqz v11, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6, v10, v7}, Lg/r0;->i(II)I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    invoke-static {v4, v5, v11}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iput-object v11, v0, Lg/w;->b:Lg/p0;

    .line 45
    .line 46
    :cond_0
    const/4 v11, 0x1

    .line 47
    invoke-virtual {v6, v11}, Lg/r0;->k(I)Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-eqz v12, :cond_1

    .line 52
    .line 53
    invoke-virtual {v6, v11, v7}, Lg/r0;->i(II)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-static {v4, v5, v12}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    iput-object v12, v0, Lg/w;->c:Lg/p0;

    .line 62
    .line 63
    :cond_1
    const/4 v12, 0x4

    .line 64
    invoke-virtual {v6, v12}, Lg/r0;->k(I)Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-eqz v13, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6, v12, v7}, Lg/r0;->i(II)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    invoke-static {v4, v5, v13}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    iput-object v13, v0, Lg/w;->d:Lg/p0;

    .line 79
    .line 80
    :cond_2
    const/4 v13, 0x2

    .line 81
    invoke-virtual {v6, v13}, Lg/r0;->k(I)Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_3

    .line 86
    .line 87
    invoke-virtual {v6, v13, v7}, Lg/r0;->i(II)I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    invoke-static {v4, v5, v14}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    iput-object v14, v0, Lg/w;->e:Lg/p0;

    .line 96
    .line 97
    :cond_3
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/4 v15, 0x5

    .line 100
    invoke-virtual {v6, v15}, Lg/r0;->k(I)Z

    .line 101
    .line 102
    .line 103
    move-result v16

    .line 104
    if-eqz v16, :cond_4

    .line 105
    .line 106
    invoke-virtual {v6, v15, v7}, Lg/r0;->i(II)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    invoke-static {v4, v5, v11}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    iput-object v11, v0, Lg/w;->f:Lg/p0;

    .line 115
    .line 116
    :cond_4
    const/4 v11, 0x6

    .line 117
    invoke-virtual {v6, v11}, Lg/r0;->k(I)Z

    .line 118
    .line 119
    .line 120
    move-result v17

    .line 121
    if-eqz v17, :cond_5

    .line 122
    .line 123
    invoke-virtual {v6, v11, v7}, Lg/r0;->i(II)I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    invoke-static {v4, v5, v13}, Lg/w;->c(Landroid/content/Context;Lg/i;I)Lg/p0;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iput-object v5, v0, Lg/w;->g:Lg/p0;

    .line 132
    .line 133
    :cond_5
    invoke-virtual {v6}, Lg/r0;->m()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    .line 141
    .line 142
    sget-object v6, Lm1/h;->C:[I

    .line 143
    .line 144
    const/16 v13, 0x17

    .line 145
    .line 146
    const/16 v11, 0xc

    .line 147
    .line 148
    if-eq v9, v8, :cond_b

    .line 149
    .line 150
    new-instance v8, Lg/r0;

    .line 151
    .line 152
    invoke-virtual {v4, v9, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-direct {v8, v4, v9}, Lg/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 157
    .line 158
    .line 159
    if-nez v5, :cond_6

    .line 160
    .line 161
    invoke-virtual {v8, v11}, Lg/r0;->k(I)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_6

    .line 166
    .line 167
    invoke-virtual {v8, v11, v7}, Lg/r0;->a(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    const/16 v18, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    const/4 v9, 0x0

    .line 175
    const/16 v18, 0x0

    .line 176
    .line 177
    :goto_0
    invoke-virtual {v0, v4, v8}, Lg/w;->i(Landroid/content/Context;Lg/r0;)V

    .line 178
    .line 179
    .line 180
    if-ge v14, v13, :cond_9

    .line 181
    .line 182
    invoke-virtual {v8, v10}, Lg/r0;->k(I)Z

    .line 183
    .line 184
    .line 185
    move-result v19

    .line 186
    if-eqz v19, :cond_7

    .line 187
    .line 188
    invoke-virtual {v8, v10}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v19

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const/16 v19, 0x0

    .line 194
    .line 195
    :goto_1
    invoke-virtual {v8, v12}, Lg/r0;->k(I)Z

    .line 196
    .line 197
    .line 198
    move-result v20

    .line 199
    if-eqz v20, :cond_8

    .line 200
    .line 201
    invoke-virtual {v8, v12}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 202
    .line 203
    .line 204
    move-result-object v20

    .line 205
    goto :goto_2

    .line 206
    :cond_8
    const/16 v20, 0x0

    .line 207
    .line 208
    :goto_2
    invoke-virtual {v8, v15}, Lg/r0;->k(I)Z

    .line 209
    .line 210
    .line 211
    move-result v21

    .line 212
    if-eqz v21, :cond_a

    .line 213
    .line 214
    invoke-virtual {v8, v15}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 215
    .line 216
    .line 217
    move-result-object v21

    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const/16 v19, 0x0

    .line 220
    .line 221
    const/16 v20, 0x0

    .line 222
    .line 223
    :cond_a
    const/16 v21, 0x0

    .line 224
    .line 225
    :goto_3
    invoke-virtual {v8}, Lg/r0;->m()V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_b
    const/4 v9, 0x0

    .line 230
    const/16 v18, 0x0

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    :goto_4
    new-instance v8, Lg/r0;

    .line 239
    .line 240
    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-direct {v8, v4, v6}, Lg/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 245
    .line 246
    .line 247
    if-nez v5, :cond_c

    .line 248
    .line 249
    invoke-virtual {v8, v11}, Lg/r0;->k(I)Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eqz v6, :cond_c

    .line 254
    .line 255
    invoke-virtual {v8, v11, v7}, Lg/r0;->a(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    const/16 v18, 0x1

    .line 260
    .line 261
    :cond_c
    if-ge v14, v13, :cond_f

    .line 262
    .line 263
    invoke-virtual {v8, v10}, Lg/r0;->k(I)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_d

    .line 268
    .line 269
    invoke-virtual {v8, v10}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 270
    .line 271
    .line 272
    move-result-object v19

    .line 273
    :cond_d
    invoke-virtual {v8, v12}, Lg/r0;->k(I)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_e

    .line 278
    .line 279
    invoke-virtual {v8, v12}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 280
    .line 281
    .line 282
    move-result-object v20

    .line 283
    :cond_e
    invoke-virtual {v8, v15}, Lg/r0;->k(I)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_f

    .line 288
    .line 289
    invoke-virtual {v8, v15}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 290
    .line 291
    .line 292
    move-result-object v21

    .line 293
    :cond_f
    move-object/from16 v6, v19

    .line 294
    .line 295
    move-object/from16 v11, v20

    .line 296
    .line 297
    move-object/from16 v13, v21

    .line 298
    .line 299
    const/16 v10, 0x1c

    .line 300
    .line 301
    if-lt v14, v10, :cond_10

    .line 302
    .line 303
    invoke-virtual {v8, v7}, Lg/r0;->k(I)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-eqz v10, :cond_10

    .line 308
    .line 309
    const/4 v10, -0x1

    .line 310
    invoke-virtual {v8, v7, v10}, Lg/r0;->d(II)I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    if-nez v14, :cond_10

    .line 315
    .line 316
    const/4 v10, 0x0

    .line 317
    invoke-virtual {v3, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    .line 319
    .line 320
    :cond_10
    invoke-virtual {v0, v4, v8}, Lg/w;->i(Landroid/content/Context;Lg/r0;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8}, Lg/r0;->m()V

    .line 324
    .line 325
    .line 326
    if-eqz v6, :cond_11

    .line 327
    .line 328
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    .line 330
    .line 331
    :cond_11
    if-eqz v11, :cond_12

    .line 332
    .line 333
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    .line 335
    .line 336
    :cond_12
    if-eqz v13, :cond_13

    .line 337
    .line 338
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 339
    .line 340
    .line 341
    :cond_13
    if-nez v5, :cond_14

    .line 342
    .line 343
    if-eqz v18, :cond_14

    .line 344
    .line 345
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 346
    .line 347
    .line 348
    :cond_14
    iget-object v5, v0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 349
    .line 350
    if-eqz v5, :cond_15

    .line 351
    .line 352
    iget v6, v0, Lg/w;->i:I

    .line 353
    .line 354
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 355
    .line 356
    .line 357
    :cond_15
    sget-object v5, Lm1/h;->o:[I

    .line 358
    .line 359
    iget-object v6, v0, Lg/w;->h:Lg/y;

    .line 360
    .line 361
    iget-object v8, v6, Lg/y;->j:Landroid/content/Context;

    .line 362
    .line 363
    invoke-virtual {v8, v1, v5, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_16

    .line 372
    .line 373
    invoke-virtual {v2, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    iput v9, v6, Lg/y;->a:I

    .line 378
    .line 379
    :cond_16
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    const/high16 v10, -0x40800000    # -1.0f

    .line 384
    .line 385
    if-eqz v9, :cond_17

    .line 386
    .line 387
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    goto :goto_5

    .line 392
    :cond_17
    const/high16 v9, -0x40800000    # -1.0f

    .line 393
    .line 394
    :goto_5
    const/4 v11, 0x2

    .line 395
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    if-eqz v12, :cond_18

    .line 400
    .line 401
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    const/4 v11, 0x1

    .line 406
    goto :goto_6

    .line 407
    :cond_18
    const/4 v11, 0x1

    .line 408
    const/high16 v12, -0x40800000    # -1.0f

    .line 409
    .line 410
    :goto_6
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 411
    .line 412
    .line 413
    move-result v13

    .line 414
    if-eqz v13, :cond_19

    .line 415
    .line 416
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    const/4 v11, 0x3

    .line 421
    goto :goto_7

    .line 422
    :cond_19
    const/4 v11, 0x3

    .line 423
    const/high16 v13, -0x40800000    # -1.0f

    .line 424
    .line 425
    :goto_7
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 426
    .line 427
    .line 428
    move-result v14

    .line 429
    if-eqz v14, :cond_1c

    .line 430
    .line 431
    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v11

    .line 435
    if-lez v11, :cond_1c

    .line 436
    .line 437
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 442
    .line 443
    .line 444
    move-result-object v11

    .line 445
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->length()I

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    new-array v15, v14, [I

    .line 450
    .line 451
    if-lez v14, :cond_1b

    .line 452
    .line 453
    :goto_8
    if-ge v7, v14, :cond_1a

    .line 454
    .line 455
    const/4 v10, -0x1

    .line 456
    invoke-virtual {v11, v7, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 457
    .line 458
    .line 459
    move-result v19

    .line 460
    aput v19, v15, v7

    .line 461
    .line 462
    add-int/lit8 v7, v7, 0x1

    .line 463
    .line 464
    const/high16 v10, -0x40800000    # -1.0f

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_1a
    invoke-static {v15}, Lg/y;->b([I)[I

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    iput-object v7, v6, Lg/y;->f:[I

    .line 472
    .line 473
    invoke-virtual {v6}, Lg/y;->h()Z

    .line 474
    .line 475
    .line 476
    :cond_1b
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    .line 478
    .line 479
    :cond_1c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Lg/y;->i()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    const/high16 v7, 0x3f800000    # 1.0f

    .line 487
    .line 488
    if-eqz v2, :cond_21

    .line 489
    .line 490
    iget v2, v6, Lg/y;->a:I

    .line 491
    .line 492
    const/4 v10, 0x1

    .line 493
    if-ne v2, v10, :cond_22

    .line 494
    .line 495
    iget-boolean v2, v6, Lg/y;->g:Z

    .line 496
    .line 497
    if-nez v2, :cond_20

    .line 498
    .line 499
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    const/high16 v8, -0x40800000    # -1.0f

    .line 508
    .line 509
    cmpl-float v10, v12, v8

    .line 510
    .line 511
    if-nez v10, :cond_1d

    .line 512
    .line 513
    const/high16 v10, 0x41400000    # 12.0f

    .line 514
    .line 515
    const/4 v11, 0x2

    .line 516
    invoke-static {v11, v10, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 517
    .line 518
    .line 519
    move-result v12

    .line 520
    goto :goto_9

    .line 521
    :cond_1d
    const/4 v11, 0x2

    .line 522
    :goto_9
    cmpl-float v10, v13, v8

    .line 523
    .line 524
    if-nez v10, :cond_1e

    .line 525
    .line 526
    const/high16 v10, 0x42e00000    # 112.0f

    .line 527
    .line 528
    invoke-static {v11, v10, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 529
    .line 530
    .line 531
    move-result v13

    .line 532
    :cond_1e
    cmpl-float v2, v9, v8

    .line 533
    .line 534
    if-nez v2, :cond_1f

    .line 535
    .line 536
    const/high16 v9, 0x3f800000    # 1.0f

    .line 537
    .line 538
    :cond_1f
    invoke-virtual {v6, v12, v13, v9}, Lg/y;->j(FFF)V

    .line 539
    .line 540
    .line 541
    :cond_20
    invoke-virtual {v6}, Lg/y;->g()Z

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_21
    const/4 v2, 0x0

    .line 546
    iput v2, v6, Lg/y;->a:I

    .line 547
    .line 548
    :cond_22
    :goto_a
    sget-boolean v2, La0/b;->a:Z

    .line 549
    .line 550
    if-eqz v2, :cond_24

    .line 551
    .line 552
    iget v2, v6, Lg/y;->a:I

    .line 553
    .line 554
    if-eqz v2, :cond_24

    .line 555
    .line 556
    iget-object v2, v6, Lg/y;->f:[I

    .line 557
    .line 558
    array-length v8, v2

    .line 559
    if-lez v8, :cond_24

    .line 560
    .line 561
    invoke-static {v3}, Le/h;->c(Landroid/widget/TextView;)I

    .line 562
    .line 563
    .line 564
    move-result v8

    .line 565
    int-to-float v8, v8

    .line 566
    const/high16 v9, -0x40800000    # -1.0f

    .line 567
    .line 568
    cmpl-float v8, v8, v9

    .line 569
    .line 570
    if-eqz v8, :cond_23

    .line 571
    .line 572
    iget v2, v6, Lg/y;->d:F

    .line 573
    .line 574
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    iget v8, v6, Lg/y;->e:F

    .line 579
    .line 580
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    iget v6, v6, Lg/y;->c:F

    .line 585
    .line 586
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    invoke-static {v3, v2, v8, v6}, Le/h;->o(Landroid/widget/TextView;III)V

    .line 591
    .line 592
    .line 593
    goto :goto_b

    .line 594
    :cond_23
    invoke-static {v3, v2}, Le/h;->p(Landroid/widget/TextView;[I)V

    .line 595
    .line 596
    .line 597
    :cond_24
    :goto_b
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    const/4 v2, 0x6

    .line 602
    const/4 v4, -0x1

    .line 603
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    const/16 v5, 0x8

    .line 608
    .line 609
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    const/16 v6, 0x9

    .line 614
    .line 615
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 620
    .line 621
    .line 622
    if-eq v2, v4, :cond_25

    .line 623
    .line 624
    invoke-static {v3, v2}, La0/i;->b(Landroid/widget/TextView;I)V

    .line 625
    .line 626
    .line 627
    :cond_25
    if-eq v5, v4, :cond_26

    .line 628
    .line 629
    invoke-static {v3, v5}, La0/i;->c(Landroid/widget/TextView;I)V

    .line 630
    .line 631
    .line 632
    :cond_26
    if-eq v6, v4, :cond_28

    .line 633
    .line 634
    if-ltz v6, :cond_27

    .line 635
    .line 636
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    const/4 v2, 0x0

    .line 641
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-eq v6, v1, :cond_28

    .line 646
    .line 647
    sub-int/2addr v6, v1

    .line 648
    int-to-float v1, v6

    .line 649
    invoke-virtual {v3, v1, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 650
    .line 651
    .line 652
    goto :goto_c

    .line 653
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 654
    .line 655
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 656
    .line 657
    .line 658
    throw v1

    .line 659
    :cond_28
    :goto_c
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    .line 1
    sget-object v0, Lm1/h;->C:[I

    .line 2
    .line 3
    new-instance v1, Lg/r0;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Lg/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 p2, 0xc

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Lg/r0;->k(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lg/w;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p2, v3}, Lg/r0;->a(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v0, 0x17

    .line 33
    .line 34
    if-ge p2, v0, :cond_1

    .line 35
    .line 36
    const/4 p2, 0x3

    .line 37
    invoke-virtual {v1, p2}, Lg/r0;->k(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v1, v3}, Lg/r0;->k(I)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    const/4 p2, -0x1

    .line 59
    invoke-virtual {v1, v3, p2}, Lg/r0;->d(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0, p1, v1}, Lg/w;->i(Landroid/content/Context;Lg/r0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lg/r0;->m()V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget p2, p0, Lg/w;->i:I

    .line 80
    .line 81
    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public final f(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/w;->h:Lg/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg/y;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lg/y;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lg/y;->j(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lg/y;->g()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lg/y;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final g([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/w;->h:Lg/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg/y;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Lg/y;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Lg/y;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Lg/y;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Lg/y;->h()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Lg/y;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Lg/y;->g()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Lg/y;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/w;->h:Lg/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg/y;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lg/y;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    const/high16 v2, 0x41400000    # 12.0f

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v1, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1, v1}, Lg/y;->j(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lg/y;->g()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lg/y;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Unknown auto-size text type: "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    const/4 p1, 0x0

    .line 73
    iput p1, v0, Lg/y;->a:I

    .line 74
    .line 75
    const/high16 v1, -0x40800000    # -1.0f

    .line 76
    .line 77
    iput v1, v0, Lg/y;->d:F

    .line 78
    .line 79
    iput v1, v0, Lg/y;->e:F

    .line 80
    .line 81
    iput v1, v0, Lg/y;->c:F

    .line 82
    .line 83
    new-array v1, p1, [I

    .line 84
    .line 85
    iput-object v1, v0, Lg/y;->f:[I

    .line 86
    .line 87
    iput-boolean p1, v0, Lg/y;->b:Z

    .line 88
    .line 89
    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Landroid/content/Context;Lg/r0;)V
    .locals 6

    .line 1
    iget v0, p0, Lg/w;->i:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p2, v1, v0}, Lg/r0;->h(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lg/w;->i:I

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lg/r0;->k(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0xb

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-nez v2, :cond_5

    .line 21
    .line 22
    invoke-virtual {p2, v4}, Lg/r0;->k(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p2, v5}, Lg/r0;->k(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iput-boolean v3, p0, Lg/w;->k:Z

    .line 36
    .line 37
    invoke-virtual {p2, v5, v5}, Lg/r0;->h(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eq p1, v5, :cond_3

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    .line 45
    const/4 p2, 0x3

    .line 46
    if-eq p1, p2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 56
    .line 57
    :goto_0
    iput-object p1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 58
    .line 59
    :cond_4
    :goto_1
    return-void

    .line 60
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Lg/r0;->k(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    const/16 v0, 0xb

    .line 70
    .line 71
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_8

    .line 76
    .line 77
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    iget-object v1, p0, Lg/w;->a:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lg/w$a;

    .line 85
    .line 86
    invoke-direct {v1, p0, p1}, Lg/w$a;-><init>(Lg/w;Ljava/lang/ref/WeakReference;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    iget p1, p0, Lg/w;->i:I

    .line 90
    .line 91
    invoke-virtual {p2, v0, p1, v1}, Lg/r0;->g(IILg/w$a;)Landroid/graphics/Typeface;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 96
    .line 97
    if-nez p1, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    :cond_7
    iput-boolean v3, p0, Lg/w;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_0
    nop

    .line 104
    :cond_8
    :goto_3
    iget-object p1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 105
    .line 106
    if-nez p1, :cond_9

    .line 107
    .line 108
    iget-object p1, p2, Lg/r0;->b:Landroid/content/res/TypedArray;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    iget p2, p0, Lg/w;->i:I

    .line 117
    .line 118
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lg/w;->j:Landroid/graphics/Typeface;

    .line 123
    .line 124
    :cond_9
    return-void
.end method
