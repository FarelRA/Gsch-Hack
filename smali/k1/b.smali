.class public final Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Landroid/widget/FrameLayout;

.field public f:I

.field public g:Landroid/animation/Animator;

.field public final h:F

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Z

.field public m:Lg/x;

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:Z

.field public q:Lg/x;

.field public r:I

.field public s:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lk1/b;->a:Landroid/content/Context;

    iput-object p1, p0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lk1/b;->h:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;I)V
    .locals 8

    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lk1/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lg0/a;

    invoke-direct {v0, v2}, Lg0/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v4, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk1/b;->b()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    iget-object p2, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p1, p0, Lk1/b;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lk1/b;->f:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_2
    iget-object p1, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lk1/b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lk1/b;->d:I

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lk1/b;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/ArrayList;ZLandroid/widget/TextView;III)V
    .locals 4

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    if-eq p4, p6, :cond_1

    .line 7
    .line 8
    if-ne p4, p5, :cond_4

    .line 9
    .line 10
    :cond_1
    const/4 p2, 0x0

    .line 11
    const/4 p5, 0x1

    .line 12
    if-ne p6, p4, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 v0, 0x0

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_3
    const/4 v0, 0x0

    .line 24
    :goto_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 25
    .line 26
    new-array v3, p5, [F

    .line 27
    .line 28
    aput v0, v3, p2

    .line 29
    .line 30
    invoke-static {p3, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v2, 0xa7

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lw0/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    if-ne p6, p4, :cond_4

    .line 48
    .line 49
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 50
    .line 51
    const/4 p6, 0x2

    .line 52
    new-array p6, p6, [F

    .line 53
    .line 54
    iget v0, p0, Lk1/b;->h:F

    .line 55
    .line 56
    neg-float v0, v0

    .line 57
    aput v0, p6, p2

    .line 58
    .line 59
    aput v1, p6, p5

    .line 60
    .line 61
    invoke-static {p3, p4, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-wide/16 p3, 0xd9

    .line 66
    .line 67
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    sget-object p3, Lw0/a;->d:Lf0/c;

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Lk1/b;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lk1/b;->m:Lg/x;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lk1/b;->k:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    return v1
.end method

.method public final f(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lk1/b;->q:Lg/x;

    return-object p1

    :cond_1
    iget-object p1, p0, Lk1/b;->m:Lg/x;

    return-object p1
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lk1/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lk1/b;->c()V

    iget v1, p0, Lk1/b;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lk1/b;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk1/b;->o:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lk1/b;->j:I

    :cond_1
    iget v1, p0, Lk1/b;->i:I

    iget v2, p0, Lk1/b;->j:I

    iget-object v3, p0, Lk1/b;->m:Lg/x;

    invoke-virtual {p0, v3, v0}, Lk1/b;->i(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lk1/b;->j(IIZ)V

    return-void
.end method

.method public final h(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :cond_2
    :goto_0
    const/16 p2, 0x8

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    iget-object v1, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget v0, p0, Lk1/b;->f:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Lk1/b;->f:I

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lk1/b;->e:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lk1/b;->d:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    iput p1, p0, Lk1/b;->d:I

    .line 42
    .line 43
    iget-object v0, p0, Lk1/b;->c:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_5
    return-void
.end method

.method public final i(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lk1/b;->j:I

    .line 18
    .line 19
    iget v1, p0, Lk1/b;->i:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method public final j(IIZ)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move v8, p1

    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    if-eqz v10, :cond_0

    .line 9
    .line 10
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v12, v7, Lk1/b;->g:Landroid/animation/Animator;

    .line 16
    .line 17
    new-instance v13, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, v7, Lk1/b;->p:Z

    .line 23
    .line 24
    iget-object v3, v7, Lk1/b;->q:Lg/x;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, v13

    .line 29
    move v5, p1

    .line 30
    move/from16 v6, p2

    .line 31
    .line 32
    invoke-virtual/range {v0 .. v6}, Lk1/b;->d(Ljava/util/ArrayList;ZLandroid/widget/TextView;III)V

    .line 33
    .line 34
    .line 35
    iget-boolean v2, v7, Lk1/b;->l:Z

    .line 36
    .line 37
    iget-object v3, v7, Lk1/b;->m:Lg/x;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-virtual/range {v0 .. v6}, Lk1/b;->d(Ljava/util/ArrayList;ZLandroid/widget/TextView;III)V

    .line 41
    .line 42
    .line 43
    invoke-static {v12, v13}, Lm1/h;->D(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lk1/b;->f(I)Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v9}, Lk1/b;->f(I)Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Lk1/b$a;

    .line 55
    .line 56
    move-object v0, v6

    .line 57
    move-object v1, p0

    .line 58
    move/from16 v2, p2

    .line 59
    .line 60
    move v4, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lk1/b$a;-><init>(Lk1/b;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v12, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    if-ne v8, v9, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-eqz v9, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v9}, Lk1/b;->f(I)Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eqz v8, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lk1/b;->f(I)Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    if-ne v8, v1, :cond_3

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iput v9, v7, Lk1/b;->i:I

    .line 110
    .line 111
    :goto_0
    iget-object v0, v7, Lk1/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v10, v11}, Lcom/google/android/material/textfield/TextInputLayout;->n(ZZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
