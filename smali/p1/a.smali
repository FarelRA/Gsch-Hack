.class public final Lp1/a;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SourceFile"


# instance fields
.field public final a:Lf/c;

.field public b:Lf/c;

.field public c:Lq1/f;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    new-instance v0, Lf/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, Lp1/a;->a:Lf/c;

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/a;->a:Lf/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "PListXMLHandler"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v2, "#characters"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "|"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lp1/a;->b:Lf/c;

    .line 53
    .line 54
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/a;->a:Lf/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "PListXMLHandler"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v2, "#endElement"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "localName|qName|uri|tempVal: "

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "|"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lp1/a;->b:Lf/c;

    .line 51
    .line 52
    iget-object p1, p1, Lf/c;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const-string p1, "key"

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object p1, p0, Lp1/a;->b:Lf/c;

    .line 79
    .line 80
    iget-object p1, p1, Lf/c;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    iput-object p1, p0, Lp1/a;->d:Ljava/lang/String;

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_0
    const-string p1, "dict"

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_3

    .line 103
    .line 104
    const-string p1, "array"

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const-string p1, "plist"

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-nez p3, :cond_2

    .line 120
    .line 121
    :try_start_0
    iget-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 122
    .line 123
    iget-object p3, p0, Lp1/a;->b:Lf/c;

    .line 124
    .line 125
    iget-object p3, p3, Lf/c;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {p2, p3}, Lq1/f;->b(Ljava/lang/String;Ljava/lang/String;)Lq1/g;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p2, p0, Lp1/a;->c:Lq1/f;

    .line 141
    .line 142
    iget-object p3, p0, Lp1/a;->d:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p2, p1, p3}, Lq1/f;->c(Lq1/g;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Lorg/xml/sax/SAXException;

    .line 151
    .line 152
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    throw p2

    .line 156
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    :goto_1
    iget-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 161
    .line 162
    iget-object p2, p1, Lq1/f;->f:Ljava/util/Stack;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    if-eqz p3, :cond_4

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Lq1/g;

    .line 176
    .line 177
    iget p3, p1, Lq1/f;->e:I

    .line 178
    .line 179
    const/4 v0, 0x1

    .line 180
    sub-int/2addr p3, v0

    .line 181
    iput p3, p1, Lq1/f;->e:I

    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    const/4 v1, 0x0

    .line 188
    if-nez p3, :cond_7

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Lq1/g;

    .line 195
    .line 196
    iget p2, p2, Lq1/g;->a:I

    .line 197
    .line 198
    invoke-static {p2}, Lm0/n;->a(I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_6

    .line 203
    .line 204
    const/4 p3, 0x3

    .line 205
    if-eq p2, p3, :cond_5

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_5
    iput-boolean v1, p1, Lq1/f;->d:Z

    .line 209
    .line 210
    iput-boolean v0, p1, Lq1/f;->c:Z

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    iput-boolean v0, p1, Lq1/f;->d:Z

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    iput-boolean v1, p1, Lq1/f;->d:Z

    .line 217
    .line 218
    :goto_2
    iput-boolean v1, p1, Lq1/f;->c:Z

    .line 219
    .line 220
    :goto_3
    iget-object p1, p0, Lp1/a;->b:Lf/c;

    .line 221
    .line 222
    invoke-virtual {p1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final startDocument()V
    .locals 2

    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    new-instance v0, Lf/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, Lp1/a;->b:Lf/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lp1/a;->c:Lq1/f;

    iput-object v0, p0, Lp1/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lp1/a;->a:Lf/c;

    .line 2
    .line 3
    invoke-virtual {p3}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "PListXMLHandler"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "#startElement"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p3}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const-string v1, "Start Element lname|uri|attr.length :"

    .line 26
    .line 27
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "|"

    .line 34
    .line 35
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lp1/a;->b:Lf/c;

    .line 59
    .line 60
    invoke-virtual {p1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "plist"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 72
    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    new-instance p1, Lq1/f;

    .line 76
    .line 77
    invoke-direct {p1}, Lq1/f;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 84
    .line 85
    const-string p2, "there should only be one PList element in PList XML"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    iget-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    const-string p1, "dict"

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    const-string p1, "array"

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    :cond_2
    :try_start_0
    iget-object p1, p0, Lp1/a;->c:Lq1/f;

    .line 112
    .line 113
    iget-object p3, p0, Lp1/a;->b:Lf/c;

    .line 114
    .line 115
    iget-object p3, p3, Lf/c;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {p2, p3}, Lq1/f;->b(Ljava/lang/String;Ljava/lang/String;)Lq1/g;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p2, p0, Lp1/a;->c:Lq1/f;

    .line 131
    .line 132
    iget-object p3, p0, Lp1/a;->d:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p2, p1, p3}, Lq1/f;->c(Lq1/g;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lorg/xml/sax/SAXException;

    .line 140
    .line 141
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 146
    .line 147
    const-string p2, "invalid PList - please see http://www.apple.com/DTDs/PropertyList-1.0.dtd"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
.end method
