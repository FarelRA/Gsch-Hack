.class public final Lb1/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb1/d;


# direct methods
.method public constructor <init>(Lb1/d;)V
    .locals 0

    iput-object p1, p0, Lb1/a;->a:Lb1/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb1/a;->a:Lb1/d;

    invoke-interface {p1}, Lb1/d;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb1/a;->a:Lb1/d;

    invoke-interface {p1}, Lb1/d;->a()V

    return-void
.end method
