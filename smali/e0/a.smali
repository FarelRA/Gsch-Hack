.class public final Le0/a;
.super Lh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/a$a;
    }
.end annotation


# instance fields
.field public final a:Le0/g;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z


# direct methods
.method public constructor <init>(Le0/g;)V
    .locals 1

    invoke-direct {p0}, Lh/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le0/a;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Le0/a;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le0/a;->r:Z

    iput-object p1, p0, Le0/a;->a:Le0/g;

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 5

    iget-boolean v0, p0, Le0/a;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Le0/g;->y:I

    iget-object v0, p0, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le0/a$a;

    iget-object v3, v3, Le0/a$a;->b:Le0/c;

    if-eqz v3, :cond_1

    iget v4, v3, Le0/c;->q:I

    add-int/2addr v4, p1

    iput v4, v3, Le0/c;->q:I

    sget v3, Le0/g;->y:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Le0/a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Le0/a;->a:Le0/g;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    check-cast v6, Le0/a$a;

    .line 19
    .line 20
    iget-object v7, v6, Le0/a$a;->b:Le0/c;

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    iget v8, p0, Le0/a;->g:I

    .line 25
    .line 26
    iget v9, p0, Le0/a;->h:I

    .line 27
    .line 28
    iget-object v10, v7, Le0/c;->K:Le0/c$b;

    .line 29
    .line 30
    if-nez v10, :cond_0

    .line 31
    .line 32
    if-nez v8, :cond_0

    .line 33
    .line 34
    if-nez v9, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v7}, Le0/c;->a()Le0/c$b;

    .line 38
    .line 39
    .line 40
    iget-object v10, v7, Le0/c;->K:Le0/c$b;

    .line 41
    .line 42
    iput v8, v10, Le0/c$b;->e:I

    .line 43
    .line 44
    iput v9, v10, Le0/c$b;->f:I

    .line 45
    .line 46
    :cond_1
    :goto_1
    iget v8, v6, Le0/a$a;->a:I

    .line 47
    .line 48
    packed-switch v8, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Unknown cmd: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v2, v6, Le0/a$a;->a:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :pswitch_1
    const/4 v8, 0x0

    .line 74
    invoke-virtual {v4, v8}, Le0/g;->V(Le0/c;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :pswitch_2
    invoke-virtual {v4, v7}, Le0/g;->V(Le0/c;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_3
    iget v8, v6, Le0/a$a;->c:I

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v7}, Le0/g;->c(Le0/c;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :pswitch_4
    iget v8, v6, Le0/a$a;->d:I

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-boolean v8, v7, Le0/c;->B:Z

    .line 100
    .line 101
    if-nez v8, :cond_2

    .line 102
    .line 103
    iput-boolean v5, v7, Le0/c;->B:Z

    .line 104
    .line 105
    iget-boolean v8, v7, Le0/c;->k:Z

    .line 106
    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    iget-object v8, v4, Le0/g;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    monitor-enter v8

    .line 112
    :try_start_0
    iget-object v9, v4, Le0/g;->d:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iput-boolean v2, v7, Le0/c;->k:Z

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw v0

    .line 124
    :pswitch_5
    iget v8, v6, Le0/a$a;->c:I

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-boolean v8, v7, Le0/c;->A:Z

    .line 133
    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    iput-boolean v2, v7, Le0/c;->A:Z

    .line 137
    .line 138
    iget-boolean v8, v7, Le0/c;->L:Z

    .line 139
    .line 140
    xor-int/2addr v8, v5

    .line 141
    iput-boolean v8, v7, Le0/c;->L:Z

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_6
    iget v8, v6, Le0/a$a;->d:I

    .line 145
    .line 146
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-boolean v8, v7, Le0/c;->A:Z

    .line 153
    .line 154
    if-nez v8, :cond_2

    .line 155
    .line 156
    iput-boolean v5, v7, Le0/c;->A:Z

    .line 157
    .line 158
    iget-boolean v8, v7, Le0/c;->L:Z

    .line 159
    .line 160
    xor-int/2addr v8, v5

    .line 161
    iput-boolean v8, v7, Le0/c;->L:Z

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_7
    iget v8, v6, Le0/a$a;->d:I

    .line 165
    .line 166
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v7}, Le0/g;->Q(Le0/c;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :pswitch_8
    iget v8, v6, Le0/a$a;->c:I

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Le0/c;->j(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v7, v2}, Le0/g;->b(Le0/c;Z)V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_2
    iget-boolean v8, p0, Le0/a;->r:Z

    .line 182
    .line 183
    if-nez v8, :cond_3

    .line 184
    .line 185
    iget v6, v6, Le0/a$a;->a:I

    .line 186
    .line 187
    if-eq v6, v5, :cond_3

    .line 188
    .line 189
    if-eqz v7, :cond_3

    .line 190
    .line 191
    invoke-virtual {v4, v7}, Le0/g;->L(Le0/c;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_4
    iget-boolean v0, p0, Le0/a;->r:Z

    .line 199
    .line 200
    if-nez v0, :cond_5

    .line 201
    .line 202
    iget v0, v4, Le0/g;->k:I

    .line 203
    .line 204
    invoke-virtual {v4, v0, v5}, Le0/g;->M(IZ)V

    .line 205
    .line 206
    .line 207
    :cond_5
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final h(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Le0/a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    iget-object v3, p0, Le0/a;->a:Le0/g;

    .line 10
    .line 11
    if-ltz v1, :cond_7

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Le0/a$a;

    .line 18
    .line 19
    iget-object v5, v4, Le0/a$a;->b:Le0/c;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v5, :cond_4

    .line 23
    .line 24
    iget v7, p0, Le0/a;->g:I

    .line 25
    .line 26
    sget v8, Le0/g;->y:I

    .line 27
    .line 28
    const/16 v8, 0x2002

    .line 29
    .line 30
    const/16 v9, 0x1001

    .line 31
    .line 32
    if-eq v7, v9, :cond_2

    .line 33
    .line 34
    const/16 v10, 0x1003

    .line 35
    .line 36
    if-eq v7, v10, :cond_1

    .line 37
    .line 38
    if-eq v7, v8, :cond_0

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/16 v8, 0x1001

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v8, 0x1003

    .line 46
    .line 47
    :cond_2
    :goto_1
    iget v7, p0, Le0/a;->h:I

    .line 48
    .line 49
    iget-object v9, v5, Le0/c;->K:Le0/c$b;

    .line 50
    .line 51
    if-nez v9, :cond_3

    .line 52
    .line 53
    if-nez v8, :cond_3

    .line 54
    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v5}, Le0/c;->a()Le0/c$b;

    .line 59
    .line 60
    .line 61
    iget-object v9, v5, Le0/c;->K:Le0/c$b;

    .line 62
    .line 63
    iput v8, v9, Le0/c$b;->e:I

    .line 64
    .line 65
    iput v7, v9, Le0/c$b;->f:I

    .line 66
    .line 67
    :cond_4
    :goto_2
    iget v7, v4, Le0/a$a;->a:I

    .line 68
    .line 69
    packed-switch v7, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "Unknown cmd: "

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v1, v4, Le0/a$a;->a:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :pswitch_1
    invoke-virtual {v3, v5}, Le0/g;->V(Le0/c;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :pswitch_2
    const/4 v6, 0x0

    .line 99
    invoke-virtual {v3, v6}, Le0/g;->V(Le0/c;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :pswitch_3
    iget v7, v4, Le0/a$a;->f:I

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Le0/c;->j(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-boolean v7, v5, Le0/c;->B:Z

    .line 112
    .line 113
    if-nez v7, :cond_5

    .line 114
    .line 115
    iput-boolean v2, v5, Le0/c;->B:Z

    .line 116
    .line 117
    iget-boolean v7, v5, Le0/c;->k:Z

    .line 118
    .line 119
    if-eqz v7, :cond_5

    .line 120
    .line 121
    iget-object v7, v3, Le0/g;->d:Ljava/util/ArrayList;

    .line 122
    .line 123
    monitor-enter v7

    .line 124
    :try_start_0
    iget-object v8, v3, Le0/g;->d:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iput-boolean v6, v5, Le0/c;->k:Z

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p1

    .line 136
    :pswitch_4
    iget v6, v4, Le0/a$a;->e:I

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Le0/c;->j(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v5}, Le0/g;->c(Le0/c;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :pswitch_5
    iget v6, v4, Le0/a$a;->f:I

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Le0/c;->j(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-boolean v6, v5, Le0/c;->A:Z

    .line 154
    .line 155
    if-nez v6, :cond_5

    .line 156
    .line 157
    iput-boolean v2, v5, Le0/c;->A:Z

    .line 158
    .line 159
    iget-boolean v6, v5, Le0/c;->L:Z

    .line 160
    .line 161
    xor-int/2addr v6, v2

    .line 162
    iput-boolean v6, v5, Le0/c;->L:Z

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_6
    iget v7, v4, Le0/a$a;->e:I

    .line 166
    .line 167
    invoke-virtual {v5, v7}, Le0/c;->j(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-boolean v7, v5, Le0/c;->A:Z

    .line 174
    .line 175
    if-eqz v7, :cond_5

    .line 176
    .line 177
    iput-boolean v6, v5, Le0/c;->A:Z

    .line 178
    .line 179
    iget-boolean v6, v5, Le0/c;->L:Z

    .line 180
    .line 181
    xor-int/2addr v6, v2

    .line 182
    iput-boolean v6, v5, Le0/c;->L:Z

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :pswitch_7
    iget v7, v4, Le0/a$a;->e:I

    .line 186
    .line 187
    invoke-virtual {v5, v7}, Le0/c;->j(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5, v6}, Le0/g;->b(Le0/c;Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :pswitch_8
    iget v6, v4, Le0/a$a;->f:I

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Le0/c;->j(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v5}, Le0/g;->Q(Le0/c;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_3
    iget-boolean v6, p0, Le0/a;->r:Z

    .line 203
    .line 204
    if-nez v6, :cond_6

    .line 205
    .line 206
    iget v4, v4, Le0/a$a;->a:I

    .line 207
    .line 208
    const/4 v6, 0x3

    .line 209
    if-eq v4, v6, :cond_6

    .line 210
    .line 211
    if-eqz v5, :cond_6

    .line 212
    .line 213
    invoke-virtual {v3, v5}, Le0/g;->L(Le0/c;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_7
    iget-boolean v0, p0, Le0/a;->r:Z

    .line 221
    .line 222
    if-nez v0, :cond_8

    .line 223
    .line 224
    if-eqz p1, :cond_8

    .line 225
    .line 226
    iget p1, v3, Le0/g;->k:I

    .line 227
    .line 228
    invoke-virtual {v3, p1, v2}, Le0/g;->M(IZ)V

    .line 229
    .line 230
    .line 231
    :cond_8
    return-void

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le0/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le0/a$a;

    iget-object v5, v5, Le0/a$a;->b:Le0/c;

    if-eqz v5, :cond_1

    iget v5, v5, Le0/c;->y:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le0/a;

    iget-object v7, v6, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    iget-object v9, v6, Le0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le0/a$a;

    iget-object v9, v9, Le0/a$a;->b:Le0/c;

    if-eqz v9, :cond_2

    iget v9, v9, Le0/c;->y:I

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    :goto_4
    if-ne v9, v5, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le0/a;->k:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le0/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Le0/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le0/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
