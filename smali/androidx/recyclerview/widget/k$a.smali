.class public final Landroidx/recyclerview/widget/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/recyclerview/widget/k;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/k$a;->b:Landroidx/recyclerview/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    check-cast v0, Landroidx/recyclerview/widget/c;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    xor-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/recyclerview/widget/c;->g:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    xor-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    iget-object v5, v0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    xor-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    iget-object v7, v0, Landroidx/recyclerview/widget/c;->f:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    xor-int/lit8 v8, v8, 0x1

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    if-nez v8, :cond_0

    .line 46
    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const/4 v11, 0x0

    .line 60
    if-nez v10, :cond_c

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    iget-object v10, v0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    if-nez v12, :cond_1

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroidx/recyclerview/widget/c$b;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    throw v11

    .line 113
    :cond_2
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/recyclerview/widget/c$b;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    throw v11

    .line 123
    :cond_3
    :goto_0
    if-eqz v6, :cond_6

    .line 124
    .line 125
    new-instance v3, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    iget-object v9, v0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    if-nez v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_4

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    check-cast v10, Landroidx/recyclerview/widget/c$a;

    .line 158
    .line 159
    iget-object v10, v10, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/k$v;

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroidx/recyclerview/widget/c$a;

    .line 174
    .line 175
    iget-object v0, v0, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/k$v;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 181
    .line 182
    throw v11

    .line 183
    :cond_6
    :goto_2
    if-eqz v8, :cond_d

    .line 184
    .line 185
    new-instance v3, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    .line 192
    .line 193
    iget-object v5, v0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 199
    .line 200
    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    if-nez v4, :cond_9

    .line 204
    .line 205
    if-eqz v6, :cond_7

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_8

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroidx/recyclerview/widget/k$v;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    throw v11

    .line 235
    :cond_9
    :goto_3
    const-wide/16 v7, 0x0

    .line 236
    .line 237
    if-eqz v4, :cond_a

    .line 238
    .line 239
    iget-wide v4, v0, Landroidx/recyclerview/widget/k$g;->c:J

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_a
    move-wide v4, v7

    .line 243
    :goto_4
    if-eqz v6, :cond_b

    .line 244
    .line 245
    iget-wide v7, v0, Landroidx/recyclerview/widget/k$g;->d:J

    .line 246
    .line 247
    :cond_b
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Landroidx/recyclerview/widget/k$v;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 260
    .line 261
    throw v11

    .line 262
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroidx/recyclerview/widget/k$v;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    throw v11

    .line 272
    :cond_d
    :goto_5
    return-void
.end method
