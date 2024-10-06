.class public final Landroidx/recyclerview/widget/k$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$v;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$v;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$v;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Landroidx/recyclerview/widget/k$o;

.field public final synthetic g:Landroidx/recyclerview/widget/k;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/k$p;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/k$p;->d:I

    iput p1, p0, Landroidx/recyclerview/widget/k$p;->e:I

    return-void
.end method

.method public static d(Landroidx/recyclerview/widget/k$v;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$v;->f()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$s;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/a;->a(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "invalid position "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ". State item count is "

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$s;->a()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k$p;->c(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Landroidx/recyclerview/widget/k;->l0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->V:Landroidx/recyclerview/widget/e$b;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, v0, Landroidx/recyclerview/widget/e$b;->c:I

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/recyclerview/widget/k$v;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v2, v1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 13
    .line 14
    and-int/lit16 v3, v2, 0x4000

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    const/4 v6, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    and-int/lit16 v2, v2, -0x4001

    .line 27
    .line 28
    or-int/2addr v2, v4

    .line 29
    iput v2, v1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 30
    .line 31
    invoke-static {v6, v6}, Ly/m;->f(Landroid/view/View;Ly/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v3, v2, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 40
    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/recyclerview/widget/k;->f:Landroidx/recyclerview/widget/r;

    .line 44
    .line 45
    iget-object v3, v2, Landroidx/recyclerview/widget/r;->b:Lk/e;

    .line 46
    .line 47
    iget-boolean v7, v3, Lk/e;->a:Z

    .line 48
    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Lk/e;->d()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget v7, v3, Lk/e;->d:I

    .line 55
    .line 56
    sub-int/2addr v7, v5

    .line 57
    :goto_1
    if-ltz v7, :cond_4

    .line 58
    .line 59
    invoke-virtual {v3, v7}, Lk/e;->g(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-ne v1, v8, :cond_3

    .line 64
    .line 65
    iget-object v8, v3, Lk/e;->c:[Ljava/lang/Object;

    .line 66
    .line 67
    aget-object v9, v8, v7

    .line 68
    .line 69
    sget-object v10, Lk/e;->e:Ljava/lang/Object;

    .line 70
    .line 71
    if-eq v9, v10, :cond_4

    .line 72
    .line 73
    aput-object v10, v8, v7

    .line 74
    .line 75
    iput-boolean v5, v3, Lk/e;->a:Z

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :goto_2
    iget-object v2, v2, Landroidx/recyclerview/widget/r;->a:Lk/b;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/recyclerview/widget/r$a;

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    sget-object v3, Landroidx/recyclerview/widget/r$a;->a:Lx/b;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Lx/b;->b(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_5
    iput-object v6, v1, Landroidx/recyclerview/widget/k$v;->k:Landroidx/recyclerview/widget/k;

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 99
    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    new-instance v2, Landroidx/recyclerview/widget/k$o;

    .line 103
    .line 104
    invoke-direct {v2}, Landroidx/recyclerview/widget/k$o;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v2, p0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 108
    .line 109
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v2, v2, Landroidx/recyclerview/widget/k$o;->a:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Landroidx/recyclerview/widget/k$o$a;

    .line 121
    .line 122
    if-nez v3, :cond_7

    .line 123
    .line 124
    new-instance v3, Landroidx/recyclerview/widget/k$o$a;

    .line 125
    .line 126
    invoke-direct {v3}, Landroidx/recyclerview/widget/k$o$a;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget-object v3, v3, Landroidx/recyclerview/widget/k$o$a;->a:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroidx/recyclerview/widget/k$o$a;

    .line 139
    .line 140
    iget v2, v2, Landroidx/recyclerview/widget/k$o$a;->b:I

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-gt v2, v5, :cond_8

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    iput v4, v1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 150
    .line 151
    const/4 v2, -0x1

    .line 152
    iput v2, v1, Landroidx/recyclerview/widget/k$v;->a:I

    .line 153
    .line 154
    iput v2, v1, Landroidx/recyclerview/widget/k$v;->b:I

    .line 155
    .line 156
    const-wide/16 v7, -0x1

    .line 157
    .line 158
    iput-wide v7, v1, Landroidx/recyclerview/widget/k$v;->c:J

    .line 159
    .line 160
    iput v2, v1, Landroidx/recyclerview/widget/k$v;->d:I

    .line 161
    .line 162
    iput v4, v1, Landroidx/recyclerview/widget/k$v;->h:I

    .line 163
    .line 164
    iput-object v6, v1, Landroidx/recyclerview/widget/k$v;->e:Landroidx/recyclerview/widget/k$v;

    .line 165
    .line 166
    iget-object v2, v1, Landroidx/recyclerview/widget/k$v;->g:Ljava/util/ArrayList;

    .line 167
    .line 168
    if-eqz v2, :cond_9

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    :cond_9
    iget v2, v1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 174
    .line 175
    and-int/lit16 v2, v2, -0x401

    .line 176
    .line 177
    iput v2, v1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    sget-object v2, Landroidx/recyclerview/widget/k;->j0:[I

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final e(IJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 5
    .line 6
    if-ltz v1, :cond_2a

    .line 7
    .line 8
    iget-object v3, v2, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k$s;->a()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_2a

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 17
    .line 18
    iget-boolean v4, v3, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x20

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    if-eqz v4, :cond_5

    .line 26
    .line 27
    iget-object v4, v0, Landroidx/recyclerview/widget/k$p;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v4, :cond_4

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v9, 0x0

    .line 39
    :goto_0
    if-ge v9, v4, :cond_3

    .line 40
    .line 41
    iget-object v10, v0, Landroidx/recyclerview/widget/k$p;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    check-cast v10, Landroidx/recyclerview/widget/k$v;

    .line 48
    .line 49
    iget v11, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 50
    .line 51
    and-int/2addr v11, v6

    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v11, 0x0

    .line 57
    :goto_1
    if-nez v11, :cond_2

    .line 58
    .line 59
    invoke-virtual {v10}, Landroidx/recyclerview/widget/k$v;->c()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-ne v11, v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/k$v;->b(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    throw v5

    .line 73
    :cond_4
    :goto_2
    move-object v10, v5

    .line 74
    :goto_3
    if-eqz v10, :cond_6

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    move-object v10, v5

    .line 79
    :cond_6
    const/4 v4, 0x0

    .line 80
    :goto_4
    const/4 v9, 0x4

    .line 81
    if-nez v10, :cond_14

    .line 82
    .line 83
    iget-object v10, v0, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    const/4 v12, 0x0

    .line 90
    :goto_5
    if-ge v12, v11, :cond_a

    .line 91
    .line 92
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    check-cast v13, Landroidx/recyclerview/widget/k$v;

    .line 97
    .line 98
    iget v14, v13, Landroidx/recyclerview/widget/k$v;->f:I

    .line 99
    .line 100
    and-int/2addr v14, v6

    .line 101
    if-eqz v14, :cond_7

    .line 102
    .line 103
    const/4 v14, 0x1

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    const/4 v14, 0x0

    .line 106
    :goto_6
    if-nez v14, :cond_9

    .line 107
    .line 108
    invoke-virtual {v13}, Landroidx/recyclerview/widget/k$v;->c()I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-ne v14, v1, :cond_9

    .line 113
    .line 114
    invoke-virtual {v13}, Landroidx/recyclerview/widget/k$v;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-nez v14, :cond_9

    .line 119
    .line 120
    iget-boolean v14, v3, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 121
    .line 122
    if-nez v14, :cond_8

    .line 123
    .line 124
    invoke-virtual {v13}, Landroidx/recyclerview/widget/k$v;->e()Z

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    if-nez v14, :cond_9

    .line 129
    .line 130
    :cond_8
    invoke-virtual {v13, v6}, Landroidx/recyclerview/widget/k$v;->b(I)V

    .line 131
    .line 132
    .line 133
    move-object v10, v13

    .line 134
    goto :goto_8

    .line 135
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_a
    iget-object v6, v2, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 139
    .line 140
    iget-object v10, v6, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-gtz v11, :cond_13

    .line 147
    .line 148
    iget-object v6, v0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    const/4 v11, 0x0

    .line 155
    :goto_7
    if-ge v11, v10, :cond_c

    .line 156
    .line 157
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    check-cast v12, Landroidx/recyclerview/widget/k$v;

    .line 162
    .line 163
    invoke-virtual {v12}, Landroidx/recyclerview/widget/k$v;->d()Z

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-nez v13, :cond_b

    .line 168
    .line 169
    invoke-virtual {v12}, Landroidx/recyclerview/widget/k$v;->c()I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-ne v13, v1, :cond_b

    .line 174
    .line 175
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-object v10, v12

    .line 179
    goto :goto_8

    .line 180
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_c
    move-object v10, v5

    .line 184
    :goto_8
    if-eqz v10, :cond_14

    .line 185
    .line 186
    invoke-virtual {v10}, Landroidx/recyclerview/widget/k$v;->e()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_11

    .line 191
    .line 192
    iget-boolean v4, v3, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 193
    .line 194
    if-nez v4, :cond_10

    .line 195
    .line 196
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/k$v;->b(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10}, Landroidx/recyclerview/widget/k$v;->f()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_e

    .line 204
    .line 205
    iget v1, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 206
    .line 207
    and-int/lit8 v2, v1, 0x20

    .line 208
    .line 209
    if-eqz v2, :cond_d

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_d
    const/4 v7, 0x0

    .line 213
    :goto_9
    if-eqz v7, :cond_f

    .line 214
    .line 215
    and-int/lit8 v1, v1, -0x21

    .line 216
    .line 217
    iput v1, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_e
    invoke-virtual {v2, v5, v8}, Landroidx/recyclerview/widget/k;->removeDetachedView(Landroid/view/View;Z)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v10, Landroidx/recyclerview/widget/k$v;->i:Landroidx/recyclerview/widget/k$p;

    .line 224
    .line 225
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/k$p;->f(Landroidx/recyclerview/widget/k$v;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    :goto_a
    invoke-static {v10}, Landroidx/recyclerview/widget/k$p;->d(Landroidx/recyclerview/widget/k$v;)V

    .line 229
    .line 230
    .line 231
    throw v5

    .line 232
    :cond_10
    const/4 v4, 0x1

    .line 233
    goto :goto_b

    .line 234
    :cond_11
    iget v1, v10, Landroidx/recyclerview/widget/k$v;->a:I

    .line 235
    .line 236
    if-ltz v1, :cond_12

    .line 237
    .line 238
    throw v5

    .line 239
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 240
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 244
    .line 245
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1

    .line 266
    :cond_13
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Landroid/view/View;

    .line 271
    .line 272
    iget-object v2, v6, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 273
    .line 274
    check-cast v2, Landroidx/recyclerview/widget/l;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-static {v1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 280
    .line 281
    .line 282
    throw v5

    .line 283
    :cond_14
    :goto_b
    if-nez v10, :cond_16

    .line 284
    .line 285
    iget-object v4, v2, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 286
    .line 287
    invoke-virtual {v4, v1, v8}, Landroidx/recyclerview/widget/a;->a(II)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-ltz v4, :cond_15

    .line 292
    .line 293
    throw v5

    .line 294
    :cond_15
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    .line 295
    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v7, "Inconsistency detected. Invalid item position "

    .line 299
    .line 300
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, "(offset:"

    .line 307
    .line 308
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ").state:"

    .line 315
    .line 316
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k$s;->a()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-direct {v5, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v5

    .line 341
    :cond_16
    if-eqz v4, :cond_1e

    .line 342
    .line 343
    iget-boolean v4, v3, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 344
    .line 345
    if-nez v4, :cond_1e

    .line 346
    .line 347
    iget v4, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 348
    .line 349
    const/16 v6, 0x2000

    .line 350
    .line 351
    and-int/2addr v6, v4

    .line 352
    if-eqz v6, :cond_17

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    goto :goto_c

    .line 356
    :cond_17
    const/4 v6, 0x0

    .line 357
    :goto_c
    if-eqz v6, :cond_1e

    .line 358
    .line 359
    and-int/lit16 v4, v4, -0x2001

    .line 360
    .line 361
    or-int/2addr v4, v8

    .line 362
    iput v4, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 363
    .line 364
    iget-boolean v6, v3, Landroidx/recyclerview/widget/k$s;->e:Z

    .line 365
    .line 366
    if-nez v6, :cond_18

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_18
    and-int/lit8 v1, v4, 0xe

    .line 370
    .line 371
    invoke-virtual {v10}, Landroidx/recyclerview/widget/k$v;->d()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_19

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_19
    and-int/2addr v1, v9

    .line 379
    if-nez v1, :cond_1b

    .line 380
    .line 381
    iget-object v1, v10, Landroidx/recyclerview/widget/k$v;->k:Landroidx/recyclerview/widget/k;

    .line 382
    .line 383
    if-nez v1, :cond_1a

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_1a
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/k;->l(Landroidx/recyclerview/widget/k$v;)I

    .line 387
    .line 388
    .line 389
    :cond_1b
    :goto_d
    iget-object v1, v2, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 390
    .line 391
    iget v2, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 392
    .line 393
    and-int/lit16 v2, v2, 0x400

    .line 394
    .line 395
    if-nez v2, :cond_1c

    .line 396
    .line 397
    iget-object v2, v10, Landroidx/recyclerview/widget/k$v;->g:Ljava/util/ArrayList;

    .line 398
    .line 399
    if-eqz v2, :cond_1c

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-nez v2, :cond_1d

    .line 406
    .line 407
    :cond_1c
    sget v2, Landroidx/recyclerview/widget/k$v;->l:I

    .line 408
    .line 409
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    throw v5

    .line 413
    :cond_1e
    :goto_e
    iget-boolean v3, v3, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 414
    .line 415
    if-eqz v3, :cond_21

    .line 416
    .line 417
    iget v3, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 418
    .line 419
    and-int/2addr v3, v7

    .line 420
    if-eqz v3, :cond_1f

    .line 421
    .line 422
    const/4 v3, 0x1

    .line 423
    goto :goto_f

    .line 424
    :cond_1f
    const/4 v3, 0x0

    .line 425
    :goto_f
    if-nez v3, :cond_20

    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_20
    iput v1, v10, Landroidx/recyclerview/widget/k$v;->d:I

    .line 429
    .line 430
    goto :goto_14

    .line 431
    :cond_21
    :goto_10
    iget v3, v10, Landroidx/recyclerview/widget/k$v;->f:I

    .line 432
    .line 433
    and-int/lit8 v4, v3, 0x1

    .line 434
    .line 435
    if-eqz v4, :cond_22

    .line 436
    .line 437
    const/4 v4, 0x1

    .line 438
    goto :goto_11

    .line 439
    :cond_22
    const/4 v4, 0x0

    .line 440
    :goto_11
    if-eqz v4, :cond_24

    .line 441
    .line 442
    and-int/lit8 v3, v3, 0x2

    .line 443
    .line 444
    if-eqz v3, :cond_23

    .line 445
    .line 446
    const/4 v3, 0x1

    .line 447
    goto :goto_12

    .line 448
    :cond_23
    const/4 v3, 0x0

    .line 449
    :goto_12
    if-nez v3, :cond_24

    .line 450
    .line 451
    invoke-virtual {v10}, Landroidx/recyclerview/widget/k$v;->d()Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-eqz v3, :cond_28

    .line 456
    .line 457
    :cond_24
    iget-object v3, v2, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 458
    .line 459
    invoke-virtual {v3, v1, v8}, Landroidx/recyclerview/widget/a;->a(II)I

    .line 460
    .line 461
    .line 462
    iput-object v2, v10, Landroidx/recyclerview/widget/k$v;->k:Landroidx/recyclerview/widget/k;

    .line 463
    .line 464
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->getNanoTime()J

    .line 465
    .line 466
    .line 467
    move-result-wide v1

    .line 468
    const-wide v3, 0x7fffffffffffffffL

    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    cmp-long v6, p2, v3

    .line 474
    .line 475
    if-eqz v6, :cond_29

    .line 476
    .line 477
    iget-object v3, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 478
    .line 479
    iget-object v3, v3, Landroidx/recyclerview/widget/k$o;->a:Landroid/util/SparseArray;

    .line 480
    .line 481
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    check-cast v4, Landroidx/recyclerview/widget/k$o$a;

    .line 486
    .line 487
    if-nez v4, :cond_25

    .line 488
    .line 489
    new-instance v4, Landroidx/recyclerview/widget/k$o$a;

    .line 490
    .line 491
    invoke-direct {v4}, Landroidx/recyclerview/widget/k$o$a;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_25
    iget-wide v3, v4, Landroidx/recyclerview/widget/k$o$a;->c:J

    .line 498
    .line 499
    const-wide/16 v9, 0x0

    .line 500
    .line 501
    cmp-long v6, v3, v9

    .line 502
    .line 503
    if-eqz v6, :cond_27

    .line 504
    .line 505
    add-long/2addr v1, v3

    .line 506
    cmp-long v3, v1, p2

    .line 507
    .line 508
    if-gez v3, :cond_26

    .line 509
    .line 510
    goto :goto_13

    .line 511
    :cond_26
    const/4 v7, 0x0

    .line 512
    :cond_27
    :goto_13
    if-nez v7, :cond_29

    .line 513
    .line 514
    :cond_28
    :goto_14
    throw v5

    .line 515
    :cond_29
    throw v5

    .line 516
    :cond_2a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 517
    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v5, "Invalid item position "

    .line 521
    .line 522
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v5, "("

    .line 529
    .line 530
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v1, "). Item count:"

    .line 537
    .line 538
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-object v1, v2, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 542
    .line 543
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$s;->a()I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v3
.end method

.method public final f(Landroidx/recyclerview/widget/k$v;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/k$v;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p1, Landroidx/recyclerview/widget/k$v;->i:Landroidx/recyclerview/widget/k$p;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p1, Landroidx/recyclerview/widget/k$v;->j:Z

    .line 18
    .line 19
    iget v0, p1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, -0x21

    .line 22
    .line 23
    iput v0, p1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 24
    .line 25
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget v0, p0, Landroidx/recyclerview/widget/k$p;->d:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/k$p;->e:I

    iget-object v0, p0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/k$p;->e:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k$p;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
