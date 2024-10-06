.class public final Lg/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static k:Lg/v0;

.field public static l:Lg/v0;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Ljava/lang/CharSequence;

.field public final d:I

.field public final e:Lg/v0$a;

.field public final f:Lg/v0$b;

.field public g:I

.field public h:I

.field public i:Lg/w0;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lg/v0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lg/v0$a;-><init>(Lg/v0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/v0;->e:Lg/v0$a;

    .line 10
    .line 11
    new-instance v0, Lg/v0$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lg/v0$b;-><init>(Lg/v0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lg/v0;->f:Lg/v0$b;

    .line 17
    .line 18
    iput-object p1, p0, Lg/v0;->b:Landroid/view/View;

    .line 19
    .line 20
    iput-object p2, p0, Lg/v0;->c:Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget-object v0, Ly/n;->a:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v1, 0x1c

    .line 35
    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    invoke-static {p2}, La0/g;->c(Landroid/view/ViewConfiguration;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    div-int/lit8 p2, p2, 0x2

    .line 48
    .line 49
    :goto_0
    iput p2, p0, Lg/v0;->d:I

    .line 50
    .line 51
    const p2, 0x7fffffff

    .line 52
    .line 53
    .line 54
    iput p2, p0, Lg/v0;->g:I

    .line 55
    .line 56
    iput p2, p0, Lg/v0;->h:I

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static b(Lg/v0;)V
    .locals 3

    .line 1
    sget-object v0, Lg/v0;->k:Lg/v0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lg/v0;->e:Lg/v0$a;

    .line 6
    .line 7
    iget-object v0, v0, Lg/v0;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    sput-object p0, Lg/v0;->k:Lg/v0;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-long v0, v0

    .line 21
    iget-object v2, p0, Lg/v0;->b:Landroid/view/View;

    .line 22
    .line 23
    iget-object p0, p0, Lg/v0;->e:Lg/v0$a;

    .line 24
    .line 25
    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lg/v0;->l:Lg/v0;

    .line 2
    .line 3
    iget-object v1, p0, Lg/v0;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, p0, :cond_3

    .line 7
    .line 8
    sput-object v2, Lg/v0;->l:Lg/v0;

    .line 9
    .line 10
    iget-object v0, p0, Lg/v0;->i:Lg/w0;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v3, v0, Lg/w0;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-nez v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v0, v0, Lg/w0;->a:Landroid/content/Context;

    .line 29
    .line 30
    const-string v4, "window"

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowManager;

    .line 37
    .line 38
    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iput-object v2, p0, Lg/v0;->i:Lg/w0;

    .line 42
    .line 43
    const v0, 0x7fffffff

    .line 44
    .line 45
    .line 46
    iput v0, p0, Lg/v0;->g:I

    .line 47
    .line 48
    iput v0, p0, Lg/v0;->h:I

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const-string v0, "TooltipCompatHandler"

    .line 55
    .line 56
    const-string v3, "sActiveHandler.mPopup == null"

    .line 57
    .line 58
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_2
    sget-object v0, Lg/v0;->k:Lg/v0;

    .line 62
    .line 63
    if-ne v0, p0, :cond_4

    .line 64
    .line 65
    invoke-static {v2}, Lg/v0;->b(Lg/v0;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lg/v0;->f:Lg/v0$b;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final c(Z)V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 1
    iget-object v1, v0, Lg/v0;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Lg/v0;->b(Lg/v0;)V

    sget-object v2, Lg/v0;->l:Lg/v0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/v0;->a()V

    :cond_1
    sput-object v0, Lg/v0;->l:Lg/v0;

    move/from16 v2, p1

    iput-boolean v2, v0, Lg/v0;->j:Z

    new-instance v2, Lg/w0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lg/w0;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg/v0;->i:Lg/w0;

    iget v3, v0, Lg/v0;->g:I

    iget v4, v0, Lg/v0;->h:I

    iget-boolean v5, v0, Lg/v0;->j:Z

    .line 3
    iget-object v6, v2, Lg/w0;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const-string v10, "window"

    .line 4
    iget-object v11, v2, Lg/w0;->a:Landroid/content/Context;

    if-eqz v7, :cond_5

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v11, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 7
    :cond_5
    :goto_2
    iget-object v7, v2, Lg/w0;->c:Landroid/widget/TextView;

    iget-object v12, v0, Lg/v0;->c:Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v2, Lg/w0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iput-object v12, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600d7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v12, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v14

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v13, v12, :cond_7

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    add-int v13, v4, v12

    sub-int/2addr v4, v12

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    const/4 v4, 0x0

    :goto_4
    const/16 v12, 0x31

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v5, :cond_8

    const v15, 0x7f0600da

    goto :goto_5

    :cond_8
    const v15, 0x7f0600d9

    :goto_5
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_9

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v14, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    :goto_6
    instance-of v9, v8, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_b

    instance-of v9, v8, Landroid/app/Activity;

    if-eqz v9, :cond_a

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v15

    goto :goto_7

    :cond_a
    check-cast v8, Landroid/content/ContextWrapper;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    goto :goto_6

    :cond_b
    :goto_7
    if-nez v15, :cond_c

    const-string v2, "TooltipPopup"

    const-string v3, "Cannot find app view"

    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto/16 :goto_c

    :cond_c
    iget-object v8, v2, Lg/w0;->e:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_e

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_e

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v14, "dimen"

    const-string v0, "android"

    move-object/from16 v17, v10

    const-string v10, "status_bar_height"

    invoke-virtual {v9, v10, v14, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v10, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v0, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9

    :cond_e
    move-object/from16 v17, v10

    const/4 v14, 0x0

    :goto_9
    iget-object v0, v2, Lg/w0;->g:[I

    invoke-virtual {v15, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v2, Lg/w0;->f:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, v2, v14

    aget v10, v0, v14

    sub-int/2addr v9, v10

    aput v9, v2, v14

    const/4 v10, 0x1

    aget v16, v2, v10

    aget v0, v0, v10

    sub-int v16, v16, v0

    aput v16, v2, v10

    add-int/2addr v9, v3

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v3, 0x2

    div-int/2addr v0, v3

    sub-int/2addr v9, v0

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aget v2, v2, v10

    add-int/2addr v4, v2

    sub-int/2addr v4, v12

    sub-int/2addr v4, v0

    add-int/2addr v2, v13

    add-int/2addr v2, v12

    if-eqz v5, :cond_f

    if-ltz v4, :cond_10

    goto :goto_b

    :cond_f
    add-int/2addr v0, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v0, v3, :cond_11

    :cond_10
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_a
    move-object/from16 v0, v17

    goto :goto_c

    :cond_11
    :goto_b
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_a

    .line 11
    :goto_c
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, v6, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v2, v0, Lg/v0;->j:Z

    if-eqz v2, :cond_12

    const-wide/16 v2, 0x9c4

    goto :goto_e

    .line 13
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_13

    .line 14
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xbb8

    goto :goto_d

    :cond_13
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3a98

    :goto_d
    sub-long v2, v4, v2

    :goto_e
    iget-object v4, v0, Lg/v0;->f:Lg/v0$b;

    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lg/v0;->i:Lg/w0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lg/v0;->j:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lg/v0;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "accessibility"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x7

    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    const/16 p1, 0xa

    .line 46
    .line 47
    if-eq v1, p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const p1, 0x7fffffff

    .line 51
    .line 52
    .line 53
    iput p1, p0, Lg/v0;->g:I

    .line 54
    .line 55
    iput p1, p0, Lg/v0;->h:I

    .line 56
    .line 57
    invoke-virtual {p0}, Lg/v0;->a()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lg/v0;->i:Lg/w0;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    float-to-int p1, p1

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    float-to-int p2, p2

    .line 81
    iget v1, p0, Lg/v0;->g:I

    .line 82
    .line 83
    sub-int v1, p1, v1

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v2, p0, Lg/v0;->d:I

    .line 90
    .line 91
    if-gt v1, v2, :cond_4

    .line 92
    .line 93
    iget v1, p0, Lg/v0;->h:I

    .line 94
    .line 95
    sub-int v1, p2, v1

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-gt v1, v2, :cond_4

    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iput p1, p0, Lg/v0;->g:I

    .line 106
    .line 107
    iput p2, p0, Lg/v0;->h:I

    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    :goto_0
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-static {p0}, Lg/v0;->b(Lg/v0;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/v0;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg/v0;->h:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/v0;->c(Z)V

    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lg/v0;->a()V

    return-void
.end method
