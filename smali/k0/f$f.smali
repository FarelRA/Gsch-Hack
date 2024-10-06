.class public final Lk0/f$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Lk0/f$c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lk0/f$f;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lk0/f$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lk0/f$f;->h:F

    iput v0, p0, Lk0/f$f;->i:F

    iput v0, p0, Lk0/f$f;->j:F

    iput v0, p0, Lk0/f$f;->k:F

    const/16 v0, 0xff

    iput v0, p0, Lk0/f$f;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/f$f;->m:Ljava/lang/String;

    iput-object v0, p0, Lk0/f$f;->n:Ljava/lang/Boolean;

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Lk0/f$f;->o:Lk/b;

    new-instance v0, Lk0/f$c;

    invoke-direct {v0}, Lk0/f$c;-><init>()V

    iput-object v0, p0, Lk0/f$f;->g:Lk0/f$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lk0/f$f;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lk0/f$f;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Lk0/f$f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lk0/f$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lk0/f$f;->h:F

    iput v0, p0, Lk0/f$f;->i:F

    iput v0, p0, Lk0/f$f;->j:F

    iput v0, p0, Lk0/f$f;->k:F

    const/16 v0, 0xff

    iput v0, p0, Lk0/f$f;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/f$f;->m:Ljava/lang/String;

    iput-object v0, p0, Lk0/f$f;->n:Ljava/lang/Boolean;

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Lk0/f$f;->o:Lk/b;

    new-instance v1, Lk0/f$c;

    iget-object v2, p1, Lk0/f$f;->g:Lk0/f$c;

    invoke-direct {v1, v2, v0}, Lk0/f$c;-><init>(Lk0/f$c;Lk/b;)V

    iput-object v1, p0, Lk0/f$f;->g:Lk0/f$c;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Lk0/f$f;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lk0/f$f;->a:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Lk0/f$f;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lk0/f$f;->b:Landroid/graphics/Path;

    iget v1, p1, Lk0/f$f;->h:F

    iput v1, p0, Lk0/f$f;->h:F

    iget v1, p1, Lk0/f$f;->i:F

    iput v1, p0, Lk0/f$f;->i:F

    iget v1, p1, Lk0/f$f;->j:F

    iput v1, p0, Lk0/f$f;->j:F

    iget v1, p1, Lk0/f$f;->k:F

    iput v1, p0, Lk0/f$f;->k:F

    iget v1, p1, Lk0/f$f;->l:I

    iput v1, p0, Lk0/f$f;->l:I

    iget-object v1, p1, Lk0/f$f;->m:Ljava/lang/String;

    iput-object v1, p0, Lk0/f$f;->m:Ljava/lang/String;

    iget-object v1, p1, Lk0/f$f;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Lk0/f$f;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Lk0/f$f;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Lk0/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    iget-object v0, v7, Lk0/f$c;->a:Landroid/graphics/Matrix;

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v7, Lk0/f$c;->a:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v0, v7, Lk0/f$c;->j:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    :goto_0
    iget-object v0, v7, Lk0/f$c;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v11, v1, :cond_1b

    .line 33
    .line 34
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lk0/f$d;

    .line 39
    .line 40
    instance-of v1, v0, Lk0/f$c;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Lk0/f$c;

    .line 46
    .line 47
    move-object/from16 v0, p0

    .line 48
    .line 49
    move-object v2, v9

    .line 50
    move-object/from16 v3, p3

    .line 51
    .line 52
    move/from16 v4, p4

    .line 53
    .line 54
    move/from16 v5, p5

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Lk0/f$f;->a(Lk0/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_f

    .line 60
    .line 61
    :cond_0
    instance-of v1, v0, Lk0/f$e;

    .line 62
    .line 63
    if-eqz v1, :cond_19

    .line 64
    .line 65
    check-cast v0, Lk0/f$e;

    .line 66
    .line 67
    move/from16 v1, p4

    .line 68
    .line 69
    int-to-float v2, v1

    .line 70
    iget v3, v6, Lk0/f$f;->j:F

    .line 71
    .line 72
    div-float/2addr v2, v3

    .line 73
    move/from16 v3, p5

    .line 74
    .line 75
    int-to-float v4, v3

    .line 76
    iget v5, v6, Lk0/f$f;->k:F

    .line 77
    .line 78
    div-float/2addr v4, v5

    .line 79
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v12, v6, Lk0/f$f;->c:Landroid/graphics/Matrix;

    .line 84
    .line 85
    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x4

    .line 92
    new-array v2, v2, [F

    .line 93
    .line 94
    fill-array-data v2, :array_0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 98
    .line 99
    .line 100
    aget v4, v2, v10

    .line 101
    .line 102
    float-to-double v13, v4

    .line 103
    const/4 v4, 0x1

    .line 104
    aget v15, v2, v4

    .line 105
    .line 106
    move/from16 p2, v5

    .line 107
    .line 108
    float-to-double v4, v15

    .line 109
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    double-to-float v4, v4

    .line 114
    const/4 v5, 0x2

    .line 115
    aget v13, v2, v5

    .line 116
    .line 117
    float-to-double v13, v13

    .line 118
    const/4 v15, 0x3

    .line 119
    aget v5, v2, v15

    .line 120
    .line 121
    move/from16 v17, v11

    .line 122
    .line 123
    float-to-double v10, v5

    .line 124
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    double-to-float v5, v10

    .line 129
    const/4 v10, 0x0

    .line 130
    aget v11, v2, v10

    .line 131
    .line 132
    const/4 v10, 0x1

    .line 133
    aget v13, v2, v10

    .line 134
    .line 135
    const/4 v10, 0x2

    .line 136
    aget v10, v2, v10

    .line 137
    .line 138
    aget v2, v2, v15

    .line 139
    .line 140
    mul-float v11, v11, v2

    .line 141
    .line 142
    mul-float v13, v13, v10

    .line 143
    .line 144
    sub-float/2addr v11, v13

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/4 v4, 0x0

    .line 150
    cmpl-float v5, v2, v4

    .line 151
    .line 152
    if-lez v5, :cond_1

    .line 153
    .line 154
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    div-float/2addr v5, v2

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    const/4 v5, 0x0

    .line 161
    :goto_1
    cmpl-float v2, v5, v4

    .line 162
    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    goto/16 :goto_10

    .line 166
    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v2, v6, Lk0/f$f;->a:Landroid/graphics/Path;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    .line 174
    .line 175
    iget-object v10, v0, Lk0/f$e;->a:[Lr/b$a;

    .line 176
    .line 177
    if-eqz v10, :cond_3

    .line 178
    .line 179
    invoke-static {v10, v2}, Lr/b$a;->b([Lr/b$a;Landroid/graphics/Path;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    iget-object v10, v6, Lk0/f$f;->b:Landroid/graphics/Path;

    .line 183
    .line 184
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 185
    .line 186
    .line 187
    instance-of v11, v0, Lk0/f$a;

    .line 188
    .line 189
    if-eqz v11, :cond_4

    .line 190
    .line 191
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 195
    .line 196
    .line 197
    goto/16 :goto_10

    .line 198
    .line 199
    :cond_4
    check-cast v0, Lk0/f$b;

    .line 200
    .line 201
    iget v11, v0, Lk0/f$b;->j:F

    .line 202
    .line 203
    const/high16 v13, 0x3f800000    # 1.0f

    .line 204
    .line 205
    cmpl-float v14, v11, v4

    .line 206
    .line 207
    if-nez v14, :cond_5

    .line 208
    .line 209
    iget v14, v0, Lk0/f$b;->k:F

    .line 210
    .line 211
    cmpl-float v14, v14, v13

    .line 212
    .line 213
    if-eqz v14, :cond_8

    .line 214
    .line 215
    :cond_5
    iget v14, v0, Lk0/f$b;->l:F

    .line 216
    .line 217
    add-float/2addr v11, v14

    .line 218
    rem-float/2addr v11, v13

    .line 219
    iget v15, v0, Lk0/f$b;->k:F

    .line 220
    .line 221
    add-float/2addr v15, v14

    .line 222
    rem-float/2addr v15, v13

    .line 223
    iget-object v13, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 224
    .line 225
    if-nez v13, :cond_6

    .line 226
    .line 227
    new-instance v13, Landroid/graphics/PathMeasure;

    .line 228
    .line 229
    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v13, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 233
    .line 234
    :cond_6
    iget-object v13, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    invoke-virtual {v13, v2, v14}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 238
    .line 239
    .line 240
    iget-object v13, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 241
    .line 242
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    mul-float v11, v11, v13

    .line 247
    .line 248
    mul-float v15, v15, v13

    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 251
    .line 252
    .line 253
    cmpl-float v16, v11, v15

    .line 254
    .line 255
    if-lez v16, :cond_7

    .line 256
    .line 257
    iget-object v14, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 258
    .line 259
    const/4 v4, 0x1

    .line 260
    invoke-virtual {v14, v11, v13, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 261
    .line 262
    .line 263
    iget-object v11, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 264
    .line 265
    const/4 v13, 0x0

    .line 266
    invoke-virtual {v11, v13, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_7
    const/4 v4, 0x1

    .line 271
    const/4 v13, 0x0

    .line 272
    iget-object v14, v6, Lk0/f$f;->f:Landroid/graphics/PathMeasure;

    .line 273
    .line 274
    invoke-virtual {v14, v11, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 275
    .line 276
    .line 277
    :goto_2
    invoke-virtual {v2, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 278
    .line 279
    .line 280
    :cond_8
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v0, Lk0/f$b;->f:Lq/b;

    .line 284
    .line 285
    iget-object v4, v2, Lq/b;->a:Landroid/graphics/Shader;

    .line 286
    .line 287
    if-eqz v4, :cond_9

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    goto :goto_3

    .line 291
    :cond_9
    const/4 v4, 0x0

    .line 292
    :goto_3
    if-nez v4, :cond_b

    .line 293
    .line 294
    iget v4, v2, Lq/b;->c:I

    .line 295
    .line 296
    if-eqz v4, :cond_a

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_a
    const/4 v4, 0x0

    .line 300
    goto :goto_5

    .line 301
    :cond_b
    :goto_4
    const/4 v4, 0x1

    .line 302
    :goto_5
    const v11, 0xffffff

    .line 303
    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    const/high16 v14, 0x437f0000    # 255.0f

    .line 307
    .line 308
    if-eqz v4, :cond_10

    .line 309
    .line 310
    iget-object v4, v6, Lk0/f$f;->e:Landroid/graphics/Paint;

    .line 311
    .line 312
    if-nez v4, :cond_c

    .line 313
    .line 314
    new-instance v4, Landroid/graphics/Paint;

    .line 315
    .line 316
    const/4 v15, 0x1

    .line 317
    invoke-direct {v4, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 318
    .line 319
    .line 320
    iput-object v4, v6, Lk0/f$f;->e:Landroid/graphics/Paint;

    .line 321
    .line 322
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 323
    .line 324
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    .line 326
    .line 327
    :cond_c
    iget-object v4, v6, Lk0/f$f;->e:Landroid/graphics/Paint;

    .line 328
    .line 329
    iget-object v15, v2, Lq/b;->a:Landroid/graphics/Shader;

    .line 330
    .line 331
    if-eqz v15, :cond_d

    .line 332
    .line 333
    const/16 v16, 0x1

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_d
    const/16 v16, 0x0

    .line 337
    .line 338
    :goto_6
    if-eqz v16, :cond_e

    .line 339
    .line 340
    invoke-virtual {v15, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 344
    .line 345
    .line 346
    iget v2, v0, Lk0/f$b;->i:F

    .line 347
    .line 348
    mul-float v2, v2, v14

    .line 349
    .line 350
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_e
    iget v2, v2, Lq/b;->c:I

    .line 359
    .line 360
    iget v15, v0, Lk0/f$b;->i:F

    .line 361
    .line 362
    sget-object v16, Lk0/f;->k:Landroid/graphics/PorterDuff$Mode;

    .line 363
    .line 364
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    and-int/2addr v2, v11

    .line 369
    int-to-float v14, v14

    .line 370
    mul-float v14, v14, v15

    .line 371
    .line 372
    float-to-int v14, v14

    .line 373
    shl-int/lit8 v14, v14, 0x18

    .line 374
    .line 375
    or-int/2addr v2, v14

    .line 376
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    .line 378
    .line 379
    :goto_7
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 380
    .line 381
    .line 382
    iget v2, v0, Lk0/f$b;->h:I

    .line 383
    .line 384
    if-nez v2, :cond_f

    .line 385
    .line 386
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_f
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 390
    .line 391
    :goto_8
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 395
    .line 396
    .line 397
    :cond_10
    iget-object v2, v0, Lk0/f$b;->d:Lq/b;

    .line 398
    .line 399
    iget-object v4, v2, Lq/b;->a:Landroid/graphics/Shader;

    .line 400
    .line 401
    if-eqz v4, :cond_11

    .line 402
    .line 403
    const/4 v4, 0x1

    .line 404
    goto :goto_9

    .line 405
    :cond_11
    const/4 v4, 0x0

    .line 406
    :goto_9
    if-nez v4, :cond_13

    .line 407
    .line 408
    iget v4, v2, Lq/b;->c:I

    .line 409
    .line 410
    if-eqz v4, :cond_12

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_12
    const/4 v4, 0x0

    .line 414
    goto :goto_b

    .line 415
    :cond_13
    :goto_a
    const/4 v4, 0x1

    .line 416
    :goto_b
    if-eqz v4, :cond_1a

    .line 417
    .line 418
    iget-object v4, v6, Lk0/f$f;->d:Landroid/graphics/Paint;

    .line 419
    .line 420
    if-nez v4, :cond_14

    .line 421
    .line 422
    new-instance v4, Landroid/graphics/Paint;

    .line 423
    .line 424
    const/4 v14, 0x1

    .line 425
    invoke-direct {v4, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 426
    .line 427
    .line 428
    iput-object v4, v6, Lk0/f$f;->d:Landroid/graphics/Paint;

    .line 429
    .line 430
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 431
    .line 432
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_14
    const/4 v14, 0x1

    .line 437
    :goto_c
    iget-object v4, v6, Lk0/f$f;->d:Landroid/graphics/Paint;

    .line 438
    .line 439
    iget-object v15, v0, Lk0/f$b;->n:Landroid/graphics/Paint$Join;

    .line 440
    .line 441
    if-eqz v15, :cond_15

    .line 442
    .line 443
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 444
    .line 445
    .line 446
    :cond_15
    iget-object v15, v0, Lk0/f$b;->m:Landroid/graphics/Paint$Cap;

    .line 447
    .line 448
    if-eqz v15, :cond_16

    .line 449
    .line 450
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 451
    .line 452
    .line 453
    :cond_16
    iget v15, v0, Lk0/f$b;->o:F

    .line 454
    .line 455
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 456
    .line 457
    .line 458
    iget-object v15, v2, Lq/b;->a:Landroid/graphics/Shader;

    .line 459
    .line 460
    if-eqz v15, :cond_17

    .line 461
    .line 462
    goto :goto_d

    .line 463
    :cond_17
    const/4 v14, 0x0

    .line 464
    :goto_d
    if-eqz v14, :cond_18

    .line 465
    .line 466
    invoke-virtual {v15, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 470
    .line 471
    .line 472
    iget v2, v0, Lk0/f$b;->g:F

    .line 473
    .line 474
    const/high16 v11, 0x437f0000    # 255.0f

    .line 475
    .line 476
    mul-float v2, v2, v11

    .line 477
    .line 478
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_18
    iget v2, v2, Lq/b;->c:I

    .line 487
    .line 488
    iget v12, v0, Lk0/f$b;->g:F

    .line 489
    .line 490
    sget-object v14, Lk0/f;->k:Landroid/graphics/PorterDuff$Mode;

    .line 491
    .line 492
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 493
    .line 494
    .line 495
    move-result v14

    .line 496
    and-int/2addr v2, v11

    .line 497
    int-to-float v11, v14

    .line 498
    mul-float v11, v11, v12

    .line 499
    .line 500
    float-to-int v11, v11

    .line 501
    shl-int/lit8 v11, v11, 0x18

    .line 502
    .line 503
    or-int/2addr v2, v11

    .line 504
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    .line 506
    .line 507
    :goto_e
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 508
    .line 509
    .line 510
    mul-float v5, v5, p2

    .line 511
    .line 512
    iget v0, v0, Lk0/f$b;->e:F

    .line 513
    .line 514
    mul-float v0, v0, v5

    .line 515
    .line 516
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 520
    .line 521
    .line 522
    goto :goto_10

    .line 523
    :cond_19
    :goto_f
    move/from16 v1, p4

    .line 524
    .line 525
    move/from16 v3, p5

    .line 526
    .line 527
    move/from16 v17, v11

    .line 528
    .line 529
    :cond_1a
    :goto_10
    add-int/lit8 v11, v17, 0x1

    .line 530
    .line 531
    const/4 v10, 0x0

    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    nop

    .line 539
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Lk0/f$f;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Lk0/f$f;->l:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lk0/f$f;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Lk0/f$f;->l:I

    return-void
.end method
