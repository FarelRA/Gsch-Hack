.class public La2/l;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/l$c;,
        La2/l$b;,
        La2/l$a;
    }
.end annotation


# static fields
.field public static final g:[B


# instance fields
.field public final d:La2/d;

.field public final e:Lx/b;

.field public final f:Lf/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, La2/l;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La2/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz1/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "n/a"

    .line 7
    .line 8
    iput-object p1, p0, Lz1/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lf/c;

    .line 11
    .line 12
    const/16 v0, 0x9

    .line 13
    .line 14
    invoke-direct {p1, v0, p2}, Lf/c;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, La2/l;->f:Lf/c;

    .line 18
    .line 19
    iput-object p3, p0, La2/l;->d:La2/d;

    .line 20
    .line 21
    new-instance p1, Lx/b;

    .line 22
    .line 23
    const-string p2, "AES"

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    iget p3, p3, La2/d;->g:I

    .line 27
    .line 28
    invoke-direct {p1, p3, v0, p2}, Lx/b;-><init>(IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, La2/l;->e:Lx/b;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    iget-object v1, v5, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    const-string v2, "p2c"

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v3, "p2s"

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lf/c;

    .line 34
    .line 35
    const/16 v6, 0x8

    .line 36
    .line 37
    invoke-direct {v4, v6}, Lf/c;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Lf/c;->f(Ljava/lang/String;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x3

    .line 45
    new-array v4, v4, [[B

    .line 46
    .line 47
    iget-object v6, v0, Lz1/f;->b:Ljava/lang/String;

    .line 48
    .line 49
    const-string v7, "UTF-8"

    .line 50
    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    const/4 v7, 0x0

    .line 60
    aput-object v6, v4, v7

    .line 61
    .line 62
    sget-object v6, La2/l;->g:[B

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    aput-object v6, v4, v8

    .line 66
    .line 67
    const/4 v6, 0x2

    .line 68
    aput-object v3, v4, v6

    .line 69
    .line 70
    invoke-static {v4}, Lm1/h;->p([[B)[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, v0, La2/l;->e:Lx/b;

    .line 75
    .line 76
    iget v9, v4, Lx/b;->b:I

    .line 77
    .line 78
    move-object/from16 v10, p3

    .line 79
    .line 80
    iget-object v11, v10, Lv1/a;->a:Lv1/a$a;

    .line 81
    .line 82
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v11, v0, La2/l;->f:Lf/c;

    .line 86
    .line 87
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v11, v11, Lf/c;->a:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v11, Ljava/lang/String;

    .line 98
    .line 99
    new-instance v13, Lf2/a;

    .line 100
    .line 101
    invoke-direct {v13, v8, v12}, Lf2/a;-><init>(I[B)V

    .line 102
    .line 103
    .line 104
    invoke-static {v11, v13}, Lm1/h;->x(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v11}, Ljavax/crypto/Mac;->getMacLength()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    const-wide v13, 0xffffffffL

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    move-object/from16 v16, v3

    .line 118
    .line 119
    int-to-long v2, v9

    .line 120
    cmp-long v17, v2, v13

    .line 121
    .line 122
    if-gtz v17, :cond_7

    .line 123
    .line 124
    int-to-double v2, v9

    .line 125
    int-to-double v13, v12

    .line 126
    div-double/2addr v2, v13

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    double-to-int v2, v2

    .line 132
    add-int/lit8 v3, v2, -0x1

    .line 133
    .line 134
    mul-int v12, v12, v3

    .line 135
    .line 136
    sub-int/2addr v9, v12

    .line 137
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 138
    .line 139
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    :goto_2
    if-ge v13, v2, :cond_6

    .line 144
    .line 145
    add-int/lit8 v14, v13, 0x1

    .line 146
    .line 147
    const/4 v15, 0x1

    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    :goto_3
    if-gt v15, v1, :cond_4

    .line 153
    .line 154
    if-ne v15, v8, :cond_2

    .line 155
    .line 156
    new-array v8, v6, [[B

    .line 157
    .line 158
    aput-object v16, v8, v7

    .line 159
    .line 160
    invoke-static {v14}, Lm1/h;->t(I)[B

    .line 161
    .line 162
    .line 163
    move-result-object v18

    .line 164
    const/16 v17, 0x1

    .line 165
    .line 166
    aput-object v18, v8, v17

    .line 167
    .line 168
    invoke-static {v8}, Lm1/h;->p([[B)[B

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v11, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 173
    .line 174
    .line 175
    move-result-object v18

    .line 176
    move/from16 v20, v1

    .line 177
    .line 178
    move-object/from16 v8, v18

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_2
    move-object/from16 v8, v19

    .line 182
    .line 183
    const/16 v17, 0x1

    .line 184
    .line 185
    invoke-virtual {v11, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    const/4 v6, 0x0

    .line 190
    :goto_4
    array-length v7, v8

    .line 191
    if-ge v6, v7, :cond_3

    .line 192
    .line 193
    aget-byte v7, v8, v6

    .line 194
    .line 195
    move/from16 v20, v1

    .line 196
    .line 197
    move-object/from16 v1, v18

    .line 198
    .line 199
    aget-byte v18, v1, v6

    .line 200
    .line 201
    xor-int v7, v7, v18

    .line 202
    .line 203
    int-to-byte v7, v7

    .line 204
    aput-byte v7, v1, v6

    .line 205
    .line 206
    add-int/lit8 v6, v6, 0x1

    .line 207
    .line 208
    move-object/from16 v18, v1

    .line 209
    .line 210
    move/from16 v1, v20

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_3
    move/from16 v20, v1

    .line 214
    .line 215
    move-object/from16 v1, v18

    .line 216
    .line 217
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 218
    .line 219
    move-object/from16 v19, v8

    .line 220
    .line 221
    move/from16 v1, v20

    .line 222
    .line 223
    const/4 v6, 0x2

    .line 224
    const/4 v7, 0x0

    .line 225
    const/4 v8, 0x1

    .line 226
    goto :goto_3

    .line 227
    :cond_4
    move/from16 v20, v1

    .line 228
    .line 229
    move-object/from16 v1, v18

    .line 230
    .line 231
    const/16 v17, 0x1

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    if-ne v13, v3, :cond_5

    .line 235
    .line 236
    invoke-static {v1, v6, v9}, Lm1/h;->I([BII)[B

    .line 237
    .line 238
    .line 239
    move-result-object v18

    .line 240
    move-object/from16 v1, v18

    .line 241
    .line 242
    :cond_5
    array-length v7, v1

    .line 243
    invoke-virtual {v12, v1, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 244
    .line 245
    .line 246
    move v13, v14

    .line 247
    move/from16 v1, v20

    .line 248
    .line 249
    const/4 v6, 0x2

    .line 250
    const/4 v7, 0x0

    .line 251
    const/4 v8, 0x1

    .line 252
    goto :goto_2

    .line 253
    :cond_6
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 258
    .line 259
    iget-object v2, v4, Lx/b;->c:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Ljava/lang/String;

    .line 262
    .line 263
    invoke-direct {v3, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, La2/l;->d:La2/d;

    .line 267
    .line 268
    move-object/from16 v2, p1

    .line 269
    .line 270
    move-object/from16 v4, p3

    .line 271
    .line 272
    move-object/from16 v5, p4

    .line 273
    .line 274
    move-object/from16 v6, p5

    .line 275
    .line 276
    invoke-virtual/range {v1 .. v6}, La2/n;->b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    return-object v1

    .line 281
    :cond_7
    new-instance v1, Lu0/c;

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v3, "derived key too long "

    .line 286
    .line 287
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-direct {v1, v2}, Lu0/c;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v1

    .line 301
    :catch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    const-string v2, "Unknown or unsupported character set name: UTF-8"

    .line 304
    .line 305
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v1
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, La2/l;->d:La2/d;

    invoke-virtual {v0}, La2/d;->f()Z

    move-result v0

    return v0
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lg2/a;

    const-string p2, "The key must not be null."

    invoke-direct {p1, p2}, Lg2/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
