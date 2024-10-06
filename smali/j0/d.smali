.class public final Lj0/d;
.super Lj0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj0/v;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, -0x4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lj0/v;->w:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lj0/q;->b(Landroid/view/View;F)V

    sget-object p2, Lj0/q;->d:Lj0/q$a;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lj0/d$a;

    invoke-direct {p3, p1}, Lj0/d$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lj0/c;

    invoke-direct {p3, p1}, Lj0/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lj0/g;->a(Lj0/g$d;)V

    return-object p2
.end method

.method public final g(Lj0/n;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lj0/v;->H(Lj0/n;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lj0/n;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p1, p1, Lj0/n;->b:Landroid/view/View;

    .line 7
    .line 8
    sget-object v1, Lj0/q;->a:Lj0/s;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lj0/r;->A(Landroid/view/View;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "android:fade:transitionAlpha"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method
