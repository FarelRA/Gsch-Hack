.class public La2/a;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/a$c;,
        La2/a$b;,
        La2/a$a;
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lx/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz1/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lx/b;

    .line 7
    .line 8
    const-string v0, "AES"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p1, p2, v1, v0}, Lx/b;-><init>(IILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, La2/a;->f:Lx/b;

    .line 15
    .line 16
    iput-object p3, p0, La2/a;->d:Ljava/lang/String;

    .line 17
    .line 18
    iput p4, p0, La2/a;->e:I

    .line 19
    .line 20
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 21
    .line 22
    iput-object p1, p0, Lz1/f;->c:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lz1/d;[B[BLe2/a;Lv1/a;)[B
    .locals 6

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    const-string v1, "alg"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4, v1}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v4, p5, Lv1/a;->a:Lv1/a$a;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v4, p5, Lv1/a;->b:Lv1/a$a;

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-eqz p4, :cond_2

    .line 33
    .line 34
    invoke-virtual {p4, v1}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-eqz p4, :cond_2

    .line 43
    .line 44
    const/4 p4, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 p4, 0x0

    .line 47
    :goto_2
    if-eqz p4, :cond_3

    .line 48
    .line 49
    iget-object p4, p5, Lv1/a;->a:Lv1/a$a;

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    iget-object p4, p5, Lv1/a;->b:Lv1/a$a;

    .line 53
    .line 54
    :goto_3
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p4, p1, Lz1/d;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p4, [B

    .line 60
    .line 61
    iget-object p5, p1, Lz1/d;->b:Ljava/io/Serializable;

    .line 62
    .line 63
    check-cast p5, [B

    .line 64
    .line 65
    iget-object p1, p1, Lz1/d;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    array-length v0, p2

    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    mul-int/lit8 v0, v0, 0x8

    .line 73
    .line 74
    int-to-long v4, v0

    .line 75
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v4, 0x4

    .line 87
    new-array v4, v4, [[B

    .line 88
    .line 89
    aput-object p2, v4, v3

    .line 90
    .line 91
    aput-object p4, v4, v2

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    aput-object p5, v4, p2

    .line 95
    .line 96
    const/4 v5, 0x3

    .line 97
    aput-object v0, v4, v5

    .line 98
    .line 99
    invoke-static {v4}, Lm1/h;->p([[B)[B

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v4, Lf2/a;

    .line 104
    .line 105
    array-length v5, p3

    .line 106
    div-int/2addr v5, p2

    .line 107
    invoke-static {p3, v3, v5}, Lm1/h;->I([BII)[B

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {v4, v2, v5}, Lf2/a;-><init>(I[B)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, La2/a;->d:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v2, v4}, Lm1/h;->x(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget v2, p0, La2/a;->e:I

    .line 125
    .line 126
    invoke-static {v0, v3, v2}, Lm1/h;->I([BII)[B

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {p1, v0}, Lm1/h;->G([B[B)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    new-instance p1, Lf2/a;

    .line 137
    .line 138
    array-length v0, p3

    .line 139
    div-int/2addr v0, p2

    .line 140
    invoke-static {p3, v0, v0}, Lm1/h;->I([BII)[B

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-direct {p1, v3, p3}, Lf2/a;-><init>(I[B)V

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, Lz1/f;->c:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {p3}, Lm1/h;->u(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 154
    .line 155
    invoke-direct {v0, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    .line 160
    .line 161
    :try_start_1
    invoke-virtual {p3, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 162
    .line 163
    .line 164
    move-result-object p1
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    return-object p1

    .line 166
    :catch_0
    move-exception p1

    .line 167
    goto :goto_4

    .line 168
    :catch_1
    move-exception p1

    .line 169
    :goto_4
    new-instance p2, Lg2/b;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    .line 177
    .line 178
    throw p2

    .line 179
    :catch_2
    move-exception p1

    .line 180
    new-instance p2, Lg2/b;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    .line 188
    .line 189
    throw p2

    .line 190
    :catch_3
    move-exception p1

    .line 191
    new-instance p2, Lg2/b;

    .line 192
    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string p4, "Invalid key for "

    .line 196
    .line 197
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p4, p0, Lz1/f;->c:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    .line 211
    .line 212
    throw p2

    .line 213
    :cond_4
    new-instance p2, Lf/c;

    .line 214
    .line 215
    invoke-direct {p2, v1}, Lf/c;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p1}, Lf/c;->g([B)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p2, v0}, Lf/c;->g([B)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    new-instance p3, Lg2/a;

    .line 227
    .line 228
    new-instance p4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string p5, "Authentication tag check failed. Message="

    .line 231
    .line 232
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p1, " calculated="

    .line 239
    .line 240
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-direct {p3, p1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p3
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, La2/a;->f:Lx/b;

    .line 2
    .line 3
    iget v0, v0, Lx/b;->b:I

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Lz1/f;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, La2/e;->a(ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final h()Lx/b;
    .locals 1

    iget-object v0, p0, La2/a;->f:Lx/b;

    return-object v0
.end method
