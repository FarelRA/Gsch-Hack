.class public final Le1/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Le1/d;


# direct methods
.method public constructor <init>(Le1/d;)V
    .locals 0

    iput-object p1, p0, Le1/a;->c:Le1/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le1/a;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le1/a;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    iget-object v0, p0, Le1/a;->c:Le1/d;

    iput p1, v0, Le1/d;->a:I

    const/4 p1, 0x0

    iput-object p1, v0, Le1/d;->b:Landroid/animation/Animator;

    iget-boolean p1, p0, Le1/a;->a:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Le1/d;->n:Lf1/h;

    iget-boolean v0, p0, Le1/a;->b:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1, v0}, Lf1/h;->b(IZ)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Le1/a;->c:Le1/d;

    iget-object v1, v0, Le1/d;->n:Lf1/h;

    iget-boolean v2, p0, Le1/a;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lf1/h;->b(IZ)V

    const/4 v1, 0x1

    iput v1, v0, Le1/d;->a:I

    iput-object p1, v0, Le1/d;->b:Landroid/animation/Animator;

    iput-boolean v3, p0, Le1/a;->a:Z

    return-void
.end method
