.class public final Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lx/b;

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lx/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lm/a;->a:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p1, Lk/h;

    .line 20
    .line 21
    invoke-direct {p1}, Lk/h;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lm/a;->b:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lm/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lf/c;

    .line 45
    .line 46
    const/4 v0, 0x7

    .line 47
    invoke-direct {p1, v0}, Lf/c;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lm/a;->a:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lk/b;

    .line 57
    .line 58
    invoke-direct {p1}, Lk/b;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lm/a;->a:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance p1, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lm/a;->b:Ljava/lang/Object;

    .line 69
    .line 70
    new-instance p1, Lk/e;

    .line 71
    .line 72
    invoke-direct {p1}, Lk/e;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lm/a;->c:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance p1, Lk/b;

    .line 78
    .line 79
    invoke-direct {p1}, Lk/b;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lm/a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lk/h;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p1, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p0, v3, p2, p3}, Lm/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string p2, "This graph contains cyclic dependencies"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "SAXException"

    .line 2
    .line 3
    iget-object v1, p0, Lm/a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "BaseXMLParser"

    .line 6
    .line 7
    const-string v3, "#parse"

    .line 8
    .line 9
    iget-object v4, p0, Lm/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lorg/xml/sax/helpers/DefaultHandler;

    .line 12
    .line 13
    check-cast v4, Lp1/a;

    .line 14
    .line 15
    if-eqz v4, :cond_2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, v4, Lp1/a;->c:Lq1/f;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v4, p0, Lm/a;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ljavax/xml/parsers/SAXParserFactory;

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, p0, Lm/a;->c:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_1
    :try_start_0
    iget-object v4, p0, Lm/a;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Ljavax/xml/parsers/SAXParserFactory;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, p0, Lm/a;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v4

    .line 47
    move-object v5, v1

    .line 48
    check-cast v5, Lf/c;

    .line 49
    .line 50
    invoke-virtual {v5}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    move-object v6, v0

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v4

    .line 67
    move-object v5, v1

    .line 68
    check-cast v5, Lf/c;

    .line 69
    .line 70
    invoke-virtual {v5}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "ParserConfigurationException"

    .line 85
    .line 86
    :goto_0
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_1
    :try_start_1
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 93
    .line 94
    new-instance v5, Ljava/io/StringReader;

    .line 95
    .line 96
    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Ljavax/xml/parsers/SAXParser;

    .line 105
    .line 106
    iget-object v5, p0, Lm/a;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Lorg/xml/sax/helpers/DefaultHandler;

    .line 109
    .line 110
    invoke-virtual {p1, v4, v5}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_2
    move-exception p1

    .line 115
    move-object v0, v1

    .line 116
    check-cast v0, Lf/c;

    .line 117
    .line 118
    invoke-virtual {v0}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v4, "IOException"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_3
    move-exception p1

    .line 136
    move-object v4, v1

    .line 137
    check-cast v4, Lf/c;

    .line 138
    .line 139
    invoke-virtual {v4}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    move-object v7, v4

    .line 154
    move-object v4, v0

    .line 155
    move-object v0, v7

    .line 156
    :goto_2
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    :goto_3
    check-cast v1, Lf/c;

    .line 163
    .line 164
    invoke-virtual {v1}, Lf/c;->h()Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string v0, "done parsing xml"

    .line 179
    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string v0, "handler is null, must set a document handler before calling parse"

    .line 187
    .line 188
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method
