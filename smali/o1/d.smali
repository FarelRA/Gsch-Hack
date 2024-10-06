.class public Lo1/d;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    move-object p3, p0

    .line 22
    check-cast p3, Lo1/k;

    .line 23
    .line 24
    const/4 p4, 0x2

    .line 25
    const/4 v0, 0x0

    .line 26
    if-ne p1, p4, :cond_7

    .line 27
    .line 28
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    sget p4, Lo1/e;->a:I

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez p4, :cond_2

    .line 38
    .line 39
    move-object p1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/os/Parcelable;

    .line 46
    .line 47
    :goto_0
    check-cast p1, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-gtz p2, :cond_6

    .line 54
    .line 55
    check-cast p3, Lm1/l;

    .line 56
    .line 57
    iget-object p2, p3, Lm1/l;->c:Lm1/m;

    .line 58
    .line 59
    iget-object p2, p2, Lm1/m;->c:Lo1/s;

    .line 60
    .line 61
    iget-object p4, p3, Lm1/l;->b:Lu0/d;

    .line 62
    .line 63
    iget-object v3, p2, Lo1/s;->f:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v4, p2, Lo1/s;->e:Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {v4, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    iget-object p4, p2, Lo1/s;->f:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter p4

    .line 75
    :try_start_1
    iget-object v3, p2, Lo1/s;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-lez v3, :cond_3

    .line 82
    .line 83
    iget-object v3, p2, Lo1/s;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-lez v3, :cond_3

    .line 90
    .line 91
    iget-object p2, p2, Lo1/s;->b:Lo1/l;

    .line 92
    .line 93
    const-string v3, "Leaving the connection open for other ongoing calls."

    .line 94
    .line 95
    new-array v4, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p2, v3, v4}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    monitor-exit p4

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    new-instance p4, Lo1/p;

    .line 104
    .line 105
    invoke-direct {p4, v0, p2}, Lo1/p;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lo1/s;->a()Landroid/os/Handler;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :goto_1
    iget-object p2, p3, Lm1/l;->a:Lo1/l;

    .line 116
    .line 117
    const-string p4, "onRequestIntegrityToken"

    .line 118
    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {p2, p4, v0}, Lo1/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-string p2, "error"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    iget-object p1, p3, Lm1/l;->b:Lu0/d;

    .line 133
    .line 134
    new-instance p3, Lm1/b;

    .line 135
    .line 136
    invoke-direct {p3, p2, v2}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const-string p2, "token"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-nez p1, :cond_5

    .line 147
    .line 148
    iget-object p1, p3, Lm1/l;->b:Lu0/d;

    .line 149
    .line 150
    new-instance p3, Lm1/b;

    .line 151
    .line 152
    const/16 p2, -0x64

    .line 153
    .line 154
    invoke-direct {p3, p2, v2}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-virtual {p1, p3}, Lu0/d;->a(Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    iget-object p2, p3, Lm1/l;->b:Lu0/d;

    .line 162
    .line 163
    new-instance p3, Lm1/f;

    .line 164
    .line 165
    invoke-direct {p3, p1}, Lm1/f;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Lu0/d;->b(Lm1/f;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p1

    .line 175
    :catchall_1
    move-exception p1

    .line 176
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    throw p1

    .line 178
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    .line 179
    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p4, "Parcel data not fully consumed, unread size: "

    .line 183
    .line 184
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_7
    const/4 v1, 0x0

    .line 199
    :goto_3
    return v1
.end method
