.class public Ld/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b$b;,
        Ld/b$c;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public b:Ld/b$c;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Ld/b$a;

.field public k:J

.field public l:J

.field public m:Ld/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Ld/b;->f:I

    const/4 v0, -0x1

    iput v0, p0, Ld/b;->h:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b;->g:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    iget-wide v9, p0, Ld/b;->k:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    iget v9, p0, Ld/b;->f:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v10, v9

    iget-object v9, p0, Ld/b;->b:Ld/b$c;

    iget v9, v9, Ld/b$c;->y:I

    div-int/2addr v10, v9

    rsub-int v9, v10, 0xff

    iget v10, p0, Ld/b;->f:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v6, p0, Ld/b;->k:J

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    iget-wide v10, p0, Ld/b;->l:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    invoke-virtual {v9, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Ld/b;->b:Ld/b$c;

    iget v4, v4, Ld/b$c;->z:I

    div-int/2addr v3, v4

    iget v4, p0, Ld/b;->f:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_4
    :goto_2
    iput-wide v6, p0, Ld/b;->l:J

    :cond_5
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Ld/b;->j:Ld/b$a;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ld/b$c;->c()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Ld/b$c;->h:I

    .line 9
    .line 10
    iget-object v2, v0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_1

    .line 15
    .line 16
    aget-object v5, v2, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    aget-object v5, v2, v4

    .line 27
    .line 28
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 29
    .line 30
    .line 31
    iget v5, v0, Ld/b$c;->e:I

    .line 32
    .line 33
    aget-object v6, v2, v4

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    or-int/2addr v5, v6

    .line 40
    iput v5, v0, Ld/b$c;->e:I

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iput-object p1, v0, Ld/b$c;->b:Landroid/content/res/Resources;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    const/16 p1, 0xa0

    .line 62
    .line 63
    :cond_2
    iget v1, v0, Ld/b$c;->c:I

    .line 64
    .line 65
    iput p1, v0, Ld/b$c;->c:I

    .line 66
    .line 67
    if-eq v1, p1, :cond_4

    .line 68
    .line 69
    iput-boolean v3, v0, Ld/b$c;->m:Z

    .line 70
    .line 71
    iput-boolean v3, v0, Ld/b$c;->j:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void
.end method

.method public b()Ld/b$c;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b;->m:Ld/b$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld/b$b;

    .line 6
    .line 7
    invoke-direct {v0}, Ld/b$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld/b;->m:Ld/b$b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ld/b;->m:Ld/b$b;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Ld/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 25
    .line 26
    iget v1, v1, Ld/b$c;->y:I

    .line 27
    .line 28
    if-gtz v1, :cond_1

    .line 29
    .line 30
    iget-boolean v1, p0, Ld/b;->g:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget v1, p0, Ld/b;->f:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 40
    .line 41
    iget-boolean v2, v1, Ld/b$c;->C:Z

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v1, v1, Ld/b$c;->B:Landroid/graphics/ColorFilter;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v2, v1, Ld/b$c;->F:Z

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget-object v1, v1, Ld/b$c;->D:Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 61
    .line 62
    iget-boolean v2, v1, Ld/b$c;->G:Z

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    iget-object v1, v1, Ld/b$c;->E:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 80
    .line 81
    iget-boolean v1, v1, Ld/b$c;->w:Z

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    .line 106
    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v2, 0x17

    .line 110
    .line 111
    if-lt v1, v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {p1, v1}, La0/c;->p(Landroid/graphics/drawable/Drawable;I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 121
    .line 122
    iget-boolean v1, v1, Ld/b$c;->A:Z

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Ld/b;->c:Landroid/graphics/Rect;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 136
    .line 137
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 138
    .line 139
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object v1, p0, Ld/b;->m:Ld/b$b;

    .line 143
    .line 144
    iget-object v2, v1, Ld/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 145
    .line 146
    iput-object v0, v1, Ld/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    iget-object v2, p0, Ld/b;->m:Ld/b$b;

    .line 154
    .line 155
    iget-object v3, v2, Ld/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 156
    .line 157
    iput-object v0, v2, Ld/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 160
    .line 161
    .line 162
    throw v1
.end method

.method public final canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    invoke-virtual {v0}, Ld/b$c;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public final d(I)Z
    .locals 9

    iget v0, p0, Ld/b;->h:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    iget v0, v0, Ld/b$c;->z:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    iget v0, v0, Ld/b$c;->z:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/b;->l:J

    goto :goto_0

    :cond_2
    iput-object v4, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Ld/b;->l:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    iget v1, v0, Ld/b$c;->h:I

    if-ge p1, v1, :cond_6

    invoke-virtual {v0, p1}, Ld/b$c;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Ld/b;->h:I

    if-eqz v0, :cond_7

    iget-object p1, p0, Ld/b;->b:Ld/b$c;

    iget p1, p1, Ld/b$c;->y:I

    if-lez p1, :cond_5

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Ld/b;->k:J

    :cond_5
    invoke-virtual {p0, v0}, Ld/b;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iput-object v4, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Ld/b;->h:I

    :cond_7
    :goto_1
    iget-wide v0, p0, Ld/b;->k:J

    const/4 p1, 0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_8

    iget-wide v0, p0, Ld/b;->l:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_a

    :cond_8
    iget-object v0, p0, Ld/b;->j:Ld/b$a;

    if-nez v0, :cond_9

    new-instance v0, Ld/b$a;

    move-object v1, p0

    check-cast v1, Ld/d;

    invoke-direct {v0, v1}, Ld/b$a;-><init>(Ld/d;)V

    iput-object v0, p0, Ld/b;->j:Ld/b$a;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0, p1}, Ld/b;->a(Z)V

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public e(Ld/b$c;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Ld/b;->f:I

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 6
    .line 7
    iget v2, v1, Ld/b$c;->d:I

    .line 8
    .line 9
    iget v1, v1, Ld/b$c;->e:I

    .line 10
    .line 11
    or-int/2addr v1, v2

    .line 12
    or-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 7

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, v0, Ld/b$c;->u:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Ld/b$c;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit v0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ld/b$c;->c()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Ld/b$c;->u:Z

    .line 17
    .line 18
    iget v2, v0, Ld/b$c;->h:I

    .line 19
    .line 20
    iget-object v3, v0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_1
    if-ge v5, v2, :cond_2

    .line 25
    .line 26
    aget-object v6, v3, v5

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    iput-boolean v4, v0, Ld/b$c;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :try_start_2
    iput-boolean v1, v0, Ld/b$c;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 48
    .line 49
    invoke-virtual {p0}, Ld/b;->getChangingConfigurations()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Ld/b$c;->d:I

    .line 54
    .line 55
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    .line 62
    throw v1
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Ld/b;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Ld/b$c;->m:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ld/b$c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, v0, Ld/b$c;->o:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, -0x1

    .line 27
    :goto_0
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Ld/b$c;->m:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ld/b$c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, v0, Ld/b$c;->n:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, -0x1

    .line 27
    :goto_0
    return v0
.end method

.method public final getMinimumHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Ld/b$c;->m:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ld/b$c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, v0, Ld/b$c;->q:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final getMinimumWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Ld/b$c;->m:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ld/b$c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, v0, Ld/b$c;->p:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final getOpacity()I
    .locals 7

    .line 1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 14
    .line 15
    iget-boolean v2, v0, Ld/b$c;->r:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget v0, v0, Ld/b$c;->s:I

    .line 20
    .line 21
    move v1, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v0}, Ld/b$c;->c()V

    .line 24
    .line 25
    .line 26
    iget v2, v0, Ld/b$c;->h:I

    .line 27
    .line 28
    iget-object v3, v0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-lez v2, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aget-object v1, v3, v1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :cond_2
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x1

    .line 41
    :goto_0
    if-ge v5, v2, :cond_3

    .line 42
    .line 43
    aget-object v6, v3, v5

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {v1, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iput v1, v0, Ld/b$c;->s:I

    .line 57
    .line 58
    iput-boolean v4, v0, Ld/b$c;->r:Z

    .line 59
    .line 60
    :cond_4
    :goto_1
    return v1
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->i:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, v0, Ld/b$c;->k:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-nez v1, :cond_8

    .line 14
    .line 15
    iget-boolean v5, v0, Ld/b$c;->j:Z

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ld/b$c;->c()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iget v5, v0, Ld/b$c;->h:I

    .line 29
    .line 30
    iget-object v6, v0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_0
    if-ge v7, v5, :cond_7

    .line 34
    .line 35
    aget-object v8, v6, v7

    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_6

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    new-instance v4, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    if-le v8, v9, :cond_3

    .line 55
    .line 56
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 57
    .line 58
    :cond_3
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    if-le v8, v9, :cond_4

    .line 63
    .line 64
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    :cond_4
    iget v8, v1, Landroid/graphics/Rect;->right:I

    .line 67
    .line 68
    iget v9, v4, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    if-le v8, v9, :cond_5

    .line 71
    .line 72
    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    :cond_5
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    if-le v8, v9, :cond_6

    .line 79
    .line 80
    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    iput-boolean v2, v0, Ld/b$c;->j:Z

    .line 86
    .line 87
    iput-object v4, v0, Ld/b$c;->k:Landroid/graphics/Rect;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_8
    :goto_1
    move-object v4, v1

    .line 91
    :goto_2
    if-eqz v4, :cond_a

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    or-int/2addr v0, v1

    .line 101
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    or-int/2addr v0, v1

    .line 104
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    or-int/2addr v0, v1

    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    goto :goto_3

    .line 111
    :cond_9
    const/4 v0, 0x0

    .line 112
    goto :goto_3

    .line 113
    :cond_a
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_3

    .line 122
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    :goto_3
    iget-object v1, p0, Ld/b;->b:Ld/b$c;

    .line 127
    .line 128
    iget-boolean v1, v1, Ld/b$c;->A:Z

    .line 129
    .line 130
    if-eqz v1, :cond_c

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-ne v1, v2, :cond_c

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_c
    const/4 v2, 0x0

    .line 140
    :goto_4
    if-eqz v2, :cond_d

    .line 141
    .line 142
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    :cond_d
    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Ld/b$c;->r:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Ld/b$c;->t:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    iget-boolean v0, v0, Ld/b$c;->A:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 7

    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Ld/b;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Ld/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-wide v2, p0, Ld/b;->l:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iput-wide v4, p0, Ld/b;->l:J

    const/4 v0, 0x1

    :cond_2
    iget-wide v2, p0, Ld/b;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iput-wide v4, p0, Ld/b;->k:J

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Ld/b;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Ld/b;->b()Ld/b$c;

    move-result-object v0

    invoke-virtual {v0}, Ld/b$c;->e()V

    invoke-virtual {p0, v0}, Ld/b;->e(Ld/b$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b;->i:Z

    :cond_0
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget v1, p0, Ld/b;->h:I

    .line 4
    .line 5
    iget v2, v0, Ld/b$c;->h:I

    .line 6
    .line 7
    iget-object v3, v0, Ld/b$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    if-ge v5, v2, :cond_2

    .line 13
    .line 14
    aget-object v7, v3, v5

    .line 15
    .line 16
    if-eqz v7, :cond_1

    .line 17
    .line 18
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v9, 0x17

    .line 21
    .line 22
    if-lt v8, v9, :cond_0

    .line 23
    .line 24
    invoke-static {v7, p1}, La0/c;->v(Landroid/graphics/drawable/Drawable;I)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v7, 0x0

    .line 30
    :goto_1
    if-ne v5, v1, :cond_1

    .line 31
    .line 32
    move v6, v7

    .line 33
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iput p1, v0, Ld/b$c;->x:I

    .line 37
    .line 38
    return v6
.end method

.method public final onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 6

    iget-boolean v0, p0, Ld/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ld/b;->f:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b;->g:Z

    iput p1, p0, Ld/b;->f:I

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Ld/b;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/b;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld/b$c;->A:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Ld/b$c;->A:Z

    .line 8
    .line 9
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/b$c;->C:Z

    iget-object v1, v0, Ld/b$c;->B:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Ld/b$c;->B:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setDither(Z)V
    .locals 2

    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    iget-boolean v1, v0, Ld/b$c;->w:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Ld/b$c;->w:Z

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld/b;->c:Landroid/graphics/Rect;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Ld/b$c;->F:Z

    .line 5
    .line 6
    iget-object v1, v0, Ld/b$c;->D:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    iput-object p1, v0, Ld/b$c;->D:Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Ld/b$c;->G:Z

    .line 5
    .line 6
    iget-object v1, v0, Ld/b$c;->E:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    iput-object p1, v0, Ld/b$c;->E:Landroid/graphics/PorterDuff$Mode;

    .line 11
    .line 12
    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v1, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
