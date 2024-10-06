.class public final Ld2/d;
.super Le2/b;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le2/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UTF-8"

    .line 5
    .line 6
    iput-object v0, p0, Ld2/d;->l:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "org.jose4j.jws.default-allow-none"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lz1/c;->d:Lz1/c;

    .line 17
    .line 18
    iput-object v0, p0, Le2/b;->g:Lz1/c;

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final d([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, v1, :cond_1

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
    const/4 v0, 0x1

    .line 12
    aget-object v0, p1, v0

    .line 13
    .line 14
    iput-object v0, p0, Ld2/d;->m:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Le2/b;->a:Lf/c;

    .line 17
    .line 18
    iget-object v2, p0, Ld2/d;->l:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lf/c;->f(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    move-object v0, v3

    .line 34
    :goto_0
    iput-object v0, p0, Ld2/d;->k:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    aget-object p1, p1, v0

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Le2/b;->c:[B

    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Unknown or unsupported character set name: "

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance p1, Lg2/b;

    .line 67
    .line 68
    const-string v0, "A JWS Compact Serialization must have exactly 3 parts separated by period (\'.\') characters"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "org.jose4j.jws.getPayload-skip-verify"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_c

    .line 8
    .line 9
    const-string v0, "alg"

    .line 10
    .line 11
    iget-object v1, p0, Le2/b;->b:Le2/a;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    iget-object v2, p0, Le2/b;->g:Lz1/c;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lz1/c;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lz1/e;->f:Lz1/e;

    .line 25
    .line 26
    iget-object v2, v2, Lz1/e;->a:Lz1/d;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lz1/d;->a(Ljava/lang/String;)Lz1/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ld2/e;

    .line 33
    .line 34
    iget-object v2, p0, Le2/b;->d:Ljava/security/Key;

    .line 35
    .line 36
    iget-boolean v3, p0, Le2/b;->e:Z

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v0, v2}, Ld2/e;->g(Ljava/security/Key;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v3, p0, Ld2/d;->n:Ljava/lang/Boolean;

    .line 44
    .line 45
    if-nez v3, :cond_9

    .line 46
    .line 47
    invoke-virtual {p0}, Le2/b;->a()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Le2/b;->c:[B

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    new-array v5, v4, [Ljava/lang/String;

    .line 54
    .line 55
    iget-object v6, v1, Le2/a;->d:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Le2/a;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v8, v1, Le2/a;->a:Lf/c;

    .line 65
    .line 66
    const-string v9, "UTF-8"

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    move-object v6, v7

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-virtual {v8, v6}, Lf/c;->g([B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iput-object v6, v1, Le2/a;->d:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v1, "Unknown or unsupported character set name: UTF-8"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    :goto_1
    iget-object v1, v1, Le2/a;->d:Ljava/lang/String;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    aput-object v1, v5, v6

    .line 98
    .line 99
    iget-object v1, p0, Ld2/d;->m:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    iget-object v1, p0, Le2/b;->a:Lf/c;

    .line 105
    .line 106
    iget-object v8, p0, Ld2/d;->k:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v9, p0, Ld2/d;->l:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    if-nez v8, :cond_4

    .line 114
    .line 115
    move-object v8, v7

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 118
    .line 119
    .line 120
    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :goto_2
    invoke-virtual {v1, v8}, Lf/c;->g([B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_3
    const/4 v8, 0x1

    .line 126
    aput-object v1, v5, v8

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    :goto_4
    if-ge v6, v4, :cond_7

    .line 134
    .line 135
    aget-object v9, v5, v6

    .line 136
    .line 137
    if-nez v9, :cond_5

    .line 138
    .line 139
    const-string v9, ""

    .line 140
    .line 141
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    if-eq v6, v8, :cond_6

    .line 145
    .line 146
    const-string v9, "."

    .line 147
    .line 148
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v4, "US-ASCII"

    .line 159
    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 164
    .line 165
    .line 166
    move-result-object v7
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    :goto_5
    iget-object v1, p0, Le2/b;->i:Lv1/a;

    .line 168
    .line 169
    invoke-interface {v0, v3, v2, v7, v1}, Ld2/e;->d([BLjava/security/Key;[BLv1/a;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Ld2/d;->n:Ljava/lang/Boolean;

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 181
    .line 182
    const-string v1, "Unknown or unsupported character set name: US-ASCII"

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :catch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v2, "Unknown or unsupported character set name: "

    .line 193
    .line 194
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_9
    :goto_6
    iget-object v0, p0, Ld2/d;->n:Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_a
    new-instance v0, Lg2/a;

    .line 218
    .line 219
    const-string v1, "JWS signature is invalid."

    .line 220
    .line 221
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_b
    new-instance v0, Lg2/a;

    .line 226
    .line 227
    const-string v1, "Signature algorithm header (alg) not set."

    .line 228
    .line 229
    invoke-direct {v0, v1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_c
    :goto_7
    iget-object v0, p0, Ld2/d;->k:Ljava/lang/String;

    .line 234
    .line 235
    return-object v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/d;->n:Ljava/lang/Boolean;

    return-void
.end method
