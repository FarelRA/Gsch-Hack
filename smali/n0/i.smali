.class public final Ln0/i;
.super Lm0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm0/m<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:Lm0/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/p$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm0/p$b;Lm0/p$a;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lm0/m;-><init>(Ljava/lang/String;Lm0/p$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/i;->n:Ljava/lang/Object;

    iput-object p2, p0, Ln0/i;->o:Lm0/p$b;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Ln0/i;->n:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ln0/i;->o:Lm0/p$b;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lm0/p$b;->a(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public final j(Lm0/l;)Lm0/p;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/l;",
            ")",
            "Lm0/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lm0/l;->b:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, v0, Lm0/l;->a:[B

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Ln0/d;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    new-instance v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    const-string v6, "Date"

    .line 31
    .line 32
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-static {v6}, Ln0/d;->b(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-wide/16 v9, 0x0

    .line 46
    .line 47
    :goto_1
    const-string v6, "Cache-Control"

    .line 48
    .line 49
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/String;

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    if-eqz v6, :cond_9

    .line 57
    .line 58
    const-string v12, ","

    .line 59
    .line 60
    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v12, 0x0

    .line 65
    const-wide/16 v13, 0x0

    .line 66
    .line 67
    const-wide/16 v15, 0x0

    .line 68
    .line 69
    :goto_2
    array-length v7, v6

    .line 70
    if-ge v11, v7, :cond_8

    .line 71
    .line 72
    aget-object v7, v6, v11

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-string v8, "no-cache"

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-nez v8, :cond_7

    .line 85
    .line 86
    const-string v8, "no-store"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_2

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_2
    const-string v8, "max-age="

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    const/16 v8, 0x8

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    const-string v8, "stale-while-revalidate="

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    const/16 v8, 0x17

    .line 123
    .line 124
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    const-string v8, "must-revalidate"

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_5

    .line 140
    .line 141
    const-string v8, "proxy-revalidate"

    .line 142
    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_6

    .line 148
    .line 149
    :cond_5
    const/4 v12, 0x1

    .line 150
    :catch_1
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_8
    const/4 v11, 0x1

    .line 157
    goto :goto_5

    .line 158
    :cond_9
    const/4 v12, 0x0

    .line 159
    const-wide/16 v13, 0x0

    .line 160
    .line 161
    const-wide/16 v15, 0x0

    .line 162
    .line 163
    :goto_5
    const-string v6, "Expires"

    .line 164
    .line 165
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v6, :cond_a

    .line 172
    .line 173
    invoke-static {v6}, Ln0/d;->b(Ljava/lang/String;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    goto :goto_6

    .line 178
    :cond_a
    const-wide/16 v6, 0x0

    .line 179
    .line 180
    :goto_6
    const-string v8, "Last-Modified"

    .line 181
    .line 182
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v8, :cond_b

    .line 189
    .line 190
    invoke-static {v8}, Ln0/d;->b(Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v17

    .line 194
    move-wide/from16 v19, v17

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_b
    const-wide/16 v19, 0x0

    .line 198
    .line 199
    :goto_7
    const-string v8, "ETag"

    .line 200
    .line 201
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v11, :cond_d

    .line 208
    .line 209
    const-wide/16 v6, 0x3e8

    .line 210
    .line 211
    mul-long v13, v13, v6

    .line 212
    .line 213
    add-long/2addr v4, v13

    .line 214
    if-eqz v12, :cond_c

    .line 215
    .line 216
    move-wide v15, v4

    .line 217
    goto :goto_8

    .line 218
    :cond_c
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->signum(J)I

    .line 219
    .line 220
    .line 221
    mul-long v15, v15, v6

    .line 222
    .line 223
    add-long/2addr v15, v4

    .line 224
    :goto_8
    move-wide v11, v15

    .line 225
    goto :goto_9

    .line 226
    :cond_d
    const-wide/16 v11, 0x0

    .line 227
    .line 228
    cmp-long v13, v9, v11

    .line 229
    .line 230
    if-lez v13, :cond_e

    .line 231
    .line 232
    cmp-long v13, v6, v9

    .line 233
    .line 234
    if-ltz v13, :cond_e

    .line 235
    .line 236
    sub-long/2addr v6, v9

    .line 237
    add-long/2addr v4, v6

    .line 238
    move-wide v11, v4

    .line 239
    goto :goto_9

    .line 240
    :cond_e
    move-wide v4, v11

    .line 241
    :goto_9
    new-instance v6, Lm0/b$a;

    .line 242
    .line 243
    invoke-direct {v6}, Lm0/b$a;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v2, v6, Lm0/b$a;->a:[B

    .line 247
    .line 248
    iput-object v8, v6, Lm0/b$a;->b:Ljava/lang/String;

    .line 249
    .line 250
    iput-wide v4, v6, Lm0/b$a;->f:J

    .line 251
    .line 252
    iput-wide v11, v6, Lm0/b$a;->e:J

    .line 253
    .line 254
    iput-wide v9, v6, Lm0/b$a;->c:J

    .line 255
    .line 256
    move-wide/from16 v4, v19

    .line 257
    .line 258
    iput-wide v4, v6, Lm0/b$a;->d:J

    .line 259
    .line 260
    iput-object v1, v6, Lm0/b$a;->g:Ljava/util/Map;

    .line 261
    .line 262
    iget-object v0, v0, Lm0/l;->c:Ljava/util/List;

    .line 263
    .line 264
    iput-object v0, v6, Lm0/b$a;->h:Ljava/util/List;

    .line 265
    .line 266
    move-object v0, v6

    .line 267
    :goto_a
    new-instance v1, Lm0/p;

    .line 268
    .line 269
    invoke-direct {v1, v3, v0}, Lm0/p;-><init>(Ljava/lang/String;Lm0/b$a;)V

    .line 270
    .line 271
    .line 272
    return-object v1
.end method
