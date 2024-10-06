.class public final Lb/f;
.super Lb/p;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final d:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Lb/f;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lb/p;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Lb/p;Landroid/view/Window;)V

    iput-object p1, p0, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f030025

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Lb/p;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->b:Lb/p;

    .line 2
    iget v3, v1, Landroidx/appcompat/app/AlertController;->r:I

    invoke-virtual {v2, v3}, Lb/p;->setContentView(I)V

    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f080059

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f08004d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f08005c

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/high16 v10, 0x20000

    .line 4
    invoke-virtual {v2, v10, v10}, Landroid/view/Window;->setFlags(II)V

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v6, v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v8, v9}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0800b8

    .line 6
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v7, 0x102000b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->n:Landroid/widget/TextView;

    const/4 v9, -0x1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->n:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v13, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v7, 0x1020019

    .line 7
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/Button;

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->w:Landroidx/appcompat/app/AlertController$a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/Button;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x1

    :goto_1
    const v14, 0x102001a

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iput-object v14, v1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/Button;

    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/Button;

    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v14, v1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/Button;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v14, v1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v12, v12, 0x2

    :goto_2
    const v14, 0x102001b

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iput-object v14, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v12, v12, 0x4

    .line 8
    :goto_3
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    iget-object v14, v1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x7f030023

    invoke-virtual {v14, v15, v11, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v11, v11, Landroid/util/TypedValue;->data:I

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    const/4 v14, 0x2

    if-eqz v11, :cond_8

    if-ne v12, v13, :cond_6

    .line 9
    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/Button;

    goto :goto_5

    :cond_6
    if-ne v12, v14, :cond_7

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/Button;

    goto :goto_5

    :cond_7
    const/4 v11, 0x4

    if-ne v12, v11, :cond_8

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 10
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v12, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_a

    .line 11
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_a
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/view/View;

    const v11, 0x7f0800f4

    if-eqz v7, :cond_b

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v7, v9, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/view/View;

    invoke-virtual {v4, v12, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_b
    const v7, 0x1020006

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v13

    if-eqz v7, :cond_e

    iget-boolean v7, v1, Landroidx/appcompat/app/AlertController;->u:Z

    if-eqz v7, :cond_e

    const v7, 0x7f08003c

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->m:Landroid/widget/TextView;

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, v1, Landroidx/appcompat/app/AlertController;->j:I

    if-eqz v7, :cond_c

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_c
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_d

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_d
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->m:Landroid/widget/TextView;

    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget-object v15, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v7, v11, v12, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_e
    invoke-virtual {v2, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v7, v4

    :goto_7
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_f

    const/4 v3, 0x1

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_10

    const/4 v7, 0x1

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_11

    const/4 v6, 0x1

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    :goto_b
    if-nez v6, :cond_12

    const v9, 0x7f0800e8

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eqz v7, :cond_15

    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz v9, :cond_13

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_13
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_14

    const v9, 0x7f0800f3

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_16

    goto :goto_d

    :cond_15
    const v4, 0x7f0800e9

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    :goto_d
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v4, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v9, v4, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_17

    if-nez v7, :cond_1a

    .line 14
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    if-eqz v7, :cond_18

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    goto :goto_e

    :cond_18
    iget v10, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    if-eqz v6, :cond_19

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    goto :goto_f

    :cond_19
    iget v12, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I

    :goto_f
    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_1a
    if-nez v3, :cond_25

    .line 15
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v3, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    :goto_10
    if-eqz v3, :cond_25

    if-eqz v6, :cond_1c

    const/4 v8, 0x2

    :cond_1c
    or-int v4, v7, v8

    const v6, 0x7f0800b7

    .line 16
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0800b6

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_1f

    sget-object v9, Ly/m;->a:Ljava/util/WeakHashMap;

    if-lt v7, v8, :cond_1d

    .line 17
    invoke-static {v3, v4}, Lo/b;->f(Landroid/view/ViewGroup;I)V

    :cond_1d
    if-eqz v6, :cond_1e

    .line 18
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    if-eqz v2, :cond_25

    goto :goto_12

    :cond_1f
    if-eqz v6, :cond_20

    and-int/lit8 v3, v4, 0x1

    if-nez v3, :cond_20

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v6, 0x0

    :cond_20
    if-eqz v2, :cond_21

    and-int/lit8 v3, v4, 0x2

    if-nez v3, :cond_21

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v7, 0x0

    goto :goto_11

    :cond_21
    move-object v7, v2

    :goto_11
    if-nez v6, :cond_22

    if-eqz v7, :cond_25

    :cond_22
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v2, :cond_23

    new-instance v3, Lb/d;

    invoke-direct {v3, v6, v7}, Lb/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v3, Lb/e;

    invoke-direct {v3, v1, v6, v7}, Lb/e;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_23
    if-eqz v6, :cond_24

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    if-eqz v7, :cond_25

    move-object v2, v7

    :goto_12
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_25
    :goto_13
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v2, :cond_26

    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_26

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Landroidx/appcompat/app/AlertController;->q:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_26

    invoke-virtual {v2, v1, v13}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_26
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

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
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

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
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/p;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    .line 5
    .line 6
    iput-object p1, v0, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->m:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
