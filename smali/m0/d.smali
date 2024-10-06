.class public final Lm0/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final h:Z


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

.field public final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lm0/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lm0/b;

.field public final e:Lm0/q;

.field public volatile f:Z

.field public final g:Lm0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lm0/s;->a:Z

    sput-boolean v0, Lm0/d;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Lm0/b;Lm0/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/d;->f:Z

    iput-object p1, p0, Lm0/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lm0/d;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lm0/d;->d:Lm0/b;

    iput-object p4, p0, Lm0/d;->e:Lm0/q;

    new-instance p1, Lm0/t;

    invoke-direct {p1, p0, p2, p4}, Lm0/t;-><init>(Lm0/d;Ljava/util/concurrent/PriorityBlockingQueue;Lm0/q;)V

    iput-object p1, p0, Lm0/d;->g:Lm0/t;

    return-void
.end method

.method private a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lm0/d;->b:Ljava/util/concurrent/BlockingQueue;

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
    const-string v1, "cache-queue-take"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lm0/m;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lm0/m;->k(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    :try_start_0
    invoke-virtual {v0}, Lm0/m;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lm0/d;->d:Lm0/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm0/m;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v3, Ln0/c;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ln0/c;->a(Ljava/lang/String;)Lm0/b$a;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const-string v1, "cache-miss"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lm0/m;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lm0/d;->g:Lm0/t;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lm0/t;->a(Lm0/m;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_9

    .line 48
    .line 49
    :goto_0
    iget-object v1, p0, Lm0/d;->c:Ljava/util/concurrent/BlockingQueue;

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iget-wide v6, v3, Lm0/b$a;->e:J

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    cmp-long v9, v6, v4

    .line 60
    .line 61
    if-gez v9, :cond_1

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v6, 0x0

    .line 66
    :goto_1
    if-eqz v6, :cond_2

    .line 67
    .line 68
    const-string v1, "cache-hit-expired"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lm0/m;->a(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object v3, v0, Lm0/m;->l:Lm0/b$a;

    .line 74
    .line 75
    iget-object v1, p0, Lm0/d;->g:Lm0/t;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lm0/t;->a(Lm0/m;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_9

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string v6, "cache-hit"

    .line 85
    .line 86
    invoke-virtual {v0, v6}, Lm0/m;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lm0/l;

    .line 90
    .line 91
    iget-object v7, v3, Lm0/b$a;->a:[B

    .line 92
    .line 93
    iget-object v9, v3, Lm0/b$a;->g:Ljava/util/Map;

    .line 94
    .line 95
    invoke-direct {v6, v7, v9}, Lm0/l;-><init>([BLjava/util/Map;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v6}, Lm0/m;->j(Lm0/l;)Lm0/p;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-string v7, "cache-hit-parsed"

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Lm0/m;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v7, v6, Lm0/p;->c:Lm0/r;

    .line 108
    .line 109
    if-nez v7, :cond_3

    .line 110
    .line 111
    const/4 v7, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const/4 v7, 0x0

    .line 114
    :goto_2
    const/4 v9, 0x0

    .line 115
    if-nez v7, :cond_5

    .line 116
    .line 117
    const-string v1, "cache-parsing-failed"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lm0/m;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lm0/d;->d:Lm0/b;

    .line 123
    .line 124
    invoke-virtual {v0}, Lm0/m;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v1, Ln0/c;

    .line 129
    .line 130
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-virtual {v1, v3}, Ln0/c;->a(Ljava/lang/String;)Lm0/b$a;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    const-wide/16 v5, 0x0

    .line 138
    .line 139
    iput-wide v5, v4, Lm0/b$a;->f:J

    .line 140
    .line 141
    iput-wide v5, v4, Lm0/b$a;->e:J

    .line 142
    .line 143
    invoke-virtual {v1, v3, v4}, Ln0/c;->f(Ljava/lang/String;Lm0/b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :cond_4
    :try_start_2
    monitor-exit v1

    .line 147
    iput-object v9, v0, Lm0/m;->l:Lm0/b$a;

    .line 148
    .line 149
    iget-object v1, p0, Lm0/d;->g:Lm0/t;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Lm0/t;->a(Lm0/m;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_9

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :catchall_0
    move-exception v3

    .line 163
    monitor-exit v1

    .line 164
    throw v3

    .line 165
    :cond_5
    iget-wide v10, v3, Lm0/b$a;->f:J

    .line 166
    .line 167
    cmp-long v7, v10, v4

    .line 168
    .line 169
    if-gez v7, :cond_6

    .line 170
    .line 171
    const/4 v8, 0x1

    .line 172
    :cond_6
    if-nez v8, :cond_8

    .line 173
    .line 174
    :cond_7
    iget-object v1, p0, Lm0/d;->e:Lm0/q;

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    const-string v4, "cache-hit-refresh-needed"

    .line 178
    .line 179
    invoke-virtual {v0, v4}, Lm0/m;->a(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput-object v3, v0, Lm0/m;->l:Lm0/b$a;

    .line 183
    .line 184
    iput-boolean v1, v6, Lm0/p;->d:Z

    .line 185
    .line 186
    iget-object v1, p0, Lm0/d;->g:Lm0/t;

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Lm0/t;->a(Lm0/m;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_7

    .line 193
    .line 194
    iget-object v1, p0, Lm0/d;->e:Lm0/q;

    .line 195
    .line 196
    new-instance v3, Lm0/c;

    .line 197
    .line 198
    invoke-direct {v3, p0, v0}, Lm0/c;-><init>(Lm0/d;Lm0/m;)V

    .line 199
    .line 200
    .line 201
    check-cast v1, Lm0/g;

    .line 202
    .line 203
    invoke-virtual {v1, v0, v6, v3}, Lm0/g;->a(Lm0/m;Lm0/p;Lm0/c;)V

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :goto_4
    check-cast v1, Lm0/g;

    .line 208
    .line 209
    invoke-virtual {v1, v0, v6, v9}, Lm0/g;->a(Lm0/m;Lm0/p;Lm0/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    .line 211
    .line 212
    :cond_9
    :goto_5
    invoke-virtual {v0, v2}, Lm0/m;->k(I)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_1
    move-exception v1

    .line 217
    invoke-virtual {v0, v2}, Lm0/m;->k(I)V

    .line 218
    .line 219
    .line 220
    throw v1
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/d;->f:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Lm0/d;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lm0/s;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lm0/d;->d:Lm0/b;

    check-cast v0, Ln0/c;

    invoke-virtual {v0}, Ln0/c;->d()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lm0/d;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lm0/d;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lm0/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
