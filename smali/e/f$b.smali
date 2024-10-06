.class public final Le/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Le/f;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ly/b;


# direct methods
.method public constructor <init>(Le/f;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f$b;->E:Le/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/f$b;->C:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Le/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Le/f$b;->a:Landroid/view/Menu;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Le/f$b;->b:I

    .line 15
    .line 16
    iput p1, p0, Le/f$b;->c:I

    .line 17
    .line 18
    iput p1, p0, Le/f$b;->d:I

    .line 19
    .line 20
    iput p1, p0, Le/f$b;->e:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Le/f$b;->f:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Le/f$b;->g:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Le/f$b;->E:Le/f;

    iget-object v0, v0, Le/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot instantiate class: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/f$b;->s:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Le/f$b;->t:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Le/f$b;->u:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Le/f$b;->r:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Le/f$b;->l:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Le/f$b;->m:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Le/f$b;->v:I

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Le/f$b;->y:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Le/f$b;->E:Le/f;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v1, Le/f;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Le/f$a;

    .line 65
    .line 66
    iget-object v4, v1, Le/f;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v4, v1, Le/f;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v4}, Le/f;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, v1, Le/f;->d:Ljava/lang/Object;

    .line 77
    .line 78
    :cond_2
    iget-object v4, v1, Le/f;->d:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v5, p0, Le/f$b;->y:Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v0, v4, v5}, Le/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    :goto_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/h;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    move-object v4, p1

    .line 102
    check-cast v4, Landroidx/appcompat/view/menu/h;

    .line 103
    .line 104
    :cond_5
    iget v4, p0, Le/f$b;->r:I

    .line 105
    .line 106
    const/4 v5, 0x2

    .line 107
    if-lt v4, v5, :cond_8

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    move-object v0, p1

    .line 112
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 113
    .line 114
    iget v4, v0, Landroidx/appcompat/view/menu/h;->x:I

    .line 115
    .line 116
    and-int/lit8 v4, v4, -0x5

    .line 117
    .line 118
    const/4 v5, 0x4

    .line 119
    or-int/2addr v4, v5

    .line 120
    iput v4, v0, Landroidx/appcompat/view/menu/h;->x:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    instance-of v0, p1, Lf/d;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    move-object v0, p1

    .line 128
    check-cast v0, Lf/d;

    .line 129
    .line 130
    :try_start_0
    iget-object v4, v0, Lf/d;->e:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    if-nez v4, :cond_7

    .line 133
    .line 134
    iget-object v4, v0, Lf/c;->a:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, Lt/b;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v5, "setExclusiveCheckable"

    .line 143
    .line 144
    new-array v6, v3, [Ljava/lang/Class;

    .line 145
    .line 146
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 147
    .line 148
    aput-object v7, v6, v2

    .line 149
    .line 150
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iput-object v4, v0, Lf/d;->e:Ljava/lang/reflect/Method;

    .line 155
    .line 156
    :cond_7
    iget-object v4, v0, Lf/d;->e:Ljava/lang/reflect/Method;

    .line 157
    .line 158
    iget-object v0, v0, Lf/c;->a:Ljava/lang/Object;

    .line 159
    .line 160
    new-array v5, v3, [Ljava/lang/Object;

    .line 161
    .line 162
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    aput-object v6, v5, v2

    .line 165
    .line 166
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v4, "MenuItemWrapper"

    .line 172
    .line 173
    const-string v5, "Error while calling setExclusiveCheckable"

    .line 174
    .line 175
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    :cond_8
    :goto_2
    iget-object v0, p0, Le/f$b;->x:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    sget-object v2, Le/f;->e:[Ljava/lang/Class;

    .line 183
    .line 184
    iget-object v1, v1, Le/f;->a:[Ljava/lang/Object;

    .line 185
    .line 186
    invoke-virtual {p0, v0, v2, v1}, Le/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/view/View;

    .line 191
    .line 192
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    :cond_9
    iget v0, p0, Le/f$b;->w:I

    .line 197
    .line 198
    if-lez v0, :cond_b

    .line 199
    .line 200
    if-nez v2, :cond_a

    .line 201
    .line 202
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_a
    const-string v0, "SupportMenuInflater"

    .line 207
    .line 208
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 209
    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_b
    :goto_3
    iget-object v0, p0, Le/f$b;->z:Ly/b;

    .line 214
    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    instance-of v1, p1, Lt/b;

    .line 218
    .line 219
    if-eqz v1, :cond_c

    .line 220
    .line 221
    move-object v1, p1

    .line 222
    check-cast v1, Lt/b;

    .line 223
    .line 224
    invoke-interface {v1, v0}, Lt/b;->e(Ly/b;)Lt/b;

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_c
    const-string v0, "MenuItemCompat"

    .line 229
    .line 230
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 231
    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_d
    :goto_4
    iget-object v0, p0, Le/f$b;->A:Ljava/lang/CharSequence;

    .line 236
    .line 237
    instance-of v1, p1, Lt/b;

    .line 238
    .line 239
    const/16 v2, 0x1a

    .line 240
    .line 241
    if-eqz v1, :cond_e

    .line 242
    .line 243
    move-object v3, p1

    .line 244
    check-cast v3, Lt/b;

    .line 245
    .line 246
    invoke-interface {v3, v0}, Lt/b;->setContentDescription(Ljava/lang/CharSequence;)Lt/b;

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    if-lt v3, v2, :cond_f

    .line 253
    .line 254
    invoke-static {p1, v0}, Le/h;->t(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    :cond_f
    :goto_5
    iget-object v0, p0, Le/f$b;->B:Ljava/lang/CharSequence;

    .line 258
    .line 259
    if-eqz v1, :cond_10

    .line 260
    .line 261
    move-object v3, p1

    .line 262
    check-cast v3, Lt/b;

    .line 263
    .line 264
    invoke-interface {v3, v0}, Lt/b;->setTooltipText(Ljava/lang/CharSequence;)Lt/b;

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 269
    .line 270
    if-lt v3, v2, :cond_11

    .line 271
    .line 272
    invoke-static {p1, v0}, Le/h;->i(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    :cond_11
    :goto_6
    iget-char v0, p0, Le/f$b;->n:C

    .line 276
    .line 277
    iget v3, p0, Le/f$b;->o:I

    .line 278
    .line 279
    if-eqz v1, :cond_12

    .line 280
    .line 281
    move-object v4, p1

    .line 282
    check-cast v4, Lt/b;

    .line 283
    .line 284
    invoke-interface {v4, v0, v3}, Lt/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 289
    .line 290
    if-lt v4, v2, :cond_13

    .line 291
    .line 292
    invoke-static {p1, v0, v3}, Le/h;->s(Landroid/view/MenuItem;CI)V

    .line 293
    .line 294
    .line 295
    :cond_13
    :goto_7
    iget-char v0, p0, Le/f$b;->p:C

    .line 296
    .line 297
    iget v3, p0, Le/f$b;->q:I

    .line 298
    .line 299
    if-eqz v1, :cond_14

    .line 300
    .line 301
    move-object v4, p1

    .line 302
    check-cast v4, Lt/b;

    .line 303
    .line 304
    invoke-interface {v4, v0, v3}, Lt/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 309
    .line 310
    if-lt v4, v2, :cond_15

    .line 311
    .line 312
    invoke-static {p1, v0, v3}, Le/h;->f(Landroid/view/MenuItem;CI)V

    .line 313
    .line 314
    .line 315
    :cond_15
    :goto_8
    iget-object v0, p0, Le/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 316
    .line 317
    if-eqz v0, :cond_17

    .line 318
    .line 319
    if-eqz v1, :cond_16

    .line 320
    .line 321
    move-object v3, p1

    .line 322
    check-cast v3, Lt/b;

    .line 323
    .line 324
    invoke-interface {v3, v0}, Lt/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .line 330
    if-lt v3, v2, :cond_17

    .line 331
    .line 332
    invoke-static {p1, v0}, Le/h;->h(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 333
    .line 334
    .line 335
    :cond_17
    :goto_9
    iget-object v0, p0, Le/f$b;->C:Landroid/content/res/ColorStateList;

    .line 336
    .line 337
    if-eqz v0, :cond_19

    .line 338
    .line 339
    if-eqz v1, :cond_18

    .line 340
    .line 341
    check-cast p1, Lt/b;

    .line 342
    .line 343
    invoke-interface {p1, v0}, Lt/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 344
    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    if-lt v1, v2, :cond_19

    .line 350
    .line 351
    invoke-static {p1, v0}, Le/h;->g(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 352
    .line 353
    .line 354
    :cond_19
    :goto_a
    return-void
.end method
