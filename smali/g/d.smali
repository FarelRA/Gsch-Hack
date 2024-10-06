.class public final Lg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lg/i;

.field public c:I

.field public d:Lg/p0;

.field public e:Lg/p0;

.field public f:Lg/p0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/d;->c:I

    iput-object p1, p0, Lg/d;->a:Landroid/view/View;

    invoke-static {}, Lg/i;->g()Lg/i;

    move-result-object p1

    iput-object p1, p0, Lg/d;->b:Lg/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/d;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0x15

    .line 14
    .line 15
    if-le v2, v5, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lg/d;->d:Lg/p0;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne v2, v5, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 v2, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-eqz v2, :cond_7

    .line 28
    .line 29
    iget-object v2, p0, Lg/d;->f:Lg/p0;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    new-instance v2, Lg/p0;

    .line 34
    .line 35
    invoke-direct {v2}, Lg/p0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lg/d;->f:Lg/p0;

    .line 39
    .line 40
    :cond_2
    iget-object v2, p0, Lg/d;->f:Lg/p0;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    iput-object v5, v2, Lg/p0;->a:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    iput-boolean v4, v2, Lg/p0;->d:Z

    .line 46
    .line 47
    iput-object v5, v2, Lg/p0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 48
    .line 49
    iput-boolean v4, v2, Lg/p0;->c:Z

    .line 50
    .line 51
    sget-object v5, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iput-boolean v3, v2, Lg/p0;->d:Z

    .line 60
    .line 61
    iput-object v5, v2, Lg/p0;->a:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    iput-boolean v3, v2, Lg/p0;->c:Z

    .line 70
    .line 71
    iput-object v5, v2, Lg/p0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    :cond_4
    iget-boolean v5, v2, Lg/p0;->d:Z

    .line 74
    .line 75
    if-nez v5, :cond_6

    .line 76
    .line 77
    iget-boolean v5, v2, Lg/p0;->c:Z

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/4 v3, 0x0

    .line 83
    goto :goto_3

    .line 84
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v1, v2, v4}, Lg/i;->n(Landroid/graphics/drawable/Drawable;Lg/p0;[I)V

    .line 89
    .line 90
    .line 91
    :goto_3
    if-eqz v3, :cond_7

    .line 92
    .line 93
    return-void

    .line 94
    :cond_7
    iget-object v2, p0, Lg/d;->e:Lg/p0;

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v2, v0}, Lg/i;->n(Landroid/graphics/drawable/Drawable;Lg/p0;[I)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    iget-object v2, p0, Lg/d;->d:Lg/p0;

    .line 107
    .line 108
    if-eqz v2, :cond_9

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v2, v0}, Lg/i;->n(Landroid/graphics/drawable/Drawable;Lg/p0;[I)V

    .line 115
    .line 116
    .line 117
    :cond_9
    :goto_4
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/d;->e:Lg/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/p0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/d;->e:Lg/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/p0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/d;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lm1/h;->F:[I

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2}, Lg/r0;->l(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/r0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p1, p2}, Lg/r0;->k(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, p2, v2}, Lg/r0;->i(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lg/d;->c:I

    .line 26
    .line 27
    iget-object v1, p0, Lg/d;->b:Lg/i;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget v4, p0, Lg/d;->c:I

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, Lg/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lg/d;->g(Landroid/content/res/ColorStateList;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v1}, Lg/r0;->k(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v4, 0x15

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lg/r0;->b(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v5, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    .line 63
    .line 64
    if-ne v5, v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v5, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 86
    :goto_1
    if-eqz v3, :cond_4

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    const/4 v3, 0x2

    .line 107
    invoke-virtual {p1, v3}, Lg/r0;->k(I)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-virtual {p1, v3, v2}, Lg/r0;->h(II)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-static {v2, v3}, Lg/b0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 123
    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 127
    .line 128
    .line 129
    if-ne v3, v4, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-nez v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    :cond_5
    const/4 p2, 0x1

    .line 148
    :cond_6
    if-eqz v2, :cond_8

    .line 149
    .line 150
    if-eqz p2, :cond_8

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_7

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-virtual {p1}, Lg/r0;->m()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catchall_0
    move-exception p2

    .line 173
    invoke-virtual {p1}, Lg/r0;->m()V

    .line 174
    .line 175
    .line 176
    throw p2
.end method

.method public final e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lg/d;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method

.method public final f(I)V
    .locals 2

    iput p1, p0, Lg/d;->c:I

    iget-object v0, p0, Lg/d;->b:Lg/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lg/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lg/d;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/d;->d:Lg/p0;

    if-nez v0, :cond_0

    new-instance v0, Lg/p0;

    invoke-direct {v0}, Lg/p0;-><init>()V

    iput-object v0, p0, Lg/d;->d:Lg/p0;

    :cond_0
    iget-object v0, p0, Lg/d;->d:Lg/p0;

    iput-object p1, v0, Lg/p0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/p0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lg/d;->d:Lg/p0;

    :goto_0
    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/d;->e:Lg/p0;

    if-nez v0, :cond_0

    new-instance v0, Lg/p0;

    invoke-direct {v0}, Lg/p0;-><init>()V

    iput-object v0, p0, Lg/d;->e:Lg/p0;

    :cond_0
    iget-object v0, p0, Lg/d;->e:Lg/p0;

    iput-object p1, v0, Lg/p0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/p0;->d:Z

    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/d;->e:Lg/p0;

    if-nez v0, :cond_0

    new-instance v0, Lg/p0;

    invoke-direct {v0}, Lg/p0;-><init>()V

    iput-object v0, p0, Lg/d;->e:Lg/p0;

    :cond_0
    iget-object v0, p0, Lg/d;->e:Lg/p0;

    iput-object p1, v0, Lg/p0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/p0;->c:Z

    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method
