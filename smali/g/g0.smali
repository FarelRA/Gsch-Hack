.class public Lg/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g0$c;,
        Lg/g0$d;,
        Lg/g0$e;,
        Lg/g0$a;,
        Lg/g0$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/reflect/Method;

.field public static final B:Ljava/lang/reflect/Method;

.field public static final C:Ljava/lang/reflect/Method;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/widget/ListAdapter;

.field public d:Lg/c0;

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:I

.field public o:Lg/g0$b;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public final r:Lg/g0$e;

.field public final s:Lg/g0$d;

.field public final t:Lg/g0$c;

.field public final u:Lg/g0$a;

.field public final v:Landroid/os/Handler;

.field public final w:Landroid/graphics/Rect;

.field public x:Landroid/graphics/Rect;

.field public y:Z

.field public final z:Lg/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "ListPopupWindow"

    const-class v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "setClipToScreenEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lg/g0;->A:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lg/g0;->B:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v4, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    const-string v4, "setEpicenterBounds"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lg/g0;->C:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lg/g0;->e:I

    iput v0, p0, Lg/g0;->f:I

    const/16 v0, 0x3ea

    iput v0, p0, Lg/g0;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lg/g0;->m:I

    const v1, 0x7fffffff

    iput v1, p0, Lg/g0;->n:I

    new-instance v1, Lg/g0$e;

    invoke-direct {v1, p0}, Lg/g0$e;-><init>(Lg/g0;)V

    iput-object v1, p0, Lg/g0;->r:Lg/g0$e;

    new-instance v1, Lg/g0$d;

    invoke-direct {v1, p0}, Lg/g0$d;-><init>(Lg/g0;)V

    iput-object v1, p0, Lg/g0;->s:Lg/g0$d;

    new-instance v1, Lg/g0$c;

    invoke-direct {v1, p0}, Lg/g0$c;-><init>(Lg/g0;)V

    iput-object v1, p0, Lg/g0;->t:Lg/g0$c;

    new-instance v1, Lg/g0$a;

    invoke-direct {v1, p0}, Lg/g0$a;-><init>(Lg/g0;)V

    iput-object v1, p0, Lg/g0;->u:Lg/g0$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/g0;->w:Landroid/graphics/Rect;

    iput-object p1, p0, Lg/g0;->b:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lg/g0;->v:Landroid/os/Handler;

    sget-object v1, Lm1/h;->u:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lg/g0;->g:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lg/g0;->h:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lg/g0;->j:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lg/o;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lg/g0;->z:Lg/o;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 14

    .line 1
    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    iget-object v1, p0, Lg/g0;->z:Lg/o;

    const/4 v2, 0x1

    iget-object v3, p0, Lg/g0;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/g0;->y:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Lg/g0;->d(Landroid/content/Context;Z)Lg/c0;

    move-result-object v0

    iput-object v0, p0, Lg/g0;->d:Lg/c0;

    iget-object v4, p0, Lg/g0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    iget-object v4, p0, Lg/g0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    new-instance v4, Lg/f0;

    invoke-direct {v4, p0}, Lg/f0;-><init>(Lg/g0;)V

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    iget-object v4, p0, Lg/g0;->t:Lg/g0$c;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lg/g0;->w:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iget-boolean v7, p0, Lg/g0;->j:Z

    if-nez v7, :cond_2

    neg-int v0, v0

    iput v0, p0, Lg/g0;->h:I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 2
    :goto_2
    iget-object v8, p0, Lg/g0;->p:Landroid/view/View;

    .line 3
    iget v9, p0, Lg/g0;->h:I

    const-string v10, "ListPopupWindow"

    .line 4
    sget-object v11, Lg/g0;->B:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_4

    const/4 v12, 0x3

    :try_start_0
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v12, v7

    invoke-virtual {v11, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1, v8, v9}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    :goto_3
    const/4 v8, -0x1

    .line 5
    iget v9, p0, Lg/g0;->e:I

    const/4 v11, -0x2

    if-ne v9, v8, :cond_5

    add-int/2addr v0, v6

    goto :goto_6

    :cond_5
    iget v12, p0, Lg/g0;->f:I

    if-eq v12, v11, :cond_7

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v8, :cond_6

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v5

    sub-int/2addr v3, v12

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v5

    sub-int/2addr v3, v12

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_4
    iget-object v5, p0, Lg/g0;->d:Lg/c0;

    add-int/2addr v0, v4

    invoke-virtual {v5, v3, v0}, Lg/c0;->a(II)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v3, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v5, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v0, v5

    .line 6
    :goto_6
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    if-ne v3, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 7
    :goto_7
    iget v5, p0, Lg/g0;->i:I

    invoke-static {v1, v5}, La0/f;->b(Landroid/widget/PopupWindow;I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 8
    iget-object v5, p0, Lg/g0;->p:Landroid/view/View;

    .line 9
    sget-object v6, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_a

    return-void

    .line 11
    :cond_a
    iget v5, p0, Lg/g0;->f:I

    if-ne v5, v8, :cond_b

    const/4 v5, -0x1

    goto :goto_8

    :cond_b
    if-ne v5, v11, :cond_c

    .line 12
    iget-object v5, p0, Lg/g0;->p:Landroid/view/View;

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_c
    :goto_8
    if-ne v9, v8, :cond_11

    if-eqz v3, :cond_d

    move v9, v0

    goto :goto_9

    :cond_d
    const/4 v9, -0x1

    :goto_9
    iget v0, p0, Lg/g0;->f:I

    if-eqz v3, :cond_f

    if-ne v0, v8, :cond_e

    const/4 v0, -0x1

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_f
    if-ne v0, v8, :cond_10

    const/4 v4, -0x1

    :cond_10
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_11
    if-ne v9, v11, :cond_12

    move v9, v0

    :cond_12
    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    iget-object v2, p0, Lg/g0;->p:Landroid/view/View;

    .line 15
    iget v3, p0, Lg/g0;->g:I

    iget v4, p0, Lg/g0;->h:I

    if-gez v5, :cond_13

    const/4 v5, -0x1

    :cond_13
    if-gez v9, :cond_14

    const/4 v6, -0x1

    goto :goto_c

    :cond_14
    move v6, v9

    :goto_c
    invoke-virtual/range {v1 .. v6}, Lg/o;->update(Landroid/view/View;IIII)V

    goto/16 :goto_11

    :cond_15
    iget v3, p0, Lg/g0;->f:I

    if-ne v3, v8, :cond_16

    const/4 v3, -0x1

    goto :goto_d

    :cond_16
    if-ne v3, v11, :cond_17

    .line 16
    iget-object v3, p0, Lg/g0;->p:Landroid/view/View;

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_17
    :goto_d
    if-ne v9, v8, :cond_18

    const/4 v9, -0x1

    goto :goto_e

    :cond_18
    if-ne v9, v11, :cond_19

    move v9, v0

    :cond_19
    :goto_e
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 18
    sget-object v0, Lg/g0;->A:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_1a
    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lg/g0;->s:Lg/g0$d;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lg/g0;->l:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lg/g0;->k:Z

    invoke-static {v1, v0}, La0/f;->a(Landroid/widget/PopupWindow;Z)V

    :cond_1b
    sget-object v0, Lg/g0;->C:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lg/g0;->x:Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v3, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v10, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :cond_1c
    :goto_10
    iget-object v0, p0, Lg/g0;->p:Landroid/view/View;

    .line 21
    iget v3, p0, Lg/g0;->g:I

    iget v4, p0, Lg/g0;->h:I

    iget v5, p0, Lg/g0;->m:I

    .line 22
    invoke-virtual {v1, v0, v3, v4, v5}, Lg/o;->showAsDropDown(Landroid/view/View;III)V

    .line 23
    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Lg/g0;->y:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    invoke-virtual {v0}, Lg/c0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 24
    :cond_1d
    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v2}, Lg/c0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    :cond_1e
    iget-boolean v0, p0, Lg/g0;->y:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lg/g0;->v:Landroid/os/Handler;

    iget-object v1, p0, Lg/g0;->u:Lg/g0$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_11
    return-void
.end method

.method public d(Landroid/content/Context;Z)Lg/c0;
    .locals 1

    new-instance v0, Lg/c0;

    invoke-direct {v0, p1, p2}, Lg/c0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lg/g0;->z:Lg/o;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lg/g0;->d:Lg/c0;

    iget-object v0, p0, Lg/g0;->v:Landroid/os/Handler;

    iget-object v1, p0, Lg/g0;->r:Lg/g0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lg/g0;->o:Lg/g0$b;

    if-nez v0, :cond_0

    new-instance v0, Lg/g0$b;

    invoke-direct {v0, p0}, Lg/g0$b;-><init>(Lg/g0;)V

    iput-object v0, p0, Lg/g0;->o:Lg/g0$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/g0;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lg/g0;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lg/g0;->o:Lg/g0$b;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lg/g0;->d:Lg/c0;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lg/g0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g0;->z:Lg/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lg/g0;->w:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lg/g0;->f:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Lg/g0;->f:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lg/g0;->z:Lg/o;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final h()Lg/c0;
    .locals 1

    iget-object v0, p0, Lg/g0;->d:Lg/c0;

    return-object v0
.end method
