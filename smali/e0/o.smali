.class public final Le0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/o$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Le0/p;

.field public static final c:Le0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Le0/o;->a:[I

    .line 9
    .line 10
    new-instance v0, Le0/p;

    .line 11
    .line 12
    invoke-direct {v0}, Le0/p;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Le0/o;->b:Le0/p;

    .line 16
    .line 17
    :try_start_0
    const-class v0, Lj0/e;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Le0/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    sput-object v0, Le0/o;->c:Le0/t;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;Lk/b;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lk/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lk/h;->c:I

    .line 2
    .line 3
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lk/h;->j(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public static b(Le0/a;Le0/a$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/a;",
            "Le0/a$a;",
            "Landroid/util/SparseArray<",
            "Le0/o$a;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v6, p1, Le0/a$a;->b:Le0/c;

    .line 2
    .line 3
    if-nez v6, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v7, v6, Le0/c;->y:I

    .line 7
    .line 8
    if-nez v7, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    if-eqz p3, :cond_2

    .line 12
    .line 13
    sget-object v0, Le0/o;->a:[I

    .line 14
    .line 15
    iget p1, p1, Le0/a$a;->a:I

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget p1, p1, Le0/a$a;->a:I

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eq p1, v0, :cond_a

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq p1, v2, :cond_7

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq p1, v2, :cond_5

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-eq p1, v2, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    if-eq p1, v2, :cond_7

    .line 37
    .line 38
    const/4 v1, 0x7

    .line 39
    if-eq p1, v1, :cond_a

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 p1, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    goto :goto_6

    .line 46
    :cond_3
    if-eqz p4, :cond_4

    .line 47
    .line 48
    iget-boolean p1, v6, Le0/c;->L:Z

    .line 49
    .line 50
    if-eqz p1, :cond_c

    .line 51
    .line 52
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 53
    .line 54
    if-nez p1, :cond_c

    .line 55
    .line 56
    iget-boolean p1, v6, Le0/c;->k:Z

    .line 57
    .line 58
    if-eqz p1, :cond_c

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_5
    if-eqz p4, :cond_6

    .line 65
    .line 66
    iget-boolean p1, v6, Le0/c;->L:Z

    .line 67
    .line 68
    if-eqz p1, :cond_9

    .line 69
    .line 70
    iget-boolean p1, v6, Le0/c;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_9

    .line 73
    .line 74
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 75
    .line 76
    if-eqz p1, :cond_9

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    iget-boolean p1, v6, Le0/c;->k:Z

    .line 80
    .line 81
    if-eqz p1, :cond_9

    .line 82
    .line 83
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 84
    .line 85
    if-nez p1, :cond_9

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    iget-boolean p1, v6, Le0/c;->k:Z

    .line 89
    .line 90
    if-eqz p4, :cond_8

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    if-eqz p1, :cond_9

    .line 94
    .line 95
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 96
    .line 97
    if-nez p1, :cond_9

    .line 98
    .line 99
    :goto_1
    const/4 p1, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_9
    :goto_2
    const/4 p1, 0x0

    .line 102
    :goto_3
    const/4 v2, 0x1

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v8, 0x1

    .line 105
    goto :goto_7

    .line 106
    :cond_a
    if-eqz p4, :cond_b

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_b
    iget-boolean p1, v6, Le0/c;->k:Z

    .line 114
    .line 115
    if-nez p1, :cond_c

    .line 116
    .line 117
    iget-boolean p1, v6, Le0/c;->A:Z

    .line 118
    .line 119
    if-nez p1, :cond_c

    .line 120
    .line 121
    :goto_4
    const/4 p1, 0x1

    .line 122
    goto :goto_5

    .line 123
    :cond_c
    const/4 p1, 0x0

    .line 124
    :goto_5
    const/4 v1, 0x1

    .line 125
    move v1, p1

    .line 126
    const/4 p1, 0x1

    .line 127
    :goto_6
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    move v3, p1

    .line 130
    const/4 p1, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    :goto_7
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Le0/o$a;

    .line 137
    .line 138
    if-eqz v1, :cond_e

    .line 139
    .line 140
    if-nez v2, :cond_d

    .line 141
    .line 142
    new-instance v1, Le0/o$a;

    .line 143
    .line 144
    invoke-direct {v1}, Le0/o$a;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v2, v1

    .line 151
    :cond_d
    iput-object v6, v2, Le0/o$a;->a:Le0/c;

    .line 152
    .line 153
    iput-boolean p3, v2, Le0/o$a;->b:Z

    .line 154
    .line 155
    iput-object p0, v2, Le0/o$a;->c:Le0/a;

    .line 156
    .line 157
    :cond_e
    move-object v9, v2

    .line 158
    const/4 v10, 0x0

    .line 159
    if-nez p4, :cond_10

    .line 160
    .line 161
    if-eqz v3, :cond_10

    .line 162
    .line 163
    if-eqz v9, :cond_f

    .line 164
    .line 165
    iget-object v1, v9, Le0/o$a;->d:Le0/c;

    .line 166
    .line 167
    if-ne v1, v6, :cond_f

    .line 168
    .line 169
    iput-object v10, v9, Le0/o$a;->d:Le0/c;

    .line 170
    .line 171
    :cond_f
    iget v1, v6, Le0/c;->b:I

    .line 172
    .line 173
    if-ge v1, v0, :cond_10

    .line 174
    .line 175
    iget-object v1, p0, Le0/a;->a:Le0/g;

    .line 176
    .line 177
    iget v2, v1, Le0/g;->k:I

    .line 178
    .line 179
    if-lt v2, v0, :cond_10

    .line 180
    .line 181
    iget-boolean p0, p0, Le0/a;->r:Z

    .line 182
    .line 183
    if-nez p0, :cond_10

    .line 184
    .line 185
    invoke-virtual {v1, v6}, Le0/g;->K(Le0/c;)V

    .line 186
    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v4, 0x0

    .line 191
    const/4 v5, 0x0

    .line 192
    move-object v0, v1

    .line 193
    move-object v1, v6

    .line 194
    invoke-virtual/range {v0 .. v5}, Le0/g;->N(Le0/c;IIIZ)V

    .line 195
    .line 196
    .line 197
    :cond_10
    if-eqz p1, :cond_13

    .line 198
    .line 199
    if-eqz v9, :cond_11

    .line 200
    .line 201
    iget-object p0, v9, Le0/o$a;->d:Le0/c;

    .line 202
    .line 203
    if-nez p0, :cond_13

    .line 204
    .line 205
    :cond_11
    if-nez v9, :cond_12

    .line 206
    .line 207
    new-instance p0, Le0/o$a;

    .line 208
    .line 209
    invoke-direct {p0}, Le0/o$a;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move-object v9, p0

    .line 216
    :cond_12
    iput-object v6, v9, Le0/o$a;->d:Le0/c;

    .line 217
    .line 218
    iput-boolean p3, v9, Le0/o$a;->e:Z

    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    :cond_13
    if-nez p4, :cond_14

    .line 224
    .line 225
    if-eqz v8, :cond_14

    .line 226
    .line 227
    if-eqz v9, :cond_14

    .line 228
    .line 229
    iget-object p0, v9, Le0/o$a;->a:Le0/c;

    .line 230
    .line 231
    if-ne p0, v6, :cond_14

    .line 232
    .line 233
    iput-object v10, v9, Le0/o$a;->a:Le0/c;

    .line 234
    .line 235
    :cond_14
    return-void
.end method

.method public static c(Le0/t;Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/t;",
            "Lk/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Le0/o$a;",
            ")",
            "Lk/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p3, Le0/o$a;->a:Le0/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lk/h;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {p1}, Lk/h;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static d(Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/h;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p2, Le0/o$a;->d:Le0/c;

    .line 12
    .line 13
    new-instance p1, Lk/b;

    .line 14
    .line 15
    invoke-direct {p1}, Lk/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Le0/t;->f(Lk/b;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lk/h;->clear()V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public static e(Le0/c;Le0/c;)Le0/t;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p0, :cond_5

    .line 8
    .line 9
    iget-object v2, p0, Le0/c;->K:Le0/c$b;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v2, Le0/c$b;->g:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v3, Le0/c;->Q:Ljava/lang/Object;

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    :goto_0
    move-object v2, v1

    .line 21
    :cond_1
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object p0, p0, Le0/c;->K:Le0/c$b;

    .line 27
    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    iget-object p0, p0, Le0/c$b;->i:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v2, Le0/c;->Q:Ljava/lang/Object;

    .line 34
    .line 35
    if-ne p0, v2, :cond_4

    .line 36
    .line 37
    :goto_1
    move-object p0, v1

    .line 38
    :cond_4
    if-eqz p0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_5
    if-eqz p1, :cond_8

    .line 44
    .line 45
    iget-object p0, p1, Le0/c;->K:Le0/c$b;

    .line 46
    .line 47
    if-nez p0, :cond_6

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_6
    iget-object p0, p0, Le0/c$b;->h:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object p1, Le0/c;->Q:Ljava/lang/Object;

    .line 53
    .line 54
    if-ne p0, p1, :cond_7

    .line 55
    .line 56
    :goto_2
    move-object p0, v1

    .line 57
    :cond_7
    if-eqz p0, :cond_8

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_9

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_9
    const/4 p0, 0x1

    .line 70
    const/4 p1, 0x0

    .line 71
    sget-object v2, Le0/o;->b:Le0/p;

    .line 72
    .line 73
    if-eqz v2, :cond_c

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x0

    .line 80
    :goto_3
    if-ge v4, v3, :cond_b

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v5}, Le0/p;->d(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_a

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    goto :goto_4

    .line 94
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_b
    const/4 v3, 0x1

    .line 98
    :goto_4
    if-eqz v3, :cond_c

    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_c
    sget-object v3, Le0/o;->c:Le0/t;

    .line 102
    .line 103
    if-eqz v3, :cond_f

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/4 v5, 0x0

    .line 110
    :goto_5
    if-ge v5, v4, :cond_e

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v3, v6}, Le0/t;->d(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_d

    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    goto :goto_6

    .line 124
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_e
    :goto_6
    if-eqz p0, :cond_f

    .line 128
    .line 129
    return-object v3

    .line 130
    :cond_f
    if-nez v2, :cond_10

    .line 131
    .line 132
    if-nez v3, :cond_10

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p1, "Invalid Transition types"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public static f(Le0/t;Ljava/lang/Object;Le0/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/t;",
            "Ljava/lang/Object;",
            "Le0/c;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Le0/t;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static g(Lk/b;Le0/o$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Le0/o$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le0/o$a;->c:Le0/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object p2, p1, Le0/a;->p:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Le0/a;->p:Ljava/util/ArrayList;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p1, Le0/a;->q:Ljava/util/ArrayList;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/view/View;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v0
.end method

.method public static h(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Le0/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/g;",
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Le0/g;->k:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le0/a;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1
    iget-object v8, v9, Le0/a;->a:Le0/g;

    iget-object v8, v8, Le0/g;->m:Lh/c;

    invoke-virtual {v8}, Lh/c;->e()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, v9, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    :goto_1
    if-ltz v10, :cond_3

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le0/a$a;

    invoke-static {v9, v11, v5, v6, v4}, Le0/o;->b(Le0/a;Le0/a$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 2
    :cond_2
    iget-object v10, v9, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    iget-object v12, v9, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le0/a$a;

    invoke-static {v9, v12, v5, v8, v4}, Le0/o;->b(Le0/a;Le0/a$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_41

    new-instance v6, Landroid/view/View;

    iget-object v7, v0, Le0/g;->l:Le0/e;

    .line 4
    iget-object v7, v7, Le0/e;->b:Landroid/content/Context;

    .line 5
    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v7, 0x0

    move-object v13, v0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_41

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 6
    new-instance v12, Lk/b;

    invoke-direct {v12}, Lk/b;-><init>()V

    add-int/lit8 v8, v3, -0x1

    move/from16 v11, p3

    :goto_5
    if-lt v8, v11, :cond_c

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le0/a;

    .line 7
    iget-object v10, v9, Le0/a;->b:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Le0/a$a;

    iget-object v0, v0, Le0/a$a;->b:Le0/c;

    if-eqz v0, :cond_5

    iget v0, v0, Le0/c;->y:I

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_6

    if-ne v0, v7, :cond_6

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_8

    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, v9, Le0/a;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v10, v9, Le0/a;->p:Ljava/util/ArrayList;

    iget-object v9, v9, Le0/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    move-object/from16 v29, v10

    move-object v10, v9

    move-object/from16 v9, v29

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_b

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v12, v1, v3}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    invoke-virtual {v12, v1, v2}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v1, v17

    goto :goto_9

    :cond_b
    :goto_b
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    goto/16 :goto_5

    .line 10
    :cond_c
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/o$a;

    if-eqz v4, :cond_29

    .line 11
    iget-object v1, v13, Le0/g;->m:Lh/c;

    invoke-virtual {v1}, Lh/c;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v13, Le0/g;->m:Lh/c;

    invoke-virtual {v1, v7}, Lh/c;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    iget-object v2, v0, Le0/o$a;->a:Le0/c;

    iget-object v3, v0, Le0/o$a;->d:Le0/c;

    invoke-static {v3, v2}, Le0/o;->e(Le0/c;Le0/c;)Le0/t;

    move-result-object v7

    if-nez v7, :cond_f

    :goto_d
    move-object/from16 v24, v5

    move/from16 v25, v14

    move/from16 v26, v15

    goto/16 :goto_1c

    :cond_f
    iget-boolean v8, v0, Le0/o$a;->b:Z

    iget-boolean v9, v0, Le0/o$a;->e:Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_10

    const/4 v8, 0x0

    move-object v4, v8

    goto :goto_f

    :cond_10
    if-eqz v8, :cond_12

    .line 12
    iget-object v8, v2, Le0/c;->K:Le0/c$b;

    if-nez v8, :cond_11

    goto :goto_e

    :cond_11
    iget-object v8, v8, Le0/c$b;->h:Ljava/lang/Object;

    sget-object v4, Le0/c;->Q:Ljava/lang/Object;

    if-ne v8, v4, :cond_13

    :cond_12
    :goto_e
    const/4 v8, 0x0

    .line 13
    :cond_13
    invoke-virtual {v7, v8}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_f
    if-nez v3, :cond_14

    const/4 v8, 0x0

    goto :goto_11

    :cond_14
    if-eqz v9, :cond_16

    .line 14
    iget-object v8, v3, Le0/c;->K:Le0/c$b;

    if-nez v8, :cond_15

    goto :goto_10

    :cond_15
    iget-object v8, v8, Le0/c$b;->g:Ljava/lang/Object;

    sget-object v9, Le0/c;->Q:Ljava/lang/Object;

    if-ne v8, v9, :cond_17

    :cond_16
    :goto_10
    const/4 v8, 0x0

    .line 15
    :cond_17
    invoke-virtual {v7, v8}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 16
    :goto_11
    iget-object v9, v0, Le0/o$a;->a:Le0/c;

    move-object/from16 v24, v5

    iget-object v5, v0, Le0/o$a;->d:Le0/c;

    if-nez v9, :cond_28

    if-eqz v9, :cond_1f

    if-nez v5, :cond_18

    goto/16 :goto_16

    :cond_18
    iget-boolean v11, v0, Le0/o$a;->b:Z

    invoke-virtual {v12}, Lk/h;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_19

    const/16 v16, 0x0

    move/from16 v25, v14

    move/from16 v26, v15

    :goto_12
    move-object/from16 v14, v16

    goto :goto_15

    :cond_19
    move/from16 v25, v14

    if-eqz v11, :cond_1b

    .line 17
    iget-object v14, v5, Le0/c;->K:Le0/c$b;

    if-nez v14, :cond_1a

    goto :goto_13

    :cond_1a
    iget-object v14, v14, Le0/c$b;->i:Ljava/lang/Object;

    move/from16 v26, v15

    sget-object v15, Le0/c;->Q:Ljava/lang/Object;

    if-ne v14, v15, :cond_1c

    goto :goto_14

    :cond_1b
    :goto_13
    move/from16 v26, v15

    :goto_14
    const/4 v14, 0x0

    .line 18
    :cond_1c
    invoke-virtual {v7, v14}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Le0/t;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_12

    .line 19
    :goto_15
    invoke-static {v12, v14, v0}, Le0/o;->d(Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;

    invoke-static {v7, v12, v14, v0}, Le0/o;->c(Le0/t;Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;

    invoke-virtual {v12}, Lk/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez v4, :cond_1d

    if-nez v8, :cond_1d

    goto :goto_17

    :cond_1d
    const/16 v21, 0x0

    const/16 v23, 0x0

    new-instance v0, Le0/m;

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v23}, Le0/m;-><init>(Le0/c;Le0/c;ZLk/b;Landroid/view/View;Le0/t;Landroid/graphics/Rect;)V

    invoke-static {v1, v0}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_1e
    invoke-virtual {v12}, Lk/b;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v13, v1, v0}, Le0/o;->a(Ljava/util/ArrayList;Lk/b;Ljava/util/Collection;)V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    :goto_16
    move/from16 v25, v14

    move/from16 v26, v15

    :goto_17
    if-nez v4, :cond_20

    if-nez v8, :cond_20

    goto/16 :goto_1c

    .line 20
    :cond_20
    invoke-static {v7, v8, v3, v13, v6}, Le0/o;->f(Le0/t;Ljava/lang/Object;Le0/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v4, v2, v10, v6}, Le0/o;->f(Le0/t;Ljava/lang/Object;Le0/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x4

    invoke-static {v2, v5}, Le0/o;->h(Ljava/util/ArrayList;I)V

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v7, v8, v4, v5}, Le0/t;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_27

    if-eqz v3, :cond_21

    if-eqz v8, :cond_21

    .line 22
    iget-boolean v9, v3, Le0/c;->k:Z

    if-eqz v9, :cond_21

    iget-boolean v9, v3, Le0/c;->A:Z

    if-eqz v9, :cond_21

    iget-boolean v9, v3, Le0/c;->L:Z

    if-eqz v9, :cond_21

    .line 23
    invoke-virtual {v3}, Le0/c;->a()Le0/c$b;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    .line 24
    invoke-virtual {v7, v8, v9, v0}, Le0/t;->l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v3, v3, Le0/c;->G:Landroid/view/ViewGroup;

    new-instance v9, Le0/k;

    invoke-direct {v9, v0}, Le0/k;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3, v9}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 25
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v9, :cond_22

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    sget-object v15, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-virtual {v14}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v15

    .line 27
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    .line 28
    invoke-virtual {v14, v15}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_22
    const/16 v22, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v0

    move-object/from16 v23, v10

    .line 29
    invoke-virtual/range {v16 .. v23}, Le0/t;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v1, v5}, Le0/t;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v0, :cond_26

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v11, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v11

    .line 32
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_23

    goto :goto_1b

    :cond_23
    const/4 v14, 0x0

    .line 33
    invoke-virtual {v8, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v12, v11, v14}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 35
    check-cast v8, Ljava/lang/String;

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v0, :cond_25

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 36
    invoke-virtual {v8, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1b

    :cond_24
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    :cond_25
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 37
    :cond_26
    new-instance v5, Le0/q;

    move-object/from16 v16, v5

    move/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Le0/q;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v1, v5}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 38
    invoke-static {v2, v9}, Le0/o;->h(Ljava/util/ArrayList;I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v13, v10}, Le0/t;->n(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_27
    :goto_1c
    move-object/from16 v13, p0

    goto/16 :goto_2d

    :cond_28
    const/4 v0, 0x0

    .line 39
    throw v0

    :cond_29
    move-object/from16 v24, v5

    move/from16 v25, v14

    move/from16 v26, v15

    .line 40
    iget-object v1, v13, Le0/g;->m:Lh/c;

    invoke-virtual {v1}, Lh/c;->e()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v13, Le0/g;->m:Lh/c;

    invoke-virtual {v1, v7}, Lh/c;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1d

    :cond_2a
    const/4 v1, 0x0

    :goto_1d
    if-nez v1, :cond_2b

    goto :goto_1e

    :cond_2b
    iget-object v2, v0, Le0/o$a;->a:Le0/c;

    iget-object v3, v0, Le0/o$a;->d:Le0/c;

    invoke-static {v3, v2}, Le0/o;->e(Le0/c;Le0/c;)Le0/t;

    move-result-object v4

    if-nez v4, :cond_2c

    :goto_1e
    move-object/from16 v23, v13

    goto/16 :goto_29

    :cond_2c
    iget-boolean v5, v0, Le0/o$a;->b:Z

    iget-boolean v7, v0, Le0/o$a;->e:Z

    if-nez v2, :cond_2d

    const/4 v5, 0x0

    goto :goto_20

    :cond_2d
    if-eqz v5, :cond_2f

    .line 41
    iget-object v5, v2, Le0/c;->K:Le0/c$b;

    if-nez v5, :cond_2e

    goto :goto_1f

    :cond_2e
    iget-object v5, v5, Le0/c$b;->h:Ljava/lang/Object;

    sget-object v8, Le0/c;->Q:Ljava/lang/Object;

    if-ne v5, v8, :cond_30

    :cond_2f
    :goto_1f
    const/4 v5, 0x0

    .line 42
    :cond_30
    invoke-virtual {v4, v5}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_20
    if-nez v3, :cond_31

    const/4 v7, 0x0

    :goto_21
    move-object v15, v7

    goto :goto_23

    :cond_31
    if-eqz v7, :cond_33

    .line 43
    iget-object v7, v3, Le0/c;->K:Le0/c$b;

    if-nez v7, :cond_32

    goto :goto_22

    :cond_32
    iget-object v7, v7, Le0/c$b;->g:Ljava/lang/Object;

    sget-object v8, Le0/c;->Q:Ljava/lang/Object;

    if-ne v7, v8, :cond_34

    :cond_33
    :goto_22
    const/4 v7, 0x0

    .line 44
    :cond_34
    invoke-virtual {v4, v7}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_21

    .line 45
    :goto_23
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v10, v0, Le0/o$a;->a:Le0/c;

    iget-object v9, v0, Le0/o$a;->d:Le0/c;

    if-eqz v10, :cond_3c

    if-nez v9, :cond_35

    goto/16 :goto_27

    :cond_35
    iget-boolean v8, v0, Le0/o$a;->b:Z

    invoke-virtual {v12}, Lk/h;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v7, 0x0

    move/from16 v16, v8

    goto :goto_26

    :cond_36
    if-eqz v8, :cond_38

    .line 47
    iget-object v7, v9, Le0/c;->K:Le0/c$b;

    if-nez v7, :cond_37

    goto :goto_24

    :cond_37
    iget-object v7, v7, Le0/c$b;->i:Ljava/lang/Object;

    move/from16 v16, v8

    sget-object v8, Le0/c;->Q:Ljava/lang/Object;

    if-ne v7, v8, :cond_39

    goto :goto_25

    :cond_38
    :goto_24
    move/from16 v16, v8

    :goto_25
    const/4 v7, 0x0

    .line 48
    :cond_39
    invoke-virtual {v4, v7}, Le0/t;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Le0/t;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    :goto_26
    invoke-static {v12, v7, v0}, Le0/o;->d(Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;

    invoke-virtual {v12}, Lk/h;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3b

    const/16 v20, 0x0

    if-nez v5, :cond_3a

    if-nez v15, :cond_3a

    goto :goto_27

    :cond_3a
    const/16 v19, 0x0

    new-instance v8, Le0/n;

    move-object v7, v8

    move-object/from16 v27, v8

    move-object v8, v4

    move-object/from16 v17, v9

    move-object v9, v12

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    move-object/from16 v22, v11

    move-object v11, v0

    move-object v0, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v13

    move-object v13, v6

    move-object/from16 v21, v14

    move-object/from16 v14, v18

    move-object/from16 v28, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v5

    invoke-direct/range {v7 .. v19}, Le0/n;-><init>(Le0/t;Lk/b;Ljava/lang/Object;Le0/o$a;Ljava/util/ArrayList;Landroid/view/View;Le0/c;Le0/c;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v7, v27

    invoke-static {v1, v7}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    move-object/from16 v8, v20

    goto :goto_28

    :cond_3b
    const/4 v0, 0x0

    throw v0

    :cond_3c
    :goto_27
    move-object/from16 v22, v11

    move-object v0, v12

    move-object/from16 v23, v13

    move-object/from16 v21, v14

    move-object/from16 v28, v15

    const/4 v7, 0x0

    move-object v8, v7

    :goto_28
    move-object/from16 v9, v28

    if-nez v5, :cond_3d

    if-nez v9, :cond_3d

    :goto_29
    goto/16 :goto_2c

    :cond_3d
    move-object/from16 v10, v21

    .line 50
    invoke-static {v4, v9, v3, v10, v6}, Le0/o;->f(Le0/t;Ljava/lang/Object;Le0/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3e

    goto :goto_2a

    :cond_3e
    move-object v13, v9

    goto :goto_2b

    :cond_3f
    :goto_2a
    move-object v13, v7

    :goto_2b
    invoke-virtual {v4, v5, v6}, Le0/t;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 51
    invoke-virtual {v4, v13, v5, v8}, Le0/t;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_40

    .line 52
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    move-object v15, v12

    move-object/from16 v16, v5

    move-object/from16 v17, v27

    move-object/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v21, v22

    invoke-virtual/range {v14 .. v21}, Le0/t;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 53
    new-instance v15, Le0/l;

    move-object v7, v15

    move-object v8, v5

    move-object v9, v4

    move-object v10, v6

    move-object v11, v2

    move-object v2, v12

    move-object/from16 v12, v22

    move-object v5, v13

    move-object/from16 v13, v27

    move-object v14, v3

    move-object v3, v15

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Le0/l;-><init>(Ljava/lang/Object;Le0/t;Landroid/view/View;Le0/c;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 54
    new-instance v3, Le0/r;

    move-object/from16 v5, v22

    invoke-direct {v3, v5, v0}, Le0/r;-><init>(Ljava/util/ArrayList;Lk/b;)V

    invoke-static {v1, v3}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v4, v1, v2}, Le0/t;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 56
    new-instance v2, Le0/s;

    invoke-direct {v2, v5, v0}, Le0/s;-><init>(Ljava/util/ArrayList;Lk/b;)V

    invoke-static {v1, v2}, Le0/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    :cond_40
    :goto_2c
    move-object/from16 v13, v23

    :goto_2d
    add-int/lit8 v14, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, v24

    move/from16 v15, v26

    goto/16 :goto_4

    :cond_41
    return-void
.end method
