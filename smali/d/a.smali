.class public final Ld/a;
.super Ld/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$e;,
        Ld/a$b;,
        Ld/a$c;,
        Ld/a$d;,
        Ld/a$a;,
        Ld/a$f;
    }
.end annotation


# instance fields
.field public q:Ld/a$b;

.field public r:Ld/a$f;

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ld/a;-><init>(Ld/a$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ld/a$b;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ld/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ld/a;->s:I

    iput v0, p0, Ld/a;->t:I

    new-instance v0, Ld/a$b;

    invoke-direct {v0, p1, p0, p2}, Ld/a$b;-><init>(Ld/a$b;Ld/a;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Ld/a;->e(Ld/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/a;->onStateChange([I)Z

    invoke-virtual {p0}, Ld/a;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Ld/a;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v5, "animated-selector"

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_1b

    .line 20
    .line 21
    new-instance v4, Ld/a;

    .line 22
    .line 23
    invoke-direct {v4}, Ld/a;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v5, Lm1/h;->i:[I

    .line 27
    .line 28
    invoke-static {v1, v0, v2, v5}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {v4, v7, v6}, Ld/a;->setVisible(ZZ)Z

    .line 38
    .line 39
    .line 40
    iget-object v7, v4, Ld/a;->q:Ld/a$b;

    .line 41
    .line 42
    iget v8, v7, Ld/b$c;->d:I

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    or-int/2addr v8, v9

    .line 49
    iput v8, v7, Ld/b$c;->d:I

    .line 50
    .line 51
    iget-boolean v8, v7, Ld/b$c;->i:Z

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    iput-boolean v8, v7, Ld/b$c;->i:Z

    .line 59
    .line 60
    iget-boolean v8, v7, Ld/b$c;->l:Z

    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    invoke-virtual {v5, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iput-boolean v8, v7, Ld/b$c;->l:Z

    .line 68
    .line 69
    iget v8, v7, Ld/b$c;->y:I

    .line 70
    .line 71
    const/4 v11, 0x4

    .line 72
    invoke-virtual {v5, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    iput v8, v7, Ld/b$c;->y:I

    .line 77
    .line 78
    const/4 v8, 0x5

    .line 79
    iget v12, v7, Ld/b$c;->z:I

    .line 80
    .line 81
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    iput v8, v7, Ld/b$c;->z:I

    .line 86
    .line 87
    iget-boolean v7, v7, Ld/b$c;->w:Z

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v4, v7}, Ld/b;->setDither(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v7, v4, Ld/b;->b:Ld/b$c;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    iput-object v1, v7, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 108
    .line 109
    if-nez v12, :cond_0

    .line 110
    .line 111
    const/16 v12, 0xa0

    .line 112
    .line 113
    :cond_0
    iget v13, v7, Ld/b$c;->c:I

    .line 114
    .line 115
    iput v12, v7, Ld/b$c;->c:I

    .line 116
    .line 117
    if-eq v13, v12, :cond_2

    .line 118
    .line 119
    iput-boolean v8, v7, Ld/b$c;->m:Z

    .line 120
    .line 121
    iput-boolean v8, v7, Ld/b$c;->j:Z

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .line 129
    .line 130
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    add-int/2addr v5, v6

    .line 135
    move-object/from16 v12, p0

    .line 136
    .line 137
    move-object v7, v0

    .line 138
    :goto_1
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-eq v13, v6, :cond_1a

    .line 143
    .line 144
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-ge v14, v5, :cond_3

    .line 149
    .line 150
    if-eq v13, v10, :cond_1a

    .line 151
    .line 152
    :cond_3
    if-eq v13, v9, :cond_4

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    if-le v14, v5, :cond_5

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    const-string v14, "item"

    .line 163
    .line 164
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    const/4 v14, 0x0

    .line 169
    const/4 v15, -0x1

    .line 170
    if-eqz v13, :cond_f

    .line 171
    .line 172
    sget-object v13, Lm1/h;->j:[I

    .line 173
    .line 174
    invoke-static {v1, v7, v2, v13}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-virtual {v13, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    invoke-virtual {v13, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-lez v15, :cond_6

    .line 187
    .line 188
    invoke-static {v12, v15}, Lc/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    :cond_6
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    .line 194
    .line 195
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    new-array v15, v13, [I

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    const/4 v10, 0x0

    .line 203
    :goto_2
    if-ge v10, v13, :cond_9

    .line 204
    .line 205
    invoke-interface {v2, v10}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-eqz v9, :cond_8

    .line 210
    .line 211
    const v11, 0x10100d0

    .line 212
    .line 213
    .line 214
    if-eq v9, v11, :cond_8

    .line 215
    .line 216
    const v11, 0x1010199

    .line 217
    .line 218
    .line 219
    if-eq v9, v11, :cond_8

    .line 220
    .line 221
    add-int/lit8 v11, v6, 0x1

    .line 222
    .line 223
    invoke-interface {v2, v10, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 224
    .line 225
    .line 226
    move-result v19

    .line 227
    if-eqz v19, :cond_7

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_7
    neg-int v9, v9

    .line 231
    :goto_3
    aput v9, v15, v6

    .line 232
    .line 233
    move v6, v11

    .line 234
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 235
    .line 236
    const/4 v9, 0x2

    .line 237
    const/4 v11, 0x4

    .line 238
    goto :goto_2

    .line 239
    :cond_9
    invoke-static {v15, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 244
    .line 245
    if-nez v14, :cond_d

    .line 246
    .line 247
    :goto_4
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    const/4 v11, 0x4

    .line 252
    if-ne v10, v11, :cond_a

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_a
    const/4 v11, 0x2

    .line 256
    if-ne v10, v11, :cond_c

    .line 257
    .line 258
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    const-string v11, "vector"

    .line 263
    .line 264
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_b

    .line 269
    .line 270
    new-instance v14, Lk0/f;

    .line 271
    .line 272
    invoke-direct {v14}, Lk0/f;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v1, v3, v2, v7}, Lk0/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_b
    invoke-static {v1, v3, v2, v7}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    goto :goto_5

    .line 284
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_d
    :goto_5
    if-eqz v14, :cond_e

    .line 310
    .line 311
    iget-object v9, v4, Ld/a;->q:Ld/a$b;

    .line 312
    .line 313
    invoke-virtual {v9, v14}, Ld/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    iget-object v11, v9, Ld/d$a;->H:[[I

    .line 318
    .line 319
    aput-object v6, v11, v10

    .line 320
    .line 321
    iget-object v6, v9, Ld/a$b;->J:Lk/i;

    .line 322
    .line 323
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v6, v10, v9}, Lk/i;->e(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v8, p0

    .line 331
    .line 332
    goto/16 :goto_a

    .line 333
    .line 334
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_f
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    const-string v9, "transition"

    .line 364
    .line 365
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-eqz v6, :cond_18

    .line 370
    .line 371
    sget-object v6, Lm1/h;->k:[I

    .line 372
    .line 373
    invoke-static {v1, v7, v2, v6}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    const/4 v9, 0x2

    .line 378
    invoke-virtual {v6, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    const/4 v9, 0x1

    .line 383
    invoke-virtual {v6, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 384
    .line 385
    .line 386
    move-result v11

    .line 387
    invoke-virtual {v6, v8, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-lez v13, :cond_10

    .line 392
    .line 393
    invoke-static {v12, v13}, Lc/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    :cond_10
    const/4 v12, 0x3

    .line 398
    invoke-virtual {v6, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    .line 404
    .line 405
    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 406
    .line 407
    if-nez v14, :cond_14

    .line 408
    .line 409
    :goto_6
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 410
    .line 411
    .line 412
    move-result v14

    .line 413
    const/4 v8, 0x4

    .line 414
    if-ne v14, v8, :cond_11

    .line 415
    .line 416
    const/4 v8, 0x0

    .line 417
    goto :goto_6

    .line 418
    :cond_11
    const/4 v8, 0x2

    .line 419
    if-ne v14, v8, :cond_13

    .line 420
    .line 421
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    const-string v8, "animated-vector"

    .line 426
    .line 427
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    if-eqz v8, :cond_12

    .line 432
    .line 433
    new-instance v14, Lk0/b;

    .line 434
    .line 435
    move-object/from16 v8, p0

    .line 436
    .line 437
    invoke-direct {v14, v8}, Lk0/b;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v14, v1, v3, v2, v0}, Lk0/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_12
    move-object/from16 v8, p0

    .line 445
    .line 446
    invoke-static {v1, v3, v2, v7}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 447
    .line 448
    .line 449
    move-result-object v14

    .line 450
    goto :goto_7

    .line 451
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 452
    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :cond_14
    move-object/from16 v8, p0

    .line 477
    .line 478
    :goto_7
    if-eqz v14, :cond_17

    .line 479
    .line 480
    if-eq v10, v15, :cond_16

    .line 481
    .line 482
    if-eq v11, v15, :cond_16

    .line 483
    .line 484
    iget-object v6, v4, Ld/a;->q:Ld/a$b;

    .line 485
    .line 486
    invoke-virtual {v6, v14}, Ld/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    int-to-long v14, v10

    .line 491
    const/16 v10, 0x20

    .line 492
    .line 493
    shl-long v17, v14, v10

    .line 494
    .line 495
    int-to-long v9, v11

    .line 496
    move/from16 v20, v13

    .line 497
    .line 498
    or-long v12, v9, v17

    .line 499
    .line 500
    if-eqz v20, :cond_15

    .line 501
    .line 502
    const-wide v17, 0x200000000L

    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    goto :goto_8

    .line 508
    :cond_15
    const-wide/16 v17, 0x0

    .line 509
    .line 510
    :goto_8
    iget-object v11, v6, Ld/a$b;->I:Lk/e;

    .line 511
    .line 512
    int-to-long v0, v7

    .line 513
    or-long v21, v0, v17

    .line 514
    .line 515
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    invoke-virtual {v11, v12, v13, v7}, Lk/e;->a(JLjava/lang/Long;)V

    .line 520
    .line 521
    .line 522
    if-eqz v20, :cond_19

    .line 523
    .line 524
    const/16 v7, 0x20

    .line 525
    .line 526
    shl-long/2addr v9, v7

    .line 527
    or-long/2addr v9, v14

    .line 528
    iget-object v6, v6, Ld/a$b;->I:Lk/e;

    .line 529
    .line 530
    const-wide v11, 0x100000000L

    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    or-long/2addr v0, v11

    .line 536
    or-long v0, v0, v17

    .line 537
    .line 538
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v6, v9, v10, v0}, Lk/e;->a(JLjava/lang/Long;)V

    .line 543
    .line 544
    .line 545
    goto :goto_9

    .line 546
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 547
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 561
    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v0

    .line 573
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw v0

    .line 598
    :cond_18
    move-object/from16 v8, p0

    .line 599
    .line 600
    :cond_19
    :goto_9
    move-object/from16 v7, p1

    .line 601
    .line 602
    move-object v12, v8

    .line 603
    :goto_a
    move-object/from16 v0, p1

    .line 604
    .line 605
    move-object/from16 v1, p2

    .line 606
    .line 607
    const/4 v6, 0x1

    .line 608
    const/4 v8, 0x0

    .line 609
    const/4 v9, 0x2

    .line 610
    const/4 v10, 0x3

    .line 611
    const/4 v11, 0x4

    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :cond_1a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v4, v0}, Ld/a;->onStateChange([I)Z

    .line 619
    .line 620
    .line 621
    return-object v4

    .line 622
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 623
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v2, ": invalid animated-selector tag "

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0
.end method


# virtual methods
.method public final b()Ld/b$c;
    .locals 3

    new-instance v0, Ld/a$b;

    iget-object v1, p0, Ld/a;->q:Ld/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ld/a$b;-><init>(Ld/a$b;Ld/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final e(Ld/b$c;)V
    .locals 1

    invoke-super {p0, p1}, Ld/d;->e(Ld/b$c;)V

    instance-of v0, p1, Ld/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Ld/a$b;

    iput-object p1, p0, Ld/a;->q:Ld/a$b;

    :cond_0
    return-void
.end method

.method public final f()Ld/d$a;
    .locals 3

    new-instance v0, Ld/a$b;

    iget-object v1, p0, Ld/a;->q:Ld/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ld/a$b;-><init>(Ld/a$b;Ld/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Ld/a;->q:Ld/a$b;

    return-object v0
.end method

.method public final jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Ld/b;->jumpToCurrentState()V

    iget-object v0, p0, Ld/a;->r:Ld/a$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/a$f;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/a;->r:Ld/a$f;

    iget v0, p0, Ld/a;->s:I

    invoke-virtual {p0, v0}, Ld/b;->d(I)Z

    const/4 v0, -0x1

    iput v0, p0, Ld/a;->s:I

    iput v0, p0, Ld/a;->t:I

    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Ld/a;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ld/d;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Ld/a;->q:Ld/a$b;

    invoke-virtual {v0}, Ld/a$b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a;->u:Z

    :cond_0
    return-object p0
.end method

.method public final onStateChange([I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ld/a;->q:Ld/a$b;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ld/d$a;->f([I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ld/d$a;->f([I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :goto_0
    iget v2, v0, Ld/b;->h:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq v3, v2, :cond_e

    .line 24
    .line 25
    iget-object v5, v0, Ld/a;->r:Ld/a$f;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget v2, v0, Ld/a;->s:I

    .line 31
    .line 32
    if-ne v3, v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    iget v2, v0, Ld/a;->t:I

    .line 37
    .line 38
    if-ne v3, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v5}, Ld/a$f;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v5}, Ld/a$f;->b()V

    .line 47
    .line 48
    .line 49
    iget v2, v0, Ld/a;->t:I

    .line 50
    .line 51
    iput v2, v0, Ld/a;->s:I

    .line 52
    .line 53
    iput v3, v0, Ld/a;->t:I

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    iget v2, v0, Ld/a;->s:I

    .line 58
    .line 59
    invoke-virtual {v5}, Ld/a$f;->d()V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v5, 0x0

    .line 63
    iput-object v5, v0, Ld/a;->r:Ld/a$f;

    .line 64
    .line 65
    const/4 v5, -0x1

    .line 66
    iput v5, v0, Ld/a;->t:I

    .line 67
    .line 68
    iput v5, v0, Ld/a;->s:I

    .line 69
    .line 70
    iget-object v5, v0, Ld/a;->q:Ld/a$b;

    .line 71
    .line 72
    if-gez v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iget-object v7, v5, Ld/a$b;->J:Lk/i;

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v7, v2, v8}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    :goto_1
    if-gez v3, :cond_5

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v8, v5, Ld/a$b;->J:Lk/i;

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v8, v3, v9}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    :goto_2
    if-eqz v8, :cond_c

    .line 116
    .line 117
    if-nez v7, :cond_6

    .line 118
    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_6
    int-to-long v9, v7

    .line 122
    const/16 v7, 0x20

    .line 123
    .line 124
    shl-long/2addr v9, v7

    .line 125
    int-to-long v7, v8

    .line 126
    or-long/2addr v7, v9

    .line 127
    iget-object v9, v5, Ld/a$b;->I:Lk/e;

    .line 128
    .line 129
    const-wide/16 v10, -0x1

    .line 130
    .line 131
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v9, v7, v8, v12}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Ljava/lang/Long;

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 142
    .line 143
    .line 144
    move-result-wide v12

    .line 145
    long-to-int v9, v12

    .line 146
    if-gez v9, :cond_7

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_7
    iget-object v12, v5, Ld/a$b;->I:Lk/e;

    .line 151
    .line 152
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-virtual {v12, v7, v8, v13}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Ljava/lang/Long;

    .line 161
    .line 162
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 163
    .line 164
    .line 165
    move-result-wide v12

    .line 166
    const-wide v14, 0x200000000L

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr v12, v14

    .line 172
    const-wide/16 v14, 0x0

    .line 173
    .line 174
    cmp-long v16, v12, v14

    .line 175
    .line 176
    if-eqz v16, :cond_8

    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    goto :goto_3

    .line 180
    :cond_8
    const/4 v12, 0x0

    .line 181
    :goto_3
    invoke-virtual {v0, v9}, Ld/b;->d(I)Z

    .line 182
    .line 183
    .line 184
    iget-object v9, v0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    instance-of v13, v9, Landroid/graphics/drawable/AnimationDrawable;

    .line 187
    .line 188
    if-eqz v13, :cond_a

    .line 189
    .line 190
    iget-object v5, v5, Ld/a$b;->I:Lk/e;

    .line 191
    .line 192
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v5, v7, v8, v10}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Ljava/lang/Long;

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    const-wide v10, 0x100000000L

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    and-long/2addr v7, v10

    .line 212
    cmp-long v5, v7, v14

    .line 213
    .line 214
    if-eqz v5, :cond_9

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    goto :goto_4

    .line 218
    :cond_9
    const/4 v5, 0x0

    .line 219
    :goto_4
    new-instance v7, Ld/a$d;

    .line 220
    .line 221
    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    .line 222
    .line 223
    invoke-direct {v7, v9, v5, v12}, Ld/a$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_a
    instance-of v5, v9, Lk0/b;

    .line 228
    .line 229
    if-eqz v5, :cond_b

    .line 230
    .line 231
    new-instance v7, Ld/a$c;

    .line 232
    .line 233
    check-cast v9, Lk0/b;

    .line 234
    .line 235
    invoke-direct {v7, v9}, Ld/a$c;-><init>(Lk0/b;)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    instance-of v5, v9, Landroid/graphics/drawable/Animatable;

    .line 240
    .line 241
    if-eqz v5, :cond_c

    .line 242
    .line 243
    new-instance v7, Ld/a$a;

    .line 244
    .line 245
    check-cast v9, Landroid/graphics/drawable/Animatable;

    .line 246
    .line 247
    invoke-direct {v7, v9}, Ld/a$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 248
    .line 249
    .line 250
    :goto_5
    invoke-virtual {v7}, Ld/a$f;->c()V

    .line 251
    .line 252
    .line 253
    iput-object v7, v0, Ld/a;->r:Ld/a$f;

    .line 254
    .line 255
    iput v2, v0, Ld/a;->t:I

    .line 256
    .line 257
    iput v3, v0, Ld/a;->s:I

    .line 258
    .line 259
    :goto_6
    const/4 v2, 0x1

    .line 260
    goto :goto_8

    .line 261
    :cond_c
    :goto_7
    const/4 v2, 0x0

    .line 262
    :goto_8
    if-nez v2, :cond_d

    .line 263
    .line 264
    invoke-virtual {v0, v3}, Ld/b;->d(I)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_e

    .line 269
    .line 270
    :cond_d
    const/4 v4, 0x1

    .line 271
    :cond_e
    iget-object v2, v0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 272
    .line 273
    if-eqz v2, :cond_f

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    or-int/2addr v4, v1

    .line 280
    :cond_f
    return v4
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Ld/b;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Ld/a;->r:Ld/a$f;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ld/a$f;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ld/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
