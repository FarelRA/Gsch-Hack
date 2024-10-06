.class public Landroidx/recyclerview/widget/k;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ly/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/k$e;,
        Landroidx/recyclerview/widget/k$g;,
        Landroidx/recyclerview/widget/k$h;,
        Landroidx/recyclerview/widget/k$l;,
        Landroidx/recyclerview/widget/k$s;,
        Landroidx/recyclerview/widget/k$r;,
        Landroidx/recyclerview/widget/k$k;,
        Landroidx/recyclerview/widget/k$v;,
        Landroidx/recyclerview/widget/k$q;,
        Landroidx/recyclerview/widget/k$n;,
        Landroidx/recyclerview/widget/k$m;,
        Landroidx/recyclerview/widget/k$i;,
        Landroidx/recyclerview/widget/k$j;,
        Landroidx/recyclerview/widget/k$d;,
        Landroidx/recyclerview/widget/k$t;,
        Landroidx/recyclerview/widget/k$p;,
        Landroidx/recyclerview/widget/k$o;,
        Landroidx/recyclerview/widget/k$f;,
        Landroidx/recyclerview/widget/k$u;
    }
.end annotation


# static fields
.field public static final j0:[I

.field public static final k0:[I

.field public static final l0:Z

.field public static final m0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final n0:Landroidx/recyclerview/widget/k$b;


# instance fields
.field public A:Landroidx/recyclerview/widget/k$f;

.field public B:Landroid/widget/EdgeEffect;

.field public C:Landroid/widget/EdgeEffect;

.field public D:Landroid/widget/EdgeEffect;

.field public E:Landroid/widget/EdgeEffect;

.field public F:Landroidx/recyclerview/widget/k$g;

.field public G:I

.field public H:I

.field public I:Landroid/view/VelocityTracker;

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public final O:I

.field public final P:I

.field public final Q:F

.field public final R:F

.field public S:Z

.field public final T:Landroidx/recyclerview/widget/k$u;

.field public U:Landroidx/recyclerview/widget/e;

.field public final V:Landroidx/recyclerview/widget/e$b;

.field public final W:Landroidx/recyclerview/widget/k$s;

.field public a0:Ljava/util/ArrayList;

.field public final b:Landroidx/recyclerview/widget/k$p;

.field public final b0:Landroidx/recyclerview/widget/k$h;

.field public c:Landroidx/recyclerview/widget/k$r;

.field public c0:Landroidx/recyclerview/widget/n;

.field public d:Landroidx/recyclerview/widget/a;

.field public d0:Ly/f;

.field public e:Landroidx/recyclerview/widget/b;

.field public final e0:[I

.field public final f:Landroidx/recyclerview/widget/r;

.field public final f0:[I

.field public g:Z

.field public final g0:[I

.field public final h:Landroid/graphics/Rect;

.field public final h0:Ljava/util/ArrayList;

.field public final i:Landroid/graphics/Rect;

.field public final i0:Landroidx/recyclerview/widget/k$a;

.field public j:Landroidx/recyclerview/widget/k$j;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$i;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$m;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroidx/recyclerview/widget/k$m;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public final v:Landroid/view/accessibility/AccessibilityManager;

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Landroidx/recyclerview/widget/k;->j0:[I

    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Landroidx/recyclerview/widget/k;->k0:[I

    sput-boolean v0, Landroidx/recyclerview/widget/k;->l0:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Landroidx/recyclerview/widget/k;->m0:[Ljava/lang/Class;

    new-instance v0, Landroidx/recyclerview/widget/k$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/k$b;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/k;->n0:Landroidx/recyclerview/widget/k$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    const/4 v13, 0x0

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {v10, v11, v12, v13}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroidx/recyclerview/widget/k$p;

    .line 16
    .line 17
    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/k$p;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 21
    .line 22
    new-instance v1, Landroidx/recyclerview/widget/r;

    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/recyclerview/widget/r;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->f:Landroidx/recyclerview/widget/r;

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->h:Landroid/graphics/Rect;

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->i:Landroid/graphics/Rect;

    .line 42
    .line 43
    new-instance v1, Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput v13, v10, Landroidx/recyclerview/widget/k;->q:I

    .line 63
    .line 64
    iput-boolean v13, v10, Landroidx/recyclerview/widget/k;->w:Z

    .line 65
    .line 66
    iput-boolean v13, v10, Landroidx/recyclerview/widget/k;->x:Z

    .line 67
    .line 68
    iput v13, v10, Landroidx/recyclerview/widget/k;->y:I

    .line 69
    .line 70
    iput v13, v10, Landroidx/recyclerview/widget/k;->z:I

    .line 71
    .line 72
    new-instance v1, Landroidx/recyclerview/widget/k$f;

    .line 73
    .line 74
    invoke-direct {v1}, Landroidx/recyclerview/widget/k$f;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 78
    .line 79
    new-instance v1, Landroidx/recyclerview/widget/c;

    .line 80
    .line 81
    invoke-direct {v1}, Landroidx/recyclerview/widget/c;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, v10, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 85
    .line 86
    iput v13, v10, Landroidx/recyclerview/widget/k;->G:I

    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    iput v1, v10, Landroidx/recyclerview/widget/k;->H:I

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    iput v2, v10, Landroidx/recyclerview/widget/k;->Q:F

    .line 93
    .line 94
    iput v2, v10, Landroidx/recyclerview/widget/k;->R:F

    .line 95
    .line 96
    const/4 v14, 0x1

    .line 97
    iput-boolean v14, v10, Landroidx/recyclerview/widget/k;->S:Z

    .line 98
    .line 99
    new-instance v2, Landroidx/recyclerview/widget/k$u;

    .line 100
    .line 101
    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/k$u;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 105
    .line 106
    sget-boolean v2, Landroidx/recyclerview/widget/k;->l0:Z

    .line 107
    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    new-instance v2, Landroidx/recyclerview/widget/e$b;

    .line 111
    .line 112
    invoke-direct {v2}, Landroidx/recyclerview/widget/e$b;-><init>()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 117
    :goto_0
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->V:Landroidx/recyclerview/widget/e$b;

    .line 118
    .line 119
    new-instance v2, Landroidx/recyclerview/widget/k$s;

    .line 120
    .line 121
    invoke-direct {v2}, Landroidx/recyclerview/widget/k$s;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 125
    .line 126
    new-instance v2, Landroidx/recyclerview/widget/k$h;

    .line 127
    .line 128
    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/k$h;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 129
    .line 130
    .line 131
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->b0:Landroidx/recyclerview/widget/k$h;

    .line 132
    .line 133
    const/4 v3, 0x2

    .line 134
    new-array v4, v3, [I

    .line 135
    .line 136
    iput-object v4, v10, Landroidx/recyclerview/widget/k;->e0:[I

    .line 137
    .line 138
    new-array v4, v3, [I

    .line 139
    .line 140
    iput-object v4, v10, Landroidx/recyclerview/widget/k;->f0:[I

    .line 141
    .line 142
    new-array v4, v3, [I

    .line 143
    .line 144
    iput-object v4, v10, Landroidx/recyclerview/widget/k;->g0:[I

    .line 145
    .line 146
    new-instance v4, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v4, v10, Landroidx/recyclerview/widget/k;->h0:Ljava/util/ArrayList;

    .line 152
    .line 153
    new-instance v4, Landroidx/recyclerview/widget/k$a;

    .line 154
    .line 155
    invoke-direct {v4, v10}, Landroidx/recyclerview/widget/k$a;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 156
    .line 157
    .line 158
    iput-object v4, v10, Landroidx/recyclerview/widget/k;->i0:Landroidx/recyclerview/widget/k$a;

    .line 159
    .line 160
    new-instance v4, Landroidx/recyclerview/widget/k$c;

    .line 161
    .line 162
    invoke-direct {v4, v10}, Landroidx/recyclerview/widget/k$c;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 163
    .line 164
    .line 165
    if-eqz v12, :cond_1

    .line 166
    .line 167
    sget-object v4, Landroidx/recyclerview/widget/k;->k0:[I

    .line 168
    .line 169
    invoke-virtual {v11, v12, v4, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    iput-boolean v5, v10, Landroidx/recyclerview/widget/k;->g:Z

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_1
    iput-boolean v14, v10, Landroidx/recyclerview/widget/k;->g:Z

    .line 184
    .line 185
    :goto_1
    invoke-virtual {v10, v14}, Landroid/view/View;->setScrollContainer(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 189
    .line 190
    .line 191
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    iput v5, v10, Landroidx/recyclerview/widget/k;->N:I

    .line 200
    .line 201
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 202
    .line 203
    const/16 v6, 0x1a

    .line 204
    .line 205
    if-lt v5, v6, :cond_2

    .line 206
    .line 207
    sget-object v7, Ly/n;->a:Ljava/lang/reflect/Method;

    .line 208
    .line 209
    invoke-static {v4}, Le/h;->r(Landroid/view/ViewConfiguration;)F

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    invoke-static {v4, v11}, Ly/n;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    :goto_2
    iput v7, v10, Landroidx/recyclerview/widget/k;->Q:F

    .line 219
    .line 220
    if-lt v5, v6, :cond_3

    .line 221
    .line 222
    invoke-static {v4}, Le/h;->a(Landroid/view/ViewConfiguration;)F

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    goto :goto_3

    .line 227
    :cond_3
    invoke-static {v4, v11}, Ly/n;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    :goto_3
    iput v7, v10, Landroidx/recyclerview/widget/k;->R:F

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    iput v7, v10, Landroidx/recyclerview/widget/k;->O:I

    .line 238
    .line 239
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iput v4, v10, Landroidx/recyclerview/widget/k;->P:I

    .line 244
    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-ne v4, v3, :cond_4

    .line 250
    .line 251
    const/4 v4, 0x1

    .line 252
    goto :goto_4

    .line 253
    :cond_4
    const/4 v4, 0x0

    .line 254
    :goto_4
    invoke-virtual {v10, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v4, v10, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 258
    .line 259
    iput-object v2, v4, Landroidx/recyclerview/widget/k$g;->a:Landroidx/recyclerview/widget/k$g$b;

    .line 260
    .line 261
    new-instance v2, Landroidx/recyclerview/widget/a;

    .line 262
    .line 263
    new-instance v4, Landroidx/recyclerview/widget/m;

    .line 264
    .line 265
    invoke-direct {v4, v10}, Landroidx/recyclerview/widget/m;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/m;)V

    .line 269
    .line 270
    .line 271
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 272
    .line 273
    new-instance v2, Landroidx/recyclerview/widget/b;

    .line 274
    .line 275
    new-instance v4, Landroidx/recyclerview/widget/l;

    .line 276
    .line 277
    invoke-direct {v4, v10}, Landroidx/recyclerview/widget/l;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/l;)V

    .line 281
    .line 282
    .line 283
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 284
    .line 285
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 286
    .line 287
    if-lt v5, v6, :cond_5

    .line 288
    .line 289
    invoke-static/range {p0 .. p0}, Le/h;->b(Landroid/view/View;)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    goto :goto_5

    .line 294
    :cond_5
    const/4 v2, 0x0

    .line 295
    :goto_5
    if-nez v2, :cond_6

    .line 296
    .line 297
    if-lt v5, v6, :cond_6

    .line 298
    .line 299
    invoke-static/range {p0 .. p0}, Le/h;->j(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-nez v2, :cond_7

    .line 307
    .line 308
    invoke-virtual {v10, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 309
    .line 310
    .line 311
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    const-string v4, "accessibility"

    .line 316
    .line 317
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 322
    .line 323
    iput-object v2, v10, Landroidx/recyclerview/widget/k;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 324
    .line 325
    new-instance v2, Landroidx/recyclerview/widget/n;

    .line 326
    .line 327
    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/k;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/k;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/n;)V

    .line 331
    .line 332
    .line 333
    const/high16 v2, 0x40000

    .line 334
    .line 335
    if-eqz v12, :cond_f

    .line 336
    .line 337
    sget-object v4, Lm1/h;->K:[I

    .line 338
    .line 339
    invoke-virtual {v11, v12, v4, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    const/4 v4, 0x7

    .line 344
    invoke-virtual {v15, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v16

    .line 348
    invoke-virtual {v15, v14, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-ne v4, v1, :cond_8

    .line 353
    .line 354
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 355
    .line 356
    .line 357
    :cond_8
    invoke-virtual {v15, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    const/4 v2, 0x4

    .line 362
    const/4 v3, 0x3

    .line 363
    if-eqz v1, :cond_a

    .line 364
    .line 365
    const/4 v1, 0x5

    .line 366
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    move-object v4, v1

    .line 371
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 372
    .line 373
    const/4 v1, 0x6

    .line 374
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object v6, v1

    .line 383
    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    .line 384
    .line 385
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    if-eqz v4, :cond_9

    .line 390
    .line 391
    if-eqz v5, :cond_9

    .line 392
    .line 393
    if-eqz v6, :cond_9

    .line 394
    .line 395
    if-eqz v7, :cond_9

    .line 396
    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    new-instance v2, Landroidx/recyclerview/widget/d;

    .line 406
    .line 407
    const v3, 0x7f060087

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    const v3, 0x7f060089

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    const v3, 0x7f060088

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 425
    .line 426
    .line 427
    move-result v17

    .line 428
    const/16 v18, 0x3

    .line 429
    .line 430
    const/16 v19, 0x4

    .line 431
    .line 432
    const/16 v20, 0x2

    .line 433
    .line 434
    move-object v1, v2

    .line 435
    move-object/from16 v2, p0

    .line 436
    .line 437
    move-object v3, v4

    .line 438
    move-object v4, v5

    .line 439
    move-object v5, v6

    .line 440
    move-object v6, v7

    .line 441
    move v7, v8

    .line 442
    move v8, v9

    .line 443
    move/from16 v9, v17

    .line 444
    .line 445
    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/k;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 446
    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 450
    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v2, "Trying to set fast scroller without both required drawables."

    .line 454
    .line 455
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_a
    const/16 v19, 0x4

    .line 474
    .line 475
    const/16 v20, 0x2

    .line 476
    .line 477
    const/16 v18, 0x3

    .line 478
    .line 479
    :goto_6
    const/4 v1, 0x4

    .line 480
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    .line 482
    .line 483
    const-string v2, ": Could not instantiate the LayoutManager: "

    .line 484
    .line 485
    if-eqz v16, :cond_e

    .line 486
    .line 487
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-nez v4, :cond_e

    .line 496
    .line 497
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    const/16 v5, 0x2e

    .line 502
    .line 503
    if-ne v4, v5, :cond_b

    .line 504
    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_b
    const-string v4, "."

    .line 519
    .line 520
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-eqz v4, :cond_c

    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    const-class v6, Landroidx/recyclerview/widget/k;

    .line 533
    .line 534
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    :goto_8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    if-eqz v4, :cond_d

    .line 560
    .line 561
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    goto :goto_9

    .line 570
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    :goto_9
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    const-class v5, Landroidx/recyclerview/widget/k$j;

    .line 579
    .line 580
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 584
    :try_start_1
    sget-object v5, Landroidx/recyclerview/widget/k;->m0:[Ljava/lang/Class;

    .line 585
    .line 586
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    new-array v1, v1, [Ljava/lang/Object;

    .line 591
    .line 592
    aput-object v11, v1, v13

    .line 593
    .line 594
    aput-object v12, v1, v14

    .line 595
    .line 596
    aput-object v0, v1, v20

    .line 597
    .line 598
    aput-object v0, v1, v18
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :catch_0
    move-exception v0

    .line 602
    move-object v1, v0

    .line 603
    :try_start_2
    new-array v0, v13, [Ljava/lang/Class;

    .line 604
    .line 605
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 606
    .line 607
    .line 608
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    const/4 v1, 0x0

    .line 610
    :goto_a
    :try_start_3
    invoke-virtual {v5, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Landroidx/recyclerview/widget/k$j;

    .line 618
    .line 619
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/k;->setLayoutManager(Landroidx/recyclerview/widget/k$j;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_b

    .line 623
    .line 624
    :catch_1
    move-exception v0

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 626
    .line 627
    .line 628
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 629
    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .line 634
    .line 635
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v5, ": Error creating LayoutManager "

    .line 643
    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    .line 656
    .line 657
    throw v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 658
    :catch_2
    move-exception v0

    .line 659
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 660
    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    const-string v4, ": Class is not a LayoutManager "

    .line 674
    .line 675
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .line 687
    .line 688
    throw v1

    .line 689
    :catch_3
    move-exception v0

    .line 690
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 691
    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v4, ": Cannot access non-public constructor "

    .line 705
    .line 706
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    .line 718
    .line 719
    throw v1

    .line 720
    :catch_4
    move-exception v0

    .line 721
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 722
    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 746
    .line 747
    .line 748
    throw v1

    .line 749
    :catch_5
    move-exception v0

    .line 750
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 751
    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    .line 776
    .line 777
    throw v1

    .line 778
    :catch_6
    move-exception v0

    .line 779
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 780
    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .line 785
    .line 786
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v4, ": Unable to find LayoutManager "

    .line 794
    .line 795
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    .line 807
    .line 808
    throw v1

    .line 809
    :cond_e
    :goto_b
    sget-object v0, Landroidx/recyclerview/widget/k;->j0:[I

    .line 810
    .line 811
    invoke-virtual {v11, v12, v0, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 816
    .line 817
    .line 818
    move-result v14

    .line 819
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 820
    .line 821
    .line 822
    goto :goto_c

    .line 823
    :cond_f
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 824
    .line 825
    .line 826
    :goto_c
    invoke-virtual {v10, v14}, Landroidx/recyclerview/widget/k;->setNestedScrollingEnabled(Z)V

    .line 827
    .line 828
    .line 829
    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/k;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private getScrollingChildHelper()Ly/f;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d0:Ly/f;

    if-nez v0, :cond_0

    new-instance v0, Ly/f;

    invoke-direct {v0, p0}, Ly/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->d0:Ly/f;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d0:Ly/f;

    return-object v0
.end method

.method public static m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/k$k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/k;->z:I

    .line 43
    .line 44
    if-lez p1, :cond_3

    .line 45
    .line 46
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "RecyclerView"

    .line 70
    .line 71
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 72
    .line 73
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/k$k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    check-cast p1, Landroidx/recyclerview/widget/k$k;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k$j;->d(Landroidx/recyclerview/widget/k$k;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->f(Landroidx/recyclerview/widget/k$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v2, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k$j;->g(Landroidx/recyclerview/widget/k$s;)V

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->h(Landroidx/recyclerview/widget/k$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->i(Landroidx/recyclerview/widget/k$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v2, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k$j;->j(Landroidx/recyclerview/widget/k$s;)V

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->k(Landroidx/recyclerview/widget/k$s;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final d(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    sget-object p1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ly/f;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ly/f;->b(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v5, 0x0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Ly/f;->c(II[I[II)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Ly/f;->d(IIII[II[I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/k$i;

    .line 19
    .line 20
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/k$i;->d(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-boolean v4, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v4, 0x0

    .line 51
    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    neg-int v5, v5

    .line 61
    add-int/2addr v5, v4

    .line 62
    int-to-float v4, v5

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    const/4 v4, 0x0

    .line 85
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-boolean v5, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    int-to-float v5, v5

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    int-to-float v6, v6

    .line 113
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 117
    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    const/4 v5, 0x0

    .line 129
    :goto_4
    or-int/2addr v4, v5

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    iget-boolean v6, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 152
    .line 153
    if-eqz v6, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    const/4 v6, 0x0

    .line 161
    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    .line 162
    .line 163
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 164
    .line 165
    .line 166
    neg-int v6, v6

    .line 167
    int-to-float v6, v6

    .line 168
    neg-int v5, v5

    .line 169
    int-to-float v5, v5

    .line 170
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    .line 172
    .line 173
    iget-object v5, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 174
    .line 175
    if-eqz v5, :cond_8

    .line 176
    .line 177
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_8

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    const/4 v5, 0x0

    .line 186
    :goto_6
    or-int/2addr v4, v5

    .line 187
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 188
    .line 189
    .line 190
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 191
    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_c

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    const/high16 v5, 0x43340000    # 180.0f

    .line 205
    .line 206
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 207
    .line 208
    .line 209
    iget-boolean v5, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 210
    .line 211
    if-eqz v5, :cond_a

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    neg-int v5, v5

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    add-int/2addr v6, v5

    .line 223
    int-to-float v5, v6

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    neg-int v6, v6

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    add-int/2addr v7, v6

    .line 234
    int-to-float v6, v7

    .line 235
    goto :goto_7

    .line 236
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    neg-int v5, v5

    .line 241
    int-to-float v5, v5

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    neg-int v6, v6

    .line 247
    int-to-float v6, v6

    .line 248
    :goto_7
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    .line 250
    .line 251
    iget-object v5, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 252
    .line 253
    if-eqz v5, :cond_b

    .line 254
    .line 255
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_b

    .line 260
    .line 261
    const/4 v2, 0x1

    .line 262
    :cond_b
    or-int/2addr v4, v2

    .line 263
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    .line 265
    .line 266
    :cond_c
    if-nez v4, :cond_d

    .line 267
    .line 268
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 269
    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-lez p1, :cond_d

    .line 277
    .line 278
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$g;->c()Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-eqz p1, :cond_d

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_d
    move v3, v4

    .line 288
    :goto_8
    if-eqz v3, :cond_e

    .line 289
    .line 290
    sget-object p1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 293
    .line 294
    .line 295
    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->p:Z

    .line 2
    .line 3
    const-string v1, "No adapter attached; skipping layout"

    .line 4
    .line 5
    const-string v2, "RecyclerView"

    .line 6
    .line 7
    const-string v3, "RV FullInvalidate"

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->w:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-nez v0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v4, 0x0

    .line 51
    :goto_1
    if-eqz v4, :cond_4

    .line 52
    .line 53
    sget v0, Lu/a;->a:I

    .line 54
    .line 55
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void

    .line 65
    :cond_5
    :goto_2
    sget v0, Lu/a;->a:I

    .line 66
    .line 67
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final f(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/k$j;->e(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/k$j;->e(III)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/k;->s(Landroid/view/View;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_16

    .line 40
    .line 41
    if-ne v0, p0, :cond_2

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->k(Landroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_3
    const/4 v2, 0x1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->k(Landroid/view/View;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v5, p0, Landroidx/recyclerview/widget/k;->h:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {v5, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-object v6, p0, Landroidx/recyclerview/widget/k;->i:Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-virtual {v6, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 99
    .line 100
    iget-object v3, v3, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 101
    .line 102
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    const/4 v4, -0x1

    .line 109
    if-ne v3, v2, :cond_6

    .line 110
    .line 111
    const/4 v3, -0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_6
    const/4 v3, 0x1

    .line 114
    :goto_0
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    if-lt v7, v8, :cond_7

    .line 119
    .line 120
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 121
    .line 122
    if-gt v9, v8, :cond_8

    .line 123
    .line 124
    :cond_7
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 125
    .line 126
    iget v10, v6, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    if-ge v9, v10, :cond_8

    .line 129
    .line 130
    const/4 v7, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_8
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 133
    .line 134
    iget v10, v6, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    if-gt v9, v10, :cond_9

    .line 137
    .line 138
    if-lt v7, v10, :cond_a

    .line 139
    .line 140
    :cond_9
    if-le v7, v8, :cond_a

    .line 141
    .line 142
    const/4 v7, -0x1

    .line 143
    goto :goto_1

    .line 144
    :cond_a
    const/4 v7, 0x0

    .line 145
    :goto_1
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 148
    .line 149
    if-lt v8, v9, :cond_b

    .line 150
    .line 151
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 152
    .line 153
    if-gt v10, v9, :cond_c

    .line 154
    .line 155
    :cond_b
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 156
    .line 157
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    if-ge v10, v11, :cond_c

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    if-gt v5, v6, :cond_d

    .line 168
    .line 169
    if-lt v8, v6, :cond_e

    .line 170
    .line 171
    :cond_d
    if-le v8, v9, :cond_e

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_e
    const/4 v4, 0x0

    .line 175
    :goto_2
    if-eq p2, v2, :cond_14

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    if-eq p2, v5, :cond_13

    .line 179
    .line 180
    const/16 v3, 0x11

    .line 181
    .line 182
    if-eq p2, v3, :cond_12

    .line 183
    .line 184
    const/16 v3, 0x21

    .line 185
    .line 186
    if-eq p2, v3, :cond_11

    .line 187
    .line 188
    const/16 v3, 0x42

    .line 189
    .line 190
    if-eq p2, v3, :cond_10

    .line 191
    .line 192
    const/16 v3, 0x82

    .line 193
    .line 194
    if-ne p2, v3, :cond_f

    .line 195
    .line 196
    if-lez v4, :cond_16

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v1, "Invalid direction: "

    .line 204
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_10
    if-lez v7, :cond_16

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_11
    if-gez v4, :cond_16

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_12
    if-gez v7, :cond_16

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_13
    if-gtz v4, :cond_15

    .line 236
    .line 237
    if-nez v4, :cond_16

    .line 238
    .line 239
    mul-int v7, v7, v3

    .line 240
    .line 241
    if-ltz v7, :cond_16

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_14
    if-ltz v4, :cond_15

    .line 245
    .line 246
    if-nez v4, :cond_16

    .line 247
    .line 248
    mul-int v7, v7, v3

    .line 249
    .line 250
    if-gtz v7, :cond_16

    .line 251
    .line 252
    :cond_15
    :goto_3
    const/4 v1, 0x1

    .line 253
    :cond_16
    :goto_4
    if-eqz v1, :cond_17

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_5
    return-object v0
.end method

.method public final g(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/f;->g(I)V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->l()Landroidx/recyclerview/widget/k$k;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/k$j;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/k$k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k$j;->n(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/k$k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/k$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->g:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/n;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c0:Landroidx/recyclerview/widget/n;

    return-object v0
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/k$f;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/k$g;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/k$j;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->P:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->O:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean v0, Landroidx/recyclerview/widget/k;->l0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/k$l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->S:Z

    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/k$o;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/recyclerview/widget/k$o;

    .line 8
    .line 9
    invoke-direct {v1}, Landroidx/recyclerview/widget/k$o;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 15
    .line 16
    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->G:I

    return v0
.end method

.method public final h(II[I[II)Z
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ly/f;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ly/f;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method public final i([II)Z
    .locals 8

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v5, p1

    .line 11
    move v6, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Ly/f;->d(IIII[II[I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->n:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Ly/f;->d:Z

    .line 6
    .line 7
    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:null, layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Landroid/view/View;)Landroid/view/View;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final l(Landroidx/recyclerview/widget/k$v;)I
    .locals 4

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x20c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-nez v1, :cond_3

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_1
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 24
    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/k$v;->a:I

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_2
    if-ge v2, v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroidx/recyclerview/widget/a$a;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_3
    const/4 p1, -0x1

    .line 48
    :cond_4
    return p1
.end method

.method public final n(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ly/f;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/recyclerview/widget/k$k;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    iput-boolean v4, v3, Landroidx/recyclerview/widget/k$k;->b:Z

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-gtz v2, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/recyclerview/widget/k$v;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    throw v0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/k;->n:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/k;->p:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->p:Z

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-boolean v1, v0, Landroidx/recyclerview/widget/k$j;->e:Z

    .line 28
    .line 29
    :cond_1
    sget-boolean v0, Landroidx/recyclerview/widget/k;->l0:Z

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Landroidx/recyclerview/widget/e;->f:Ljava/lang/ThreadLocal;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/recyclerview/widget/e;

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    new-instance v1, Landroidx/recyclerview/widget/e;

    .line 46
    .line 47
    invoke-direct {v1}, Landroidx/recyclerview/widget/e;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 51
    .line 52
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/high16 v2, 0x41f00000    # 30.0f

    .line 71
    .line 72
    cmpl-float v2, v1, v2

    .line 73
    .line 74
    if-ltz v2, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    .line 78
    .line 79
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 80
    .line 81
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 82
    .line 83
    .line 84
    div-float/2addr v3, v1

    .line 85
    float-to-long v3, v3

    .line 86
    iput-wide v3, v2, Landroidx/recyclerview/widget/e;->d:J

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$g;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 16
    .line 17
    iget-object v2, v1, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->n:Z

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iput-boolean v0, v1, Landroidx/recyclerview/widget/k$j;->e:Z

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/k$j;->A(Landroidx/recyclerview/widget/k;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->h0:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->i0:Landroidx/recyclerview/widget/k$a;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->f:Landroidx/recyclerview/widget/r;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/r$a;->a:Lx/b;

    .line 54
    .line 55
    invoke-virtual {v0}, Lx/b;->a()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-boolean v0, Landroidx/recyclerview/widget/k;->l0:Z

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/k$i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    const/4 v3, 0x0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/k;->Q:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/k;->R:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/k;->u(IILandroid/view/MotionEvent;)V

    :cond_8
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    :cond_1
    const/4 v3, 0x0

    .line 17
    iput-object v3, p0, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    .line 18
    .line 19
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    const/4 v6, 0x1

    .line 27
    if-ge v5, v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Landroidx/recyclerview/widget/k$m;

    .line 34
    .line 35
    invoke-interface {v7, p1}, Landroidx/recyclerview/widget/k$m;->a(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_3

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    iput-object v7, p0, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 51
    :goto_1
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->t()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 57
    .line 58
    .line 59
    return v6

    .line 60
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 61
    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    return v1

    .line 65
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k$j;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget-object v4, p0, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    .line 76
    .line 77
    if-nez v4, :cond_7

    .line 78
    .line 79
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iput-object v4, p0, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    .line 84
    .line 85
    :cond_7
    iget-object v4, p0, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    .line 86
    .line 87
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/4 v7, 0x2

    .line 99
    const/high16 v8, 0x3f000000    # 0.5f

    .line 100
    .line 101
    if-eqz v4, :cond_10

    .line 102
    .line 103
    if-eq v4, v6, :cond_f

    .line 104
    .line 105
    if-eq v4, v7, :cond_b

    .line 106
    .line 107
    if-eq v4, v2, :cond_a

    .line 108
    .line 109
    const/4 v0, 0x5

    .line 110
    if-eq v4, v0, :cond_9

    .line 111
    .line 112
    const/4 v0, 0x6

    .line 113
    if-eq v4, v0, :cond_8

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->r(Landroid/view/MotionEvent;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Landroidx/recyclerview/widget/k;->H:I

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-float/2addr v0, v8

    .line 133
    float-to-int v0, v0

    .line 134
    iput v0, p0, Landroidx/recyclerview/widget/k;->L:I

    .line 135
    .line 136
    iput v0, p0, Landroidx/recyclerview/widget/k;->J:I

    .line 137
    .line 138
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    add-float/2addr p1, v8

    .line 143
    float-to-int p1, p1

    .line 144
    iput p1, p0, Landroidx/recyclerview/widget/k;->M:I

    .line 145
    .line 146
    iput p1, p0, Landroidx/recyclerview/widget/k;->K:I

    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->t()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_b
    iget v2, p0, Landroidx/recyclerview/widget/k;->H:I

    .line 159
    .line 160
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-gez v2, :cond_c

    .line 165
    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "Error processing scroll; pointer index for id "

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v0, p0, Landroidx/recyclerview/widget/k;->H:I

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v0, "RecyclerView"

    .line 188
    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    return v1

    .line 193
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-float/2addr v4, v8

    .line 198
    float-to-int v4, v4

    .line 199
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    add-float/2addr p1, v8

    .line 204
    float-to-int p1, p1

    .line 205
    iget v2, p0, Landroidx/recyclerview/widget/k;->G:I

    .line 206
    .line 207
    if-eq v2, v6, :cond_14

    .line 208
    .line 209
    iget v2, p0, Landroidx/recyclerview/widget/k;->J:I

    .line 210
    .line 211
    sub-int v2, v4, v2

    .line 212
    .line 213
    iget v5, p0, Landroidx/recyclerview/widget/k;->K:I

    .line 214
    .line 215
    sub-int v5, p1, v5

    .line 216
    .line 217
    if-eqz v0, :cond_d

    .line 218
    .line 219
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iget v2, p0, Landroidx/recyclerview/widget/k;->N:I

    .line 224
    .line 225
    if-le v0, v2, :cond_d

    .line 226
    .line 227
    iput v4, p0, Landroidx/recyclerview/widget/k;->L:I

    .line 228
    .line 229
    const/4 v0, 0x1

    .line 230
    goto :goto_2

    .line 231
    :cond_d
    const/4 v0, 0x0

    .line 232
    :goto_2
    if-eqz v3, :cond_e

    .line 233
    .line 234
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    iget v3, p0, Landroidx/recyclerview/widget/k;->N:I

    .line 239
    .line 240
    if-le v2, v3, :cond_e

    .line 241
    .line 242
    iput p1, p0, Landroidx/recyclerview/widget/k;->M:I

    .line 243
    .line 244
    const/4 v0, 0x1

    .line 245
    :cond_e
    if-eqz v0, :cond_14

    .line 246
    .line 247
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k;->g(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/k;->t:Z

    .line 261
    .line 262
    if-eqz v2, :cond_11

    .line 263
    .line 264
    iput-boolean v1, p0, Landroidx/recyclerview/widget/k;->t:Z

    .line 265
    .line 266
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    iput v2, p0, Landroidx/recyclerview/widget/k;->H:I

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    add-float/2addr v2, v8

    .line 277
    float-to-int v2, v2

    .line 278
    iput v2, p0, Landroidx/recyclerview/widget/k;->L:I

    .line 279
    .line 280
    iput v2, p0, Landroidx/recyclerview/widget/k;->J:I

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    add-float/2addr p1, v8

    .line 287
    float-to-int p1, p1

    .line 288
    iput p1, p0, Landroidx/recyclerview/widget/k;->M:I

    .line 289
    .line 290
    iput p1, p0, Landroidx/recyclerview/widget/k;->K:I

    .line 291
    .line 292
    iget p1, p0, Landroidx/recyclerview/widget/k;->G:I

    .line 293
    .line 294
    if-ne p1, v7, :cond_12

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 304
    .line 305
    .line 306
    :cond_12
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g0:[I

    .line 307
    .line 308
    aput v1, p1, v6

    .line 309
    .line 310
    aput v1, p1, v1

    .line 311
    .line 312
    if-eqz v3, :cond_13

    .line 313
    .line 314
    or-int/lit8 v0, v0, 0x2

    .line 315
    .line 316
    :cond_13
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1, v0, v1}, Ly/f;->f(II)Z

    .line 321
    .line 322
    .line 323
    :cond_14
    :goto_3
    iget p1, p0, Landroidx/recyclerview/widget/k;->G:I

    .line 324
    .line 325
    if-ne p1, v6, :cond_15

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    :cond_15
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    sget p1, Lu/a;->a:I

    .line 2
    .line 3
    const-string p1, "RV OnLayout"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "RecyclerView"

    .line 9
    .line 10
    const-string p2, "No adapter attached; skipping layout"

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->p:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k;->f(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->z()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k;->f(II)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->o:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k;->f(II)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 42
    .line 43
    iget-boolean v1, v0, Landroidx/recyclerview/widget/k$s;->f:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->w()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 66
    .line 67
    iget-object v1, v1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 68
    .line 69
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/k;->f(II)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->x(Z)V

    .line 74
    .line 75
    .line 76
    iput-boolean p1, v0, Landroidx/recyclerview/widget/k$s;->d:Z

    .line 77
    .line 78
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/k$r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/k$r;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/k$r;

    .line 12
    .line 13
    iget-object p1, p1, Lc0/a;->a:Landroid/os/Parcelable;

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/k$r;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/recyclerview/widget/k$r;->c:Landroid/os/Parcelable;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k$j;->C(Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/k$r;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/k$r;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/k$r;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/k$r;->c:Landroid/os/Parcelable;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/recyclerview/widget/k$r;->c:Landroid/os/Parcelable;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$j;->D()Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    iput-object v1, v0, Landroidx/recyclerview/widget/k$r;->c:Landroid/os/Parcelable;

    .line 30
    .line 31
    :goto_1
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p3, :cond_0

    .line 5
    .line 6
    if-eq p2, p4, :cond_1

    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    iget-boolean v1, v6, Landroidx/recyclerview/widget/k;->s:Z

    const/4 v7, 0x0

    if-nez v1, :cond_2e

    iget-boolean v1, v6, Landroidx/recyclerview/widget/k;->t:Z

    if-eqz v1, :cond_0

    goto/16 :goto_10

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    const/4 v8, 0x1

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iput-object v4, v6, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0}, Landroidx/recyclerview/widget/k$m;->c(Landroid/view/MotionEvent;)V

    if-eq v1, v3, :cond_2

    if-ne v1, v8, :cond_4

    :cond_2
    iput-object v4, v6, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, v6, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/k$m;

    invoke-interface {v5, v0}, Landroidx/recyclerview/widget/k$m;->a(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-object v5, v6, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    :cond_4
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->t()V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    return v8

    .line 3
    :cond_7
    iget-object v1, v6, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-nez v1, :cond_8

    return v7

    :cond_8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v9

    iget-object v1, v6, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v10

    iget-object v1, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    if-nez v1, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    iget-object v12, v6, Landroidx/recyclerview/widget/k;->g0:[I

    if-nez v1, :cond_a

    aput v7, v12, v8

    aput v7, v12, v7

    :cond_a
    aget v4, v12, v7

    int-to-float v4, v4

    aget v5, v12, v8

    int-to-float v5, v5

    invoke-virtual {v11, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2a

    const/4 v5, 0x2

    const-string v13, "RecyclerView"

    if-eq v1, v8, :cond_19

    if-eq v1, v5, :cond_e

    if-eq v1, v3, :cond_d

    const/4 v3, 0x5

    if-eq v1, v3, :cond_c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    goto/16 :goto_f

    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/k;->r(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    :cond_c
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v6, Landroidx/recyclerview/widget/k;->L:I

    iput v1, v6, Landroidx/recyclerview/widget/k;->J:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/k;->M:I

    iput v0, v6, Landroidx/recyclerview/widget/k;->K:I

    goto/16 :goto_f

    .line 4
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->t()V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    goto/16 :goto_f

    .line 5
    :cond_e
    iget v1, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v13, v2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v14, v0

    iget v0, v6, Landroidx/recyclerview/widget/k;->L:I

    sub-int v15, v0, v13

    iget v0, v6, Landroidx/recyclerview/widget/k;->M:I

    sub-int v16, v0, v14

    iget-object v3, v6, Landroidx/recyclerview/widget/k;->f0:[I

    iget-object v4, v6, Landroidx/recyclerview/widget/k;->e0:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/k;->h(II[I[II)Z

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/k;->e0:[I

    if-eqz v0, :cond_10

    iget-object v0, v6, Landroidx/recyclerview/widget/k;->f0:[I

    aget v2, v0, v7

    sub-int/2addr v15, v2

    aget v0, v0, v8

    sub-int v16, v16, v0

    aget v0, v1, v7

    int-to-float v0, v0

    aget v2, v1, v8

    int-to-float v2, v2

    invoke-virtual {v11, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    aget v0, v12, v7

    aget v2, v1, v7

    add-int/2addr v0, v2

    aput v0, v12, v7

    aget v0, v12, v8

    aget v2, v1, v8

    add-int/2addr v0, v2

    aput v0, v12, v8

    :cond_10
    iget v0, v6, Landroidx/recyclerview/widget/k;->G:I

    if-eq v0, v8, :cond_15

    if-eqz v9, :cond_12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v6, Landroidx/recyclerview/widget/k;->N:I

    if-le v0, v2, :cond_12

    if-lez v15, :cond_11

    sub-int/2addr v15, v2

    goto :goto_4

    :cond_11
    add-int/2addr v15, v2

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    :goto_5
    if-eqz v10, :cond_14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v6, Landroidx/recyclerview/widget/k;->N:I

    if-le v2, v3, :cond_14

    if-lez v16, :cond_13

    sub-int v16, v16, v3

    goto :goto_6

    :cond_13
    add-int v16, v16, v3

    :goto_6
    const/4 v0, 0x1

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    :cond_15
    move/from16 v0, v16

    iget v2, v6, Landroidx/recyclerview/widget/k;->G:I

    if-ne v2, v8, :cond_2c

    aget v2, v1, v7

    sub-int/2addr v13, v2

    iput v13, v6, Landroidx/recyclerview/widget/k;->L:I

    aget v1, v1, v8

    sub-int/2addr v14, v1

    iput v14, v6, Landroidx/recyclerview/widget/k;->M:I

    if-eqz v9, :cond_16

    move v1, v15

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    :goto_7
    if-eqz v10, :cond_17

    move v2, v0

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v6, v1, v2, v11}, Landroidx/recyclerview/widget/k;->u(IILandroid/view/MotionEvent;)V

    iget-object v1, v6, Landroidx/recyclerview/widget/k;->U:Landroidx/recyclerview/widget/e;

    if-eqz v1, :cond_2c

    if-nez v15, :cond_18

    if-eqz v0, :cond_2c

    :cond_18
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/k;II)V

    goto/16 :goto_f

    :cond_19
    iget-object v0, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    iget v1, v6, Landroidx/recyclerview/widget/k;->P:I

    int-to-float v2, v1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v9, :cond_1a

    iget-object v2, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    iget v3, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    :goto_9
    if-eqz v10, :cond_1b

    iget-object v3, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    iget v4, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_a

    :cond_1b
    const/4 v3, 0x0

    :goto_a
    cmpl-float v4, v2, v0

    if-nez v4, :cond_1c

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_28

    :cond_1c
    float-to-int v0, v2

    float-to-int v2, v3

    .line 6
    iget-object v3, v6, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-nez v3, :cond_1d

    const-string v0, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1d
    iget-boolean v4, v6, Landroidx/recyclerview/widget/k;->s:Z

    if-eqz v4, :cond_1e

    goto/16 :goto_d

    :cond_1e
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v4

    iget v9, v6, Landroidx/recyclerview/widget/k;->O:I

    if-eqz v3, :cond_1f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v9, :cond_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    if-eqz v4, :cond_21

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v9, :cond_22

    :cond_21
    const/4 v2, 0x0

    :cond_22
    if-nez v0, :cond_23

    if-nez v2, :cond_23

    goto :goto_d

    :cond_23
    int-to-float v9, v0

    int-to-float v10, v2

    invoke-virtual {v6, v9, v10}, Landroidx/recyclerview/widget/k;->dispatchNestedPreFling(FF)Z

    move-result v12

    if-nez v12, :cond_27

    if-nez v3, :cond_25

    if-eqz v4, :cond_24

    goto :goto_b

    :cond_24
    const/4 v12, 0x0

    goto :goto_c

    :cond_25
    :goto_b
    const/4 v12, 0x1

    :goto_c
    invoke-virtual {v6, v9, v10, v12}, Landroidx/recyclerview/widget/k;->dispatchNestedFling(FFZ)Z

    if-eqz v12, :cond_27

    if-eqz v4, :cond_26

    or-int/lit8 v3, v3, 0x2

    .line 7
    :cond_26
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Ly/f;->f(II)Z

    neg-int v3, v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 9
    iget-object v0, v6, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    iget-object v1, v0, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 10
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    iput v7, v0, Landroidx/recyclerview/widget/k$u;->c:I

    iput v7, v0, Landroidx/recyclerview/widget/k$u;->b:I

    iget-object v12, v0, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v17, -0x80000000

    const v18, 0x7fffffff

    const/high16 v19, -0x80000000

    const v20, 0x7fffffff

    invoke-virtual/range {v12 .. v20}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$u;->a()V

    const/4 v0, 0x1

    goto :goto_e

    :cond_27
    :goto_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_29

    .line 11
    :cond_28
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->t()V

    const/4 v7, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v6, Landroidx/recyclerview/widget/k;->L:I

    iput v1, v6, Landroidx/recyclerview/widget/k;->J:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/k;->M:I

    iput v0, v6, Landroidx/recyclerview/widget/k;->K:I

    if-eqz v10, :cond_2b

    or-int/lit8 v9, v9, 0x2

    .line 12
    :cond_2b
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Ly/f;->f(II)Z

    :cond_2c
    :goto_f
    if-nez v7, :cond_2d

    .line 13
    iget-object v0, v6, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2d
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_2e
    :goto_10
    return v7
.end method

.method public final p()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/k;->y:I

    return-void
.end method

.method public final q(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget p1, p0, Landroidx/recyclerview/widget/k;->u:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/k;->u:I

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/k;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v1, 0x800

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->h0:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroidx/recyclerview/widget/k$v;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    throw p1

    .line 74
    :cond_3
    :goto_1
    return-void
.end method

.method public final r(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/k;->H:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/k;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/k;->L:I

    iput v1, p0, Landroidx/recyclerview/widget/k;->J:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/k;->M:I

    iput p1, p0, Landroidx/recyclerview/widget/k;->K:I

    :cond_1
    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k;->s(Landroid/view/View;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/k$j;->H(Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/k$m;

    invoke-interface {v3}, Landroidx/recyclerview/widget/k$m;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->q:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->r:Z

    :goto_0
    return-void
.end method

.method public final s(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/k;->h:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/k$k;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/k$k;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/k$k;->b:Z

    if-nez v1, :cond_1

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Landroidx/recyclerview/widget/k$k;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    iget-object v8, p0, Landroidx/recyclerview/widget/k;->h:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->p:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/k$j;->H(Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$j;->c()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/k;->u(IILandroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/k;->y:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_1
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v2, v0

    .line 24
    :goto_2
    iget v0, p0, Landroidx/recyclerview/widget/k;->u:I

    .line 25
    .line 26
    or-int/2addr v0, v2

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/k;->u:I

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_3
    const/4 v1, 0x0

    .line 31
    :goto_3
    if-eqz v1, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->c0:Landroidx/recyclerview/widget/n;

    invoke-static {p0, p1}, Ly/m;->f(Landroid/view/View;Ly/a;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/k$d;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->setLayoutFrozen(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$g;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->F(Landroidx/recyclerview/widget/k$p;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k$j;->G(Landroidx/recyclerview/widget/k$p;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, v1, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$p;->b()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->c(Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->c(Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$p;->b()V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Landroidx/recyclerview/widget/k$o;

    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/recyclerview/widget/k$o;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, v1, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 64
    .line 65
    :cond_2
    iget-object v0, v1, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 66
    .line 67
    iget v2, v0, Landroidx/recyclerview/widget/k$o;->b:I

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_0
    iget-object v3, v0, Landroidx/recyclerview/widget/k$o;->a:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v2, v4, :cond_3

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroidx/recyclerview/widget/k$o$a;

    .line 85
    .line 86
    iget-object v3, v3, Landroidx/recyclerview/widget/k$o$a;->a:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->W:Landroidx/recyclerview/widget/k$s;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, v0, Landroidx/recyclerview/widget/k$s;->c:Z

    .line 98
    .line 99
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->x:Z

    .line 100
    .line 101
    or-int/2addr v0, p1

    .line 102
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->x:Z

    .line 103
    .line 104
    iput-boolean v2, p0, Landroidx/recyclerview/widget/k;->w:Z

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v2, 0x0

    .line 113
    :goto_1
    if-ge v2, v0, :cond_4

    .line 114
    .line 115
    iget-object v3, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->o()V

    .line 128
    .line 129
    .line 130
    iget-object v0, v1, Landroidx/recyclerview/widget/k$p;->c:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    :goto_2
    if-ge p1, v2, :cond_6

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroidx/recyclerview/widget/k$v;

    .line 143
    .line 144
    if-eqz v3, :cond_5

    .line 145
    .line 146
    const/4 v4, 0x6

    .line 147
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/k$v;->b(I)V

    .line 148
    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/k$v;->a(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    iget-object p1, v1, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$p;->b()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->requestLayout()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/k$e;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Landroidx/recyclerview/widget/k;->p:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/k$f;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->o:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/k$g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$g;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/recyclerview/widget/k$g;->a:Landroidx/recyclerview/widget/k$g$b;

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b0:Landroidx/recyclerview/widget/k$h;

    .line 18
    .line 19
    iput-object v0, p1, Landroidx/recyclerview/widget/k$g;->a:Landroidx/recyclerview/widget/k$g$b;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 2
    .line 3
    iput p1, v0, Landroidx/recyclerview/widget/k$p;->d:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$p;->g()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->r:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    move-wide v1, v3

    .line 27
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->s:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->t:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 43
    .line 44
    iget-object v0, p1, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/k$j;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 11
    .line 12
    iget-object v2, v1, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->F:Landroidx/recyclerview/widget/k$g;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k$g;->b()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k$j;->F(Landroidx/recyclerview/widget/k$p;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k$j;->G(Landroidx/recyclerview/widget/k$p;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v2, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k$p;->b()V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k;->n:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 58
    .line 59
    iput-boolean v0, v1, Landroidx/recyclerview/widget/k$j;->e:Z

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/k$j;->A(Landroidx/recyclerview/widget/k;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/k$j;->J(Landroidx/recyclerview/widget/k;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, v2, Landroidx/recyclerview/widget/k$p;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k$p;->b()V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 82
    .line 83
    iget-object v3, v1, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/recyclerview/widget/b$a;->e()V

    .line 86
    .line 87
    .line 88
    iget-object v3, v1, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 95
    .line 96
    iget-object v5, v1, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 97
    .line 98
    if-ltz v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroid/view/View;

    .line 105
    .line 106
    check-cast v5, Landroidx/recyclerview/widget/l;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {v6}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    check-cast v5, Landroidx/recyclerview/widget/l;

    .line 119
    .line 120
    invoke-virtual {v5}, Landroidx/recyclerview/widget/l;->a()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    :goto_2
    iget-object v3, v5, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/k;

    .line 125
    .line 126
    if-ge v0, v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    iget-object v0, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 152
    .line 153
    if-nez v0, :cond_6

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/k$j;->J(Landroidx/recyclerview/widget/k;)V

    .line 156
    .line 157
    .line 158
    iget-boolean p1, p0, Landroidx/recyclerview/widget/k;->n:Z

    .line 159
    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p1, Landroidx/recyclerview/widget/k$j;->e:Z

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v2, "LayoutManager "

    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " is already attached to a RecyclerView:"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object p1, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->j()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k$p;->g()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->requestLayout()V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Ly/f;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iget-object v1, v0, Ly/f;->c:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p1, v0, Ly/f;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/k$l;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/k$n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/k;->S:Z

    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/k$o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v2, v1, Landroidx/recyclerview/widget/k$o;->b:I

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    iput v2, v1, Landroidx/recyclerview/widget/k$o;->b:I

    .line 12
    .line 13
    :cond_0
    iput-object p1, v0, Landroidx/recyclerview/widget/k$p;->f:Landroidx/recyclerview/widget/k$o;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v0, Landroidx/recyclerview/widget/k$p;->g:Landroidx/recyclerview/widget/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getAdapter()Landroidx/recyclerview/widget/k$d;

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/k$q;)V
    .locals 0

    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/k;->G:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/k;->G:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k$j;->E(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 39
    .line 40
    if-ltz p1, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/recyclerview/widget/k$n;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/k;->N:I

    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/k$t;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ly/f;->f(II)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getScrollingChildHelper()Ly/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ly/f;->g(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->I:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->g(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    or-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    or-int/2addr v0, v1

    .line 53
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    or-int/2addr v0, v1

    .line 67
    :cond_4
    if-eqz v0, :cond_5

    .line 68
    .line 69
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public final u(IILandroid/view/MotionEvent;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e0:[I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/k;->i([II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget p1, p0, Landroidx/recyclerview/widget/k;->L:I

    .line 26
    .line 27
    aget p2, v0, v1

    .line 28
    .line 29
    sub-int/2addr p1, p2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/k;->L:I

    .line 31
    .line 32
    iget p1, p0, Landroidx/recyclerview/widget/k;->M:I

    .line 33
    .line 34
    aget v2, v0, v3

    .line 35
    .line 36
    sub-int/2addr p1, v2

    .line 37
    iput p1, p0, Landroidx/recyclerview/widget/k;->M:I

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    int-to-float p1, p2

    .line 42
    int-to-float p2, v2

    .line 43
    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->g0:[I

    .line 47
    .line 48
    aget p2, p1, v1

    .line 49
    .line 50
    aget p3, v0, v1

    .line 51
    .line 52
    add-int/2addr p2, p3

    .line 53
    aput p2, p1, v1

    .line 54
    .line 55
    aget p2, p1, v3

    .line 56
    .line 57
    aget p3, v0, v3

    .line 58
    .line 59
    add-int/2addr p2, p3

    .line 60
    aput p2, p1, v3

    .line 61
    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x2

    .line 69
    if-eq v0, v2, :cond_12

    .line 70
    .line 71
    if-eqz p3, :cond_11

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/16 v2, 0x2002

    .line 78
    .line 79
    and-int/2addr v0, v2

    .line 80
    if-ne v0, v2, :cond_3

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x0

    .line 85
    :goto_0
    if-nez v0, :cond_11

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v2, v1

    .line 92
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    const/high16 v4, 0x3f800000    # 1.0f

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    cmpg-float v6, v2, v5

    .line 100
    .line 101
    if-gez v6, :cond_6

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-direct {v1, v7}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 123
    .line 124
    iget-boolean v7, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 125
    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    sub-int/2addr v7, v8

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    sub-int/2addr v7, v8

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    sub-int/2addr v8, v9

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    sub-int/2addr v8, v9

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    :goto_1
    invoke-virtual {v1, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->B:Landroid/widget/EdgeEffect;

    .line 169
    .line 170
    neg-float v7, v2

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    int-to-float v8, v8

    .line 176
    div-float/2addr v7, v8

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    int-to-float v8, v8

    .line 182
    div-float/2addr p3, v8

    .line 183
    sub-float p3, v4, p3

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    cmpl-float v7, v2, v5

    .line 187
    .line 188
    if-lez v7, :cond_9

    .line 189
    .line 190
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 191
    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-direct {v1, v7}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    iput-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 210
    .line 211
    iget-boolean v7, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 212
    .line 213
    if-eqz v7, :cond_8

    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    sub-int/2addr v7, v8

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    sub-int/2addr v7, v8

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    sub-int/2addr v8, v9

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    sub-int/2addr v8, v9

    .line 243
    goto :goto_3

    .line 244
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    :goto_3
    invoke-virtual {v1, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 253
    .line 254
    .line 255
    :goto_4
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->D:Landroid/widget/EdgeEffect;

    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    int-to-float v7, v7

    .line 262
    div-float v7, v2, v7

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    int-to-float v8, v8

    .line 269
    div-float/2addr p3, v8

    .line 270
    :goto_5
    invoke-virtual {v1, v7, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 271
    .line 272
    .line 273
    const/4 v1, 0x1

    .line 274
    :cond_9
    if-gez v6, :cond_c

    .line 275
    .line 276
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 277
    .line 278
    if-eqz p3, :cond_a

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_a
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 282
    .line 283
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    new-instance p3, Landroid/widget/EdgeEffect;

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-direct {p3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    iput-object p3, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 296
    .line 297
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 298
    .line 299
    if-eqz v1, :cond_b

    .line 300
    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    sub-int/2addr v1, v4

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    sub-int/2addr v1, v4

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    sub-int/2addr v4, v6

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    sub-int/2addr v4, v6

    .line 329
    goto :goto_6

    .line 330
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    :goto_6
    invoke-virtual {p3, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 339
    .line 340
    .line 341
    :goto_7
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->C:Landroid/widget/EdgeEffect;

    .line 342
    .line 343
    neg-float v1, v2

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    int-to-float v4, v4

    .line 349
    div-float/2addr v1, v4

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    int-to-float v4, v4

    .line 355
    div-float/2addr v0, v4

    .line 356
    invoke-virtual {p3, v1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 357
    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_c
    cmpl-float p3, v2, v5

    .line 361
    .line 362
    if-lez p3, :cond_f

    .line 363
    .line 364
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 365
    .line 366
    if-eqz p3, :cond_d

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_d
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->A:Landroidx/recyclerview/widget/k$f;

    .line 370
    .line 371
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    new-instance p3, Landroid/widget/EdgeEffect;

    .line 375
    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {p3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    iput-object p3, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 384
    .line 385
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k;->g:Z

    .line 386
    .line 387
    if-eqz v1, :cond_e

    .line 388
    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    sub-int/2addr v1, v6

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    sub-int/2addr v1, v6

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    sub-int/2addr v6, v7

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    sub-int/2addr v6, v7

    .line 417
    goto :goto_8

    .line 418
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    :goto_8
    invoke-virtual {p3, v1, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 427
    .line 428
    .line 429
    :goto_9
    iget-object p3, p0, Landroidx/recyclerview/widget/k;->E:Landroid/widget/EdgeEffect;

    .line 430
    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    int-to-float v1, v1

    .line 436
    div-float v1, v2, v1

    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    int-to-float v6, v6

    .line 443
    div-float/2addr v0, v6

    .line 444
    sub-float/2addr v4, v0

    .line 445
    invoke-virtual {p3, v1, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_f
    move v3, v1

    .line 450
    :goto_a
    if-nez v3, :cond_10

    .line 451
    .line 452
    cmpl-float p3, v2, v5

    .line 453
    .line 454
    if-nez p3, :cond_10

    .line 455
    .line 456
    if-eqz p3, :cond_11

    .line 457
    .line 458
    :cond_10
    sget-object p3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 459
    .line 460
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 461
    .line 462
    .line 463
    :cond_11
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k;->d(II)V

    .line 464
    .line 465
    .line 466
    :cond_12
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    if-nez p1, :cond_13

    .line 471
    .line 472
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 473
    .line 474
    .line 475
    :cond_13
    return-void
.end method

.method public final v(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "RecyclerView"

    .line 6
    .line 7
    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k;->s:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v5, p1

    .line 30
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$j;->c()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v6, p2

    .line 41
    :goto_1
    if-nez v5, :cond_4

    .line 42
    .line 43
    if-eqz v6, :cond_b

    .line 44
    .line 45
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->T:Landroidx/recyclerview/widget/k$u;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-le p2, v0, :cond_5

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const/4 v2, 0x0

    .line 63
    :goto_2
    int-to-double v3, v1

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    double-to-int v3, v3

    .line 69
    mul-int v4, v5, v5

    .line 70
    .line 71
    mul-int v7, v6, v6

    .line 72
    .line 73
    add-int/2addr v7, v4

    .line 74
    int-to-double v7, v7

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    double-to-int v4, v7

    .line 80
    iget-object v7, p1, Landroidx/recyclerview/widget/k$u;->h:Landroidx/recyclerview/widget/k;

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    :goto_3
    div-int/lit8 v9, v8, 0x2

    .line 94
    .line 95
    int-to-float v4, v4

    .line 96
    const/high16 v10, 0x3f800000    # 1.0f

    .line 97
    .line 98
    mul-float v4, v4, v10

    .line 99
    .line 100
    int-to-float v8, v8

    .line 101
    div-float/2addr v4, v8

    .line 102
    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    int-to-float v9, v9

    .line 107
    const/high16 v11, 0x3f000000    # 0.5f

    .line 108
    .line 109
    sub-float/2addr v4, v11

    .line 110
    const v11, 0x3ef1463b

    .line 111
    .line 112
    .line 113
    mul-float v4, v4, v11

    .line 114
    .line 115
    float-to-double v11, v4

    .line 116
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v11

    .line 120
    double-to-float v4, v11

    .line 121
    mul-float v4, v4, v9

    .line 122
    .line 123
    add-float/2addr v4, v9

    .line 124
    if-lez v3, :cond_7

    .line 125
    .line 126
    int-to-float p2, v3

    .line 127
    div-float/2addr v4, p2

    .line 128
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 133
    .line 134
    mul-float p2, p2, v0

    .line 135
    .line 136
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    mul-int/lit8 p2, p2, 0x4

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    if-eqz v2, :cond_8

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_8
    move p2, v0

    .line 147
    :goto_4
    int-to-float p2, p2

    .line 148
    div-float/2addr p2, v8

    .line 149
    add-float/2addr p2, v10

    .line 150
    const/high16 v0, 0x43960000    # 300.0f

    .line 151
    .line 152
    mul-float p2, p2, v0

    .line 153
    .line 154
    float-to-int p2, p2

    .line 155
    :goto_5
    const/16 v0, 0x7d0

    .line 156
    .line 157
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    iget-object v0, p1, Landroidx/recyclerview/widget/k$u;->e:Landroid/view/animation/Interpolator;

    .line 162
    .line 163
    sget-object v2, Landroidx/recyclerview/widget/k;->n0:Landroidx/recyclerview/widget/k$b;

    .line 164
    .line 165
    if-eq v0, v2, :cond_9

    .line 166
    .line 167
    iput-object v2, p1, Landroidx/recyclerview/widget/k$u;->e:Landroid/view/animation/Interpolator;

    .line 168
    .line 169
    new-instance v0, Landroid/widget/OverScroller;

    .line 170
    .line 171
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-direct {v0, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 179
    .line 180
    :cond_9
    const/4 v0, 0x2

    .line 181
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/k;->setScrollState(I)V

    .line 182
    .line 183
    .line 184
    iput v1, p1, Landroidx/recyclerview/widget/k$u;->c:I

    .line 185
    .line 186
    iput v1, p1, Landroidx/recyclerview/widget/k$u;->b:I

    .line 187
    .line 188
    iget-object v2, p1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 189
    .line 190
    const/4 v3, 0x0

    .line 191
    const/4 v4, 0x0

    .line 192
    move v7, p2

    .line 193
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 194
    .line 195
    .line 196
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 v0, 0x17

    .line 199
    .line 200
    if-ge p2, v0, :cond_a

    .line 201
    .line 202
    iget-object p2, p1, Landroidx/recyclerview/widget/k$u;->d:Landroid/widget/OverScroller;

    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 205
    .line 206
    .line 207
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$u;->a()V

    .line 208
    .line 209
    .line 210
    :cond_b
    :goto_6
    return-void
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/k;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/k;->q:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->r:Z

    :cond_0
    return-void
.end method

.method public final x(Z)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/k;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/k;->q:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->r:Z

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/k;->q:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/k;->r:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/k;->s:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->r:Z

    :cond_3
    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/recyclerview/widget/k;->q:I

    return-void
.end method
