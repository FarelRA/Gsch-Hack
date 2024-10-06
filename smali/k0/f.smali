.class public final Lk0/f;
.super Lk0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/f$b;,
        Lk0/f$a;,
        Lk0/f$e;,
        Lk0/f$c;,
        Lk0/f$d;,
        Lk0/f$f;,
        Lk0/f$g;,
        Lk0/f$h;
    }
.end annotation


# static fields
.field public static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public c:Lk0/f$g;

.field public d:Landroid/graphics/PorterDuffColorFilter;

.field public e:Landroid/graphics/ColorFilter;

.field public f:Z

.field public g:Z

.field public final h:[F

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lk0/f;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk0/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/f;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lk0/f;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lk0/f;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lk0/f;->j:Landroid/graphics/Rect;

    new-instance v0, Lk0/f$g;

    invoke-direct {v0}, Lk0/f$g;-><init>()V

    iput-object v0, p0, Lk0/f;->c:Lk0/f$g;

    return-void
.end method

.method public constructor <init>(Lk0/f$g;)V
    .locals 1

    invoke-direct {p0}, Lk0/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/f;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lk0/f;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lk0/f;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lk0/f;->j:Landroid/graphics/Rect;

    iput-object p1, p0, Lk0/f;->c:Lk0/f$g;

    iget-object v0, p1, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Lk0/f;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk0/e;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v3, v1, Lk0/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v0, v1, Lk0/f;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, v1, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    move-object v4, v0

    iget-object v0, v1, Lk0/f;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v1, Lk0/f;->h:[F

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v6, 0x0

    aget v0, v5, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v7, 0x4

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x1

    aget v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-nez v9, :cond_3

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    const/16 v7, 0x800

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v9, :cond_14

    if-gtz v5, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v0, v3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v2, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Lk0/f;->isAutoMirrored()Z

    move-result v12

    const/4 v15, 0x0

    if-eqz v12, :cond_9

    const/16 v12, 0x17

    if-lt v0, v12, :cond_6

    .line 2
    invoke-static/range {p0 .. p0}, Lo/b;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    goto :goto_1

    :cond_6
    sget-boolean v0, Ls/a;->d:Z

    const-string v12, "DrawableCompat"

    if-nez v0, :cond_7

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v13, "getLayoutDirection"

    new-array v14, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ls/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v13, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v8, Ls/a;->d:Z

    :cond_7
    sget-object v0, Ls/a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    :try_start_1
    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v13, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v15, Ls/a;->c:Ljava/lang/reflect/Method;

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-ne v0, v8, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v10}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_a
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 4
    iget-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_c

    .line 5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_b

    iget-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v5, v10, :cond_b

    const/4 v10, 0x1

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_d

    .line 6
    :cond_c
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    iput-boolean v8, v0, Lk0/f$g;->k:Z

    .line 7
    :cond_d
    iget-boolean v0, v1, Lk0/f;->g:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 8
    iget-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v10, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v10, Landroid/graphics/Canvas;

    iget-object v11, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 10
    iget-object v13, v12, Lk0/f$f;->g:Lk0/f$c;

    .line 11
    sget-object v14, Lk0/f$f;->p:Landroid/graphics/Matrix;

    move-object v11, v15

    move-object v15, v10

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Lk0/f$f;->a(Lk0/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto :goto_5

    :cond_e
    move-object v11, v15

    .line 12
    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 13
    iget-boolean v10, v0, Lk0/f$g;->k:Z

    if-nez v10, :cond_f

    .line 14
    iget-object v10, v0, Lk0/f$g;->g:Landroid/content/res/ColorStateList;

    iget-object v12, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    if-ne v10, v12, :cond_f

    iget-object v10, v0, Lk0/f$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v12, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v10, v12, :cond_f

    iget-boolean v10, v0, Lk0/f$g;->j:Z

    iget-boolean v12, v0, Lk0/f$g;->e:Z

    if-ne v10, v12, :cond_f

    iget v10, v0, Lk0/f$g;->i:I

    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    invoke-virtual {v0}, Lk0/f$f;->getRootAlpha()I

    move-result v0

    if-ne v10, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_10

    .line 15
    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 16
    iget-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    .line 17
    invoke-virtual {v10, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v10, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 18
    iget-object v13, v12, Lk0/f$f;->g:Lk0/f$c;

    .line 19
    sget-object v14, Lk0/f$f;->p:Landroid/graphics/Matrix;

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Lk0/f$f;->a(Lk0/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 20
    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 21
    iget-object v5, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 22
    iput-object v5, v0, Lk0/f$g;->g:Landroid/content/res/ColorStateList;

    iget-object v5, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v5, v0, Lk0/f$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v5, v0, Lk0/f$g;->b:Lk0/f$f;

    invoke-virtual {v5}, Lk0/f$f;->getRootAlpha()I

    move-result v5

    iput v5, v0, Lk0/f$g;->i:I

    iget-boolean v5, v0, Lk0/f$g;->e:Z

    iput-boolean v5, v0, Lk0/f$g;->j:Z

    iput-boolean v6, v0, Lk0/f$g;->k:Z

    .line 23
    :cond_10
    :goto_5
    iget-object v0, v1, Lk0/f;->c:Lk0/f$g;

    .line 24
    iget-object v5, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 25
    invoke-virtual {v5}, Lk0/f$f;->getRootAlpha()I

    move-result v5

    const/16 v9, 0xff

    if-ge v5, v9, :cond_11

    const/4 v6, 0x1

    :cond_11
    if-nez v6, :cond_12

    if-nez v4, :cond_12

    move-object v15, v11

    goto :goto_6

    .line 26
    :cond_12
    iget-object v5, v0, Lk0/f$g;->l:Landroid/graphics/Paint;

    if-nez v5, :cond_13

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lk0/f$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_13
    iget-object v5, v0, Lk0/f$g;->l:Landroid/graphics/Paint;

    iget-object v6, v0, Lk0/f$g;->b:Lk0/f$f;

    invoke-virtual {v6}, Lk0/f$f;->getRootAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lk0/f$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v15, v0, Lk0/f$g;->l:Landroid/graphics/Paint;

    .line 27
    :goto_6
    iget-object v0, v0, Lk0/f$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v11, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 28
    invoke-virtual {v2, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_14
    :goto_7
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 11
    .line 12
    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 13
    .line 14
    invoke-virtual {v0}, Lk0/f$f;->getRootAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lk0/f;->c:Lk0/f$g;

    invoke-virtual {v1}, Lk0/f$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lk0/f$h;

    iget-object v1, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lk0/f$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    invoke-virtual {p0}, Lk0/f;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lk0/f$g;->a:I

    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    iget v0, v0, Lk0/f$f;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    iget v0, v0, Lk0/f$f;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lk0/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 2
    :cond_0
    iget-object v5, v0, Lk0/f;->c:Lk0/f$g;

    new-instance v6, Lk0/f$f;

    invoke-direct {v6}, Lk0/f$f;-><init>()V

    iput-object v6, v5, Lk0/f$g;->b:Lk0/f$f;

    sget-object v6, Lk0/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3
    iget-object v7, v0, Lk0/f;->c:Lk0/f$g;

    iget-object v8, v7, Lk0/f$g;->b:Lk0/f$f;

    const-string v9, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v6, v2, v9, v10, v11}, Lq/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v9, v15, :cond_2

    if-eq v9, v14, :cond_3

    if-eq v9, v13, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 5
    :cond_3
    :goto_0
    iput-object v12, v7, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-eqz v12, :cond_4

    iput-object v12, v7, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    :cond_4
    iget-boolean v12, v7, Lk0/f$g;->e:Z

    const-string v10, "autoMirrored"

    .line 6
    invoke-static {v2, v10}, Lq/f;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 7
    :goto_1
    iput-boolean v12, v7, Lk0/f$g;->e:Z

    iget v7, v8, Lk0/f$f;->j:F

    const-string v10, "viewportWidth"

    const/4 v12, 0x7

    invoke-static {v6, v2, v10, v12, v7}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Lk0/f$f;->j:F

    iget v7, v8, Lk0/f$f;->k:F

    const-string v10, "viewportHeight"

    const/16 v14, 0x8

    invoke-static {v6, v2, v10, v14, v7}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Lk0/f$f;->k:F

    iget v10, v8, Lk0/f$f;->j:F

    const/16 v16, 0x0

    cmpg-float v10, v10, v16

    if-lez v10, :cond_22

    cmpg-float v7, v7, v16

    if-lez v7, :cond_21

    iget v7, v8, Lk0/f$f;->h:F

    invoke-virtual {v6, v15, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lk0/f$f;->h:F

    iget v7, v8, Lk0/f$f;->i:F

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lk0/f$f;->i:F

    iget v12, v8, Lk0/f$f;->h:F

    cmpg-float v12, v12, v16

    if-lez v12, :cond_20

    cmpg-float v7, v7, v16

    if-lez v7, :cond_1f

    invoke-virtual {v8}, Lk0/f$f;->getAlpha()F

    move-result v7

    const-string v12, "alpha"

    const/4 v13, 0x4

    invoke-static {v6, v2, v12, v13, v7}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    invoke-virtual {v8, v7}, Lk0/f$f;->setAlpha(F)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    iput-object v12, v8, Lk0/f$f;->m:Ljava/lang/String;

    iget-object v13, v8, Lk0/f$f;->o:Lk/b;

    invoke-virtual {v13, v12, v8}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lk0/f;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Lk0/f$g;->a:I

    iput-boolean v9, v5, Lk0/f$g;->k:Z

    .line 9
    iget-object v6, v0, Lk0/f;->c:Lk0/f$g;

    iget-object v8, v6, Lk0/f$g;->b:Lk0/f$f;

    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v13, v8, Lk0/f$f;->g:Lk0/f$c;

    invoke-virtual {v12, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    const/16 v17, 0x1

    :goto_2
    if-eq v13, v9, :cond_1d

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v11, :cond_7

    if-eq v13, v15, :cond_1d

    :cond_7
    const-string v14, "group"

    if-ne v13, v10, :cond_1b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Lk0/f$c;

    const-string v9, "path"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "pathData"

    iget-object v7, v8, Lk0/f$f;->o:Lk/b;

    if-eqz v9, :cond_12

    new-instance v9, Lk0/f$b;

    invoke-direct {v9}, Lk0/f$b;-><init>()V

    .line 10
    sget-object v13, Lk0/a;->c:[I

    invoke-static {v1, v4, v3, v13}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 11
    invoke-static {v2, v10}, Lq/f;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    move-object/from16 v19, v8

    goto/16 :goto_5

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    iput-object v14, v9, Lk0/f$e;->b:Ljava/lang/String;

    :cond_9
    const/4 v10, 0x2

    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-static {v14}, Lr/b;->c(Ljava/lang/String;)[Lr/b$a;

    move-result-object v10

    iput-object v10, v9, Lk0/f$e;->a:[Lr/b$a;

    :cond_a
    const-string v10, "fillColor"

    const/4 v14, 0x1

    invoke-static {v13, v2, v4, v10, v14}, Lq/f;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lq/b;

    move-result-object v10

    iput-object v10, v9, Lk0/f$b;->f:Lq/b;

    iget v10, v9, Lk0/f$b;->i:F

    const-string v14, "fillAlpha"

    move-object/from16 v19, v8

    const/16 v8, 0xc

    invoke-static {v13, v2, v14, v8, v10}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->i:F

    const-string v8, "strokeLineCap"

    const/16 v10, 0x8

    const/4 v14, -0x1

    invoke-static {v13, v2, v8, v10, v14}, Lq/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    iget-object v14, v9, Lk0/f$b;->m:Landroid/graphics/Paint$Cap;

    if-eqz v8, :cond_d

    const/4 v10, 0x1

    if-eq v8, v10, :cond_c

    const/4 v10, 0x2

    if-eq v8, v10, :cond_b

    goto :goto_3

    .line 12
    :cond_b
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_c
    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_d
    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 13
    :goto_3
    iput-object v14, v9, Lk0/f$b;->m:Landroid/graphics/Paint$Cap;

    const-string v8, "strokeLineJoin"

    const/16 v10, 0x9

    const/4 v14, -0x1

    invoke-static {v13, v2, v8, v10, v14}, Lq/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    iget-object v10, v9, Lk0/f$b;->n:Landroid/graphics/Paint$Join;

    if-eqz v8, :cond_10

    const/4 v14, 0x1

    if-eq v8, v14, :cond_f

    const/4 v14, 0x2

    if-eq v8, v14, :cond_e

    goto :goto_4

    .line 14
    :cond_e
    sget-object v10, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_f
    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_10
    sget-object v10, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 15
    :goto_4
    iput-object v10, v9, Lk0/f$b;->n:Landroid/graphics/Paint$Join;

    iget v8, v9, Lk0/f$b;->o:F

    const-string v10, "strokeMiterLimit"

    const/16 v14, 0xa

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->o:F

    const-string v8, "strokeColor"

    const/4 v10, 0x3

    invoke-static {v13, v2, v4, v8, v10}, Lq/f;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lq/b;

    move-result-object v8

    iput-object v8, v9, Lk0/f$b;->d:Lq/b;

    iget v8, v9, Lk0/f$b;->g:F

    const-string v10, "strokeAlpha"

    const/16 v14, 0xb

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->g:F

    iget v8, v9, Lk0/f$b;->e:F

    const-string v10, "strokeWidth"

    const/4 v14, 0x4

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->e:F

    iget v8, v9, Lk0/f$b;->k:F

    const-string v10, "trimPathEnd"

    const/4 v14, 0x6

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->k:F

    iget v8, v9, Lk0/f$b;->l:F

    const-string v10, "trimPathOffset"

    const/4 v14, 0x7

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->l:F

    iget v8, v9, Lk0/f$b;->j:F

    const-string v10, "trimPathStart"

    const/4 v14, 0x5

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    iput v8, v9, Lk0/f$b;->j:F

    iget v8, v9, Lk0/f$b;->h:I

    const-string v10, "fillType"

    const/16 v14, 0xd

    invoke-static {v13, v2, v10, v14, v8}, Lq/f;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    iput v8, v9, Lk0/f$b;->h:I

    .line 16
    :goto_5
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget-object v8, v15, Lk0/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lk0/f$e;->getPathName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v9}, Lk0/f$e;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v7, v6, Lk0/f$g;->a:I

    iget v8, v9, Lk0/f$e;->c:I

    or-int/2addr v7, v8

    iput v7, v6, Lk0/f$g;->a:I

    const/4 v1, 0x7

    const/4 v9, 0x0

    const/4 v14, 0x4

    const/16 v16, -0x1

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_12
    move-object/from16 v19, v8

    const/16 v9, 0x9

    const/16 v16, -0x1

    const-string v8, "clip-path"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    new-instance v8, Lk0/f$a;

    invoke-direct {v8}, Lk0/f$a;-><init>()V

    .line 18
    invoke-static {v2, v10}, Lq/f;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_6

    :cond_13
    sget-object v10, Lk0/a;->d:[I

    invoke-static {v1, v4, v3, v10}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v13, 0x0

    .line 19
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    iput-object v14, v8, Lk0/f$e;->b:Ljava/lang/String;

    :cond_14
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-static {v14}, Lr/b;->c(Ljava/lang/String;)[Lr/b$a;

    move-result-object v13

    iput-object v13, v8, Lk0/f$e;->a:[Lr/b$a;

    .line 20
    :cond_15
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    :goto_6
    iget-object v10, v15, Lk0/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lk0/f$e;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Lk0/f$e;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v7, v6, Lk0/f$g;->a:I

    iget v8, v8, Lk0/f$e;->c:I

    or-int/2addr v7, v8

    iput v7, v6, Lk0/f$g;->a:I

    goto/16 :goto_7

    :cond_17
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Lk0/f$c;

    invoke-direct {v8}, Lk0/f$c;-><init>()V

    .line 22
    sget-object v10, Lk0/a;->b:[I

    invoke-static {v1, v4, v3, v10}, Lq/f;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 23
    iget v13, v8, Lk0/f$c;->c:F

    const-string v14, "rotation"

    const/4 v9, 0x5

    invoke-static {v10, v2, v14, v9, v13}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v8, Lk0/f$c;->c:F

    iget v13, v8, Lk0/f$c;->d:F

    const/4 v14, 0x1

    invoke-virtual {v10, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v8, Lk0/f$c;->d:F

    iget v13, v8, Lk0/f$c;->e:F

    const/4 v9, 0x2

    invoke-virtual {v10, v9, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v8, Lk0/f$c;->e:F

    iget v13, v8, Lk0/f$c;->f:F

    const-string v9, "scaleX"

    const/4 v14, 0x3

    invoke-static {v10, v2, v9, v14, v13}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Lk0/f$c;->f:F

    iget v9, v8, Lk0/f$c;->g:F

    const-string v13, "scaleY"

    const/4 v14, 0x4

    invoke-static {v10, v2, v13, v14, v9}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Lk0/f$c;->g:F

    iget v9, v8, Lk0/f$c;->h:F

    const-string v13, "translateX"

    const/4 v1, 0x6

    invoke-static {v10, v2, v13, v1, v9}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Lk0/f$c;->h:F

    iget v9, v8, Lk0/f$c;->i:F

    const-string v13, "translateY"

    const/4 v1, 0x7

    invoke-static {v10, v2, v13, v1, v9}, Lq/f;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Lk0/f$c;->i:F

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    iput-object v13, v8, Lk0/f$c;->l:Ljava/lang/String;

    :cond_18
    invoke-virtual {v8}, Lk0/f$c;->c()V

    .line 24
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    iget-object v10, v15, Lk0/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lk0/f$c;->getGroupName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v8}, Lk0/f$c;->getGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v7, v6, Lk0/f$g;->a:I

    iget v8, v8, Lk0/f$c;->k:I

    or-int/2addr v7, v8

    iput v7, v6, Lk0/f$g;->a:I

    goto :goto_8

    :cond_1a
    :goto_7
    const/4 v1, 0x7

    const/4 v9, 0x0

    const/4 v14, 0x4

    :goto_8
    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x1

    goto :goto_9

    :cond_1b
    move-object/from16 v19, v8

    const/4 v1, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v16, -0x1

    if-ne v13, v8, :cond_1c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_1c
    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move-object/from16 v1, p1

    move-object/from16 v8, v19

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_1d
    if-nez v17, :cond_1e

    .line 26
    iget-object v1, v5, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lk0/f;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 27
    :cond_1e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_1f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 11
    .line 12
    iget-boolean v0, v0, Lk0/f$g;->e:Z

    .line 13
    .line 14
    return v0
.end method

.method public final isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 21
    .line 22
    iget-object v1, v0, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lk0/f$f;->g:Lk0/f$c;

    .line 27
    .line 28
    invoke-virtual {v1}, Lk0/f$c;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 47
    .line 48
    iget-object v0, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lk0/f;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lk0/f$g;

    iget-object v1, p0, Lk0/f;->c:Lk0/f$g;

    invoke-direct {v0, v1}, Lk0/f$g;-><init>(Lk0/f$g;)V

    iput-object v0, p0, Lk0/f;->c:Lk0/f$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/f;->f:Z

    :cond_1
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 11
    .line 12
    iget-object v1, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Lk0/f;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v3, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 34
    .line 35
    iget-object v4, v3, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-object v4, v3, Lk0/f$f;->g:Lk0/f$c;

    .line 40
    .line 41
    invoke-virtual {v4}, Lk0/f$c;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_2
    iget-object v3, v3, Lk0/f$f;->n:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, v0, Lk0/f$g;->b:Lk0/f$f;

    .line 60
    .line 61
    iget-object v3, v3, Lk0/f$f;->g:Lk0/f$c;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lk0/f$c;->b([I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-boolean v3, v0, Lk0/f$g;->k:Z

    .line 68
    .line 69
    or-int/2addr v3, p1

    .line 70
    iput-boolean v3, v0, Lk0/f$g;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v2, v1

    .line 79
    :goto_1
    return v2
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    invoke-virtual {v0}, Lk0/f$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    iget-object v0, v0, Lk0/f$g;->b:Lk0/f$f;

    invoke-virtual {v0, p1}, Lk0/f$f;->setRootAlpha(I)V

    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 10
    .line 11
    iput-boolean p1, v0, Lk0/f$g;->e:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Lk0/f;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ls/a;->c(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk0/f;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 10
    .line 11
    iget-object v1, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    iget-object v0, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lk0/f;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/f;->c:Lk0/f$g;

    .line 10
    .line 11
    iget-object v1, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Lk0/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iget-object v0, v0, Lk0/f$g;->c:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lk0/f;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lk0/f;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lk0/f;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lk0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
