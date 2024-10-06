.class public final Lj0/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/b;

.field public final synthetic b:Lj0/g;


# direct methods
.method public constructor <init>(Lj0/g;Lk/b;)V
    .locals 0

    iput-object p1, p0, Lj0/h;->b:Lj0/g;

    iput-object p2, p0, Lj0/h;->a:Lk/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lj0/h;->a:Lk/b;

    invoke-virtual {v0, p1}, Lk/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj0/h;->b:Lj0/g;

    iget-object v0, v0, Lj0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lj0/h;->b:Lj0/g;

    iget-object v0, v0, Lj0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
