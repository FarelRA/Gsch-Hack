.class public final La2/h;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/k;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz1/f;-><init>()V

    const-string v0, "enc"

    iput-object v0, p0, La2/h;->d:Ljava/lang/String;

    const-string v0, "ECDH-ES"

    .line 1
    iput-object v0, p0, Lz1/f;->b:Ljava/lang/String;

    const-string v0, "ECDH"

    .line 2
    iput-object v0, p0, Lz1/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, La2/h;-><init>()V

    const-string p1, "alg"

    iput-object p1, p0, La2/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;
    .locals 10

    .line 1
    iget-object p5, p3, Lv1/a;->b:Lv1/a$a;

    .line 2
    .line 3
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p5, p4, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    const-string v0, "epk"

    .line 9
    .line 10
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p5

    .line 14
    check-cast p5, Ljava/util/Map;

    .line 15
    .line 16
    const-string v0, "kty"

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {p5, v0, v1}, Lc2/b;->c(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v2, "EC"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "RSA"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v0, Lc2/e;

    .line 43
    .line 44
    invoke-direct {v0, p5}, Lc2/e;-><init>(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lg2/b;

    .line 49
    .line 50
    const-string p2, "Unknown key type (for public keys): \'"

    .line 51
    .line 52
    const-string p3, "\'"

    .line 53
    .line 54
    invoke-static {p2, v0, p3}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance v0, Lc2/a;

    .line 63
    .line 64
    invoke-direct {v0, p5}, Lc2/a;-><init>(Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    check-cast p2, Ljava/security/PrivateKey;

    .line 68
    .line 69
    iget-object p5, v0, Lc2/b;->d:Ljava/security/Key;

    .line 70
    .line 71
    check-cast p5, Ljava/security/PublicKey;

    .line 72
    .line 73
    iget-object v0, p3, Lv1/a;->a:Lv1/a$a;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lz1/f;->c:Ljava/lang/String;

    .line 79
    .line 80
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :try_start_1
    invoke-virtual {v0, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p5, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object p3, p3, Lv1/a;->b:Lv1/a$a;

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance p3, Lf/c;

    .line 100
    .line 101
    const/16 p5, 0x8

    .line 102
    .line 103
    invoke-direct {p3, p5}, Lf/c;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lb2/a;

    .line 107
    .line 108
    invoke-direct {v0}, Lb2/a;-><init>()V

    .line 109
    .line 110
    .line 111
    iget v2, p1, Lx/b;->b:I

    .line 112
    .line 113
    mul-int/lit8 v2, v2, 0x8

    .line 114
    .line 115
    iget-object v3, p0, La2/h;->d:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p4, v3}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v4, "apu"

    .line 122
    .line 123
    invoke-virtual {p4, v4}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-string v5, "apv"

    .line 128
    .line 129
    invoke-virtual {p4, v5}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    const-string v5, "UTF-8"

    .line 134
    .line 135
    if-nez v3, :cond_2

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 140
    .line 141
    .line 142
    move-result-object v3
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :goto_1
    sget-object v5, Lm1/h;->J:[B

    .line 144
    .line 145
    if-nez v3, :cond_3

    .line 146
    .line 147
    move-object v3, v5

    .line 148
    :cond_3
    array-length v6, v3

    .line 149
    invoke-static {v6}, Lm1/h;->t(I)[B

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const/4 v7, 0x2

    .line 154
    new-array v8, v7, [[B

    .line 155
    .line 156
    const/4 v9, 0x0

    .line 157
    aput-object v6, v8, v9

    .line 158
    .line 159
    aput-object v3, v8, v1

    .line 160
    .line 161
    invoke-static {v8}, Lm1/h;->p([[B)[B

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {p3, v4}, Lf/c;->f(Ljava/lang/String;)[B

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-nez v4, :cond_4

    .line 170
    .line 171
    move-object v4, v5

    .line 172
    :cond_4
    array-length v6, v4

    .line 173
    invoke-static {v6}, Lm1/h;->t(I)[B

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    new-array v8, v7, [[B

    .line 178
    .line 179
    aput-object v6, v8, v9

    .line 180
    .line 181
    aput-object v4, v8, v1

    .line 182
    .line 183
    invoke-static {v8}, Lm1/h;->p([[B)[B

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {p3, p4}, Lf/c;->f(Ljava/lang/String;)[B

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    if-nez p3, :cond_5

    .line 192
    .line 193
    move-object p3, v5

    .line 194
    :cond_5
    array-length p4, p3

    .line 195
    invoke-static {p4}, Lm1/h;->t(I)[B

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    new-array v6, v7, [[B

    .line 200
    .line 201
    aput-object p4, v6, v9

    .line 202
    .line 203
    aput-object p3, v6, v1

    .line 204
    .line 205
    invoke-static {v6}, Lm1/h;->p([[B)[B

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-static {v2}, Lm1/h;->t(I)[B

    .line 210
    .line 211
    .line 212
    move-result-object p4

    .line 213
    const/4 v6, 0x5

    .line 214
    new-array v6, v6, [[B

    .line 215
    .line 216
    aput-object v3, v6, v9

    .line 217
    .line 218
    aput-object v4, v6, v1

    .line 219
    .line 220
    aput-object p3, v6, v7

    .line 221
    .line 222
    const/4 p3, 0x3

    .line 223
    aput-object p4, v6, p3

    .line 224
    .line 225
    const/4 p3, 0x4

    .line 226
    aput-object v5, v6, p3

    .line 227
    .line 228
    invoke-static {v6}, Lm1/h;->p([[B)[B

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    int-to-float p4, v2

    .line 233
    iget v3, v0, Lb2/a;->a:I

    .line 234
    .line 235
    int-to-float v3, v3

    .line 236
    div-float/2addr p4, v3

    .line 237
    float-to-double v3, p4

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    double-to-int p4, v3

    .line 243
    int-to-long v3, p4

    .line 244
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    .line 245
    .line 246
    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .line 248
    .line 249
    :goto_2
    int-to-long v5, v1

    .line 250
    cmp-long v7, v5, v3

    .line 251
    .line 252
    if-gtz v7, :cond_6

    .line 253
    .line 254
    invoke-static {v1}, Lm1/h;->t(I)[B

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    iget-object v6, v0, Lb2/a;->b:Ljava/security/MessageDigest;

    .line 259
    .line 260
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    array-length v6, v5

    .line 274
    invoke-virtual {p4, v5, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_6
    div-int/2addr v2, p5

    .line 281
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    array-length p3, p2

    .line 286
    if-eq p3, v2, :cond_7

    .line 287
    .line 288
    invoke-static {p2, v9, v2}, Lm1/h;->I([BII)[B

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    :cond_7
    iget-object p1, p1, Lx/b;->c:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p1, Ljava/lang/String;

    .line 295
    .line 296
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 297
    .line 298
    invoke-direct {p3, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object p3

    .line 302
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    const-string p2, "Unknown or unsupported character set name: UTF-8"

    .line 305
    .line 306
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :catch_1
    move-exception p1

    .line 311
    new-instance p2, Lg2/a;

    .line 312
    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string p4, "Invalid Key for "

    .line 316
    .line 317
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object p4, p0, Lz1/f;->c:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string p4, " key agreement."

    .line 326
    .line 327
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p3

    .line 334
    invoke-direct {p2, p3, p1}, Lg2/a;-><init>(Ljava/lang/String;Ljava/security/InvalidKeyException;)V

    .line 335
    .line 336
    .line 337
    throw p2

    .line 338
    :catch_2
    move-exception p1

    .line 339
    new-instance p2, Lg2/b;

    .line 340
    .line 341
    const-string p3, "Cannot get "

    .line 342
    .line 343
    const-string p4, " KeyAgreement with provider null"

    .line 344
    .line 345
    invoke-static {p3, v0, p4}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 350
    .line 351
    .line 352
    throw p2

    .line 353
    :catch_3
    move-exception p1

    .line 354
    new-instance p2, Lu0/c;

    .line 355
    .line 356
    const-string p3, "No "

    .line 357
    .line 358
    const-string p4, " KeyAgreement available."

    .line 359
    .line 360
    invoke-static {p3, v0, p4}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    invoke-direct {p2, p3, p1}, Lu0/c;-><init>(Ljava/lang/String;Ljava/security/GeneralSecurityException;)V

    .line 365
    .line 366
    .line 367
    throw p2
.end method

.method public final f()Z
    .locals 5

    .line 1
    const-string v0, "KeyFactory"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "KeyPairGenerator"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "EC"

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lz1/f;->c:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "KeyAgreement"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lz1/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    :goto_1
    return v3
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 0

    const-class p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p1, p2}, Lm1/h;->i(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    return-void
.end method
