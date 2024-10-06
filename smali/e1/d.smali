.class public Le1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/d$a;,
        Le1/d$c;,
        Le1/d$b;,
        Le1/d$d;,
        Le1/d$e;
    }
.end annotation


# static fields
.field public static final s:Lf0/a;

.field public static final t:[I

.field public static final u:[I

.field public static final v:[I

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I


# instance fields
.field public a:I

.field public b:Landroid/animation/Animator;

.field public c:Lw0/g;

.field public d:Lw0/g;

.field public e:Lw0/g;

.field public f:Lw0/g;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lf1/h;

.field public final o:Lh1/b;

.field public final p:Landroid/graphics/Rect;

.field public final q:Landroid/graphics/Matrix;

.field public r:Le1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lw0/a;->c:Lf0/a;

    sput-object v0, Le1/d;->s:Lf0/a;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Le1/d;->t:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Le1/d;->u:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Le1/d;->v:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Le1/d;->w:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Le1/d;->x:[I

    new-array v0, v1, [I

    sput-object v0, Le1/d;->y:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lf1/h;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le1/d;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le1/d;->k:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le1/d;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le1/d;->q:Landroid/graphics/Matrix;

    iput-object p1, p0, Le1/d;->n:Lf1/h;

    iput-object p2, p0, Le1/d;->o:Lh1/b;

    new-instance p2, Lf1/f;

    invoke-direct {p2}, Lf1/f;-><init>()V

    new-instance v0, Le1/d$c;

    move-object v1, p0

    check-cast v1, Le1/e;

    invoke-direct {v0, v1}, Le1/d$c;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le1/d;->t:[I

    invoke-virtual {p2, v2, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Le1/d$b;

    invoke-direct {v0, v1}, Le1/d$b;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le1/d;->u:[I

    invoke-virtual {p2, v2, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Le1/d$b;

    invoke-direct {v0, v1}, Le1/d$b;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le1/d;->v:[I

    invoke-virtual {p2, v2, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Le1/d$b;

    invoke-direct {v0, v1}, Le1/d$b;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le1/d;->w:[I

    invoke-virtual {p2, v2, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Le1/d$d;

    invoke-direct {v0, v1}, Le1/d$d;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le1/d;->x:[I

    invoke-virtual {p2, v2, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Le1/d$a;

    invoke-direct {v0, v1}, Le1/d$a;-><init>(Le1/e;)V

    invoke-static {v0}, Le1/d;->b(Le1/d$e;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Le1/d;->y:[I

    invoke-virtual {p2, v1, v0}, Lf1/f;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Le1/d;->g:F

    return-void
.end method

.method public static b(Le1/d$e;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Le1/d;->s:Lf0/a;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Lw0/g;FFF)Landroid/animation/AnimatorSet;
    .locals 5

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [F

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput p2, v2, v3

    .line 13
    .line 14
    iget-object p2, p0, Le1/d;->n:Lf1/h;

    .line 15
    .line 16
    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "opacity"

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 33
    .line 34
    new-array v2, v1, [F

    .line 35
    .line 36
    aput p3, v2, v3

    .line 37
    .line 38
    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "scale"

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v0}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 55
    .line 56
    new-array v4, v1, [F

    .line 57
    .line 58
    aput p3, v4, v3

    .line 59
    .line 60
    invoke-static {p2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p1, v2}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p3}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Le1/d;->q:Landroid/graphics/Matrix;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    new-instance v0, Lw0/e;

    .line 83
    .line 84
    invoke-direct {v0}, Lw0/e;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lw0/f;

    .line 88
    .line 89
    invoke-direct {v2}, Lw0/f;-><init>()V

    .line 90
    .line 91
    .line 92
    new-array v1, v1, [Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v4, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v4, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 97
    .line 98
    .line 99
    aput-object v4, v1, v3

    .line 100
    .line 101
    invoke-static {p2, v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p3, "iconScale"

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Lw0/g;->c(Ljava/lang/String;)Lw0/h;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Lw0/h;->a(Landroid/animation/Animator;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 118
    .line 119
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p4}, Lm1/h;->D(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 123
    .line 124
    .line 125
    return-object p1
.end method

.method public c()F
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public e()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public f()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public g([I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public h(FFF)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public i(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public j()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/d;->p:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Le1/d;->d(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Le1/d;->i(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget-object v0, p0, Le1/d;->o:Lh1/b;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    throw v0
.end method
