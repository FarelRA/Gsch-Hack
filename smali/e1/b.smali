.class public final Le1/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le1/d;


# direct methods
.method public constructor <init>(Le1/d;)V
    .locals 0

    iput-object p1, p0, Le1/b;->b:Le1/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le1/b;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Le1/b;->b:Le1/d;

    iput p1, v0, Le1/d;->a:I

    const/4 p1, 0x0

    iput-object p1, v0, Le1/d;->b:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Le1/b;->b:Le1/d;

    iget-object v1, v0, Le1/d;->n:Lf1/h;

    const/4 v2, 0x0

    iget-boolean v3, p0, Le1/b;->a:Z

    invoke-virtual {v1, v2, v3}, Lf1/h;->b(IZ)V

    const/4 v1, 0x2

    iput v1, v0, Le1/d;->a:I

    iput-object p1, v0, Le1/d;->b:Landroid/animation/Animator;

    return-void
.end method
