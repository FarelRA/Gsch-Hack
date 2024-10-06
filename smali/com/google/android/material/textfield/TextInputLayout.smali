.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$d;,
        Lcom/google/android/material/textfield/TextInputLayout$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/graphics/drawable/Drawable;

.field public final D:Landroid/graphics/Rect;

.field public final E:Landroid/graphics/RectF;

.field public F:Landroid/graphics/Typeface;

.field public G:Z

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Ljava/lang/CharSequence;

.field public J:Lcom/google/android/material/internal/CheckableImageButton;

.field public K:Z

.field public L:Landroid/graphics/drawable/ColorDrawable;

.field public M:Landroid/graphics/drawable/Drawable;

.field public N:Landroid/content/res/ColorStateList;

.field public O:Z

.field public P:Landroid/graphics/PorterDuff$Mode;

.field public Q:Z

.field public R:Landroid/content/res/ColorStateList;

.field public S:Landroid/content/res/ColorStateList;

.field public final T:I

.field public final U:I

.field public V:I

.field public final W:I

.field public a0:Z

.field public final b:Landroid/widget/FrameLayout;

.field public final b0:Lf1/b;

.field public c:Landroid/widget/EditText;

.field public c0:Z

.field public d:Ljava/lang/CharSequence;

.field public d0:Landroid/animation/ValueAnimator;

.field public final e:Lk1/b;

.field public e0:Z

.field public f:Z

.field public f0:Z

.field public g:I

.field public g0:Z

.field public h:Z

.field public i:Lg/x;

.field public final j:I

.field public final k:I

.field public l:Z

.field public m:Ljava/lang/CharSequence;

.field public n:Z

.field public o:Landroid/graphics/drawable/GradientDrawable;

.field public final p:I

.field public final q:I

.field public r:I

.field public final s:I

.field public final t:F

.field public final u:F

.field public final v:F

.field public final w:F

.field public x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 1
    const v0, 0x7f0301e8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lk1/b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lk1/b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance v1, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/RectF;

    .line 27
    .line 28
    new-instance v1, Lf1/b;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lf1/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lw0/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 60
    .line 61
    iput-object v4, v1, Lf1/b;->G:Landroid/animation/TimeInterpolator;

    .line 62
    .line 63
    invoke-virtual {v1}, Lf1/b;->h()V

    .line 64
    .line 65
    .line 66
    iput-object v4, v1, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 67
    .line 68
    invoke-virtual {v1}, Lf1/b;->h()V

    .line 69
    .line 70
    .line 71
    iget v4, v1, Lf1/b;->h:I

    .line 72
    .line 73
    const v5, 0x800033

    .line 74
    .line 75
    .line 76
    if-eq v4, v5, :cond_0

    .line 77
    .line 78
    iput v5, v1, Lf1/b;->h:I

    .line 79
    .line 80
    invoke-virtual {v1}, Lf1/b;->h()V

    .line 81
    .line 82
    .line 83
    :cond_0
    sget-object v1, Lm1/h;->f0:[I

    .line 84
    .line 85
    new-array v11, v3, [I

    .line 86
    .line 87
    const v4, 0x7f0e01ca

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2, v0, v4}, Lm1/h;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    .line 92
    .line 93
    const v10, 0x7f0e01ca

    .line 94
    .line 95
    .line 96
    const v9, 0x7f0301e8

    .line 97
    .line 98
    .line 99
    move-object v6, p1

    .line 100
    move-object v7, p2

    .line 101
    move-object v8, v1

    .line 102
    invoke-static/range {v6 .. v11}, Lm1/h;->m(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Lg/r0;

    .line 106
    .line 107
    invoke-virtual {p1, p2, v1, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {v5, p1, p2}, Lg/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 112
    .line 113
    .line 114
    const/16 v0, 0x15

    .line 115
    .line 116
    invoke-virtual {v5, v0, v2}, Lg/r0;->a(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 121
    .line 122
    invoke-virtual {v5, v2}, Lg/r0;->j(I)Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    const/16 v0, 0x14

    .line 130
    .line 131
    invoke-virtual {v5, v0, v2}, Lg/r0;->a(IZ)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Z

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const v1, 0x7f0600bb

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const v1, 0x7f0600be

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 162
    .line 163
    const/4 v0, 0x4

    .line 164
    invoke-virtual {v5, v0, v3}, Lg/r0;->c(II)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    .line 169
    .line 170
    const/16 v0, 0x8

    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:F

    .line 178
    .line 179
    const/4 v0, 0x7

    .line 180
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:F

    .line 185
    .line 186
    const/4 v0, 0x5

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:F

    .line 192
    .line 193
    const/4 v0, 0x6

    .line 194
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:F

    .line 199
    .line 200
    const/4 v0, 0x2

    .line 201
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 206
    .line 207
    const/16 v1, 0x9

    .line 208
    .line 209
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    const v1, 0x7f0600c0

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const v4, 0x7f0600c1

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 240
    .line 241
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 242
    .line 243
    const/4 p2, 0x3

    .line 244
    invoke-virtual {v5, p2, v3}, Lg/r0;->h(II)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v3}, Lg/r0;->k(I)Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-eqz p2, :cond_1

    .line 256
    .line 257
    invoke-virtual {v5, v3}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 262
    .line 263
    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 264
    .line 265
    :cond_1
    const p2, 0x7f05006b

    .line 266
    .line 267
    .line 268
    invoke-static {p1, p2}, Lp/a;->a(Landroid/content/Context;I)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 273
    .line 274
    const p2, 0x7f05006c

    .line 275
    .line 276
    .line 277
    invoke-static {p1, p2}, Lp/a;->a(Landroid/content/Context;I)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 282
    .line 283
    const p2, 0x7f05006e

    .line 284
    .line 285
    .line 286
    invoke-static {p1, p2}, Lp/a;->a(Landroid/content/Context;I)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 291
    .line 292
    const/16 p1, 0x16

    .line 293
    .line 294
    const/4 p2, -0x1

    .line 295
    invoke-virtual {v5, p1, p2}, Lg/r0;->i(II)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eq v1, p2, :cond_2

    .line 300
    .line 301
    invoke-virtual {v5, p1, v3}, Lg/r0;->i(II)I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 306
    .line 307
    .line 308
    :cond_2
    const/16 p1, 0x10

    .line 309
    .line 310
    invoke-virtual {v5, p1, v3}, Lg/r0;->i(II)I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    const/16 v1, 0xf

    .line 315
    .line 316
    invoke-virtual {v5, v1, v3}, Lg/r0;->a(IZ)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    const/16 v4, 0x13

    .line 321
    .line 322
    invoke-virtual {v5, v4, v3}, Lg/r0;->i(II)I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    const/16 v6, 0x12

    .line 327
    .line 328
    invoke-virtual {v5, v6, v3}, Lg/r0;->a(IZ)Z

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    const/16 v7, 0x11

    .line 333
    .line 334
    invoke-virtual {v5, v7}, Lg/r0;->j(I)Ljava/lang/CharSequence;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    const/16 v8, 0xb

    .line 339
    .line 340
    invoke-virtual {v5, v8, v3}, Lg/r0;->a(IZ)Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    const/16 v9, 0xc

    .line 345
    .line 346
    invoke-virtual {v5, v9, p2}, Lg/r0;->h(II)I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    invoke-virtual {p0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 351
    .line 352
    .line 353
    const/16 v9, 0xe

    .line 354
    .line 355
    invoke-virtual {v5, v9, v3}, Lg/r0;->i(II)I

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    iput v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 360
    .line 361
    const/16 v9, 0xd

    .line 362
    .line 363
    invoke-virtual {v5, v9, v3}, Lg/r0;->i(II)I

    .line 364
    .line 365
    .line 366
    move-result v9

    .line 367
    iput v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    .line 368
    .line 369
    const/16 v9, 0x19

    .line 370
    .line 371
    invoke-virtual {v5, v9, v3}, Lg/r0;->a(IZ)Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Z

    .line 376
    .line 377
    const/16 v3, 0x18

    .line 378
    .line 379
    invoke-virtual {v5, v3}, Lg/r0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 384
    .line 385
    const/16 v3, 0x17

    .line 386
    .line 387
    invoke-virtual {v5, v3}, Lg/r0;->j(I)Ljava/lang/CharSequence;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Ljava/lang/CharSequence;

    .line 392
    .line 393
    const/16 v3, 0x1a

    .line 394
    .line 395
    invoke-virtual {v5, v3}, Lg/r0;->k(I)Z

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    if-eqz v9, :cond_3

    .line 400
    .line 401
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Z

    .line 402
    .line 403
    invoke-virtual {v5, v3}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Landroid/content/res/ColorStateList;

    .line 408
    .line 409
    :cond_3
    const/16 v3, 0x1b

    .line 410
    .line 411
    invoke-virtual {v5, v3}, Lg/r0;->k(I)Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_4

    .line 416
    .line 417
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    .line 418
    .line 419
    invoke-virtual {v5, v3, p2}, Lg/r0;->h(II)I

    .line 420
    .line 421
    .line 422
    move-result p2

    .line 423
    const/4 v2, 0x0

    .line 424
    invoke-static {p2, v2}, Lf1/g;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/PorterDuff$Mode;

    .line 429
    .line 430
    :cond_4
    invoke-virtual {v5}, Lg/r0;->m()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 452
    .line 453
    .line 454
    sget-object p1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 455
    .line 456
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 457
    .line 458
    .line 459
    return-void
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 14

    .line 1
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x7

    .line 15
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:F

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x5

    .line 19
    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:F

    .line 20
    .line 21
    const/4 v8, 0x4

    .line 22
    const/4 v9, 0x3

    .line 23
    iget v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:F

    .line 24
    .line 25
    const/4 v11, 0x2

    .line 26
    iget v12, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:F

    .line 27
    .line 28
    const/16 v13, 0x8

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-array v0, v13, [F

    .line 33
    .line 34
    aput v10, v0, v1

    .line 35
    .line 36
    aput v10, v0, v2

    .line 37
    .line 38
    aput v12, v0, v11

    .line 39
    .line 40
    aput v12, v0, v9

    .line 41
    .line 42
    aput v4, v0, v8

    .line 43
    .line 44
    aput v4, v0, v6

    .line 45
    .line 46
    aput v7, v0, v5

    .line 47
    .line 48
    aput v7, v0, v3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    new-array v0, v13, [F

    .line 52
    .line 53
    aput v12, v0, v1

    .line 54
    .line 55
    aput v12, v0, v2

    .line 56
    .line 57
    aput v10, v0, v11

    .line 58
    .line 59
    aput v10, v0, v9

    .line 60
    .line 61
    aput v7, v0, v8

    .line 62
    .line 63
    aput v7, v0, v6

    .line 64
    .line 65
    aput v4, v0, v5

    .line 66
    .line 67
    aput v4, v0, v3

    .line 68
    .line 69
    return-object v0
.end method

.method public static i(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    instance-of v0, p1, Lk1/c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "TextInputLayout"

    .line 10
    .line 11
    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$d;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$d;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, v2, Lf1/b;->t:Landroid/graphics/Typeface;

    .line 57
    .line 58
    iput-object p1, v2, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 59
    .line 60
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget v3, v2, Lf1/b;->i:F

    .line 70
    .line 71
    cmpl-float v3, v3, p1

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iput p1, v2, Lf1/b;->i:F

    .line 76
    .line 77
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    and-int/lit8 v3, p1, -0x71

    .line 87
    .line 88
    or-int/lit8 v3, v3, 0x30

    .line 89
    .line 90
    iget v4, v2, Lf1/b;->h:I

    .line 91
    .line 92
    if-eq v4, v3, :cond_4

    .line 93
    .line 94
    iput v3, v2, Lf1/b;->h:I

    .line 95
    .line 96
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget v3, v2, Lf1/b;->g:I

    .line 100
    .line 101
    if-eq v3, p1, :cond_5

    .line 102
    .line 103
    iput p1, v2, Lf1/b;->g:I

    .line 104
    .line 105
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 109
    .line 110
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$a;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    .line 135
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    .line 160
    .line 161
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 162
    .line 163
    if-eqz p1, :cond_9

    .line 164
    .line 165
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(I)V

    .line 176
    .line 177
    .line 178
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 179
    .line 180
    invoke-virtual {p1}, Lk1/b;->b()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    const-string v0, "We already have an EditText, can only have one"

    .line 193
    .line 194
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :cond_0
    iput-object p1, v0, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v1, v0, Lf1/b;->y:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Lf1/b;->y:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lf1/b;->h()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 2
    .line 3
    iget v1, v0, Lf1/b;->c:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    sget-object v2, Lw0/a;->b:Lf0/b;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    const-wide/16 v2, 0xa7

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$c;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    new-array v2, v2, [F

    .line 47
    .line 48
    iget v0, v0, Lf1/b;->c:F

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    aput v0, v2, v3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    aput p1, v2, v0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 40
    .line 41
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 46
    .line 47
    if-ne v3, v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 64
    .line 65
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 76
    .line 77
    if-ne v1, v2, :cond_6

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 89
    .line 90
    const/4 v1, -0x1

    .line 91
    if-le v0, v1, :cond_7

    .line 92
    .line 93
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 98
    .line 99
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 100
    .line 101
    .line 102
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getCornerRadiiAsArray()[F

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 112
    .line 113
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Ls/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lg/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final d()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, v2, Lf1/b;->E:Landroid/text/TextPaint;

    .line 21
    .line 22
    iget v1, v2, Lf1/b;->j:F

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v2, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    neg-float v0, v0

    .line 37
    const/high16 v1, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, v2, Lf1/b;->E:Landroid/text/TextPaint;

    .line 42
    .line 43
    iget v1, v2, Lf1/b;->j:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v2, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    neg-float v0, v0

    .line 58
    :goto_0
    float-to-int v0, v0

    .line 59
    return v0
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, v0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-boolean v2, v0, Lf1/b;->b:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget v7, v0, Lf1/b;->q:F

    .line 33
    .line 34
    iget v8, v0, Lf1/b;->r:F

    .line 35
    .line 36
    iget-object v9, v0, Lf1/b;->D:Landroid/text/TextPaint;

    .line 37
    .line 38
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    .line 42
    .line 43
    .line 44
    iget v2, v0, Lf1/b;->z:F

    .line 45
    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpl-float v3, v2, v3

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v2, v2, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v4, v0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    move-object v3, p1

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    iput-object v1, v2, Lf1/b;->B:[I

    .line 51
    .line 52
    iget-object v1, v2, Lf1/b;->l:Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    :cond_2
    iget-object v1, v2, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    :cond_3
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_1
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 v0, 0x0

    .line 82
    :goto_2
    or-int/2addr v0, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_6
    const/4 v0, 0x0

    .line 85
    :goto_3
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 88
    .line 89
    .line 90
    :cond_7
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Z

    .line 91
    .line 92
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lk1/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 15
    .line 16
    instance-of v0, v0, Lk1/a;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lk1/a;

    .line 21
    .line 22
    invoke-direct {v0}, Lk1/a;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 27
    .line 28
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final g()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 11
    .line 12
    iget-object v2, v1, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lf1/b;->b(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    iget-object v5, v1, Lf1/b;->E:Landroid/text/TextPaint;

    .line 21
    .line 22
    iget-object v6, v1, Lf1/b;->e:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    int-to-float v7, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    int-to-float v7, v7

    .line 33
    iget-object v8, v1, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 34
    .line 35
    if-nez v8, :cond_2

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v8, v1, Lf1/b;->j:F

    .line 40
    .line 41
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    .line 43
    .line 44
    iget-object v8, v1, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 45
    .line 46
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    .line 48
    .line 49
    iget-object v8, v1, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 50
    .line 51
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-virtual {v5, v8, v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    :goto_0
    sub-float/2addr v7, v8

    .line 60
    :goto_1
    iput v7, v0, Landroid/graphics/RectF;->left:F

    .line 61
    .line 62
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    int-to-float v8, v8

    .line 65
    iput v8, v0, Landroid/graphics/RectF;->top:F

    .line 66
    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v2, v1, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget v2, v1, Lf1/b;->j:F

    .line 75
    .line 76
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    .line 78
    .line 79
    iget-object v2, v1, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v5, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    :goto_2
    add-float/2addr v3, v7

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    int-to-float v3, v2

    .line 99
    :goto_3
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 100
    .line 101
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    int-to-float v2, v2

    .line 104
    iget v3, v1, Lf1/b;->j:F

    .line 105
    .line 106
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v1, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 110
    .line 111
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    neg-float v1, v1

    .line 119
    add-float/2addr v1, v2

    .line 120
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 121
    .line 122
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 123
    .line 124
    int-to-float v3, v3

    .line 125
    sub-float/2addr v2, v3

    .line 126
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 127
    .line 128
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 129
    .line 130
    sub-float/2addr v2, v3

    .line 131
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 132
    .line 133
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 134
    .line 135
    add-float/2addr v2, v3

    .line 136
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 137
    .line 138
    add-float/2addr v1, v3

    .line 139
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 140
    .line 141
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 142
    .line 143
    check-cast v1, Lk1/a;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 149
    .line 150
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 151
    .line 152
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 153
    .line 154
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    invoke-virtual {v1, v2, v3, v4, v0}, Lk1/a;->a(FFFF)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:F

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:F

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:F

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:F

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    return v0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lk1/b;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lk1/b;->k:Ljava/lang/CharSequence;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk1/b;->m:Lg/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public final getErrorTextCurrentColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk1/b;->m:Lg/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lk1/b;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lk1/b;->o:Ljava/lang/CharSequence;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk1/b;->q:Lg/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/b;->E:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget v2, v0, Lf1/b;->j:F

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    neg-float v0, v0

    .line 20
    return v0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->e()I

    move-result v0

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final j(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2}, La0/i;->e(Landroid/widget/TextView;I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    const p2, 0x7f0e00e9

    invoke-static {p1, p2}, La0/i;->e(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f050034

    invoke-static {p2, v0}, Lp/a;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 28
    .line 29
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 44
    .line 45
    if-le p1, v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x0

    .line 50
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 51
    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    .line 54
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 62
    .line 63
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/widget/TextView;I)V

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v5, 0x2

    .line 82
    new-array v6, v5, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    aput-object v7, v6, v3

    .line 89
    .line 90
    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 91
    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    aput-object v7, v6, v2

    .line 97
    .line 98
    const v7, 0x7f0d002f

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    aput-object p1, v5, v3

    .line 121
    .line 122
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 123
    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    aput-object p1, v5, v2

    .line 129
    .line 130
    const p1, 0x7f0d002e

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 145
    .line 146
    if-eq v0, p1, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0, v3, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 155
    .line 156
    .line 157
    :cond_5
    return-void
.end method

.method public final l()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x15

    .line 16
    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/16 v2, 0x16

    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Z

    .line 34
    .line 35
    if-nez v2, :cond_7

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    check-cast v1, Landroid/graphics/drawable/DrawableContainer;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-boolean v5, Lf1/d;->b:Z

    .line 57
    .line 58
    const-string v6, "DrawableUtils"

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    :try_start_0
    const-class v5, Landroid/graphics/drawable/DrawableContainer;

    .line 64
    .line 65
    const-string v8, "setConstantState"

    .line 66
    .line 67
    new-array v9, v4, [Ljava/lang/Class;

    .line 68
    .line 69
    const-class v10, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 70
    .line 71
    aput-object v10, v9, v7

    .line 72
    .line 73
    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sput-object v5, Lf1/d;->a:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string v5, "Could not fetch setConstantState(). Oh well."

    .line 84
    .line 85
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_0
    sput-boolean v4, Lf1/d;->b:Z

    .line 89
    .line 90
    :cond_4
    sget-object v5, Lf1/d;->a:Ljava/lang/reflect/Method;

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    :try_start_1
    new-array v8, v4, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v3, v8, v7

    .line 97
    .line 98
    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    const-string v1, "Could not invoke setConstantState(). Oh well."

    .line 104
    .line 105
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    iput-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Z

    .line 109
    .line 110
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Z

    .line 111
    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 115
    .line 116
    sget-object v3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Z

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_2
    invoke-static {v0}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 137
    .line 138
    invoke-virtual {v1}, Lk1/b;->e()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_a

    .line 143
    .line 144
    iget-object v1, v1, Lk1/b;->m:Lg/x;

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_3

    .line 153
    :cond_9
    const/4 v1, -0x1

    .line 154
    goto :goto_3

    .line 155
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 156
    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    :goto_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 168
    .line 169
    invoke-static {v1, v2}, Lg/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_b
    invoke-static {v0}, Ls/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 183
    .line 184
    .line 185
    :goto_4
    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()I

    move-result v2

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v2, v3, :cond_0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final n(ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 38
    .line 39
    invoke-virtual {v5}, Lk1/b;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v8, v7}, Lf1/b;->i(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    iget-object v9, v8, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    if-eq v9, v7, :cond_2

    .line 57
    .line 58
    iput-object v7, v8, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    invoke-virtual {v8}, Lf1/b;->h()V

    .line 61
    .line 62
    .line 63
    :cond_2
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 66
    .line 67
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v8, v5}, Lf1/b;->i(Landroid/content/res/ColorStateList;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v5, v8, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    if-eq v5, v0, :cond_7

    .line 81
    .line 82
    iput-object v0, v8, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 83
    .line 84
    invoke-virtual {v8}, Lf1/b;->h()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    if-eqz v6, :cond_5

    .line 89
    .line 90
    iget-object v0, v5, Lk1/b;->m:Lg/x;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 v0, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    if-eqz v4, :cond_7

    .line 115
    .line 116
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    :goto_2
    invoke-virtual {v8, v0}, Lf1/b;->i(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_3
    if-nez v1, :cond_d

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    if-nez v4, :cond_d

    .line 132
    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_8
    if-nez p2, :cond_9

    .line 137
    .line 138
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 139
    .line 140
    if-nez p2, :cond_11

    .line 141
    .line 142
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    if-eqz p2, :cond_a

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_a

    .line 151
    .line 152
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 155
    .line 156
    .line 157
    :cond_a
    const/4 p2, 0x0

    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Z

    .line 161
    .line 162
    if-eqz p1, :cond_b

    .line 163
    .line 164
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_b
    invoke-virtual {v8, p2}, Lf1/b;->j(F)V

    .line 169
    .line 170
    .line 171
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_c

    .line 176
    .line 177
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 178
    .line 179
    check-cast p1, Lk1/a;

    .line 180
    .line 181
    iget-object p1, p1, Lk1/a;->b:Landroid/graphics/RectF;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    xor-int/2addr p1, v2

    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 197
    .line 198
    check-cast p1, Lk1/a;

    .line 199
    .line 200
    invoke-virtual {p1, p2, p2, p2, p2}, Lk1/a;->a(FFFF)V

    .line 201
    .line 202
    .line 203
    :cond_c
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_d
    :goto_5
    if-nez p2, :cond_e

    .line 207
    .line 208
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 209
    .line 210
    if-eqz p2, :cond_11

    .line 211
    .line 212
    :cond_e
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 213
    .line 214
    if-eqz p2, :cond_f

    .line 215
    .line 216
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-eqz p2, :cond_f

    .line 221
    .line 222
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/animation/ValueAnimator;

    .line 223
    .line 224
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    .line 226
    .line 227
    :cond_f
    const/high16 p2, 0x3f800000    # 1.0f

    .line 228
    .line 229
    if-eqz p1, :cond_10

    .line 230
    .line 231
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Z

    .line 232
    .line 233
    if-eqz p1, :cond_10

    .line 234
    .line 235
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_10
    invoke-virtual {v8, p2}, Lf1/b;->j(F)V

    .line 240
    .line 241
    .line 242
    :goto_6
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_11

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    .line 251
    .line 252
    .line 253
    :cond_11
    :goto_7
    return-void
.end method

.method public final o()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v0, 0x0

    .line 34
    :goto_1
    const/4 v1, 0x3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-eqz v0, :cond_8

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    const v6, 0x7f0b002e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Lg/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 81
    .line 82
    new-instance v5, Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 83
    .line 84
    invoke-direct {v5, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    sget-object v5, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-gtz v0, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 119
    .line 120
    iget-boolean v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 126
    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 130
    .line 131
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 135
    .line 136
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 137
    .line 138
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v0, v2, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    aget-object v4, v0, v4

    .line 154
    .line 155
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 156
    .line 157
    if-eq v4, v5, :cond_7

    .line 158
    .line 159
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 162
    .line 163
    aget-object v2, v0, v2

    .line 164
    .line 165
    aget-object v3, v0, v3

    .line 166
    .line 167
    aget-object v0, v0, v1

    .line 168
    .line 169
    invoke-virtual {v4, v2, v3, v5, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_9

    .line 211
    .line 212
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    .line 213
    .line 214
    const/16 v5, 0x8

    .line 215
    .line 216
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 220
    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    aget-object v4, v0, v4

    .line 230
    .line 231
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 232
    .line 233
    if-ne v4, v5, :cond_a

    .line 234
    .line 235
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 236
    .line 237
    aget-object v2, v0, v2

    .line 238
    .line 239
    aget-object v3, v0, v3

    .line 240
    .line 241
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    .line 242
    .line 243
    aget-object v0, v0, v1

    .line 244
    .line 245
    invoke-virtual {v4, v2, v3, v5, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/graphics/drawable/ColorDrawable;

    .line 250
    .line 251
    :cond_a
    :goto_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    .line 12
    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 16
    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lf1/c;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    add-int/2addr p4, p1

    .line 33
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr p1, v0

    .line 42
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eq v0, v1, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq v0, v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sub-int/2addr v0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    .line 82
    .line 83
    add-int/2addr v0, v2

    .line 84
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    add-int/2addr v3, v2

    .line 93
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    sub-int/2addr p2, v2

    .line 102
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 103
    .line 104
    iget-object v4, v2, Lf1/b;->d:Landroid/graphics/Rect;

    .line 105
    .line 106
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    if-ne v5, p4, :cond_3

    .line 110
    .line 111
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    if-ne v5, v3, :cond_3

    .line 114
    .line 115
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    if-ne v5, p1, :cond_3

    .line 118
    .line 119
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    if-ne v5, p2, :cond_3

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/4 v5, 0x0

    .line 126
    :goto_1
    if-nez v5, :cond_4

    .line 127
    .line 128
    invoke-virtual {v4, p4, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    .line 130
    .line 131
    iput-boolean v1, v2, Lf1/b;->C:Z

    .line 132
    .line 133
    invoke-virtual {v2}, Lf1/b;->g()V

    .line 134
    .line 135
    .line 136
    :cond_4
    sub-int/2addr p5, p3

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    sub-int/2addr p5, p2

    .line 142
    iget-object p2, v2, Lf1/b;->e:Landroid/graphics/Rect;

    .line 143
    .line 144
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 145
    .line 146
    if-ne p3, p4, :cond_5

    .line 147
    .line 148
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    if-ne p3, v0, :cond_5

    .line 151
    .line 152
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 153
    .line 154
    if-ne p3, p1, :cond_5

    .line 155
    .line 156
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 157
    .line 158
    if-ne p3, p5, :cond_5

    .line 159
    .line 160
    const/4 v6, 0x1

    .line 161
    :cond_5
    if-nez v6, :cond_6

    .line 162
    .line 163
    invoke-virtual {p2, p4, v0, p1, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    .line 165
    .line 166
    iput-boolean v1, v2, Lf1/b;->C:Z

    .line 167
    .line 168
    invoke-virtual {v2}, Lf1/b;->g()V

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {v2}, Lf1/b;->h()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_7

    .line 179
    .line 180
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Z

    .line 181
    .line 182
    if-nez p1, :cond_7

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 10
    .line 11
    iget-object v0, p1, Lc0/a;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$e;->c:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$e;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$e;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    invoke-virtual {v0}, Lk1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$e;->c:Ljava/lang/CharSequence;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Z

    return-object v1
.end method

.method public final p()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v4, v5, :cond_3

    .line 38
    .line 39
    if-eq v4, v2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 69
    .line 70
    add-int/2addr v4, v5

    .line 71
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 72
    .line 73
    if-ne v5, v2, :cond_4

    .line 74
    .line 75
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 76
    .line 77
    div-int/lit8 v6, v5, 0x2

    .line 78
    .line 79
    add-int/2addr v0, v6

    .line 80
    div-int/lit8 v6, v5, 0x2

    .line 81
    .line 82
    sub-int/2addr v3, v6

    .line 83
    div-int/lit8 v6, v5, 0x2

    .line 84
    .line 85
    sub-int/2addr v1, v6

    .line 86
    div-int/2addr v5, v2

    .line 87
    add-int/2addr v4, v5

    .line 88
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 89
    .line 90
    invoke-virtual {v5, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    invoke-static {v0}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 124
    .line 125
    invoke-static {p0, v3, v1}, Lf1/c;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 133
    .line 134
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    if-eq v3, v4, :cond_8

    .line 137
    .line 138
    new-instance v3, Landroid/graphics/Rect;

    .line 139
    .line 140
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 144
    .line 145
    .line 146
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 149
    .line 150
    sub-int/2addr v4, v5

    .line 151
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 152
    .line 153
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    mul-int/lit8 v3, v3, 0x2

    .line 156
    .line 157
    add-int/2addr v3, v5

    .line 158
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_2
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_b

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 52
    .line 53
    invoke-virtual {v2}, Lk1/b;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    iget-object v2, v2, Lk1/b;->m:Lg/x;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const/4 v2, -0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    if-eqz v0, :cond_7

    .line 84
    .line 85
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    if-eqz v1, :cond_8

    .line 89
    .line 90
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_8
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 94
    .line 95
    :goto_1
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    .line 96
    .line 97
    if-nez v1, :cond_9

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_a
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 111
    .line 112
    :goto_2
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 115
    .line 116
    .line 117
    :cond_b
    :goto_3
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lp/a;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    new-instance v3, Lg/x;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4, v0}, Lg/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 21
    .line 22
    const v0, 0x7f0800ee

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/Typeface;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 44
    .line 45
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/widget/TextView;I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Lk1/b;->a(Landroid/widget/TextView;I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 74
    .line 75
    invoke-virtual {v2, v3, v1}, Lk1/b;->h(Landroid/widget/TextView;I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 79
    .line 80
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(I)V

    :cond_2
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lk1/b;->l:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lk1/b;->c()V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lk1/b;->k:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lk1/b;->i:I

    .line 35
    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    iput v2, v0, Lk1/b;->j:I

    .line 39
    .line 40
    :cond_2
    iget v2, v0, Lk1/b;->j:I

    .line 41
    .line 42
    iget-object v3, v0, Lk1/b;->m:Lg/x;

    .line 43
    .line 44
    invoke-virtual {v0, v3, p1}, Lk1/b;->i(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, v1, v2, p1}, Lk1/b;->j(IIZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lk1/b;->g()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lk1/b;->l:Z

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lk1/b;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    new-instance v4, Lg/x;

    .line 18
    .line 19
    iget-object v5, v0, Lk1/b;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v4, v5, v2}, Lg/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    .line 23
    .line 24
    iput-object v4, v0, Lk1/b;->m:Lg/x;

    .line 25
    .line 26
    const v2, 0x7f0800ef

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lk1/b;->s:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v4, v0, Lk1/b;->m:Lg/x;

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v2, v0, Lk1/b;->n:I

    .line 42
    .line 43
    iput v2, v0, Lk1/b;->n:I

    .line 44
    .line 45
    iget-object v4, v0, Lk1/b;->m:Lg/x;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/widget/TextView;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 59
    .line 60
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v3}, Lk1/b;->a(Landroid/widget/TextView;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v0}, Lk1/b;->g()V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Lk1/b;->m:Lg/x;

    .line 76
    .line 77
    invoke-virtual {v0, v4, v3}, Lk1/b;->h(Landroid/widget/TextView;I)V

    .line 78
    .line 79
    .line 80
    iput-object v2, v0, Lk1/b;->m:Lg/x;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 86
    .line 87
    .line 88
    :goto_0
    iput-boolean p1, v0, Lk1/b;->l:Z

    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iput p1, v0, Lk1/b;->n:I

    .line 4
    .line 5
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/widget/TextView;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk1/b;->m:Lg/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p1, v1, Lk1/b;->p:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, v1, Lk1/b;->p:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v1}, Lk1/b;->c()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v1, Lk1/b;->o:Ljava/lang/CharSequence;

    .line 30
    .line 31
    iget-object v0, v1, Lk1/b;->q:Lg/x;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget v0, v1, Lk1/b;->i:I

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    iput v2, v1, Lk1/b;->j:I

    .line 42
    .line 43
    :cond_2
    iget v2, v1, Lk1/b;->j:I

    .line 44
    .line 45
    iget-object v3, v1, Lk1/b;->q:Lg/x;

    .line 46
    .line 47
    invoke-virtual {v1, v3, p1}, Lk1/b;->i(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v1, v0, v2, p1}, Lk1/b;->j(IIZ)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lk1/b;->q:Lg/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lk1/b;->p:Z

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lk1/b;->c()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    new-instance v3, Lg/x;

    .line 16
    .line 17
    iget-object v4, v0, Lk1/b;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v3, v4, v2}, Lg/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lk1/b;->q:Lg/x;

    .line 23
    .line 24
    const v2, 0x7f0800f0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lk1/b;->s:Landroid/graphics/Typeface;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Lk1/b;->q:Lg/x;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v2, v0, Lk1/b;->q:Lg/x;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lk1/b;->q:Lg/x;

    .line 46
    .line 47
    sget-object v3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 50
    .line 51
    .line 52
    iget v2, v0, Lk1/b;->r:I

    .line 53
    .line 54
    iput v2, v0, Lk1/b;->r:I

    .line 55
    .line 56
    iget-object v3, v0, Lk1/b;->q:Lg/x;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-static {v3, v2}, La0/i;->e(Landroid/widget/TextView;I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v2, v0, Lk1/b;->q:Lg/x;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lk1/b;->a(Landroid/widget/TextView;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v0}, Lk1/b;->c()V

    .line 70
    .line 71
    .line 72
    iget v3, v0, Lk1/b;->i:I

    .line 73
    .line 74
    const/4 v4, 0x2

    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    iput v4, v0, Lk1/b;->j:I

    .line 79
    .line 80
    :cond_4
    iget v4, v0, Lk1/b;->j:I

    .line 81
    .line 82
    iget-object v5, v0, Lk1/b;->q:Lg/x;

    .line 83
    .line 84
    invoke-virtual {v0, v5, v2}, Lk1/b;->i(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v0, v3, v4, v5}, Lk1/b;->j(IIZ)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lk1/b;->q:Lg/x;

    .line 92
    .line 93
    invoke-virtual {v0, v3, v1}, Lk1/b;->h(Landroid/widget/TextView;I)V

    .line 94
    .line 95
    .line 96
    iput-object v2, v0, Lk1/b;->q:Lg/x;

    .line 97
    .line 98
    iget-object v1, v0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 104
    .line 105
    .line 106
    :goto_0
    iput-boolean p1, v0, Lk1/b;->p:Z

    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 2
    .line 3
    iput p1, v0, Lk1/b;->r:I

    .line 4
    .line 5
    iget-object v0, v0, Lk1/b;->q:Lg/x;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0, p1}, La0/i;->e(Landroid/widget/TextView;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/b;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lm1/h;->C:[I

    .line 10
    .line 11
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x3

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-static {v2, v5}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    iput-object v2, v0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget v2, v0, Lf1/b;->j:F

    .line 55
    .line 56
    float-to-int v2, v2

    .line 57
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-float v2, v2

    .line 62
    iput v2, v0, Lf1/b;->j:F

    .line 63
    .line 64
    :cond_2
    const/4 v2, 0x6

    .line 65
    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v0, Lf1/b;->K:I

    .line 70
    .line 71
    const/4 v2, 0x7

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput v2, v0, Lf1/b;->I:F

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, v0, Lf1/b;->J:F

    .line 86
    .line 87
    const/16 v2, 0x9

    .line 88
    .line 89
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iput v2, v0, Lf1/b;->H:F

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/4 v2, 0x1

    .line 103
    new-array v2, v2, [I

    .line 104
    .line 105
    const v3, 0x10103ac

    .line 106
    .line 107
    .line 108
    aput v3, v2, v6

    .line 109
    .line 110
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    :goto_1
    iput-object v1, v0, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 133
    .line 134
    invoke-virtual {v0}, Lf1/b;->h()V

    .line 135
    .line 136
    .line 137
    iget-object p1, v0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/content/res/ColorStateList;

    .line 140
    .line 141
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    .line 142
    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-virtual {p0, v6, v6}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 149
    .line 150
    .line 151
    :cond_4
    return-void

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    .line 155
    .line 156
    throw v0
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ly/m;->f(Landroid/view/View;Ly/a;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/Typeface;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Lf1/b;

    .line 8
    .line 9
    iput-object p1, v0, Lf1/b;->t:Landroid/graphics/Typeface;

    .line 10
    .line 11
    iput-object p1, v0, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {v0}, Lf1/b;->h()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lk1/b;

    .line 17
    .line 18
    iget-object v1, v0, Lk1/b;->s:Landroid/graphics/Typeface;

    .line 19
    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    iput-object p1, v0, Lk1/b;->s:Landroid/graphics/Typeface;

    .line 23
    .line 24
    iget-object v1, v0, Lk1/b;->m:Lg/x;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Lk1/b;->q:Lg/x;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lg/x;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
