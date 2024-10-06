.class public final Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/j;


# instance fields
.field public final synthetic a:Lb/j;


# direct methods
.method public constructor <init>(Lb/j;)V
    .locals 0

    iput-object p1, p0, Lb/k;->a:Lb/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ly/t;)Ly/t;
    .locals 12

    .line 1
    iget-object v0, p2, Ly/t;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/view/WindowInsets;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lb/k;->a:Lb/j;

    .line 11
    .line 12
    iget-object v3, v2, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_a

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    if-eqz v3, :cond_a

    .line 24
    .line 25
    iget-object v3, v2, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    .line 33
    iget-object v5, v2, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v5, :cond_8

    .line 41
    .line 42
    iget-object v5, v2, Lb/j;->O:Landroid/graphics/Rect;

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    new-instance v5, Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v5, v2, Lb/j;->O:Landroid/graphics/Rect;

    .line 52
    .line 53
    new-instance v5, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v5, v2, Lb/j;->P:Landroid/graphics/Rect;

    .line 59
    .line 60
    :cond_0
    iget-object v5, v2, Lb/j;->O:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget-object v7, v2, Lb/j;->P:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v5, v4, v1, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v2, Lb/j;->s:Landroid/view/ViewGroup;

    .line 68
    .line 69
    sget-object v9, Lg/y0;->a:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    const/4 v10, 0x2

    .line 74
    :try_start_0
    new-array v10, v10, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object v5, v10, v4

    .line 77
    .line 78
    aput-object v7, v10, v6

    .line 79
    .line 80
    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v5

    .line 85
    const-string v8, "ViewUtils"

    .line 86
    .line 87
    const-string v9, "Could not invoke computeFitSystemWindows"

    .line 88
    .line 89
    invoke-static {v8, v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    move v5, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/4 v5, 0x0

    .line 99
    :goto_1
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 100
    .line 101
    if-eq v7, v5, :cond_5

    .line 102
    .line 103
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    .line 105
    iget-object v5, v2, Lb/j;->u:Landroid/view/View;

    .line 106
    .line 107
    if-nez v5, :cond_3

    .line 108
    .line 109
    new-instance v5, Landroid/view/View;

    .line 110
    .line 111
    iget-object v7, v2, Lb/j;->b:Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v5, v2, Lb/j;->u:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const v8, 0x7f050007

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v2, Lb/j;->s:Landroid/view/ViewGroup;

    .line 133
    .line 134
    iget-object v7, v2, Lb/j;->u:Landroid/view/View;

    .line 135
    .line 136
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    const/4 v9, -0x1

    .line 139
    invoke-direct {v8, v9, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v7, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    .line 152
    if-eq v7, v1, :cond_4

    .line 153
    .line 154
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    .line 156
    iget-object v7, v2, Lb/j;->u:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 162
    goto :goto_3

    .line 163
    :cond_5
    const/4 v5, 0x0

    .line 164
    :goto_3
    iget-object v7, v2, Lb/j;->u:Landroid/view/View;

    .line 165
    .line 166
    if-eqz v7, :cond_6

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_6
    const/4 v6, 0x0

    .line 170
    :goto_4
    iget-boolean v7, v2, Lb/j;->z:Z

    .line 171
    .line 172
    if-nez v7, :cond_7

    .line 173
    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    move v7, v1

    .line 179
    :goto_5
    move v11, v6

    .line 180
    move v6, v5

    .line 181
    move v5, v11

    .line 182
    goto :goto_6

    .line 183
    :cond_8
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 184
    .line 185
    if-eqz v5, :cond_9

    .line 186
    .line 187
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    .line 189
    move v7, v1

    .line 190
    const/4 v5, 0x0

    .line 191
    goto :goto_6

    .line 192
    :cond_9
    move v7, v1

    .line 193
    const/4 v5, 0x0

    .line 194
    const/4 v6, 0x0

    .line 195
    :goto_6
    if-eqz v6, :cond_b

    .line 196
    .line 197
    iget-object v6, v2, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 198
    .line 199
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_a
    move v7, v1

    .line 204
    const/4 v5, 0x0

    .line 205
    :cond_b
    :goto_7
    iget-object v2, v2, Lb/j;->u:Landroid/view/View;

    .line 206
    .line 207
    if-eqz v2, :cond_d

    .line 208
    .line 209
    if-eqz v5, :cond_c

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_c
    const/16 v4, 0x8

    .line 213
    .line 214
    :goto_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    :cond_d
    if-eq v1, v7, :cond_e

    .line 218
    .line 219
    move-object p2, v0

    .line 220
    check-cast p2, Landroid/view/WindowInsets;

    .line 221
    .line 222
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    move-object v1, v0

    .line 227
    check-cast v1, Landroid/view/WindowInsets;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    move-object v2, v0

    .line 234
    check-cast v2, Landroid/view/WindowInsets;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    new-instance v3, Ly/t;

    .line 241
    .line 242
    check-cast v0, Landroid/view/WindowInsets;

    .line 243
    .line 244
    invoke-virtual {v0, p2, v7, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-direct {v3, p2}, Ly/t;-><init>(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    move-object p2, v3

    .line 252
    :cond_e
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 253
    .line 254
    iget-object p2, p2, Ly/t;->a:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p2, Landroid/view/WindowInsets;

    .line 257
    .line 258
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_f

    .line 267
    .line 268
    new-instance p2, Landroid/view/WindowInsets;

    .line 269
    .line 270
    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 271
    .line 272
    .line 273
    :cond_f
    new-instance p1, Ly/t;

    .line 274
    .line 275
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, p2}, Ly/t;-><init>(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    return-object p1
.end method
