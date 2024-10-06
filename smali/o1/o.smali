.class public final Lo1/o;
.super Lo1/m;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo1/r;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo1/o;->c:I

    .line 1
    iput-object p1, p0, Lo1/o;->e:Ljava/lang/Object;

    iput-object p2, p0, Lo1/o;->d:Ljava/lang/Object;

    invoke-direct {p0}, Lo1/m;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo1/s;Lu0/d;Lm1/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo1/o;->c:I

    .line 2
    iput-object p1, p0, Lo1/o;->e:Ljava/lang/Object;

    iput-object p3, p0, Lo1/o;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lo1/m;-><init>(Lu0/d;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    iget v0, p0, Lo1/o;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo1/o;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lo1/o;->e:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :pswitch_0
    check-cast v3, Lo1/s;

    .line 13
    .line 14
    check-cast v2, Lo1/m;

    .line 15
    .line 16
    iget-object v0, v3, Lo1/s;->m:Landroid/os/IInterface;

    .line 17
    .line 18
    iget-object v4, v3, Lo1/s;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v5, v3, Lo1/s;->b:Lo1/l;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, v3, Lo1/s;->g:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-array v0, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v6, "Initiate binding to the service."

    .line 31
    .line 32
    invoke-virtual {v5, v6, v0}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Lo1/r;

    .line 39
    .line 40
    invoke-direct {v0, v3}, Lo1/r;-><init>(Lo1/s;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, v3, Lo1/s;->l:Lo1/r;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    iput-boolean v2, v3, Lo1/s;->g:Z

    .line 47
    .line 48
    iget-object v6, v3, Lo1/s;->a:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v7, v3, Lo1/s;->h:Landroid/content/Intent;

    .line 51
    .line 52
    invoke-virtual {v6, v7, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    new-array v0, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v2, "Failed to bind to the service."

    .line 61
    .line 62
    invoke-virtual {v5, v2, v0}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v1, v3, Lo1/s;->g:Z

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lo1/m;

    .line 82
    .line 83
    new-instance v2, Lo1/t;

    .line 84
    .line 85
    invoke-direct {v2}, Lo1/t;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lo1/m;->a(Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-boolean v0, v3, Lo1/s;->g:Z

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    new-array v0, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v1, "Waiting to bind to the service."

    .line 103
    .line 104
    invoke-virtual {v5, v1, v0}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v2}, Lo1/m;->run()V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    return-void

    .line 115
    :goto_2
    check-cast v3, Lo1/r;

    .line 116
    .line 117
    iget-object v0, v3, Lo1/r;->a:Lo1/s;

    .line 118
    .line 119
    check-cast v2, Landroid/os/IBinder;

    .line 120
    .line 121
    sget v4, Lo1/i;->a:I

    .line 122
    .line 123
    if-nez v2, :cond_4

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    const-string v4, "com.google.android.play.core.integrity.protocol.IIntegrityService"

    .line 128
    .line 129
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    instance-of v5, v4, Lo1/j;

    .line 134
    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    move-object v2, v4

    .line 138
    check-cast v2, Lo1/j;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    new-instance v4, Lo1/h;

    .line 142
    .line 143
    invoke-direct {v4, v2}, Lo1/h;-><init>(Landroid/os/IBinder;)V

    .line 144
    .line 145
    .line 146
    move-object v2, v4

    .line 147
    :goto_3
    iput-object v2, v0, Lo1/s;->m:Landroid/os/IInterface;

    .line 148
    .line 149
    iget-object v0, v3, Lo1/r;->a:Lo1/s;

    .line 150
    .line 151
    iget-object v2, v0, Lo1/s;->b:Lo1/l;

    .line 152
    .line 153
    new-array v3, v1, [Ljava/lang/Object;

    .line 154
    .line 155
    const-string v4, "linkToDeath"

    .line 156
    .line 157
    invoke-virtual {v2, v4, v3}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :try_start_0
    iget-object v2, v0, Lo1/s;->m:Landroid/os/IInterface;

    .line 161
    .line 162
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, v0, Lo1/s;->j:Lo1/n;

    .line 167
    .line 168
    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catch_0
    move-exception v2

    .line 173
    new-array v3, v1, [Ljava/lang/Object;

    .line 174
    .line 175
    iget-object v4, v0, Lo1/s;->b:Lo1/l;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 v5, 0x6

    .line 181
    const-string v6, "PlayCore"

    .line 182
    .line 183
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_6

    .line 188
    .line 189
    iget-object v4, v4, Lo1/l;->a:Ljava/lang/String;

    .line 190
    .line 191
    const-string v5, "linkToDeath failed"

    .line 192
    .line 193
    invoke-static {v4, v5, v3}, Lo1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_4
    iput-boolean v1, v0, Lo1/s;->g:Z

    .line 201
    .line 202
    iget-object v1, v0, Lo1/s;->d:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_7

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Ljava/lang/Runnable;

    .line 219
    .line 220
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_7
    iget-object v0, v0, Lo1/s;->d:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
