.class public final Lo0/a;
.super Ls0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo0/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/app/PendingIntent;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo0/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v3, v2, v2}, Lo0/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lo0/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lo0/b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lo0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ls0/a;-><init>()V

    iput p1, p0, Lo0/a;->a:I

    iput p2, p0, Lo0/a;->b:I

    iput-object p3, p0, Lo0/a;->c:Landroid/app/PendingIntent;

    iput-object p4, p0, Lo0/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/a;

    iget v1, p1, Lo0/a;->b:I

    iget v3, p0, Lo0/a;->b:I

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lo0/a;->c:Landroid/app/PendingIntent;

    iget-object v3, p1, Lo0/a;->c:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lr0/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo0/a;->d:Ljava/lang/String;

    iget-object p1, p1, Lo0/a;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lr0/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lo0/a;->b:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lo0/a;->c:Landroid/app/PendingIntent;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Lo0/a;->d:Ljava/lang/String;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lr0/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr0/a$a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x63

    .line 7
    .line 8
    iget v2, p0, Lo0/a;->b:I

    .line 9
    .line 10
    if-eq v2, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x5dc

    .line 13
    .line 14
    if-eq v2, v1, :cond_0

    .line 15
    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    packed-switch v2, :pswitch_data_1

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "UNKNOWN_ERROR_CODE("

    .line 25
    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ")"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :pswitch_0
    const-string v1, "LICENSE_CHECK_FAILED"

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_1
    const-string v1, "DEVELOPER_ERROR"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_2
    const-string v1, "SERVICE_INVALID"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    const-string v1, "INTERNAL_ERROR"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    const-string v1, "NETWORK_ERROR"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    const-string v1, "RESOLUTION_REQUIRED"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    const-string v1, "INVALID_ACCOUNT"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_7
    const-string v1, "SIGN_IN_REQUIRED"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_8
    const-string v1, "SERVICE_DISABLED"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_9
    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_a
    const-string v1, "SERVICE_MISSING"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_b
    const-string v1, "SUCCESS"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_c
    const-string v1, "UNKNOWN"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_d
    const-string v1, "API_DISABLED_FOR_CONNECTION"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_e
    const-string v1, "API_DISABLED"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_f
    const-string v1, "RESOLUTION_ACTIVITY_NOT_FOUND"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_10
    const-string v1, "API_VERSION_UPDATE_REQUIRED"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_11
    const-string v1, "RESTRICTED_PROFILE"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_12
    const-string v1, "SERVICE_MISSING_PERMISSION"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_13
    const-string v1, "SERVICE_UPDATING"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_14
    const-string v1, "SIGN_IN_FAILED"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_15
    const-string v1, "API_UNAVAILABLE"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_16
    const-string v1, "INTERRUPTED"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_17
    const-string v1, "TIMEOUT"

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_18
    const-string v1, "CANCELED"

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "UNFINISHED"

    .line 123
    .line 124
    :goto_0
    const-string v2, "statusCode"

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lr0/a$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "resolution"

    .line 130
    .line 131
    iget-object v2, p0, Lo0/a;->c:Landroid/app/PendingIntent;

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Lr0/a$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "message"

    .line 137
    .line 138
    iget-object v2, p0, Lo0/a;->d:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v2, v1}, Lr0/a$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lr0/a$a;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lm1/h;->P(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x40001

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lo0/a;->a:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    const v1, 0x40002

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lo0/a;->b:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    iget-object v2, p0, Lo0/a;->c:Landroid/app/PendingIntent;

    .line 31
    .line 32
    invoke-static {p1, v1, v2, p2}, Lm1/h;->O(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lo0/a;->d:Ljava/lang/String;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x4

    .line 41
    invoke-static {p1, v1}, Lm1/h;->P(Landroid/os/Parcel;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lm1/h;->Q(Landroid/os/Parcel;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {p1, v0}, Lm1/h;->Q(Landroid/os/Parcel;I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
