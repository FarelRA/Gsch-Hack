.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ll0/a;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 8

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Ll0/a;->h(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ll0/a;->i()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {p0, v3}, Ll0/a;->h(I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Ll0/a;->f()[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-virtual {p0, v4}, Ll0/a;->h(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p0}, Ll0/a;->j()Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_2
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 53
    .line 54
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    invoke-virtual {p0, v5}, Ll0/a;->h(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p0}, Ll0/a;->i()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :goto_3
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 69
    .line 70
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 71
    .line 72
    const/4 v6, 0x5

    .line 73
    invoke-virtual {p0, v6}, Ll0/a;->h(I)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    invoke-virtual {p0}, Ll0/a;->i()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_4
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    const/4 v7, 0x6

    .line 89
    invoke-virtual {p0, v7}, Ll0/a;->h(I)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_5

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_5
    invoke-virtual {p0}, Ll0/a;->j()Landroid/os/Parcelable;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_5
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 101
    .line 102
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 105
    .line 106
    const/4 v7, 0x7

    .line 107
    invoke-virtual {p0, v7}, Ll0/a;->h(I)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_6

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_6
    invoke-virtual {p0}, Ll0/a;->k()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_6
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 125
    .line 126
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 127
    .line 128
    const/4 v1, -0x1

    .line 129
    if-eq p0, v1, :cond_b

    .line 130
    .line 131
    if-eq p0, v2, :cond_9

    .line 132
    .line 133
    if-eq p0, v3, :cond_8

    .line 134
    .line 135
    if-eq p0, v4, :cond_7

    .line 136
    .line 137
    if-eq p0, v5, :cond_8

    .line 138
    .line 139
    if-eq p0, v6, :cond_9

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_7
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 143
    .line 144
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 148
    .line 149
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 150
    .line 151
    const-string v2, "UTF-16"

    .line 152
    .line 153
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_9
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 162
    .line 163
    if-eqz p0, :cond_a

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_a
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 167
    .line 168
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 169
    .line 170
    iput v4, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 174
    .line 175
    array-length p0, p0

    .line 176
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_b
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 180
    .line 181
    if-eqz p0, :cond_c

    .line 182
    .line 183
    :goto_7
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 184
    .line 185
    :goto_8
    return-object v0

    .line 186
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string v0, "Invalid icon"

    .line 189
    .line 190
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Ll0/a;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 11
    .line 12
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, -0x1

    .line 20
    if-eq v0, v6, :cond_3

    .line 21
    .line 22
    if-eq v0, v5, :cond_3

    .line 23
    .line 24
    const-string v7, "UTF-16"

    .line 25
    .line 26
    if-eq v0, v4, :cond_2

    .line 27
    .line 28
    if-eq v0, v3, :cond_1

    .line 29
    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, [B

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/os/Parcelable;

    .line 77
    .line 78
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 79
    .line 80
    :goto_0
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 81
    .line 82
    if-eq v6, v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1, v5}, Ll0/a;->m(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ll0/a;->q(I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Ll0/a;->m(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ll0/a;->o([B)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Ll0/a;->m(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ll0/a;->r(Landroid/os/Parcelable;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ll0/a;->m(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ll0/a;->q(I)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ll0/a;->m(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ll0/a;->q(I)V

    .line 128
    .line 129
    .line 130
    :cond_8
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    const/4 v1, 0x6

    .line 135
    invoke-virtual {p1, v1}, Ll0/a;->m(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ll0/a;->r(Landroid/os/Parcelable;)V

    .line 139
    .line 140
    .line 141
    :cond_9
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz p0, :cond_a

    .line 144
    .line 145
    const/4 v0, 0x7

    .line 146
    invoke-virtual {p1, v0}, Ll0/a;->m(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Ll0/a;->s(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    return-void
.end method
