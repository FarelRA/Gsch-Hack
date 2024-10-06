.class public final Le0/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/p;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Le0/p;


# direct methods
.method public constructor <init>(Le0/p;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Le0/p$b;->g:Le0/p;

    iput-object p2, p0, Le0/p$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Le0/p$b;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Le0/p$b;->c:Ljava/lang/Object;

    iput-object p5, p0, Le0/p$b;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Le0/p$b;->e:Ljava/lang/Object;

    iput-object p7, p0, Le0/p$b;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Le0/p$b;->g:Le0/p;

    iget-object v1, p0, Le0/p$b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le0/p$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Le0/p;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Le0/p$b;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le0/p$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Le0/p;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, Le0/p$b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p0, Le0/p$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Le0/p;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
