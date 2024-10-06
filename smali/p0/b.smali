.class public final Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Ls0/b;->d(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v6, v1

    .line 8
    move-object v7, v6

    .line 9
    move-object v8, v7

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v2, v0, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-char v3, v2

    .line 23
    const/4 v9, 0x1

    .line 24
    if-eq v3, v9, :cond_5

    .line 25
    .line 26
    const/4 v9, 0x2

    .line 27
    if-eq v3, v9, :cond_3

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-eq v3, v9, :cond_2

    .line 31
    .line 32
    const/4 v9, 0x4

    .line 33
    if-eq v3, v9, :cond_1

    .line 34
    .line 35
    const/16 v9, 0x3e8

    .line 36
    .line 37
    if-eq v3, v9, :cond_0

    .line 38
    .line 39
    invoke-static {p1, v2}, Ls0/b;->c(Landroid/os/Parcel;I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v2

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1, v2}, Ls0/b;->b(Landroid/os/Parcel;I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v3, Lo0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .line 59
    invoke-static {p1, v2, v3}, Ls0/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object v8, v2

    .line 64
    check-cast v8, Lo0/a;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-static {p1, v2, v3}, Ls0/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v7, v2

    .line 74
    check-cast v7, Landroid/app/PendingIntent;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1, v2}, Ls0/b;->c(Landroid/os/Parcel;I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    move-object v6, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    add-int/2addr v3, v2

    .line 94
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-static {p1, v2}, Ls0/b;->b(Landroid/os/Parcel;I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ne v1, v0, :cond_7

    .line 108
    .line 109
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 110
    .line 111
    move-object v3, p1

    .line 112
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lo0/a;)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_7
    new-instance v1, Ls0/b$a;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v3, "Overread allowed size end="

    .line 121
    .line 122
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {v1, v0, p1}, Ls0/b$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 133
    .line 134
    .line 135
    throw v1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1
.end method
