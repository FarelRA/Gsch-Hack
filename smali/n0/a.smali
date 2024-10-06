.class public final Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/i;


# instance fields
.field public final a:Lh/c;

.field public final b:Ln0/b;


# direct methods
.method public constructor <init>(Ln0/f;)V
    .locals 1

    .line 1
    new-instance v0, Ln0/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ln0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ln0/a;->a:Lh/c;

    .line 10
    .line 11
    iput-object v0, p0, Ln0/a;->b:Ln0/b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lm0/m;)Lm0/l;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/m<",
            "*>;)",
            "Lm0/l;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p1, Lm0/m;->l:Lm0/b$a;

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v4, Lm0/b$a;->b:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v7, "If-None-Match"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v6, v4, Lm0/b$a;->d:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 3
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "If-Modified-Since"

    .line 5
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v5

    .line 6
    :goto_1
    iget-object v5, p0, Ln0/a;->a:Lh/c;

    invoke-virtual {v5, p1, v4}, Lh/c;->a(Lm0/m;Ljava/util/Map;)Ln0/e;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    iget v6, v4, Ln0/e;->a:I

    .line 8
    invoke-virtual {v4}, Ln0/e;->b()Ljava/util/List;

    move-result-object v11

    const/16 v5, 0x130

    if-ne v6, v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {p1, v5, v6, v11}, Ln0/g;->a(Lm0/m;JLjava/util/List;)Lm0/l;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v4}, Ln0/e;->a()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 9
    iget v7, v4, Ln0/e;->c:I

    .line 10
    iget-object v8, p0, Ln0/a;->b:Ln0/b;

    invoke-static {v5, v7, v8}, Ln0/g;->b(Ljava/io/InputStream;ILn0/b;)[B

    move-result-object v2

    goto :goto_2

    :cond_4
    new-array v2, v3, [B

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8, p1, v2, v6}, Ln0/g;->c(JLm0/m;[BI)V

    const/16 v5, 0xc8

    if-lt v6, v5, :cond_5

    const/16 v5, 0x12b

    if-gt v6, v5, :cond_5

    new-instance v12, Lm0/l;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v0

    move-object v5, v12

    move-object v7, v2

    invoke-direct/range {v5 .. v11}, Lm0/l;-><init>(I[BZJLjava/util/List;)V

    return-object v12

    :cond_5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v5

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v2

    .line 11
    :goto_3
    instance-of v6, v5, Ljava/net/SocketTimeoutException;

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_6

    new-instance v2, Ln0/g$a;

    new-instance v4, Lm0/k;

    invoke-direct {v4}, Lm0/k;-><init>()V

    const-string v5, "socket"

    invoke-direct {v2, v5, v4}, Ln0/g$a;-><init>(Ljava/lang/String;Lm0/r;)V

    goto/16 :goto_9

    :cond_6
    instance-of v6, v5, Ljava/net/MalformedURLException;

    iget-object v9, p1, Lm0/m;->c:Ljava/lang/String;

    if-nez v6, :cond_13

    if-eqz v2, :cond_12

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v2, Ln0/e;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v3

    aput-object v9, v5, v7

    const-string v9, "Unexpected response code %d for %s"

    invoke-static {v9, v5}, Lm0/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Ln0/e;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez v2, :cond_7

    goto :goto_5

    .line 12
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    goto :goto_5

    :cond_8
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/h;

    .line 13
    iget-object v10, v9, Lm0/h;->a:Ljava/lang/String;

    .line 14
    iget-object v9, v9, Lm0/h;->b:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_5
    if-nez v2, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    :goto_6
    const/16 v2, 0x191

    if-eq v6, v2, :cond_e

    const/16 v2, 0x193

    if-ne v6, v2, :cond_b

    goto :goto_8

    :cond_b
    const/16 p1, 0x190

    if-lt v6, p1, :cond_d

    const/16 p1, 0x1f3

    if-le v6, p1, :cond_c

    goto :goto_7

    .line 16
    :cond_c
    new-instance p1, Lm0/e;

    invoke-direct {p1}, Lm0/e;-><init>()V

    throw p1

    :cond_d
    :goto_7
    new-instance p1, Lm0/k;

    invoke-direct {p1, v3}, Lm0/k;-><init>(I)V

    throw p1

    :cond_e
    :goto_8
    new-instance v2, Ln0/g$a;

    new-instance v4, Lm0/a;

    invoke-direct {v4}, Lm0/a;-><init>()V

    const-string v5, "auth"

    invoke-direct {v2, v5, v4}, Ln0/g$a;-><init>(Ljava/lang/String;Lm0/r;)V

    goto :goto_9

    :cond_f
    new-instance v2, Ln0/g$a;

    new-instance v4, Lm0/k;

    invoke-direct {v4}, Lm0/k;-><init>()V

    const-string v5, "network"

    invoke-direct {v2, v5, v4}, Ln0/g$a;-><init>(Ljava/lang/String;Lm0/r;)V

    .line 17
    :goto_9
    iget-object v4, v2, Ln0/g$a;->a:Ljava/lang/String;

    .line 18
    iget-object v5, p1, Lm0/m;->k:Lm0/f;

    .line 19
    iget v6, v5, Lm0/f;->a:I

    .line 20
    :try_start_2
    iget-object v2, v2, Ln0/g$a;->b:Lm0/r;

    .line 21
    iget v9, v5, Lm0/f;->b:I

    add-int/2addr v9, v7

    .line 22
    iput v9, v5, Lm0/f;->b:I

    int-to-float v10, v6

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    add-int/2addr v10, v6

    iput v10, v5, Lm0/f;->a:I
    :try_end_2
    .catch Lm0/r; {:try_start_2 .. :try_end_2} :catch_2

    if-gt v9, v7, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_11

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "%s-retry [timeout=%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lm0/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24
    :cond_11
    :try_start_3
    throw v2
    :try_end_3
    .catch Lm0/r; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm0/m;->a(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_12
    new-instance p1, Lm0/e;

    invoke-direct {p1, v5}, Lm0/e;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
