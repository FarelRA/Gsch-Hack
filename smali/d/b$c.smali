.class public abstract Ld/b$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public A:Z

.field public B:Landroid/graphics/ColorFilter;

.field public C:Z

.field public D:Landroid/content/res/ColorStateList;

.field public E:Landroid/graphics/PorterDuff$Mode;

.field public F:Z

.field public G:Z

.field public final a:Ld/b;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ld/b$c;Ld/b;Landroid/content/res/Resources;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa0

    .line 5
    .line 6
    iput v0, p0, Ld/b$c;->c:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Ld/b$c;->i:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Ld/b$c;->l:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Ld/b$c;->w:Z

    .line 15
    .line 16
    iput v1, p0, Ld/b$c;->y:I

    .line 17
    .line 18
    iput v1, p0, Ld/b$c;->z:I

    .line 19
    .line 20
    iput-object p2, p0, Ld/b$c;->a:Ld/b;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    move-object p2, p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p2, p1, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    :goto_0
    iput-object p2, p0, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget p2, p1, Ld/b$c;->c:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p2, 0x0

    .line 40
    :goto_1
    sget v3, Ld/b;->n:I

    .line 41
    .line 42
    if-nez p3, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 50
    .line 51
    :goto_2
    if-nez p2, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v0, p2

    .line 55
    :goto_3
    iput v0, p0, Ld/b$c;->c:I

    .line 56
    .line 57
    if-eqz p1, :cond_c

    .line 58
    .line 59
    iget p2, p1, Ld/b$c;->d:I

    .line 60
    .line 61
    iput p2, p0, Ld/b$c;->d:I

    .line 62
    .line 63
    iget p2, p1, Ld/b$c;->e:I

    .line 64
    .line 65
    iput p2, p0, Ld/b$c;->e:I

    .line 66
    .line 67
    iput-boolean v2, p0, Ld/b$c;->u:Z

    .line 68
    .line 69
    iput-boolean v2, p0, Ld/b$c;->v:Z

    .line 70
    .line 71
    iget-boolean p2, p1, Ld/b$c;->i:Z

    .line 72
    .line 73
    iput-boolean p2, p0, Ld/b$c;->i:Z

    .line 74
    .line 75
    iget-boolean p2, p1, Ld/b$c;->l:Z

    .line 76
    .line 77
    iput-boolean p2, p0, Ld/b$c;->l:Z

    .line 78
    .line 79
    iget-boolean p2, p1, Ld/b$c;->w:Z

    .line 80
    .line 81
    iput-boolean p2, p0, Ld/b$c;->w:Z

    .line 82
    .line 83
    iget p2, p1, Ld/b$c;->x:I

    .line 84
    .line 85
    iput p2, p0, Ld/b$c;->x:I

    .line 86
    .line 87
    iget p2, p1, Ld/b$c;->y:I

    .line 88
    .line 89
    iput p2, p0, Ld/b$c;->y:I

    .line 90
    .line 91
    iget p2, p1, Ld/b$c;->z:I

    .line 92
    .line 93
    iput p2, p0, Ld/b$c;->z:I

    .line 94
    .line 95
    iget-boolean p2, p1, Ld/b$c;->A:Z

    .line 96
    .line 97
    iput-boolean p2, p0, Ld/b$c;->A:Z

    .line 98
    .line 99
    iget-object p2, p1, Ld/b$c;->B:Landroid/graphics/ColorFilter;

    .line 100
    .line 101
    iput-object p2, p0, Ld/b$c;->B:Landroid/graphics/ColorFilter;

    .line 102
    .line 103
    iget-boolean p2, p1, Ld/b$c;->C:Z

    .line 104
    .line 105
    iput-boolean p2, p0, Ld/b$c;->C:Z

    .line 106
    .line 107
    iget-object p2, p1, Ld/b$c;->D:Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    iput-object p2, p0, Ld/b$c;->D:Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    iget-object p2, p1, Ld/b$c;->E:Landroid/graphics/PorterDuff$Mode;

    .line 112
    .line 113
    iput-object p2, p0, Ld/b$c;->E:Landroid/graphics/PorterDuff$Mode;

    .line 114
    .line 115
    iget-boolean p2, p1, Ld/b$c;->F:Z

    .line 116
    .line 117
    iput-boolean p2, p0, Ld/b$c;->F:Z

    .line 118
    .line 119
    iget-boolean p2, p1, Ld/b$c;->G:Z

    .line 120
    .line 121
    iput-boolean p2, p0, Ld/b$c;->G:Z

    .line 122
    .line 123
    iget p2, p1, Ld/b$c;->c:I

    .line 124
    .line 125
    if-ne p2, v0, :cond_6

    .line 126
    .line 127
    iget-boolean p2, p1, Ld/b$c;->j:Z

    .line 128
    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    new-instance p2, Landroid/graphics/Rect;

    .line 132
    .line 133
    iget-object p3, p1, Ld/b$c;->k:Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    .line 137
    .line 138
    iput-object p2, p0, Ld/b$c;->k:Landroid/graphics/Rect;

    .line 139
    .line 140
    iput-boolean v2, p0, Ld/b$c;->j:Z

    .line 141
    .line 142
    :cond_5
    iget-boolean p2, p1, Ld/b$c;->m:Z

    .line 143
    .line 144
    if-eqz p2, :cond_6

    .line 145
    .line 146
    iget p2, p1, Ld/b$c;->n:I

    .line 147
    .line 148
    iput p2, p0, Ld/b$c;->n:I

    .line 149
    .line 150
    iget p2, p1, Ld/b$c;->o:I

    .line 151
    .line 152
    iput p2, p0, Ld/b$c;->o:I

    .line 153
    .line 154
    iget p2, p1, Ld/b$c;->p:I

    .line 155
    .line 156
    iput p2, p0, Ld/b$c;->p:I

    .line 157
    .line 158
    iget p2, p1, Ld/b$c;->q:I

    .line 159
    .line 160
    iput p2, p0, Ld/b$c;->q:I

    .line 161
    .line 162
    iput-boolean v2, p0, Ld/b$c;->m:Z

    .line 163
    .line 164
    :cond_6
    iget-boolean p2, p1, Ld/b$c;->r:Z

    .line 165
    .line 166
    if-eqz p2, :cond_7

    .line 167
    .line 168
    iget p2, p1, Ld/b$c;->s:I

    .line 169
    .line 170
    iput p2, p0, Ld/b$c;->s:I

    .line 171
    .line 172
    iput-boolean v2, p0, Ld/b$c;->r:Z

    .line 173
    .line 174
    :cond_7
    iget-boolean p2, p1, Ld/b$c;->t:Z

    .line 175
    .line 176
    if-eqz p2, :cond_8

    .line 177
    .line 178
    iput-boolean v2, p0, Ld/b$c;->t:Z

    .line 179
    .line 180
    :cond_8
    iget-object p2, p1, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    array-length p3, p2

    .line 183
    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    iput-object p3, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    iget p3, p1, Ld/b$c;->h:I

    .line 188
    .line 189
    iput p3, p0, Ld/b$c;->h:I

    .line 190
    .line 191
    iget-object p1, p1, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 192
    .line 193
    if-eqz p1, :cond_9

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_4

    .line 200
    :cond_9
    new-instance p1, Landroid/util/SparseArray;

    .line 201
    .line 202
    iget p3, p0, Ld/b$c;->h:I

    .line 203
    .line 204
    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    .line 205
    .line 206
    .line 207
    :goto_4
    iput-object p1, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 208
    .line 209
    iget p1, p0, Ld/b$c;->h:I

    .line 210
    .line 211
    :goto_5
    if-ge v1, p1, :cond_d

    .line 212
    .line 213
    aget-object p3, p2, v1

    .line 214
    .line 215
    if-eqz p3, :cond_b

    .line 216
    .line 217
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    if-eqz p3, :cond_a

    .line 222
    .line 223
    iget-object v0, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 224
    .line 225
    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_a
    iget-object p3, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    aget-object v0, p2, v1

    .line 232
    .line 233
    aput-object v0, p3, v1

    .line 234
    .line 235
    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_c
    const/16 p1, 0xa

    .line 239
    .line 240
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    iput-object p1, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 243
    .line 244
    iput v1, p0, Ld/b$c;->h:I

    .line 245
    .line 246
    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .line 1
    iget v0, p0, Ld/b$c;->h:I

    .line 2
    .line 3
    iget-object v1, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0xa

    .line 10
    .line 11
    move-object v3, p0

    .line 12
    check-cast v3, Ld/d$a;

    .line 13
    .line 14
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v5, v3, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v3, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    new-array v1, v1, [[I

    .line 24
    .line 25
    iget-object v4, v3, Ld/d$a;->H:[[I

    .line 26
    .line 27
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v3, Ld/d$a;->H:[[I

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Ld/b$c;->a:Ld/b;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    aput-object p1, v3, v0

    .line 47
    .line 48
    iget v3, p0, Ld/b$c;->h:I

    .line 49
    .line 50
    add-int/2addr v3, v1

    .line 51
    iput v3, p0, Ld/b$c;->h:I

    .line 52
    .line 53
    iget v1, p0, Ld/b$c;->e:I

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    or-int/2addr p1, v1

    .line 60
    iput p1, p0, Ld/b$c;->e:I

    .line 61
    .line 62
    iput-boolean v2, p0, Ld/b$c;->r:Z

    .line 63
    .line 64
    iput-boolean v2, p0, Ld/b$c;->t:Z

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Ld/b$c;->k:Landroid/graphics/Rect;

    .line 68
    .line 69
    iput-boolean v2, p0, Ld/b$c;->j:Z

    .line 70
    .line 71
    iput-boolean v2, p0, Ld/b$c;->m:Z

    .line 72
    .line 73
    iput-boolean v2, p0, Ld/b$c;->u:Z

    .line 74
    .line 75
    return v0
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b$c;->m:Z

    invoke-virtual {p0}, Ld/b$c;->c()V

    iget v0, p0, Ld/b$c;->h:I

    iget-object v1, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Ld/b$c;->o:I

    iput v2, p0, Ld/b$c;->n:I

    const/4 v2, 0x0

    iput v2, p0, Ld/b$c;->q:I

    iput v2, p0, Ld/b$c;->p:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Ld/b$c;->n:I

    if-le v4, v5, :cond_0

    iput v4, p0, Ld/b$c;->n:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Ld/b$c;->o:I

    if-le v4, v5, :cond_1

    iput v4, p0, Ld/b$c;->o:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Ld/b$c;->p:I

    if-le v4, v5, :cond_2

    iput v4, p0, Ld/b$c;->p:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Ld/b$c;->q:I

    if-le v3, v4, :cond_3

    iput v3, p0, Ld/b$c;->q:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 25
    .line 26
    iget-object v4, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object v5, p0, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v6, 0x17

    .line 37
    .line 38
    if-lt v5, v6, :cond_0

    .line 39
    .line 40
    iget v5, p0, Ld/b$c;->x:I

    .line 41
    .line 42
    invoke-static {v3, v5}, La0/c;->p(Landroid/graphics/drawable/Drawable;I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v5, p0, Ld/b$c;->a:Ld/b;

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 52
    .line 53
    .line 54
    aput-object v3, v4, v2

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 6

    iget v0, p0, Ld/b$c;->h:I

    iget-object v1, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final d(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 26
    .line 27
    iget-object v3, p0, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v4, 0x17

    .line 36
    .line 37
    if-lt v3, v4, :cond_1

    .line 38
    .line 39
    iget v3, p0, Ld/b$c;->x:I

    .line 40
    .line 41
    invoke-static {v2, v3}, La0/c;->p(Landroid/graphics/drawable/Drawable;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Ld/b$c;->a:Ld/b;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    aput-object v2, v3, p1

    .line 56
    .line 57
    iget-object p1, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    iput-object v1, p0, Ld/b$c;->f:Landroid/util/SparseArray;

    .line 71
    .line 72
    :cond_2
    return-object v2

    .line 73
    :cond_3
    return-object v1
.end method

.method public abstract e()V
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget v0, p0, Ld/b$c;->d:I

    iget v1, p0, Ld/b$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method
