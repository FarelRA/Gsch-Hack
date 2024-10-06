.class public final La2/j;
.super Le2/b;
.source "SourceFile"


# instance fields
.field public final k:Lf/c;

.field public final l:Ljava/lang/String;

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public final q:Lz1/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le2/b;-><init>()V

    new-instance v0, Lf/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, La2/j;->k:Lf/c;

    const-string v0, "UTF-8"

    iput-object v0, p0, La2/j;->l:Ljava/lang/String;

    sget-object v0, Lz1/c;->c:Lz1/c;

    iput-object v0, p0, La2/j;->q:Lz1/c;

    return-void
.end method


# virtual methods
.method public final d([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v0, p1, v0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le2/b;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, La2/j;->k:Lf/c;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-object v1, p1, v1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, La2/j;->n:[B

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    aget-object v1, p1, v1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, La2/j;->o:[B

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    aget-object v1, p1, v1

    .line 33
    .line 34
    const-string v2, "Encoded JWE Ciphertext"

    .line 35
    .line 36
    invoke-static {v1, v2}, Le2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, La2/j;->p:[B

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    aget-object p1, p1, v1

    .line 47
    .line 48
    const-string v1, "Encoded JWE Authentication Tag"

    .line 49
    .line 50
    invoke-static {p1, v1}, Le2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Le2/b;->c:[B

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    new-instance p1, Lg2/b;

    .line 61
    .line 62
    const-string v0, "A JWE Compact Serialization must have exactly 5 parts separated by period (\'.\') characters"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, La2/j;->m:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    const-string v0, "alg"

    .line 7
    .line 8
    iget-object v2, p0, Le2/b;->b:Le2/a;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iget-object v3, p0, Le2/b;->g:Lz1/c;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Lz1/c;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lz1/e;->f:Lz1/e;

    .line 22
    .line 23
    iget-object v4, v3, Lz1/e;->b:Lz1/d;

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Lz1/d;->a(Ljava/lang/String;)Lz1/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, La2/k;

    .line 31
    .line 32
    const-string v0, "enc"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v5, p0, La2/j;->q:Lz1/c;

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Lz1/c;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v5, v3, Lz1/e;->c:Lz1/d;

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Lz1/d;->a(Ljava/lang/String;)Lz1/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, La2/f;

    .line 52
    .line 53
    invoke-interface {v0}, La2/f;->h()Lx/b;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-boolean v6, p0, Le2/b;->e:Z

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    iget-object v6, p0, Le2/b;->d:Ljava/security/Key;

    .line 62
    .line 63
    invoke-interface {v4, v6, v0}, La2/k;->i(Ljava/security/Key;La2/f;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0}, Le2/b;->a()V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Le2/b;->d:Ljava/security/Key;

    .line 70
    .line 71
    iget-object v9, p0, La2/j;->n:[B

    .line 72
    .line 73
    iget-object v8, p0, Le2/b;->b:Le2/a;

    .line 74
    .line 75
    iget-object v7, p0, Le2/b;->i:Lv1/a;

    .line 76
    .line 77
    invoke-interface/range {v4 .. v9}, La2/k;->b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v6, Lz1/d;

    .line 82
    .line 83
    iget-object v5, p0, La2/j;->o:[B

    .line 84
    .line 85
    iget-object v7, p0, La2/j;->p:[B

    .line 86
    .line 87
    iget-object v8, p0, Le2/b;->c:[B

    .line 88
    .line 89
    invoke-direct {v6, v5, v7, v8}, Lz1/d;-><init>([B[B[B)V

    .line 90
    .line 91
    .line 92
    iget-object v5, v2, Le2/a;->d:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2}, Le2/a;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-object v7, v2, Le2/a;->a:Lf/c;

    .line 101
    .line 102
    const-string v8, "UTF-8"

    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    if-nez v5, :cond_1

    .line 108
    .line 109
    move-object v5, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-virtual {v7, v5}, Lf/c;->g([B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iput-object v5, v2, Le2/a;->d:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v1, "Unknown or unsupported character set name: UTF-8"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_2
    :goto_1
    iget-object v5, v2, Le2/a;->d:Ljava/lang/String;

    .line 131
    .line 132
    const-string v7, "US-ASCII"

    .line 133
    .line 134
    if-nez v5, :cond_3

    .line 135
    .line 136
    move-object v7, v1

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    move-object v7, v5

    .line 143
    :goto_2
    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-object v9, p0, Le2/b;->b:Le2/a;

    .line 148
    .line 149
    iget-object v10, p0, Le2/b;->i:Lv1/a;

    .line 150
    .line 151
    move-object v5, v0

    .line 152
    invoke-interface/range {v5 .. v10}, La2/f;->a(Lz1/d;[B[BLe2/a;Lv1/a;)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v4, "zip"

    .line 157
    .line 158
    invoke-virtual {v2, v4}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    iget-object v3, v3, Lz1/e;->d:Lz1/d;

    .line 165
    .line 166
    invoke-virtual {v3, v2}, Lz1/d;->a(Ljava/lang/String;)Lz1/a;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lh2/a;

    .line 171
    .line 172
    invoke-interface {v2, v0}, Lh2/a;->e([B)[B

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_4
    iput-object v0, p0, La2/j;->m:[B

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string v1, "Unknown or unsupported character set name: US-ASCII"

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_5
    new-instance v0, Lg2/a;

    .line 188
    .line 189
    const-string v1, "Content encryption header (enc) not set."

    .line 190
    .line 191
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_6
    new-instance v0, Lg2/a;

    .line 196
    .line 197
    const-string v1, "Encryption key management algorithm header (alg) not set."

    .line 198
    .line 199
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_7
    :goto_3
    iget-object v0, p0, La2/j;->m:[B

    .line 204
    .line 205
    iget-object v2, p0, La2/j;->l:Ljava/lang/String;

    .line 206
    .line 207
    if-nez v0, :cond_8

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_8
    :try_start_2
    new-instance v1, Ljava/lang/String;

    .line 211
    .line 212
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 213
    .line 214
    .line 215
    :goto_4
    return-object v1

    .line 216
    :catch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v3, "Unknown or unsupported character set name: "

    .line 221
    .line 222
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0
.end method
