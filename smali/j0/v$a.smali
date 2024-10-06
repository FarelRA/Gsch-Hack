.class public final Lj0/v$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lj0/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/v$a;->f:Z

    iput-object p1, p0, Lj0/v$a;->a:Landroid/view/View;

    iput p2, p0, Lj0/v$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lj0/v$a;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj0/v$a;->d:Z

    invoke-virtual {p0, p1}, Lj0/v$a;->e(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj0/v$a;->e(Z)V

    return-void
.end method

.method public final c(Lj0/g;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj0/v$a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj0/v$a;->a:Landroid/view/View;

    .line 6
    .line 7
    iget v1, p0, Lj0/v$a;->b:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lj0/q;->c(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lj0/v$a;->c:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lj0/v$a;->e(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lj0/g;->v(Lj0/g$d;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj0/v$a;->e(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-boolean v0, p0, Lj0/v$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj0/v$a;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lj0/v$a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lj0/v$a;->e:Z

    invoke-static {v0, p1}, Lj0/p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj0/v$a;->f:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lj0/v$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lj0/v$a;->a:Landroid/view/View;

    iget v0, p0, Lj0/v$a;->b:I

    invoke-static {p1, v0}, Lj0/q;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lj0/v$a;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj0/v$a;->e(Z)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lj0/v$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lj0/v$a;->a:Landroid/view/View;

    iget v0, p0, Lj0/v$a;->b:I

    invoke-static {p1, v0}, Lj0/q;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lj0/v$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lj0/v$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj0/q;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
