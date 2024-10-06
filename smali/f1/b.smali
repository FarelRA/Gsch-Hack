.class public final Lf1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:[I

.field public C:Z

.field public final D:Landroid/text/TextPaint;

.field public final E:Landroid/text/TextPaint;

.field public F:Landroid/animation/TimeInterpolator;

.field public G:Landroid/animation/TimeInterpolator;

.field public H:F

.field public I:F

.field public J:F

.field public K:I

.field public final a:Landroid/view/View;

.field public b:Z

.field public c:F

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/RectF;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Landroid/graphics/Typeface;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Ljava/lang/CharSequence;

.field public w:Ljava/lang/CharSequence;

.field public x:Z

.field public y:Landroid/graphics/Bitmap;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lf1/b;->g:I

    iput v0, p0, Lf1/b;->h:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lf1/b;->i:F

    iput v0, p0, Lf1/b;->j:F

    iput-object p1, p0, Lf1/b;->a:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lf1/b;->D:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lf1/b;->E:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lf1/b;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lf1/b;->d:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lf1/b;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v4, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static f(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sget-object p3, Lw0/a;->a:Landroid/view/animation/LinearInterpolator;

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lf1/b;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lw/b;->b:Lw/b$d;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-object v0, Lw/b;->a:Lw/b$d;

    .line 22
    .line 23
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ltz v3, :cond_5

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sub-int/2addr v4, v3

    .line 34
    if-ltz v4, :cond_5

    .line 35
    .line 36
    iget-object v4, v0, Lw/b$c;->a:Lw/b$b;

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lw/b$c;->a()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-interface {v4, p1, v3}, Lw/b$b;->a(Ljava/lang/CharSequence;I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    if-eq p1, v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lw/b$c;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/4 v1, 0x1

    .line 59
    :cond_4
    :goto_2
    move p1, v1

    .line 60
    :goto_3
    return p1

    .line 61
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final c(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf1/b;->f:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lf1/b;->d:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    iget-object v3, p0, Lf1/b;->e:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    int-to-float v4, v4

    .line 13
    iget-object v5, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    invoke-static {v2, v4, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v2, p0, Lf1/b;->m:F

    .line 22
    .line 23
    iget v4, p0, Lf1/b;->n:F

    .line 24
    .line 25
    iget-object v5, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 26
    .line 27
    invoke-static {v2, v4, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 32
    .line 33
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    int-to-float v4, v4

    .line 39
    iget-object v5, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 40
    .line 41
    invoke-static {v2, v4, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 46
    .line 47
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    int-to-float v2, v2

    .line 53
    iget-object v3, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 54
    .line 55
    invoke-static {v1, v2, p1, v3}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    iget v0, p0, Lf1/b;->o:F

    .line 62
    .line 63
    iget v1, p0, Lf1/b;->p:F

    .line 64
    .line 65
    iget-object v2, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 66
    .line 67
    invoke-static {v0, v1, p1, v2}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lf1/b;->q:F

    .line 72
    .line 73
    iget v0, p0, Lf1/b;->m:F

    .line 74
    .line 75
    iget v1, p0, Lf1/b;->n:F

    .line 76
    .line 77
    iget-object v2, p0, Lf1/b;->F:Landroid/animation/TimeInterpolator;

    .line 78
    .line 79
    invoke-static {v0, v1, p1, v2}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lf1/b;->r:F

    .line 84
    .line 85
    iget v0, p0, Lf1/b;->i:F

    .line 86
    .line 87
    iget v1, p0, Lf1/b;->j:F

    .line 88
    .line 89
    iget-object v2, p0, Lf1/b;->G:Landroid/animation/TimeInterpolator;

    .line 90
    .line 91
    invoke-static {v0, v1, p1, v2}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lf1/b;->d(F)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 99
    .line 100
    iget-object v0, p0, Lf1/b;->a:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    iget-object v2, p0, Lf1/b;->k:Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    iget-object v3, p0, Lf1/b;->D:Landroid/text/TextPaint;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    if-eq v1, v2, :cond_1

    .line 113
    .line 114
    iget-object v1, p0, Lf1/b;->B:[I

    .line 115
    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    invoke-virtual {v2, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :goto_0
    invoke-virtual {p0}, Lf1/b;->e()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v1, v2, p1}, Lf1/b;->a(IIF)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lf1/b;->e()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    :goto_1
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    .line 142
    .line 143
    iget v1, p0, Lf1/b;->H:F

    .line 144
    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    invoke-static {v2, v1, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iget v6, p0, Lf1/b;->I:F

    .line 152
    .line 153
    invoke-static {v2, v6, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    iget v7, p0, Lf1/b;->J:F

    .line 158
    .line 159
    invoke-static {v2, v7, p1, v5}, Lf1/b;->f(FFFLandroid/animation/TimeInterpolator;)F

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iget v5, p0, Lf1/b;->K:I

    .line 164
    .line 165
    invoke-static {v4, v5, p1}, Lf1/b;->a(IIF)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {v3, v1, v6, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final d(F)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lf1/b;->e:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lf1/b;->d:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    iget v2, p0, Lf1/b;->j:F

    .line 21
    .line 22
    sub-float v2, p1, v2

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const v3, 0x3a83126f    # 0.001f

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    cmpg-float v2, v2, v3

    .line 34
    .line 35
    if-gez v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget p1, p0, Lf1/b;->j:F

    .line 45
    .line 46
    iput v6, p0, Lf1/b;->z:F

    .line 47
    .line 48
    iget-object v1, p0, Lf1/b;->u:Landroid/graphics/Typeface;

    .line 49
    .line 50
    iget-object v2, p0, Lf1/b;->s:Landroid/graphics/Typeface;

    .line 51
    .line 52
    if-eq v1, v2, :cond_2

    .line 53
    .line 54
    iput-object v2, p0, Lf1/b;->u:Landroid/graphics/Typeface;

    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    goto :goto_5

    .line 58
    :cond_2
    const/4 v7, 0x0

    .line 59
    goto :goto_5

    .line 60
    :cond_3
    iget v2, p0, Lf1/b;->i:F

    .line 61
    .line 62
    iget-object v7, p0, Lf1/b;->u:Landroid/graphics/Typeface;

    .line 63
    .line 64
    iget-object v8, p0, Lf1/b;->t:Landroid/graphics/Typeface;

    .line 65
    .line 66
    if-eq v7, v8, :cond_4

    .line 67
    .line 68
    iput-object v8, p0, Lf1/b;->u:Landroid/graphics/Typeface;

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const/4 v7, 0x0

    .line 73
    :goto_1
    sub-float v8, p1, v2

    .line 74
    .line 75
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    cmpg-float v3, v8, v3

    .line 80
    .line 81
    if-gez v3, :cond_5

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const/4 v3, 0x0

    .line 86
    :goto_2
    if-eqz v3, :cond_6

    .line 87
    .line 88
    iput v6, p0, Lf1/b;->z:F

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iget v3, p0, Lf1/b;->i:F

    .line 92
    .line 93
    div-float/2addr p1, v3

    .line 94
    iput p1, p0, Lf1/b;->z:F

    .line 95
    .line 96
    :goto_3
    iget p1, p0, Lf1/b;->j:F

    .line 97
    .line 98
    iget v3, p0, Lf1/b;->i:F

    .line 99
    .line 100
    div-float/2addr p1, v3

    .line 101
    mul-float v3, v1, p1

    .line 102
    .line 103
    cmpl-float v3, v3, v0

    .line 104
    .line 105
    if-lez v3, :cond_7

    .line 106
    .line 107
    div-float/2addr v0, p1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    move v0, p1

    .line 113
    goto :goto_4

    .line 114
    :cond_7
    move v0, v1

    .line 115
    :goto_4
    move p1, v2

    .line 116
    :goto_5
    const/4 v1, 0x0

    .line 117
    cmpl-float v1, v0, v1

    .line 118
    .line 119
    if-lez v1, :cond_a

    .line 120
    .line 121
    iget v1, p0, Lf1/b;->A:F

    .line 122
    .line 123
    cmpl-float v1, v1, p1

    .line 124
    .line 125
    if-nez v1, :cond_9

    .line 126
    .line 127
    iget-boolean v1, p0, Lf1/b;->C:Z

    .line 128
    .line 129
    if-nez v1, :cond_9

    .line 130
    .line 131
    if-eqz v7, :cond_8

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/4 v7, 0x0

    .line 135
    goto :goto_7

    .line 136
    :cond_9
    :goto_6
    const/4 v7, 0x1

    .line 137
    :goto_7
    iput p1, p0, Lf1/b;->A:F

    .line 138
    .line 139
    iput-boolean v5, p0, Lf1/b;->C:Z

    .line 140
    .line 141
    :cond_a
    iget-object p1, p0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 142
    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    if-eqz v7, :cond_d

    .line 146
    .line 147
    :cond_b
    iget-object p1, p0, Lf1/b;->D:Landroid/text/TextPaint;

    .line 148
    .line 149
    iget v1, p0, Lf1/b;->A:F

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lf1/b;->u:Landroid/graphics/Typeface;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    .line 158
    .line 159
    iget v1, p0, Lf1/b;->z:F

    .line 160
    .line 161
    cmpl-float v1, v1, v6

    .line 162
    .line 163
    if-eqz v1, :cond_c

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_c
    const/4 v4, 0x0

    .line 167
    :goto_8
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lf1/b;->v:Ljava/lang/CharSequence;

    .line 171
    .line 172
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 173
    .line 174
    invoke-static {v1, p1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v0, p0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 179
    .line 180
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_d

    .line 185
    .line 186
    iput-object p1, p0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lf1/b;->b(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput-boolean p1, p0, Lf1/b;->x:Z

    .line 193
    .line 194
    :cond_d
    return-void
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lf1/b;->B:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lf1/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lf1/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lf1/b;->b:Z

    return-void
.end method

.method public final h()V
    .locals 14

    .line 1
    iget-object v0, p0, Lf1/b;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_b

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_b

    .line 14
    .line 15
    iget v1, p0, Lf1/b;->A:F

    .line 16
    .line 17
    iget v2, p0, Lf1/b;->j:F

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lf1/b;->d(F)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 23
    .line 24
    iget-object v3, p0, Lf1/b;->D:Landroid/text/TextPaint;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget v6, p0, Lf1/b;->h:I

    .line 41
    .line 42
    iget-boolean v7, p0, Lf1/b;->x:Z

    .line 43
    .line 44
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    and-int/lit8 v7, v6, 0x70

    .line 49
    .line 50
    const/16 v8, 0x50

    .line 51
    .line 52
    const/16 v9, 0x30

    .line 53
    .line 54
    const/high16 v10, 0x40000000    # 2.0f

    .line 55
    .line 56
    iget-object v11, p0, Lf1/b;->e:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-eq v7, v9, :cond_2

    .line 59
    .line 60
    if-eq v7, v8, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    sub-float/2addr v7, v12

    .line 71
    div-float/2addr v7, v10

    .line 72
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    sub-float/2addr v7, v12

    .line 77
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    int-to-float v12, v12

    .line 82
    add-float/2addr v12, v7

    .line 83
    iput v12, p0, Lf1/b;->n:F

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    int-to-float v7, v7

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget v7, v11, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    int-to-float v7, v7

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    sub-float/2addr v7, v12

    .line 98
    :goto_1
    iput v7, p0, Lf1/b;->n:F

    .line 99
    .line 100
    :goto_2
    const v7, 0x800007

    .line 101
    .line 102
    .line 103
    and-int/2addr v6, v7

    .line 104
    const/4 v12, 0x5

    .line 105
    const/4 v13, 0x1

    .line 106
    if-eq v6, v13, :cond_4

    .line 107
    .line 108
    if-eq v6, v12, :cond_3

    .line 109
    .line 110
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    int-to-float v2, v2

    .line 113
    iput v2, p0, Lf1/b;->p:F

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    iget v6, v11, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    int-to-float v6, v6

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    int-to-float v6, v6

    .line 125
    div-float/2addr v2, v10

    .line 126
    :goto_3
    sub-float/2addr v6, v2

    .line 127
    iput v6, p0, Lf1/b;->p:F

    .line 128
    .line 129
    :goto_4
    iget v2, p0, Lf1/b;->i:F

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lf1/b;->d(F)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lf1/b;->w:Ljava/lang/CharSequence;

    .line 135
    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {v3, v2, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    :cond_5
    iget v2, p0, Lf1/b;->g:I

    .line 147
    .line 148
    iget-boolean v5, p0, Lf1/b;->x:Z

    .line 149
    .line 150
    invoke-static {v2, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    and-int/lit8 v5, v2, 0x70

    .line 155
    .line 156
    iget-object v6, p0, Lf1/b;->d:Landroid/graphics/Rect;

    .line 157
    .line 158
    if-eq v5, v9, :cond_7

    .line 159
    .line 160
    if-eq v5, v8, :cond_6

    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    sub-float/2addr v5, v8

    .line 171
    div-float/2addr v5, v10

    .line 172
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    sub-float/2addr v5, v3

    .line 177
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    int-to-float v3, v3

    .line 182
    add-float/2addr v3, v5

    .line 183
    goto :goto_5

    .line 184
    :cond_6
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 185
    .line 186
    int-to-float v3, v3

    .line 187
    goto :goto_5

    .line 188
    :cond_7
    iget v5, v6, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    int-to-float v5, v5

    .line 191
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    sub-float v3, v5, v3

    .line 196
    .line 197
    :goto_5
    iput v3, p0, Lf1/b;->m:F

    .line 198
    .line 199
    and-int/2addr v2, v7

    .line 200
    if-eq v2, v13, :cond_9

    .line 201
    .line 202
    if-eq v2, v12, :cond_8

    .line 203
    .line 204
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 205
    .line 206
    int-to-float v2, v2

    .line 207
    goto :goto_7

    .line 208
    :cond_8
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 209
    .line 210
    int-to-float v2, v2

    .line 211
    goto :goto_6

    .line 212
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    int-to-float v2, v2

    .line 217
    div-float/2addr v4, v10

    .line 218
    :goto_6
    sub-float/2addr v2, v4

    .line 219
    :goto_7
    iput v2, p0, Lf1/b;->o:F

    .line 220
    .line 221
    iget-object v2, p0, Lf1/b;->y:Landroid/graphics/Bitmap;

    .line 222
    .line 223
    if-eqz v2, :cond_a

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    iput-object v2, p0, Lf1/b;->y:Landroid/graphics/Bitmap;

    .line 230
    .line 231
    :cond_a
    invoke-virtual {p0, v1}, Lf1/b;->d(F)V

    .line 232
    .line 233
    .line 234
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 237
    .line 238
    .line 239
    iget v0, p0, Lf1/b;->c:F

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lf1/b;->c(F)V

    .line 242
    .line 243
    .line 244
    :cond_b
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lf1/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lf1/b;->h()V

    :cond_0
    return-void
.end method

.method public final j(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v1, p1, v0

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lf1/b;->c:F

    .line 17
    .line 18
    cmpl-float v0, p1, v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iput p1, p0, Lf1/b;->c:F

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lf1/b;->c(F)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method
