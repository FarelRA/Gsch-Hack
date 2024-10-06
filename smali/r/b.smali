.class public final Lr/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/b$a;
    }
.end annotation


# direct methods
.method public static a([Lr/b$a;[Lr/b$a;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-char v3, v2, Lr/b$a;->a:C

    aget-object v4, p1, v1

    iget-char v5, v4, Lr/b$a;->a:C

    if-ne v3, v5, :cond_3

    iget-object v2, v2, Lr/b$a;->b:[F

    array-length v2, v2

    iget-object v3, v4, Lr/b$a;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static b([FI)[F
    .locals 2

    if-ltz p1, :cond_1

    array-length v0, p0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p1, p1, [F

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static c(Ljava/lang/String;)[Lr/b$a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v3, v5, :cond_10

    .line 20
    .line 21
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/16 v6, 0x45

    .line 26
    .line 27
    const/16 v7, 0x65

    .line 28
    .line 29
    if-ge v3, v5, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    add-int/lit8 v8, v5, -0x41

    .line 36
    .line 37
    add-int/lit8 v9, v5, -0x5a

    .line 38
    .line 39
    mul-int v9, v9, v8

    .line 40
    .line 41
    if-lez v9, :cond_1

    .line 42
    .line 43
    add-int/lit8 v8, v5, -0x61

    .line 44
    .line 45
    add-int/lit8 v9, v5, -0x7a

    .line 46
    .line 47
    mul-int v9, v9, v8

    .line 48
    .line 49
    if-gtz v9, :cond_2

    .line 50
    .line 51
    :cond_1
    if-eq v5, v7, :cond_2

    .line 52
    .line 53
    if-eq v5, v6, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-lez v5, :cond_f

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/16 v8, 0x7a

    .line 78
    .line 79
    if-eq v5, v8, :cond_e

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/16 v8, 0x5a

    .line 86
    .line 87
    if-ne v5, v8, :cond_4

    .line 88
    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    new-array v2, v2, [F

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    const/4 v8, 0x1

    .line 102
    const/4 v9, 0x0

    .line 103
    :goto_3
    if-ge v8, v5, :cond_d

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    move v14, v8

    .line 110
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    if-ge v14, v15, :cond_a

    .line 115
    .line 116
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const/16 v7, 0x20

    .line 121
    .line 122
    if-eq v15, v7, :cond_7

    .line 123
    .line 124
    const/16 v7, 0x65

    .line 125
    .line 126
    if-eq v15, v6, :cond_6

    .line 127
    .line 128
    if-eq v15, v7, :cond_6

    .line 129
    .line 130
    packed-switch v15, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :pswitch_0
    if-nez v12, :cond_5

    .line 135
    .line 136
    const/4 v12, 0x1

    .line 137
    goto :goto_6

    .line 138
    :pswitch_1
    if-eq v14, v8, :cond_8

    .line 139
    .line 140
    if-nez v13, :cond_8

    .line 141
    .line 142
    :cond_5
    const/4 v11, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    const/4 v13, 0x1

    .line 145
    goto :goto_7

    .line 146
    :cond_7
    const/16 v7, 0x65

    .line 147
    .line 148
    :goto_5
    :pswitch_2
    const/4 v10, 0x1

    .line 149
    :cond_8
    :goto_6
    const/4 v13, 0x0

    .line 150
    :goto_7
    if-eqz v10, :cond_9

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_a
    :goto_8
    if-ge v8, v14, :cond_b

    .line 157
    .line 158
    add-int/lit8 v10, v9, 0x1

    .line 159
    .line 160
    invoke-virtual {v4, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    aput v8, v2, v9

    .line 169
    .line 170
    move v9, v10

    .line 171
    :cond_b
    if-eqz v11, :cond_c

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 175
    .line 176
    :goto_9
    move v8, v14

    .line 177
    goto :goto_3

    .line 178
    :cond_d
    invoke-static {v2, v9}, Lr/b;->b([FI)[F

    .line 179
    .line 180
    .line 181
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v5, 0x0

    .line 183
    move-object v5, v2

    .line 184
    const/4 v2, 0x0

    .line 185
    goto :goto_b

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    .line 188
    .line 189
    const-string v2, "error in parsing \""

    .line 190
    .line 191
    const-string v3, "\""

    .line 192
    .line 193
    invoke-static {v2, v4, v3}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :cond_e
    :goto_a
    new-array v5, v2, [F

    .line 202
    .line 203
    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    new-instance v4, Lr/b$a;

    .line 208
    .line 209
    invoke-direct {v4, v2, v5}, Lr/b$a;-><init>(C[F)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_f
    add-int/lit8 v2, v3, 0x1

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    move v4, v3

    .line 219
    move v3, v2

    .line 220
    const/4 v2, 0x0

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_10
    sub-int/2addr v3, v4

    .line 224
    const/4 v2, 0x1

    .line 225
    if-ne v3, v2, :cond_11

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-ge v4, v2, :cond_11

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const/4 v2, 0x0

    .line 238
    new-array v2, v2, [F

    .line 239
    .line 240
    new-instance v3, Lr/b$a;

    .line 241
    .line 242
    invoke-direct {v3, v0, v2}, Lr/b$a;-><init>(C[F)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    new-array v0, v0, [Lr/b$a;

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, [Lr/b$a;

    .line 259
    .line 260
    return-object v0

    .line 261
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lr/b;->c(Ljava/lang/String;)[Lr/b$a;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, v0}, Lr/b$a;->b([Lr/b$a;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e([Lr/b$a;)[Lr/b$a;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lr/b$a;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lr/b$a;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lr/b$a;-><init>(Lr/b$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
