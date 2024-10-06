.class public final Lr/h;
.super Lr/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lq/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    iget-object p1, p2, Lq/c$b;->a:[Lq/c$c;

    .line 2
    .line 3
    array-length p2, p1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v3, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/4 v4, 0x1

    .line 9
    if-ge v2, p2, :cond_2

    .line 10
    .line 11
    aget-object v5, p1, v2

    .line 12
    .line 13
    :try_start_0
    new-instance v6, Landroid/graphics/fonts/Font$Builder;

    .line 14
    .line 15
    iget v7, v5, Lq/c$c;->f:I

    .line 16
    .line 17
    invoke-direct {v6, p3, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 18
    .line 19
    .line 20
    iget v7, v5, Lq/c$c;->b:I

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-boolean v7, v5, Lq/c$c;->c:Z

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v6, v5, Lq/c$c;->e:I

    .line 37
    .line 38
    invoke-virtual {v4, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v5, Lq/c$c;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    .line 55
    .line 56
    invoke-direct {v5, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 57
    .line 58
    .line 59
    move-object v3, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-nez v3, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    new-instance p1, Landroid/graphics/fonts/FontStyle;

    .line 71
    .line 72
    and-int/lit8 p2, p4, 0x1

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    const/16 p2, 0x2bc

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    const/16 p2, 0x190

    .line 80
    .line 81
    :goto_3
    and-int/lit8 p3, p4, 0x2

    .line 82
    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    :cond_5
    invoke-direct {p1, p2, v0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 87
    .line 88
    .line 89
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-direct {p2, p3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method public final b(Landroid/content/Context;[Lv/e$c;I)Landroid/graphics/Typeface;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v4, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    const/4 v5, 0x1

    .line 11
    if-ge v3, v0, :cond_4

    .line 12
    .line 13
    aget-object v6, p2, v3

    .line 14
    .line 15
    :try_start_0
    iget-object v7, v6, Lv/e$c;->a:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v8, "r"

    .line 18
    .line 19
    invoke-virtual {p1, v7, v8, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-nez v7, :cond_0

    .line 24
    .line 25
    if-eqz v7, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :try_start_1
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    .line 29
    .line 30
    invoke-direct {v8, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 31
    .line 32
    .line 33
    iget v9, v6, Lv/e$c;->c:I

    .line 34
    .line 35
    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-boolean v9, v6, Lv/e$c;->d:Z

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v5, 0x0

    .line 45
    :goto_1
    invoke-virtual {v8, v5}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget v6, v6, Lv/e$c;->b:I

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    new-instance v6, Landroid/graphics/fonts/FontFamily$Builder;

    .line 62
    .line 63
    invoke-direct {v6, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 64
    .line 65
    .line 66
    move-object v4, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :catchall_0
    move-exception v5

    .line 76
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :catchall_1
    move-exception v6

    .line 78
    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_2
    move-exception v7

    .line 83
    :try_start_5
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 87
    :catch_0
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-nez v4, :cond_5

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_5
    new-instance p1, Landroid/graphics/fonts/FontStyle;

    .line 94
    .line 95
    and-int/lit8 p2, p3, 0x1

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    const/16 p2, 0x2bc

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    const/16 p2, 0x190

    .line 103
    .line 104
    :goto_5
    and-int/lit8 p3, p3, 0x2

    .line 105
    .line 106
    if-eqz p3, :cond_7

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    :cond_7
    invoke-direct {p1, p2, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 110
    .line 111
    .line 112
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p2, p3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Do not use this function in API 29 or later."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    :try_start_0
    new-instance p1, Landroid/graphics/fonts/FontFamily$Builder;

    new-instance p4, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {p4, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 p3, p5, 0x1

    if-eqz p3, :cond_0

    const/16 p3, 0x2bc

    goto :goto_0

    :cond_0
    const/16 p3, 0x190

    :goto_0
    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-direct {p2, p3, p4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {p3, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(I[Lv/e$c;)Lv/e$c;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Do not use this function in API 29 or later."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
