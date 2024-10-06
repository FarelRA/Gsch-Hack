.class public final Lj0/u;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj0/o;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lf/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lj0/u;->a:Lj0/o;

    iput-object p2, p0, Lj0/u;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lj0/u;->a:Lj0/o;

    iget-object v0, p0, Lj0/u;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lj0/o;->b(Landroid/view/View;)V

    return-void
.end method
