.class public final Le/f;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f$b;,
        Le/f$a;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Le/f;->e:[Ljava/lang/Class;

    sput-object v0, Le/f;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Le/f;->c:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Le/f;->a:[Ljava/lang/Object;

    iput-object v0, p0, Le/f;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le/f;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Le/f$b;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Le/f$b;-><init>(Le/f;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x1

    .line 18
    const-string v6, "menu"

    .line 19
    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v5, :cond_17

    .line 54
    .line 55
    :goto_1
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_16

    .line 60
    .line 61
    if-eq v3, v5, :cond_15

    .line 62
    .line 63
    iget-object v12, v2, Le/f$b;->a:Landroid/view/Menu;

    .line 64
    .line 65
    const-string v13, "item"

    .line 66
    .line 67
    const-string v14, "group"

    .line 68
    .line 69
    const/4 v15, 0x3

    .line 70
    if-eq v3, v4, :cond_7

    .line 71
    .line 72
    if-eq v3, v15, :cond_2

    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v10, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-eqz v15, :cond_3

    .line 87
    .line 88
    move-object/from16 v7, p1

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    iput v8, v2, Le/f$b;->b:I

    .line 102
    .line 103
    iput v8, v2, Le/f$b;->c:I

    .line 104
    .line 105
    iput v8, v2, Le/f$b;->d:I

    .line 106
    .line 107
    iput v8, v2, Le/f$b;->e:I

    .line 108
    .line 109
    iput-boolean v5, v2, Le/f$b;->f:Z

    .line 110
    .line 111
    iput-boolean v5, v2, Le/f$b;->g:Z

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-eqz v13, :cond_6

    .line 120
    .line 121
    iget-boolean v3, v2, Le/f$b;->h:Z

    .line 122
    .line 123
    if-nez v3, :cond_9

    .line 124
    .line 125
    iget-object v3, v2, Le/f$b;->z:Ly/b;

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-virtual {v3}, Ly/b;->a()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    iput-boolean v5, v2, Le/f$b;->h:Z

    .line 136
    .line 137
    iget v3, v2, Le/f$b;->b:I

    .line 138
    .line 139
    iget v13, v2, Le/f$b;->i:I

    .line 140
    .line 141
    iget v14, v2, Le/f$b;->j:I

    .line 142
    .line 143
    iget-object v15, v2, Le/f$b;->k:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-interface {v12, v3, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Le/f$b;->b(Landroid/view/MenuItem;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    iput-boolean v5, v2, Le/f$b;->h:Z

    .line 158
    .line 159
    iget v3, v2, Le/f$b;->b:I

    .line 160
    .line 161
    iget v13, v2, Le/f$b;->i:I

    .line 162
    .line 163
    iget v14, v2, Le/f$b;->j:I

    .line 164
    .line 165
    iget-object v15, v2, Le/f$b;->k:Ljava/lang/CharSequence;

    .line 166
    .line 167
    invoke-interface {v12, v3, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Le/f$b;->b(Landroid/view/MenuItem;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_9

    .line 180
    .line 181
    move-object/from16 v7, p1

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v9, 0x1

    .line 185
    goto/16 :goto_b

    .line 186
    .line 187
    :cond_7
    if-eqz v10, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    const/4 v4, 0x4

    .line 199
    iget-object v7, v2, Le/f$b;->E:Le/f;

    .line 200
    .line 201
    if-eqz v14, :cond_a

    .line 202
    .line 203
    iget-object v3, v7, Le/f;->c:Landroid/content/Context;

    .line 204
    .line 205
    sget-object v7, Lm1/h;->v:[I

    .line 206
    .line 207
    invoke-virtual {v3, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    iput v7, v2, Le/f$b;->b:I

    .line 216
    .line 217
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    iput v7, v2, Le/f$b;->c:I

    .line 222
    .line 223
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    iput v4, v2, Le/f$b;->d:I

    .line 228
    .line 229
    const/4 v4, 0x5

    .line 230
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iput v4, v2, Le/f$b;->e:I

    .line 235
    .line 236
    const/4 v4, 0x2

    .line 237
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    iput-boolean v7, v2, Le/f$b;->f:Z

    .line 242
    .line 243
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    iput-boolean v4, v2, Le/f$b;->g:Z

    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    .line 251
    .line 252
    :cond_9
    :goto_3
    move-object/from16 v7, p1

    .line 253
    .line 254
    const/4 v4, 0x0

    .line 255
    goto/16 :goto_b

    .line 256
    .line 257
    :cond_a
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-eqz v13, :cond_13

    .line 262
    .line 263
    iget-object v3, v7, Le/f;->c:Landroid/content/Context;

    .line 264
    .line 265
    sget-object v12, Lm1/h;->w:[I

    .line 266
    .line 267
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    const/4 v13, 0x2

    .line 272
    invoke-virtual {v3, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    iput v12, v2, Le/f$b;->i:I

    .line 277
    .line 278
    iget v12, v2, Le/f$b;->c:I

    .line 279
    .line 280
    const/4 v14, 0x5

    .line 281
    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    const/4 v14, 0x6

    .line 286
    iget v13, v2, Le/f$b;->d:I

    .line 287
    .line 288
    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    const/high16 v14, -0x10000

    .line 293
    .line 294
    and-int/2addr v12, v14

    .line 295
    const v14, 0xffff

    .line 296
    .line 297
    .line 298
    and-int/2addr v13, v14

    .line 299
    or-int/2addr v12, v13

    .line 300
    iput v12, v2, Le/f$b;->j:I

    .line 301
    .line 302
    const/4 v12, 0x7

    .line 303
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    iput-object v12, v2, Le/f$b;->k:Ljava/lang/CharSequence;

    .line 308
    .line 309
    const/16 v12, 0x8

    .line 310
    .line 311
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iput-object v12, v2, Le/f$b;->l:Ljava/lang/CharSequence;

    .line 316
    .line 317
    invoke-virtual {v3, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    iput v12, v2, Le/f$b;->m:I

    .line 322
    .line 323
    const/16 v12, 0x9

    .line 324
    .line 325
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    if-nez v12, :cond_b

    .line 330
    .line 331
    const/4 v12, 0x0

    .line 332
    goto :goto_4

    .line 333
    :cond_b
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    .line 334
    .line 335
    .line 336
    move-result v12

    .line 337
    :goto_4
    iput-char v12, v2, Le/f$b;->n:C

    .line 338
    .line 339
    const/16 v12, 0x10

    .line 340
    .line 341
    const/16 v13, 0x1000

    .line 342
    .line 343
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    iput v12, v2, Le/f$b;->o:I

    .line 348
    .line 349
    const/16 v12, 0xa

    .line 350
    .line 351
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    if-nez v12, :cond_c

    .line 356
    .line 357
    const/4 v12, 0x0

    .line 358
    goto :goto_5

    .line 359
    :cond_c
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    :goto_5
    iput-char v12, v2, Le/f$b;->p:C

    .line 364
    .line 365
    const/16 v12, 0x14

    .line 366
    .line 367
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    iput v12, v2, Le/f$b;->q:I

    .line 372
    .line 373
    const/16 v12, 0xb

    .line 374
    .line 375
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    if-eqz v13, :cond_d

    .line 380
    .line 381
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    goto :goto_6

    .line 386
    :cond_d
    iget v12, v2, Le/f$b;->e:I

    .line 387
    .line 388
    :goto_6
    iput v12, v2, Le/f$b;->r:I

    .line 389
    .line 390
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 391
    .line 392
    .line 393
    move-result v12

    .line 394
    iput-boolean v12, v2, Le/f$b;->s:Z

    .line 395
    .line 396
    iget-boolean v12, v2, Le/f$b;->f:Z

    .line 397
    .line 398
    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    iput-boolean v4, v2, Le/f$b;->t:Z

    .line 403
    .line 404
    iget-boolean v4, v2, Le/f$b;->g:Z

    .line 405
    .line 406
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    iput-boolean v4, v2, Le/f$b;->u:Z

    .line 411
    .line 412
    const/16 v4, 0x15

    .line 413
    .line 414
    const/4 v12, -0x1

    .line 415
    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    iput v4, v2, Le/f$b;->v:I

    .line 420
    .line 421
    const/16 v4, 0xc

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    iput-object v4, v2, Le/f$b;->y:Ljava/lang/String;

    .line 428
    .line 429
    const/16 v4, 0xd

    .line 430
    .line 431
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    iput v4, v2, Le/f$b;->w:I

    .line 436
    .line 437
    const/16 v4, 0xf

    .line 438
    .line 439
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    iput-object v4, v2, Le/f$b;->x:Ljava/lang/String;

    .line 444
    .line 445
    const/16 v4, 0xe

    .line 446
    .line 447
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    if-eqz v4, :cond_e

    .line 452
    .line 453
    const/4 v13, 0x1

    .line 454
    goto :goto_7

    .line 455
    :cond_e
    const/4 v13, 0x0

    .line 456
    :goto_7
    if-eqz v13, :cond_f

    .line 457
    .line 458
    iget v14, v2, Le/f$b;->w:I

    .line 459
    .line 460
    if-nez v14, :cond_f

    .line 461
    .line 462
    iget-object v14, v2, Le/f$b;->x:Ljava/lang/String;

    .line 463
    .line 464
    if-nez v14, :cond_f

    .line 465
    .line 466
    sget-object v13, Le/f;->f:[Ljava/lang/Class;

    .line 467
    .line 468
    iget-object v7, v7, Le/f;->b:[Ljava/lang/Object;

    .line 469
    .line 470
    invoke-virtual {v2, v4, v13, v7}, Le/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    check-cast v4, Ly/b;

    .line 475
    .line 476
    goto :goto_8

    .line 477
    :cond_f
    if-eqz v13, :cond_10

    .line 478
    .line 479
    const-string v4, "SupportMenuInflater"

    .line 480
    .line 481
    const-string v7, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 482
    .line 483
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    :cond_10
    const/4 v4, 0x0

    .line 487
    :goto_8
    iput-object v4, v2, Le/f$b;->z:Ly/b;

    .line 488
    .line 489
    const/16 v4, 0x11

    .line 490
    .line 491
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    iput-object v4, v2, Le/f$b;->A:Ljava/lang/CharSequence;

    .line 496
    .line 497
    const/16 v4, 0x16

    .line 498
    .line 499
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    iput-object v4, v2, Le/f$b;->B:Ljava/lang/CharSequence;

    .line 504
    .line 505
    const/16 v4, 0x13

    .line 506
    .line 507
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_11

    .line 512
    .line 513
    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    iget-object v7, v2, Le/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 518
    .line 519
    invoke-static {v4, v7}, Lg/b0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    iput-object v4, v2, Le/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 524
    .line 525
    const/4 v4, 0x0

    .line 526
    goto :goto_9

    .line 527
    :cond_11
    const/4 v4, 0x0

    .line 528
    iput-object v4, v2, Le/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 529
    .line 530
    :goto_9
    const/16 v7, 0x12

    .line 531
    .line 532
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 533
    .line 534
    .line 535
    move-result v12

    .line 536
    if-eqz v12, :cond_12

    .line 537
    .line 538
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    iput-object v7, v2, Le/f$b;->C:Landroid/content/res/ColorStateList;

    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_12
    iput-object v4, v2, Le/f$b;->C:Landroid/content/res/ColorStateList;

    .line 546
    .line 547
    :goto_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 548
    .line 549
    .line 550
    iput-boolean v8, v2, Le/f$b;->h:Z

    .line 551
    .line 552
    move-object/from16 v7, p1

    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_13
    const/4 v4, 0x0

    .line 556
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eqz v7, :cond_14

    .line 561
    .line 562
    iput-boolean v5, v2, Le/f$b;->h:Z

    .line 563
    .line 564
    iget v3, v2, Le/f$b;->b:I

    .line 565
    .line 566
    iget v7, v2, Le/f$b;->i:I

    .line 567
    .line 568
    iget v13, v2, Le/f$b;->j:I

    .line 569
    .line 570
    iget-object v14, v2, Le/f$b;->k:Ljava/lang/CharSequence;

    .line 571
    .line 572
    invoke-interface {v12, v3, v7, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    invoke-virtual {v2, v7}, Le/f$b;->b(Landroid/view/MenuItem;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v7, p1

    .line 584
    .line 585
    invoke-virtual {v0, v7, v1, v3}, Le/f;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 586
    .line 587
    .line 588
    goto :goto_b

    .line 589
    :cond_14
    move-object/from16 v7, p1

    .line 590
    .line 591
    move-object v11, v3

    .line 592
    const/4 v10, 0x1

    .line 593
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    const/4 v4, 0x2

    .line 598
    goto/16 :goto_2

    .line 599
    .line 600
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 601
    .line 602
    const-string v2, "Unexpected end of document"

    .line 603
    .line 604
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    throw v1

    .line 608
    :cond_16
    return-void

    .line 609
    :cond_17
    move-object/from16 v7, p1

    .line 610
    .line 611
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lt/a;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Le/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Le/f;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p1
.end method
