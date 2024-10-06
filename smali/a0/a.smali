.class public abstract La0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/a$a;,
        La0/a$b;
    }
.end annotation


# static fields
.field public static final r:I


# instance fields
.field public final b:La0/a$a;

.field public final c:Landroid/view/animation/AccelerateInterpolator;

.field public final d:Landroid/view/View;

.field public e:La0/a$b;

.field public final f:[F

.field public final g:[F

.field public h:I

.field public i:I

.field public final j:[F

.field public final k:[F

.field public final l:[F

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, La0/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La0/a$a;

    .line 5
    .line 6
    invoke-direct {v0}, La0/a$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La0/a;->b:La0/a$a;

    .line 10
    .line 11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, La0/a;->c:Landroid/view/animation/AccelerateInterpolator;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [F

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, La0/a;->f:[F

    .line 25
    .line 26
    new-array v3, v1, [F

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, La0/a;->g:[F

    .line 32
    .line 33
    new-array v4, v1, [F

    .line 34
    .line 35
    fill-array-data v4, :array_2

    .line 36
    .line 37
    .line 38
    iput-object v4, p0, La0/a;->j:[F

    .line 39
    .line 40
    new-array v5, v1, [F

    .line 41
    .line 42
    fill-array-data v5, :array_3

    .line 43
    .line 44
    .line 45
    iput-object v5, p0, La0/a;->k:[F

    .line 46
    .line 47
    new-array v1, v1, [F

    .line 48
    .line 49
    fill-array-data v1, :array_4

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, La0/a;->l:[F

    .line 53
    .line 54
    iput-object p1, p0, La0/a;->d:Landroid/view/View;

    .line 55
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .line 66
    const v6, 0x44c4e000    # 1575.0f

    .line 67
    .line 68
    .line 69
    mul-float v6, v6, p1

    .line 70
    .line 71
    const/high16 v7, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr v6, v7

    .line 74
    float-to-int v6, v6

    .line 75
    const v8, 0x439d8000    # 315.0f

    .line 76
    .line 77
    .line 78
    mul-float p1, p1, v8

    .line 79
    .line 80
    add-float/2addr p1, v7

    .line 81
    float-to-int p1, p1

    .line 82
    int-to-float v6, v6

    .line 83
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 84
    .line 85
    div-float/2addr v6, v7

    .line 86
    const/4 v8, 0x0

    .line 87
    aput v6, v1, v8

    .line 88
    .line 89
    const/4 v9, 0x1

    .line 90
    aput v6, v1, v9

    .line 91
    .line 92
    int-to-float p1, p1

    .line 93
    div-float/2addr p1, v7

    .line 94
    aput p1, v5, v8

    .line 95
    .line 96
    aput p1, v5, v9

    .line 97
    .line 98
    iput v9, p0, La0/a;->h:I

    .line 99
    .line 100
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 101
    .line 102
    .line 103
    aput p1, v3, v8

    .line 104
    .line 105
    aput p1, v3, v9

    .line 106
    .line 107
    const p1, 0x3e4ccccd    # 0.2f

    .line 108
    .line 109
    .line 110
    aput p1, v2, v8

    .line 111
    .line 112
    aput p1, v2, v9

    .line 113
    .line 114
    const p1, 0x3a83126f    # 0.001f

    .line 115
    .line 116
    .line 117
    aput p1, v4, v8

    .line 118
    .line 119
    aput p1, v4, v9

    .line 120
    .line 121
    sget p1, La0/a;->r:I

    .line 122
    .line 123
    iput p1, p0, La0/a;->i:I

    .line 124
    .line 125
    const/16 p1, 0x1f4

    .line 126
    .line 127
    iput p1, v0, La0/a$a;->a:I

    .line 128
    .line 129
    iput p1, v0, La0/a$a;->b:I

    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final a(IFFF)F
    .locals 3

    .line 1
    iget-object v0, p0, La0/a;->f:[F

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, La0/a;->g:[F

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    mul-float v0, v0, p3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, La0/a;->b(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, p2, v0}, La0/a;->c(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-float/2addr p3, p2

    .line 21
    invoke-virtual {p0, p3, v0}, La0/a;->c(FF)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-float/2addr p2, v1

    .line 26
    iget-object p3, p0, La0/a;->c:Landroid/view/animation/AccelerateInterpolator;

    .line 27
    .line 28
    cmpg-float v0, p2, v2

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    neg-float p2, p2

    .line 33
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    neg-float p2, p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    cmpl-float v0, p2, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {p2, p3, v0}, La0/a;->b(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    :goto_1
    cmpl-float p3, p2, v2

    .line 58
    .line 59
    if-nez p3, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    iget-object v0, p0, La0/a;->j:[F

    .line 63
    .line 64
    aget v0, v0, p1

    .line 65
    .line 66
    iget-object v1, p0, La0/a;->k:[F

    .line 67
    .line 68
    aget v1, v1, p1

    .line 69
    .line 70
    iget-object v2, p0, La0/a;->l:[F

    .line 71
    .line 72
    aget p1, v2, p1

    .line 73
    .line 74
    mul-float v0, v0, p4

    .line 75
    .line 76
    if-lez p3, :cond_3

    .line 77
    .line 78
    mul-float p2, p2, v0

    .line 79
    .line 80
    invoke-static {p2, v1, p1}, La0/a;->b(FFF)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_3
    neg-float p2, p2

    .line 86
    mul-float p2, p2, v0

    .line 87
    .line 88
    invoke-static {p2, v1, p1}, La0/a;->b(FFF)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    neg-float p1, p1

    .line 93
    return p1
.end method

.method public final c(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, La0/a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    :cond_3
    iget-boolean p1, p0, La0/a;->p:Z

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, La0/a;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, La0/a;->p:Z

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, La0/a;->b:La0/a$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, v0, La0/a$a;->e:J

    .line 19
    .line 20
    sub-long v4, v2, v4

    .line 21
    .line 22
    long-to-int v5, v4

    .line 23
    iget v4, v0, La0/a$a;->b:I

    .line 24
    .line 25
    if-le v5, v4, :cond_1

    .line 26
    .line 27
    move v1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-gez v5, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v1, v5

    .line 33
    :goto_0
    iput v1, v0, La0/a$a;->i:I

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, La0/a$a;->a(J)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, La0/a$a;->h:F

    .line 40
    .line 41
    iput-wide v2, v0, La0/a$a;->g:J

    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 9

    .line 1
    iget-object v0, p0, La0/a;->b:La0/a$a;

    .line 2
    .line 3
    iget v1, v0, La0/a$a;->d:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, La0/a$a;->c:F

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    div-float/2addr v0, v2

    .line 18
    float-to-int v0, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    move-object v3, p0

    .line 23
    check-cast v3, La0/e;

    .line 24
    .line 25
    iget-object v3, v3, La0/e;->s:Landroid/widget/ListView;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    add-int v8, v7, v6

    .line 45
    .line 46
    if-lez v1, :cond_2

    .line 47
    .line 48
    if-lt v8, v4, :cond_3

    .line 49
    .line 50
    sub-int/2addr v6, v5

    .line 51
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-gt v1, v3, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    if-gez v1, :cond_0

    .line 67
    .line 68
    if-gtz v7, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ltz v1, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 v1, 0x1

    .line 82
    :goto_1
    if-nez v1, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v2, 0x1

    .line 86
    :cond_5
    :goto_2
    return v2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, La0/a;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, La0/a;->d()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iput-boolean v2, p0, La0/a;->o:Z

    .line 28
    .line 29
    iput-boolean v1, p0, La0/a;->m:Z

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    iget-object v4, p0, La0/a;->d:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    int-to-float v5, v5

    .line 47
    invoke-virtual {p0, v1, v0, v3, v5}, La0/a;->a(IFFF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    invoke-virtual {p0, v2, p2, p1, v3}, La0/a;->a(IFFF)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object p2, p0, La0/a;->b:La0/a$a;

    .line 70
    .line 71
    iput v0, p2, La0/a$a;->c:F

    .line 72
    .line 73
    iput p1, p2, La0/a$a;->d:F

    .line 74
    .line 75
    iget-boolean p1, p0, La0/a;->p:Z

    .line 76
    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, La0/a;->e()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, La0/a;->e:La0/a$b;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    new-instance p1, La0/a$b;

    .line 90
    .line 91
    invoke-direct {p1, p0}, La0/a$b;-><init>(La0/a;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, La0/a;->e:La0/a$b;

    .line 95
    .line 96
    :cond_4
    iput-boolean v2, p0, La0/a;->p:Z

    .line 97
    .line 98
    iput-boolean v2, p0, La0/a;->n:Z

    .line 99
    .line 100
    iget-boolean p1, p0, La0/a;->m:Z

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget p1, p0, La0/a;->i:I

    .line 105
    .line 106
    if-lez p1, :cond_5

    .line 107
    .line 108
    iget-object p2, p0, La0/a;->e:La0/a$b;

    .line 109
    .line 110
    int-to-long v5, p1

    .line 111
    sget-object p1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 112
    .line 113
    invoke-virtual {v4, p2, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    iget-object p1, p0, La0/a;->e:La0/a$b;

    .line 118
    .line 119
    invoke-virtual {p1}, La0/a$b;->run()V

    .line 120
    .line 121
    .line 122
    :goto_0
    iput-boolean v2, p0, La0/a;->m:Z

    .line 123
    .line 124
    :cond_6
    :goto_1
    return v1
.end method
