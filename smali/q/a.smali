.class public final Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "selector"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_e

    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    add-int/2addr v2, v3

    .line 23
    const/16 v4, 0x14

    .line 24
    .line 25
    new-array v5, v4, [[I

    .line 26
    .line 27
    new-array v4, v4, [I

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eq v8, v3, :cond_d

    .line 36
    .line 37
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-ge v9, v2, :cond_0

    .line 42
    .line 43
    const/4 v10, 0x3

    .line 44
    if-eq v8, v10, :cond_d

    .line 45
    .line 46
    :cond_0
    const/4 v10, 0x2

    .line 47
    if-ne v8, v10, :cond_c

    .line 48
    .line 49
    if-gt v9, v2, :cond_c

    .line 50
    .line 51
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const-string v9, "item"

    .line 56
    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_1

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_1
    sget-object v8, Lm1/h;->P:[I

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    move-object/from16 v9, p0

    .line 70
    .line 71
    invoke-virtual {v9, v0, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object/from16 v9, p0

    .line 77
    .line 78
    invoke-virtual {v1, v0, v8, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    :goto_1
    const v11, -0xff01

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v6, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    const/high16 v13, 0x3f800000    # 1.0f

    .line 94
    .line 95
    if-eqz v12, :cond_3

    .line 96
    .line 97
    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_4

    .line 107
    .line 108
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .line 114
    .line 115
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    new-array v10, v8, [I

    .line 120
    .line 121
    const/4 v12, 0x0

    .line 122
    const/4 v14, 0x0

    .line 123
    :goto_3
    if-ge v12, v8, :cond_7

    .line 124
    .line 125
    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    const v3, 0x10101a5

    .line 130
    .line 131
    .line 132
    if-eq v15, v3, :cond_6

    .line 133
    .line 134
    const v3, 0x101031f

    .line 135
    .line 136
    .line 137
    if-eq v15, v3, :cond_6

    .line 138
    .line 139
    const v3, 0x7f030027

    .line 140
    .line 141
    .line 142
    if-eq v15, v3, :cond_6

    .line 143
    .line 144
    add-int/lit8 v3, v14, 0x1

    .line 145
    .line 146
    invoke-interface {v0, v12, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v16

    .line 150
    if-eqz v16, :cond_5

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    neg-int v15, v15

    .line 154
    :goto_4
    aput v15, v10, v14

    .line 155
    .line 156
    move v14, v3

    .line 157
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 158
    .line 159
    const/4 v3, 0x1

    .line 160
    goto :goto_3

    .line 161
    :cond_7
    invoke-static {v10, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    int-to-float v8, v8

    .line 170
    mul-float v8, v8, v13

    .line 171
    .line 172
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    const v10, 0xffffff

    .line 177
    .line 178
    .line 179
    and-int/2addr v10, v11

    .line 180
    shl-int/lit8 v8, v8, 0x18

    .line 181
    .line 182
    or-int/2addr v8, v10

    .line 183
    add-int/lit8 v10, v7, 0x1

    .line 184
    .line 185
    array-length v11, v4

    .line 186
    const/16 v12, 0x8

    .line 187
    .line 188
    const/4 v13, 0x4

    .line 189
    if-le v10, v11, :cond_9

    .line 190
    .line 191
    if-gt v7, v13, :cond_8

    .line 192
    .line 193
    const/16 v11, 0x8

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    mul-int/lit8 v11, v7, 0x2

    .line 197
    .line 198
    :goto_5
    new-array v11, v11, [I

    .line 199
    .line 200
    invoke-static {v4, v6, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    .line 202
    .line 203
    move-object v4, v11

    .line 204
    :cond_9
    aput v8, v4, v7

    .line 205
    .line 206
    array-length v8, v5

    .line 207
    if-le v10, v8, :cond_b

    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    if-gt v7, v13, :cond_a

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_a
    mul-int/lit8 v12, v7, 0x2

    .line 221
    .line 222
    :goto_6
    invoke-static {v8, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v5, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    move-object v5, v8

    .line 232
    :cond_b
    aput-object v3, v5, v7

    .line 233
    .line 234
    check-cast v5, [[I

    .line 235
    .line 236
    move v7, v10

    .line 237
    goto :goto_8

    .line 238
    :cond_c
    :goto_7
    move-object/from16 v9, p0

    .line 239
    .line 240
    :goto_8
    const/4 v3, 0x1

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_d
    new-array v0, v7, [I

    .line 244
    .line 245
    new-array v1, v7, [[I

    .line 246
    .line 247
    invoke-static {v4, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .line 249
    .line 250
    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 254
    .line 255
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 256
    .line 257
    .line 258
    return-object v2

    .line 259
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v3, ": invalid color state list tag "

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0
.end method
