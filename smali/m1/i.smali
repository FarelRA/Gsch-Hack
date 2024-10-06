.class public final Lm1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/a;


# instance fields
.field public final a:Lm1/m;


# direct methods
.method public constructor <init>(Lm1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/i;->a:Lm1/m;

    return-void
.end method


# virtual methods
.method public final a(Lm1/e;)Lu0/l;
    .locals 11

    .line 1
    iget-object v1, p0, Lm1/i;->a:Lm1/m;

    .line 2
    .line 3
    iget-object v0, v1, Lm1/m;->c:Lo1/s;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lm1/b;

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lu0/f;->a(Lm1/b;)Lu0/l;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    :try_start_0
    iget-object v0, p1, Lm1/e;->a:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-object v4, p1, Lm1/e;->b:Ljava/lang/Long;

    .line 29
    .line 30
    iget-object v0, v1, Lm1/m;->a:Lo1/l;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    aput-object p1, v2, v7

    .line 37
    .line 38
    const-string v5, "requestIntegrityToken(%s)"

    .line 39
    .line 40
    invoke-virtual {v0, v5, v2}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Lu0/d;

    .line 44
    .line 45
    invoke-direct {v8}, Lu0/d;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v9, v1, Lm1/m;->c:Lo1/s;

    .line 49
    .line 50
    new-instance v10, Lm1/k;

    .line 51
    .line 52
    move-object v0, v10

    .line 53
    move-object v2, v8

    .line 54
    move-object v5, v8

    .line 55
    move-object v6, p1

    .line 56
    invoke-direct/range {v0 .. v6}, Lm1/k;-><init>(Lm1/m;Lu0/d;[BLjava/lang/Long;Lu0/d;Lm1/e;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v9, Lo1/s;->f:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter p1

    .line 62
    :try_start_1
    iget-object v0, v9, Lo1/s;->e:Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v0, v8, Lu0/d;->a:Lu0/l;

    .line 68
    .line 69
    new-instance v1, Lm1/o;

    .line 70
    .line 71
    invoke-direct {v1, v9, v8}, Lm1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lu0/l;->a(Lu0/b;)V

    .line 75
    .line 76
    .line 77
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    iget-object v0, v9, Lo1/s;->f:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v0

    .line 81
    :try_start_2
    iget-object p1, v9, Lo1/s;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez p1, :cond_1

    .line 88
    .line 89
    iget-object p1, v9, Lo1/s;->b:Lo1/l;

    .line 90
    .line 91
    new-array v1, v7, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-string v2, "PlayCore"

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_1

    .line 104
    .line 105
    iget-object p1, p1, Lo1/l;->a:Ljava/lang/String;

    .line 106
    .line 107
    const-string v3, "Already connected to the service."

    .line 108
    .line 109
    invoke-static {p1, v3, v1}, Lo1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    new-instance p1, Lo1/o;

    .line 118
    .line 119
    invoke-direct {p1, v9, v8, v10}, Lo1/o;-><init>(Lo1/s;Lu0/d;Lm1/k;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Lo1/s;->a()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    iget-object p1, v8, Lu0/d;->a:Lu0/l;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    throw p1

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    throw v0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Lm1/b;

    .line 140
    .line 141
    const/16 v1, -0xd

    .line 142
    .line 143
    invoke-direct {v0, v1, p1}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lu0/f;->a(Lm1/b;)Lu0/l;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_0
    return-object p1
.end method
