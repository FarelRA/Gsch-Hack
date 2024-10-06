.class public final Ly/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ly/a;


# direct methods
.method public constructor <init>(Ly/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Ly/a$a;->a:Ly/a;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lz/e;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lz/e;-><init>(Landroid/view/accessibility/AccessibilityNodeProvider;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p1, v1, Lz/e;->a:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 25
    .line 26
    :cond_1
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    invoke-virtual {v0, p1, p2}, Ly/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lz/d;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lz/d;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x1c

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-lt v3, v5, :cond_0

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v7, 0x0

    .line 23
    :goto_0
    const/4 v8, 0x0

    .line 24
    const-class v9, Ljava/lang/Boolean;

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, La0/g;->n(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const v7, 0x7f0800e1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v7, v8

    .line 52
    :goto_1
    check-cast v7, Ljava/lang/Boolean;

    .line 53
    .line 54
    if-nez v7, :cond_3

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    :goto_2
    if-lt v3, v5, :cond_4

    .line 63
    .line 64
    invoke-static {v1, v7}, La0/g;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {v2, v6, v7}, Lz/d;->b(IZ)V

    .line 69
    .line 70
    .line 71
    :goto_3
    if-lt v3, v5, :cond_5

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/4 v7, 0x0

    .line 76
    :goto_4
    if-eqz v7, :cond_6

    .line 77
    .line 78
    invoke-static/range {p1 .. p1}, La0/g;->t(Landroid/view/View;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    goto :goto_5

    .line 87
    :cond_6
    const v7, 0x7f0800df

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_7

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_7
    move-object v7, v8

    .line 102
    :goto_5
    check-cast v7, Ljava/lang/Boolean;

    .line 103
    .line 104
    if-nez v7, :cond_8

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    goto :goto_6

    .line 108
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    :goto_6
    if-lt v3, v5, :cond_9

    .line 113
    .line 114
    invoke-static {v1, v7}, La0/g;->s(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_9
    const/4 v9, 0x2

    .line 119
    invoke-virtual {v2, v9, v7}, Lz/d;->b(IZ)V

    .line 120
    .line 121
    .line 122
    :goto_7
    if-lt v3, v5, :cond_a

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_a
    const/4 v6, 0x0

    .line 126
    :goto_8
    if-eqz v6, :cond_b

    .line 127
    .line 128
    invoke-static/range {p1 .. p1}, La0/g;->i(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    goto :goto_9

    .line 133
    :cond_b
    const v6, 0x7f0800e0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const-class v7, Ljava/lang/CharSequence;

    .line 141
    .line 142
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_c

    .line 147
    .line 148
    goto :goto_9

    .line 149
    :cond_c
    move-object v6, v8

    .line 150
    :goto_9
    check-cast v6, Ljava/lang/CharSequence;

    .line 151
    .line 152
    if-lt v3, v5, :cond_d

    .line 153
    .line 154
    invoke-static {v1, v6}, La0/g;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 163
    .line 164
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :goto_a
    move-object/from16 v5, p0

    .line 168
    .line 169
    iget-object v6, v5, Ly/a$a;->a:Ly/a;

    .line 170
    .line 171
    invoke-virtual {v6, v0, v2}, Ly/a;->b(Landroid/view/View;Lz/d;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    const/16 v7, 0x1a

    .line 179
    .line 180
    iget-object v9, v2, Lz/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 181
    .line 182
    if-ge v3, v7, :cond_15

    .line 183
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 189
    .line 190
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 198
    .line 199
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 207
    .line 208
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const v1, 0x7f0800de

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Landroid/util/SparseArray;

    .line 228
    .line 229
    if-eqz v12, :cond_10

    .line 230
    .line 231
    new-instance v13, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    :goto_b
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-ge v14, v15, :cond_f

    .line 242
    .line 243
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 248
    .line 249
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    if-nez v15, :cond_e

    .line 254
    .line 255
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_f
    const/4 v14, 0x0

    .line 266
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    if-ge v14, v15, :cond_10

    .line 271
    .line 272
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    check-cast v15, Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v15

    .line 282
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v14, v14, 0x1

    .line 286
    .line 287
    goto :goto_c

    .line 288
    :cond_10
    instance-of v12, v6, Landroid/text/Spanned;

    .line 289
    .line 290
    if-eqz v12, :cond_11

    .line 291
    .line 292
    move-object v8, v6

    .line 293
    check-cast v8, Landroid/text/Spanned;

    .line 294
    .line 295
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    const-class v13, Landroid/text/style/ClickableSpan;

    .line 300
    .line 301
    invoke-interface {v8, v4, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 306
    .line 307
    :cond_11
    if-eqz v8, :cond_15

    .line 308
    .line 309
    array-length v12, v8

    .line 310
    if-lez v12, :cond_15

    .line 311
    .line 312
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    const-string v13, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 317
    .line 318
    const v14, 0x7f080006

    .line 319
    .line 320
    .line 321
    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    check-cast v12, Landroid/util/SparseArray;

    .line 329
    .line 330
    if-nez v12, :cond_12

    .line 331
    .line 332
    new-instance v12, Landroid/util/SparseArray;

    .line 333
    .line 334
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_12
    const/4 v1, 0x0

    .line 341
    :goto_d
    array-length v13, v8

    .line 342
    if-ge v1, v13, :cond_15

    .line 343
    .line 344
    aget-object v13, v8, v1

    .line 345
    .line 346
    const/4 v14, 0x0

    .line 347
    :goto_e
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    if-ge v14, v15, :cond_14

    .line 352
    .line 353
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 358
    .line 359
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v15

    .line 363
    check-cast v15, Landroid/text/style/ClickableSpan;

    .line 364
    .line 365
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    if-eqz v15, :cond_13

    .line 370
    .line 371
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    goto :goto_f

    .line 376
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 377
    .line 378
    goto :goto_e

    .line 379
    :cond_14
    sget v13, Lz/d;->b:I

    .line 380
    .line 381
    add-int/lit8 v14, v13, 0x1

    .line 382
    .line 383
    sput v14, Lz/d;->b:I

    .line 384
    .line 385
    :goto_f
    new-instance v14, Ljava/lang/ref/WeakReference;

    .line 386
    .line 387
    aget-object v15, v8, v1

    .line 388
    .line 389
    invoke-direct {v14, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    aget-object v14, v8, v1

    .line 396
    .line 397
    move-object v15, v6

    .line 398
    check-cast v15, Landroid/text/Spanned;

    .line 399
    .line 400
    invoke-virtual {v2, v7}, Lz/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 405
    .line 406
    .line 407
    move-result v16

    .line 408
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v10}, Lz/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v11}, Lz/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v3}, Lz/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    add-int/lit8 v1, v1, 0x1

    .line 457
    .line 458
    move-object/from16 v5, p0

    .line 459
    .line 460
    const/4 v4, 0x0

    .line 461
    goto :goto_d

    .line 462
    :cond_15
    const v1, 0x7f0800dd

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Ljava/util/List;

    .line 470
    .line 471
    if-nez v0, :cond_16

    .line 472
    .line 473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    :cond_16
    const/4 v4, 0x0

    .line 478
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-ge v4, v1, :cond_17

    .line 483
    .line 484
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Lz/d$a;

    .line 489
    .line 490
    iget-object v1, v1, Lz/d$a;->a:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 493
    .line 494
    invoke-virtual {v9, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 495
    .line 496
    .line 497
    add-int/lit8 v4, v4, 0x1

    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_17
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    invoke-virtual {v0, p1, p2}, Ly/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    invoke-virtual {v0, p1, p2, p3}, Ly/a;->d(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$a;->a:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
