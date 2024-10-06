.class public final Ln0/f;
.super Lh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/c;-><init>()V

    return-void
.end method

.method public static f(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lm0/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lm0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lm0/m;Ljava/util/Map;)Ln0/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/m<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ln0/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/net/URL;

    .line 17
    .line 18
    iget-object v1, p1, Lm0/m;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p1, Lm0/m;->k:Lm0/f;

    .line 37
    .line 38
    iget v2, v2, Lm0/f;->a:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 52
    .line 53
    .line 54
    const-string v4, "https"

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget p1, p1, Lm0/m;->b:I

    .line 95
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :pswitch_0
    const-string p2, "PATCH"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_1
    const-string p2, "TRACE"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_2
    const-string p2, "OPTIONS"

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_3
    const-string p2, "HEAD"

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_4
    const-string p2, "DELETE"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_5
    const-string p2, "PUT"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_6
    const-string p2, "POST"

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_7
    const-string p2, "GET"

    .line 125
    .line 126
    :goto_1
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :pswitch_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const/4 v0, -0x1

    .line 134
    if-eq p2, v0, :cond_4

    .line 135
    .line 136
    const/4 v0, 0x4

    .line 137
    if-eq p1, v0, :cond_2

    .line 138
    .line 139
    const/16 p1, 0x64

    .line 140
    .line 141
    if-gt p1, p2, :cond_1

    .line 142
    .line 143
    const/16 p1, 0xc8

    .line 144
    .line 145
    if-lt p2, p1, :cond_2

    .line 146
    .line 147
    :cond_1
    const/16 p1, 0xcc

    .line 148
    .line 149
    if-eq p2, p1, :cond_2

    .line 150
    .line 151
    const/16 p1, 0x130

    .line 152
    .line 153
    if-eq p2, p1, :cond_2

    .line 154
    .line 155
    const/4 p1, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_2
    const/4 p1, 0x0

    .line 158
    :goto_2
    if-nez p1, :cond_3

    .line 159
    .line 160
    new-instance p1, Ln0/e;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Ln0/f;->f(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {p1, p2, v0}, Ln0/e;-><init>(ILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    goto :goto_4

    .line 179
    :cond_3
    :try_start_2
    new-instance p1, Ln0/e;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Ln0/f;->f(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    new-instance v4, Ln0/f$a;

    .line 194
    .line 195
    invoke-direct {v4, v1}, Ln0/f$a;-><init>(Ljava/net/HttpURLConnection;)V

    .line 196
    .line 197
    .line 198
    invoke-direct {p1, p2, v0, v2, v4}, Ln0/e;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    .line 200
    .line 201
    return-object p1

    .line 202
    :catchall_1
    move-exception p1

    .line 203
    const/4 v2, 0x1

    .line 204
    goto :goto_4

    .line 205
    :cond_4
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 206
    .line 207
    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :goto_3
    const-string p2, "Unknown method type."

    .line 214
    .line 215
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :goto_4
    if-nez v2, :cond_5

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    .line 223
    .line 224
    :cond_5
    throw p1

    .line 225
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
