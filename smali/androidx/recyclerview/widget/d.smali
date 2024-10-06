.class public final Landroidx/recyclerview/widget/d;
.super Landroidx/recyclerview/widget/k$i;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/k$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/d$d;,
        Landroidx/recyclerview/widget/d$c;
    }
.end annotation


# static fields
.field public static final x:[I

.field public static final y:[I


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/drawable/StateListDrawable;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/drawable/StateListDrawable;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:I

.field public final i:I

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:Landroidx/recyclerview/widget/k;

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public final s:[I

.field public final t:[I

.field public final u:Landroid/animation/ValueAnimator;

.field public v:I

.field public final w:Landroidx/recyclerview/widget/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroidx/recyclerview/widget/d;->x:[I

    new-array v0, v2, [I

    sput-object v0, Landroidx/recyclerview/widget/d;->y:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/k;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/k$i;-><init>()V

    const/4 p7, 0x0

    iput p7, p0, Landroidx/recyclerview/widget/d;->l:I

    iput p7, p0, Landroidx/recyclerview/widget/d;->m:I

    iput-boolean p7, p0, Landroidx/recyclerview/widget/d;->o:Z

    iput-boolean p7, p0, Landroidx/recyclerview/widget/d;->p:Z

    iput p7, p0, Landroidx/recyclerview/widget/d;->q:I

    iput p7, p0, Landroidx/recyclerview/widget/d;->r:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->s:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->t:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->u:Landroid/animation/ValueAnimator;

    iput p7, p0, Landroidx/recyclerview/widget/d;->v:I

    new-instance v2, Landroidx/recyclerview/widget/d$a;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/d$a;-><init>(Landroidx/recyclerview/widget/d;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/d;->w:Landroidx/recyclerview/widget/d$a;

    new-instance v3, Landroidx/recyclerview/widget/d$b;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/d$b;-><init>(Landroidx/recyclerview/widget/d;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroidx/recyclerview/widget/d;->f:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/d;->d:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/d;->e:I

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/d;->h:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/d;->i:I

    iput p8, p0, Landroidx/recyclerview/widget/d;->a:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Landroidx/recyclerview/widget/d$c;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$c;-><init>(Landroidx/recyclerview/widget/d;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroidx/recyclerview/widget/d$d;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$d;-><init>(Landroidx/recyclerview/widget/d;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    if-ne p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_6

    .line 2
    iget-object p3, p2, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz p3, :cond_1

    const-string p4, "Cannot remove item decoration during a scroll  or layout"

    .line 3
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/k$j;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p2, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->o()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->requestLayout()V

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 5
    iget-object p3, p2, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    if-ne p3, p0, :cond_4

    const/4 p3, 0x0

    iput-object p3, p2, Landroidx/recyclerview/widget/k;->m:Landroidx/recyclerview/widget/k$m;

    .line 7
    :cond_4
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_5
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_6
    iput-object p1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    if-eqz p1, :cond_a

    .line 12
    iget-object p2, p1, Landroidx/recyclerview/widget/k;->j:Landroidx/recyclerview/widget/k$j;

    if-eqz p2, :cond_7

    const-string p3, "Cannot add item decoration during a scroll  or layout"

    .line 13
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/k$j;->a(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p1, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1, p7}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_8
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->o()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->requestLayout()V

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 18
    iget-object p2, p1, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    if-nez p2, :cond_9

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->a0:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/d;->f(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/d;->e(FF)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v2, p0, Landroidx/recyclerview/widget/d;->r:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->k:F

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iput v1, p0, Landroidx/recyclerview/widget/d;->r:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->j:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/d;->h(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/d;->f(FF)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/d;->e(FF)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    if-eqz v3, :cond_f

    .line 41
    .line 42
    :cond_1
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iput v1, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    int-to-float p1, p1

    .line 52
    iput p1, p0, Landroidx/recyclerview/widget/d;->k:F

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iput v2, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    int-to-float p1, p1

    .line 65
    iput p1, p0, Landroidx/recyclerview/widget/d;->j:F

    .line 66
    .line 67
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/d;->h(I)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v3, 0x0

    .line 77
    if-ne v0, v1, :cond_5

    .line 78
    .line 79
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 80
    .line 81
    if-ne v0, v2, :cond_5

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Landroidx/recyclerview/widget/d;->j:F

    .line 85
    .line 86
    iput p1, p0, Landroidx/recyclerview/widget/d;->k:F

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/d;->h(I)V

    .line 89
    .line 90
    .line 91
    iput v3, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne v0, v2, :cond_f

    .line 100
    .line 101
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 102
    .line 103
    if-ne v0, v2, :cond_f

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->i()V

    .line 106
    .line 107
    .line 108
    iget v0, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 109
    .line 110
    const/high16 v4, 0x40000000    # 2.0f

    .line 111
    .line 112
    iget v5, p0, Landroidx/recyclerview/widget/d;->a:I

    .line 113
    .line 114
    if-ne v0, v1, :cond_a

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-object v6, p0, Landroidx/recyclerview/widget/d;->t:[I

    .line 121
    .line 122
    aput v5, v6, v3

    .line 123
    .line 124
    iget v7, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 125
    .line 126
    sub-int/2addr v7, v5

    .line 127
    aput v7, v6, v1

    .line 128
    .line 129
    int-to-float v8, v5

    .line 130
    int-to-float v7, v7

    .line 131
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v7, 0x0

    .line 140
    int-to-float v7, v7

    .line 141
    sub-float/2addr v7, v0

    .line 142
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    cmpg-float v7, v7, v4

    .line 147
    .line 148
    if-gez v7, :cond_6

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    iget v7, p0, Landroidx/recyclerview/widget/d;->k:F

    .line 152
    .line 153
    iget-object v8, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 154
    .line 155
    invoke-virtual {v8}, Landroidx/recyclerview/widget/k;->computeHorizontalScrollRange()I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    iget-object v9, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 160
    .line 161
    invoke-virtual {v9}, Landroidx/recyclerview/widget/k;->computeHorizontalScrollOffset()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    iget v10, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 166
    .line 167
    aget v11, v6, v1

    .line 168
    .line 169
    aget v6, v6, v3

    .line 170
    .line 171
    sub-int/2addr v11, v6

    .line 172
    if-nez v11, :cond_7

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_7
    sub-float v6, v0, v7

    .line 176
    .line 177
    int-to-float v7, v11

    .line 178
    div-float/2addr v6, v7

    .line 179
    sub-int/2addr v8, v10

    .line 180
    int-to-float v7, v8

    .line 181
    mul-float v6, v6, v7

    .line 182
    .line 183
    float-to-int v6, v6

    .line 184
    add-int/2addr v9, v6

    .line 185
    if-ge v9, v8, :cond_8

    .line 186
    .line 187
    if-ltz v9, :cond_8

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_8
    :goto_1
    const/4 v6, 0x0

    .line 191
    :goto_2
    if-eqz v6, :cond_9

    .line 192
    .line 193
    iget-object v7, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 194
    .line 195
    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/k;->scrollBy(II)V

    .line 196
    .line 197
    .line 198
    :cond_9
    iput v0, p0, Landroidx/recyclerview/widget/d;->k:F

    .line 199
    .line 200
    :cond_a
    :goto_3
    iget v0, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 201
    .line 202
    if-ne v0, v2, :cond_f

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:[I

    .line 209
    .line 210
    aput v5, v0, v3

    .line 211
    .line 212
    iget v2, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 213
    .line 214
    sub-int/2addr v2, v5

    .line 215
    aput v2, v0, v1

    .line 216
    .line 217
    int-to-float v5, v5

    .line 218
    int-to-float v2, v2

    .line 219
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    const/4 v2, 0x0

    .line 228
    int-to-float v2, v2

    .line 229
    sub-float/2addr v2, p1

    .line 230
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    cmpg-float v2, v2, v4

    .line 235
    .line 236
    if-gez v2, :cond_b

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_b
    iget v2, p0, Landroidx/recyclerview/widget/d;->j:F

    .line 240
    .line 241
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 242
    .line 243
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->computeVerticalScrollRange()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    iget-object v5, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 248
    .line 249
    invoke-virtual {v5}, Landroidx/recyclerview/widget/k;->computeVerticalScrollOffset()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    iget v6, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 254
    .line 255
    aget v1, v0, v1

    .line 256
    .line 257
    aget v0, v0, v3

    .line 258
    .line 259
    sub-int/2addr v1, v0

    .line 260
    if-nez v1, :cond_c

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_c
    sub-float v0, p1, v2

    .line 264
    .line 265
    int-to-float v1, v1

    .line 266
    div-float/2addr v0, v1

    .line 267
    sub-int/2addr v4, v6

    .line 268
    int-to-float v1, v4

    .line 269
    mul-float v0, v0, v1

    .line 270
    .line 271
    float-to-int v0, v0

    .line 272
    add-int/2addr v5, v0

    .line 273
    if-ge v5, v4, :cond_d

    .line 274
    .line 275
    if-ltz v5, :cond_d

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_d
    :goto_4
    const/4 v0, 0x0

    .line 279
    :goto_5
    if-eqz v0, :cond_e

    .line 280
    .line 281
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 282
    .line 283
    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/k;->scrollBy(II)V

    .line 284
    .line 285
    .line 286
    :cond_e
    iput p1, p0, Landroidx/recyclerview/widget/d;->j:F

    .line 287
    .line 288
    :cond_f
    :goto_6
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_5

    .line 11
    .line 12
    iget v0, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/recyclerview/widget/d;->o:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget v0, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 34
    .line 35
    iget v3, p0, Landroidx/recyclerview/widget/d;->d:I

    .line 36
    .line 37
    sub-int/2addr v0, v3

    .line 38
    const/4 v4, 0x0

    .line 39
    div-int/lit8 v5, v4, 0x2

    .line 40
    .line 41
    rsub-int/lit8 v5, v5, 0x0

    .line 42
    .line 43
    iget-object v6, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 44
    .line 45
    invoke-virtual {v6, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    .line 47
    .line 48
    iget v4, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 49
    .line 50
    iget v7, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 51
    .line 52
    iget-object v8, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    invoke-virtual {v8, v2, v2, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 58
    .line 59
    sget-object v7, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v7, 0x1

    .line 66
    if-ne v4, v7, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v7, 0x0

    .line 70
    :goto_0
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    .line 74
    .line 75
    int-to-float v0, v3

    .line 76
    int-to-float v4, v5

    .line 77
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    .line 79
    .line 80
    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    .line 82
    const/high16 v4, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 91
    .line 92
    .line 93
    neg-int v0, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    int-to-float v3, v0

    .line 96
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    .line 101
    .line 102
    int-to-float v3, v5

    .line 103
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    .line 108
    .line 109
    neg-int v0, v0

    .line 110
    :goto_1
    int-to-float v0, v0

    .line 111
    neg-int v3, v5

    .line 112
    int-to-float v3, v3

    .line 113
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/d;->p:Z

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget v0, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 121
    .line 122
    iget v3, p0, Landroidx/recyclerview/widget/d;->h:I

    .line 123
    .line 124
    sub-int/2addr v0, v3

    .line 125
    const/4 v4, 0x0

    .line 126
    div-int/lit8 v5, v4, 0x2

    .line 127
    .line 128
    rsub-int/lit8 v5, v5, 0x0

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/recyclerview/widget/d;->f:Landroid/graphics/drawable/StateListDrawable;

    .line 131
    .line 132
    invoke-virtual {v6, v2, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    .line 134
    .line 135
    iget v3, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 136
    .line 137
    iget v4, p0, Landroidx/recyclerview/widget/d;->i:I

    .line 138
    .line 139
    iget-object v7, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    invoke-virtual {v7, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    .line 143
    .line 144
    int-to-float v2, v0

    .line 145
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    .line 150
    .line 151
    int-to-float v2, v5

    .line 152
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    .line 157
    .line 158
    neg-int v1, v5

    .line 159
    int-to-float v1, v1

    .line 160
    neg-int v0, v0

    .line 161
    int-to-float v0, v0

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-void

    .line 166
    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput p1, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 173
    .line 174
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:I

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/d;->h(I)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final e(FF)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/d;->m:I

    iget v1, p0, Landroidx/recyclerview/widget/d;->h:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p2, 0x0

    div-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

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
    iget v2, p0, Landroidx/recyclerview/widget/d;->d:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    div-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    int-to-float v0, v2

    .line 23
    cmpg-float p1, p1, v0

    .line 24
    .line 25
    if-gtz p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 29
    .line 30
    sub-int/2addr v0, v2

    .line 31
    int-to-float v0, v0

    .line 32
    cmpl-float p1, p1, v0

    .line 33
    .line 34
    if-ltz p1, :cond_2

    .line 35
    .line 36
    :goto_1
    const/4 p1, 0x0

    .line 37
    div-int/lit8 p1, p1, 0x2

    .line 38
    .line 39
    rsub-int/lit8 v0, p1, 0x0

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    cmpl-float v0, p2, v0

    .line 43
    .line 44
    if-ltz v0, :cond_2

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x0

    .line 47
    .line 48
    int-to-float p1, p1

    .line 49
    cmpg-float p1, p2, p1

    .line 50
    .line 51
    if-gtz p1, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_2
    return v1
.end method

.method public final g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->w:Landroidx/recyclerview/widget/d$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 7
    .line 8
    if-eq v2, v1, :cond_0

    .line 9
    .line 10
    sget-object v2, Landroidx/recyclerview/widget/d;->x:[I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/d;->w:Landroidx/recyclerview/widget/d$a;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->n:Landroidx/recyclerview/widget/k;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->i()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 34
    .line 35
    if-ne v2, v1, :cond_2

    .line 36
    .line 37
    if-eq p1, v1, :cond_2

    .line 38
    .line 39
    sget-object v1, Landroidx/recyclerview/widget/d;->y:[I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x4b0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    const/16 v0, 0x5dc

    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->g(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iput p1, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 56
    .line 57
    return-void
.end method

.method public final i()V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/d;->v:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/d;->v:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
