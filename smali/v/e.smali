.class public final Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/e$b;,
        Lv/e$c;,
        Lv/e$d;
    }
.end annotation


# static fields
.field public static final a:Lk/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lv/f;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/h<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lv/f$b<",
            "Lv/e$d;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final e:Lv/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lk/f;-><init>(I)V

    sput-object v0, Lv/e;->a:Lk/f;

    new-instance v0, Lv/f;

    invoke-direct {v0}, Lv/f;-><init>()V

    sput-object v0, Lv/e;->b:Lv/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv/e;->c:Ljava/lang/Object;

    new-instance v0, Lk/h;

    invoke-direct {v0}, Lk/h;-><init>()V

    sput-object v0, Lv/e;->d:Lk/h;

    new-instance v0, Lv/e$a;

    invoke-direct {v0}, Lv/e$a;-><init>()V

    sput-object v0, Lv/e;->e:Lv/e$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lv/a;)Lv/e$b;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v0, Lv/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_11

    .line 20
    .line 21
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v8, v0, Lv/a;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_10

    .line 30
    .line 31
    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v5, 0x40

    .line 34
    .line 35
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_0
    array-length v8, v1

    .line 48
    if-ge v5, v8, :cond_0

    .line 49
    .line 50
    aget-object v8, v1, v5

    .line 51
    .line 52
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lv/e;->e:Lv/e$a;

    .line 63
    .line 64
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Lv/a;->d:Ljava/util/List;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v2, v7}, Lq/c;->b(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_1
    const/4 v2, 0x0

    .line 77
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    const/4 v9, 0x1

    .line 82
    const/4 v10, 0x0

    .line 83
    if-ge v2, v8, :cond_6

    .line 84
    .line 85
    new-instance v8, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Ljava/util/Collection;

    .line 92
    .line 93
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eq v11, v12, :cond_2

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_2
    const/4 v11, 0x0

    .line 111
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-ge v11, v12, :cond_4

    .line 116
    .line 117
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    check-cast v12, [B

    .line 122
    .line 123
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    check-cast v13, [B

    .line 128
    .line 129
    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-nez v12, :cond_3

    .line 134
    .line 135
    :goto_4
    const/4 v8, 0x0

    .line 136
    goto :goto_5

    .line 137
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    const/4 v8, 0x1

    .line 141
    :goto_5
    if-eqz v8, :cond_5

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move-object v4, v10

    .line 148
    :goto_6
    if-nez v4, :cond_7

    .line 149
    .line 150
    new-instance v0, Lv/e$b;

    .line 151
    .line 152
    invoke-direct {v0, v9, v10}, Lv/e$b;-><init>(I[Lv/e$c;)V

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_7
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 157
    .line 158
    new-instance v8, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v2, Landroid/net/Uri$Builder;

    .line 164
    .line 165
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v3, "content"

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    new-instance v2, Landroid/net/Uri$Builder;

    .line 183
    .line 184
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v2, "file"

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v13, "_id"

    .line 210
    .line 211
    const-string v14, "file_id"

    .line 212
    .line 213
    const-string v15, "font_ttc_index"

    .line 214
    .line 215
    const-string v16, "font_variation_settings"

    .line 216
    .line 217
    const-string v17, "font_weight"

    .line 218
    .line 219
    const-string v18, "font_italic"

    .line 220
    .line 221
    const-string v19, "result_code"

    .line 222
    .line 223
    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const-string v3, "query = ?"

    .line 228
    .line 229
    new-array v4, v9, [Ljava/lang/String;

    .line 230
    .line 231
    iget-object v0, v0, Lv/a;->c:Ljava/lang/String;

    .line 232
    .line 233
    aput-object v0, v4, v7

    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    move-object v0, v1

    .line 237
    move-object v1, v11

    .line 238
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    if-eqz v10, :cond_d

    .line 243
    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-lez v0, :cond_d

    .line 249
    .line 250
    const-string v0, "result_code"

    .line 251
    .line 252
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    new-instance v8, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v1, "_id"

    .line 262
    .line 263
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    const-string v2, "file_id"

    .line 268
    .line 269
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    const-string v3, "font_ttc_index"

    .line 274
    .line 275
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    const-string v4, "font_weight"

    .line 280
    .line 281
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    const-string v5, "font_italic"

    .line 286
    .line 287
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_d

    .line 296
    .line 297
    const/4 v6, -0x1

    .line 298
    if-eq v0, v6, :cond_8

    .line 299
    .line 300
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    move/from16 v19, v13

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_8
    const/16 v19, 0x0

    .line 308
    .line 309
    :goto_8
    if-eq v3, v6, :cond_9

    .line 310
    .line 311
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    move/from16 v16, v13

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_9
    const/16 v16, 0x0

    .line 319
    .line 320
    :goto_9
    if-ne v2, v6, :cond_a

    .line 321
    .line 322
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v13

    .line 326
    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    goto :goto_a

    .line 331
    :cond_a
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v13

    .line 335
    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 336
    .line 337
    .line 338
    move-result-object v13

    .line 339
    :goto_a
    move-object v15, v13

    .line 340
    if-eq v4, v6, :cond_b

    .line 341
    .line 342
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 343
    .line 344
    .line 345
    move-result v13

    .line 346
    move/from16 v17, v13

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_b
    const/16 v13, 0x190

    .line 350
    .line 351
    const/16 v17, 0x190

    .line 352
    .line 353
    :goto_b
    if-eq v5, v6, :cond_c

    .line 354
    .line 355
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-ne v6, v9, :cond_c

    .line 360
    .line 361
    const/16 v18, 0x1

    .line 362
    .line 363
    goto :goto_c

    .line 364
    :cond_c
    const/16 v18, 0x0

    .line 365
    .line 366
    :goto_c
    new-instance v6, Lv/e$c;

    .line 367
    .line 368
    move-object v14, v6

    .line 369
    invoke-direct/range {v14 .. v19}, Lv/e$c;-><init>(Landroid/net/Uri;IIZI)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_d
    if-eqz v10, :cond_e

    .line 377
    .line 378
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 379
    .line 380
    .line 381
    :cond_e
    new-array v0, v7, [Lv/e$c;

    .line 382
    .line 383
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, [Lv/e$c;

    .line 388
    .line 389
    new-instance v1, Lv/e$b;

    .line 390
    .line 391
    invoke-direct {v1, v7, v0}, Lv/e$b;-><init>(I[Lv/e$c;)V

    .line 392
    .line 393
    .line 394
    return-object v1

    .line 395
    :catchall_0
    move-exception v0

    .line 396
    if-eqz v10, :cond_f

    .line 397
    .line 398
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 399
    .line 400
    .line 401
    :cond_f
    throw v0

    .line 402
    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 403
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v2, "Found content provider "

    .line 407
    .line 408
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v2, ", but package was not "

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 431
    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v2, "No package found for authority: "

    .line 435
    .line 436
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v0
.end method

.method public static b(Landroid/content/Context;Lv/a;I)Lv/e$d;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lv/e;->a(Landroid/content/Context;Lv/a;)Lv/e$b;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v1, -0x3

    .line 7
    iget v2, p1, Lv/e$b;->a:I

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    sget-object v0, Lr/c;->a:Lr/j;

    .line 12
    .line 13
    iget-object p1, p1, Lv/e$b;->b:[Lv/e$c;

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1, p2}, Lr/j;->b(Landroid/content/Context;[Lv/e$c;I)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Lv/e$d;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_0
    invoke-direct {p1, p0, v1}, Lv/e$d;-><init>(Landroid/graphics/Typeface;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    if-ne v2, p0, :cond_2

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    :cond_2
    new-instance p0, Lv/e$d;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lv/e$d;-><init>(Landroid/graphics/Typeface;I)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catch_0
    new-instance p0, Lv/e$d;

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    invoke-direct {p0, v0, p1}, Lv/e$d;-><init>(Landroid/graphics/Typeface;I)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method
