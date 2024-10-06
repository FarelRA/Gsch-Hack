.class public final Lb/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/t$a;
    }
.end annotation


# static fields
.field public static d:Lb/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lb/t$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/t$a;

    invoke-direct {v0}, Lb/t$a;-><init>()V

    iput-object v0, p0, Lb/t;->c:Lb/t$a;

    iput-object p1, p0, Lb/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/t;->b:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lb/t;->c:Lb/t$a;

    .line 4
    .line 5
    iget-wide v3, v2, Lb/t$a;->b:J

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    cmp-long v0, v3, v5

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, v2, Lb/t$a;->a:Z

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 26
    .line 27
    iget-object v3, v1, Lb/t;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v3, v0}, Lm1/h;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v4, "Failed to get last known location"

    .line 34
    .line 35
    iget-object v5, v1, Lb/t;->b:Landroid/location/LocationManager;

    .line 36
    .line 37
    const-string v6, "TwilightManager"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v0, "network"

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    move-object v0, v9

    .line 60
    :goto_1
    move-object v10, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v10, v9

    .line 63
    :goto_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 64
    .line 65
    invoke-static {v3, v0}, Lm1/h;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    const-string v0, "gps"

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    move-object v9, v0

    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 90
    .line 91
    if-eqz v10, :cond_5

    .line 92
    .line 93
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    cmp-long v0, v3, v11

    .line 102
    .line 103
    if-lez v0, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    if-eqz v9, :cond_6

    .line 107
    .line 108
    :goto_4
    move-object v10, v9

    .line 109
    :cond_6
    if-eqz v10, :cond_d

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    sget-object v0, Lb/s;->d:Lb/s;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    new-instance v0, Lb/s;

    .line 120
    .line 121
    invoke-direct {v0}, Lb/s;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lb/s;->d:Lb/s;

    .line 125
    .line 126
    :cond_7
    sget-object v0, Lb/s;->d:Lb/s;

    .line 127
    .line 128
    const-wide/32 v5, 0x5265c00

    .line 129
    .line 130
    .line 131
    sub-long v12, v3, v5

    .line 132
    .line 133
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 138
    .line 139
    .line 140
    move-result-wide v16

    .line 141
    move-object v11, v0

    .line 142
    invoke-virtual/range {v11 .. v17}, Lb/s;->a(JDD)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 146
    .line 147
    .line 148
    move-result-wide v14

    .line 149
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 150
    .line 151
    .line 152
    move-result-wide v16

    .line 153
    move-wide v12, v3

    .line 154
    invoke-virtual/range {v11 .. v17}, Lb/s;->a(JDD)V

    .line 155
    .line 156
    .line 157
    iget v9, v0, Lb/s;->c:I

    .line 158
    .line 159
    if-ne v9, v8, :cond_8

    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    :cond_8
    iget-wide v8, v0, Lb/s;->b:J

    .line 163
    .line 164
    iget-wide v14, v0, Lb/s;->a:J

    .line 165
    .line 166
    add-long v12, v3, v5

    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 169
    .line 170
    .line 171
    move-result-wide v5

    .line 172
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 173
    .line 174
    .line 175
    move-result-wide v16

    .line 176
    move-object v11, v0

    .line 177
    move-wide/from16 v18, v14

    .line 178
    .line 179
    move-wide v14, v5

    .line 180
    invoke-virtual/range {v11 .. v17}, Lb/s;->a(JDD)V

    .line 181
    .line 182
    .line 183
    iget-wide v5, v0, Lb/s;->b:J

    .line 184
    .line 185
    const-wide/16 v10, -0x1

    .line 186
    .line 187
    cmp-long v0, v8, v10

    .line 188
    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    cmp-long v0, v18, v10

    .line 192
    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    const-wide/16 v10, 0x0

    .line 197
    .line 198
    cmp-long v0, v3, v18

    .line 199
    .line 200
    if-lez v0, :cond_a

    .line 201
    .line 202
    add-long/2addr v5, v10

    .line 203
    goto :goto_5

    .line 204
    :cond_a
    cmp-long v0, v3, v8

    .line 205
    .line 206
    if-lez v0, :cond_b

    .line 207
    .line 208
    add-long v5, v18, v10

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_b
    add-long v5, v8, v10

    .line 212
    .line 213
    :goto_5
    const-wide/32 v3, 0xea60

    .line 214
    .line 215
    .line 216
    add-long/2addr v5, v3

    .line 217
    goto :goto_7

    .line 218
    :cond_c
    :goto_6
    const-wide/32 v5, 0x2932e00

    .line 219
    .line 220
    .line 221
    add-long/2addr v5, v3

    .line 222
    :goto_7
    iput-boolean v7, v2, Lb/t$a;->a:Z

    .line 223
    .line 224
    iput-wide v5, v2, Lb/t$a;->b:J

    .line 225
    .line 226
    return v7

    .line 227
    :cond_d
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 228
    .line 229
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v2, 0xb

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    const/4 v2, 0x6

    .line 243
    if-lt v0, v2, :cond_e

    .line 244
    .line 245
    const/16 v2, 0x16

    .line 246
    .line 247
    if-lt v0, v2, :cond_f

    .line 248
    .line 249
    :cond_e
    const/4 v7, 0x1

    .line 250
    :cond_f
    return v7
.end method
