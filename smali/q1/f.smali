.class public final Lq1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf/c;

.field public b:Lq1/g;

.field public c:Z

.field public d:Z

.field public e:I

.field public final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lq1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, Lq1/f;->a:Lf/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/f;->c:Z

    iput-boolean v0, p0, Lq1/f;->d:Z

    iput v0, p0, Lq1/f;->e:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lq1/f;->f:Ljava/util/Stack;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lq1/g;
    .locals 3

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    const-string v0, "integer"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lq1/e;

    .line 12
    .line 13
    invoke-direct {p0}, Lq1/e;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    const-string v0, "string"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance p0, Lq1/j;

    .line 40
    .line 41
    invoke-direct {p0}, Lq1/j;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lq1/j;->b:Lf/c;

    .line 45
    .line 46
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    const-string v0, "real"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    new-instance p0, Lq1/i;

    .line 64
    .line 65
    invoke-direct {p0}, Lq1/i;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_2
    const-string v0, "date"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x1

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    new-instance p0, Lq1/c;

    .line 93
    .line 94
    invoke-direct {p0}, Lq1/c;-><init>()V

    .line 95
    .line 96
    .line 97
    if-eqz p1, :cond_b

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ge v0, v1, :cond_3

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_3
    new-instance v0, Ljava/util/Scanner;

    .line 108
    .line 109
    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "-"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextInt()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    :try_start_0
    iget-object v0, p0, Lq1/c;->b:Ljava/text/SimpleDateFormat;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "#setValue - error parsing val="

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "Date"

    .line 139
    .line 140
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    new-instance v0, Ljava/util/Date;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    const-string v0, "false"

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    new-instance p0, Lq1/b;

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lq1/b;-><init>(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    const-string v0, "true"

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    new-instance p0, Lq1/b;

    .line 182
    .line 183
    invoke-direct {p0, v1}, Lq1/b;-><init>(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_7
    const-string v0, "data"

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    new-instance p0, Lq1/b;

    .line 196
    .line 197
    invoke-direct {p0}, Lq1/b;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_8
    const-string p1, "dict"

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    new-instance p0, Lq1/d;

    .line 217
    .line 218
    invoke-direct {p0}, Lq1/d;-><init>()V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_9
    const-string p1, "array"

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_a

    .line 229
    .line 230
    new-instance p0, Lq1/a;

    .line 231
    .line 232
    invoke-direct {p0}, Lq1/a;-><init>()V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_a
    const/4 p0, 0x0

    .line 237
    :cond_b
    :goto_0
    return-object p0

    .line 238
    :cond_c
    new-instance p0, Ljava/lang/Exception;

    .line 239
    .line 240
    const-string p1, "Cannot add a child with a null tag to a PList."

    .line 241
    .line 242
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p0
.end method


# virtual methods
.method public final a(Lq1/g;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lq1/f;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lq1/f;->a:Lf/c;

    .line 4
    .line 5
    iget-object v2, p0, Lq1/f;->f:Ljava/util/Stack;

    .line 6
    .line 7
    const-string v3, "|"

    .line 8
    .line 9
    const-string v4, "PList"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "#attachPListObjToArrayParent"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "obj-type|obj: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p1, Lq1/g;->a:I

    .line 42
    .line 43
    invoke-static {v1}, Lq1/h;->e(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lq1/a;

    .line 75
    .line 76
    iget-object v0, p2, Lq1/a;->b:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lq1/f;->c:Z

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "#attachPListObjToDictParent"

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v4, "key|obj-type|obj: "

    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v4, p1, Lq1/g;->a:I

    .line 121
    .line 122
    invoke-static {v4}, Lq1/h;->e(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lq1/d;

    .line 154
    .line 155
    iget-object v1, v0, Lq1/d;->b:Ljava/util/TreeMap;

    .line 156
    .line 157
    invoke-virtual {v1, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget p2, p0, Lq1/f;->e:I

    .line 165
    .line 166
    if-nez p2, :cond_2

    .line 167
    .line 168
    iput-object p1, p0, Lq1/f;->b:Lq1/g;

    .line 169
    .line 170
    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lq1/g;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lq1/f;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 9
    .line 10
    const-string p2, "PList objects with Dict parents require a key."

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lq1/f;->e:I

    .line 17
    .line 18
    if-lez v0, :cond_3

    .line 19
    .line 20
    iget-boolean v0, p0, Lq1/f;->c:Z

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lq1/f;->d:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 30
    .line 31
    const-string p2, "PList elements that are not at the root should have an Array or Dict parent."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_3
    :goto_1
    iget v0, p1, Lq1/g;->a:I

    .line 38
    .line 39
    invoke-static {v0}, Lm0/n;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lq1/f;->f:Ljava/util/Stack;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    invoke-virtual {p0, p1, p2}, Lq1/f;->a(Lq1/g;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eq v0, v4, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iput-boolean v2, p0, Lq1/f;->d:Z

    .line 60
    .line 61
    iput-boolean v3, p0, Lq1/f;->c:Z

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    invoke-virtual {p0, p1, p2}, Lq1/f;->a(Lq1/g;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iput-boolean v3, p0, Lq1/f;->d:Z

    .line 71
    .line 72
    iput-boolean v2, p0, Lq1/f;->c:Z

    .line 73
    .line 74
    :goto_2
    iget p1, p0, Lq1/f;->e:I

    .line 75
    .line 76
    add-int/2addr p1, v3

    .line 77
    iput p1, p0, Lq1/f;->e:I

    .line 78
    .line 79
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1/f;->b:Lq1/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
