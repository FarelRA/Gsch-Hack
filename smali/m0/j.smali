.class public final Lm0/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lm0/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lm0/i;

.field public final d:Lm0/b;

.field public final e:Lm0/q;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Lm0/i;Lm0/b;Lm0/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/j;->f:Z

    iput-object p1, p0, Lm0/j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lm0/j;->c:Lm0/i;

    iput-object p3, p0, Lm0/j;->d:Lm0/b;

    iput-object p4, p0, Lm0/j;->e:Lm0/q;

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lm0/j;->b:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/m;

    .line 8
    .line 9
    iget-object v1, p0, Lm0/j;->e:Lm0/q;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-virtual {v0, v2}, Lm0/m;->k(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x4

    .line 20
    :try_start_0
    const-string v4, "network-queue-take"

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Lm0/m;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lm0/m;->f()V

    .line 26
    .line 27
    .line 28
    iget v4, v0, Lm0/m;->d:I

    .line 29
    .line 30
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lm0/j;->c:Lm0/i;

    .line 34
    .line 35
    check-cast v4, Ln0/a;

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ln0/a;->a(Lm0/m;)Lm0/l;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "network-http-complete"

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Lm0/m;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v5, v4, Lm0/l;->d:Z

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lm0/m;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    const-string v4, "not-modified"

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Lm0/m;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lm0/m;->h()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0, v4}, Lm0/m;->j(Lm0/l;)Lm0/p;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "network-parse-complete"

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Lm0/m;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v5, v0, Lm0/m;->i:Z

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    iget-object v5, v4, Lm0/p;->b:Lm0/b$a;

    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    iget-object v5, p0, Lm0/j;->d:Lm0/b;

    .line 84
    .line 85
    invoke-virtual {v0}, Lm0/m;->d()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-object v7, v4, Lm0/p;->b:Lm0/b$a;

    .line 90
    .line 91
    check-cast v5, Ln0/c;

    .line 92
    .line 93
    invoke-virtual {v5, v6, v7}, Ln0/c;->f(Ljava/lang/String;Lm0/b$a;)V

    .line 94
    .line 95
    .line 96
    const-string v5, "network-cache-written"

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Lm0/m;->a(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-virtual {v0}, Lm0/m;->g()V

    .line 102
    .line 103
    .line 104
    move-object v5, v1

    .line 105
    check-cast v5, Lm0/g;

    .line 106
    .line 107
    invoke-virtual {v5, v0, v4, v2}, Lm0/g;->a(Lm0/m;Lm0/p;Lm0/c;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Lm0/m;->i(Lm0/p;)V
    :try_end_0
    .catch Lm0/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v1

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v4

    .line 117
    :try_start_1
    const-string v5, "Unhandled exception %s"

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    new-array v6, v6, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const/4 v8, 0x0

    .line 127
    aput-object v7, v6, v8

    .line 128
    .line 129
    const-string v7, "Volley"

    .line 130
    .line 131
    invoke-static {v5, v6}, Lm0/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    new-instance v5, Lm0/r;

    .line 139
    .line 140
    invoke-direct {v5, v4}, Lm0/r;-><init>(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 144
    .line 145
    .line 146
    check-cast v1, Lm0/g;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string v4, "post-error"

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Lm0/m;->a(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v4, Lm0/p;

    .line 157
    .line 158
    invoke-direct {v4, v5}, Lm0/p;-><init>(Lm0/r;)V

    .line 159
    .line 160
    .line 161
    new-instance v5, Lm0/g$b;

    .line 162
    .line 163
    invoke-direct {v5, v0, v4, v2}, Lm0/g$b;-><init>(Lm0/m;Lm0/p;Lm0/c;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v1, Lm0/g;->a:Lm0/g$a;

    .line 167
    .line 168
    invoke-virtual {v1, v5}, Lm0/g$a;->execute(Ljava/lang/Runnable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :catch_1
    move-exception v4

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 174
    .line 175
    .line 176
    check-cast v1, Lm0/g;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string v5, "post-error"

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Lm0/m;->a(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v5, Lm0/p;

    .line 187
    .line 188
    invoke-direct {v5, v4}, Lm0/p;-><init>(Lm0/r;)V

    .line 189
    .line 190
    .line 191
    new-instance v4, Lm0/g$b;

    .line 192
    .line 193
    invoke-direct {v4, v0, v5, v2}, Lm0/g$b;-><init>(Lm0/m;Lm0/p;Lm0/c;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v1, Lm0/g;->a:Lm0/g$a;

    .line 197
    .line 198
    invoke-virtual {v1, v4}, Lm0/g$a;->execute(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    :goto_0
    iget-object v1, v0, Lm0/m;->e:Ljava/lang/Object;

    .line 202
    .line 203
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    iget-object v2, v0, Lm0/m;->m:Lm0/m$b;

    .line 205
    .line 206
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    if-eqz v2, :cond_2

    .line 208
    .line 209
    :try_start_3
    check-cast v2, Lm0/t;

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lm0/t;->b(Lm0/m;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .line 213
    .line 214
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Lm0/m;->k(I)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_1
    move-exception v2

    .line 219
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    :goto_2
    invoke-virtual {v0, v3}, Lm0/m;->k(I)V

    .line 222
    .line 223
    .line 224
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lm0/j;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lm0/j;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lm0/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
