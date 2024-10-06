.class public final Le1/e;
.super Le1/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lf1/h;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le1/d;-><init>(Lf1/h;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    return-void
.end method


# virtual methods
.method public final c()F
    .locals 1

    iget-object v0, p0, Le1/d;->n:Lf1/h;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/d;->o:Lh1/b;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Le1/e;->c()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Le1/d;->j:F

    .line 24
    .line 25
    add-float/2addr v0, v1

    .line 26
    sget v1, Lh1/a;->c:I

    .line 27
    .line 28
    float-to-double v1, v0

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    double-to-int v1, v1

    .line 34
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 35
    .line 36
    mul-float v0, v0, v2

    .line 37
    .line 38
    float-to-double v2, v0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    double-to-int v0, v2

    .line 44
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Le1/d;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g([I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Le1/d;->n:Lf1/h;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Le1/d;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le1/d;->j:F

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Le1/d;->i:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final h(FFF)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    iget-object v2, p0, Le1/d;->n:Lf1/h;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p3}, Le1/e;->l(FF)Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    sget-object v3, Le1/d;->t:[I

    .line 24
    .line 25
    invoke-virtual {v1, v3, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Le1/e;->l(FF)Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    sget-object v3, Le1/d;->u:[I

    .line 33
    .line 34
    invoke-virtual {v1, v3, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Le1/e;->l(FF)Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    sget-object v3, Le1/d;->v:[I

    .line 42
    .line 43
    invoke-virtual {v1, v3, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Le1/e;->l(FF)Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object p3, Le1/d;->w:[I

    .line 51
    .line 52
    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance p3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    new-array v4, v3, [F

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput p1, v4, v5

    .line 70
    .line 71
    const-string p1, "elevation"

    .line 72
    .line 73
    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x16

    .line 87
    .line 88
    const-wide/16 v6, 0x64

    .line 89
    .line 90
    if-lt v0, p1, :cond_1

    .line 91
    .line 92
    const/16 p1, 0x18

    .line 93
    .line 94
    if-gt v0, p1, :cond_1

    .line 95
    .line 96
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 97
    .line 98
    new-array v0, v3, [F

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    aput v4, v0, v5

    .line 105
    .line 106
    invoke-static {v2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 118
    .line 119
    new-array v0, v3, [F

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    aput v3, v0, v5

    .line 123
    .line 124
    invoke-static {v2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-array p1, v5, [Landroid/animation/Animator;

    .line 136
    .line 137
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, [Landroid/animation/Animator;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Le1/d;->s:Lf0/a;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    .line 150
    .line 151
    sget-object p1, Le1/d;->x:[I

    .line 152
    .line 153
    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3, v3}, Le1/e;->l(FF)Landroid/animation/AnimatorSet;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object p2, Le1/d;->y:[I

    .line 161
    .line 162
    invoke-virtual {v1, p2, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    iget-object p1, p0, Le1/d;->o:Lh1/b;

    .line 169
    .line 170
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 173
    .line 174
    iget-boolean p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Z

    .line 175
    .line 176
    if-nez p1, :cond_2

    .line 177
    .line 178
    return-void

    .line 179
    :cond_2
    invoke-virtual {p0}, Le1/d;->k()V

    .line 180
    .line 181
    .line 182
    const/4 p1, 0x0

    .line 183
    throw p1
.end method

.method public final i(Landroid/graphics/Rect;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le1/d;->o:Lh1/b;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    move-object v3, v1

    .line 23
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/InsetDrawable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-static {v1, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/InsetDrawable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final l(FF)Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "elevation"

    iget-object v4, p0, Le1/d;->n:Lf1/h;

    invoke-static {v4, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v1, [F

    aput p2, v1, v3

    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Le1/d;->s:Lf0/a;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
