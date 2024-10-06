.class public final Le0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Le0/t;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Le0/c;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le0/t;Landroid/view/View;Le0/c;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Le0/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Le0/l;->c:Le0/t;

    iput-object p3, p0, Le0/l;->d:Landroid/view/View;

    iput-object p4, p0, Le0/l;->e:Le0/c;

    iput-object p5, p0, Le0/l;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Le0/l;->g:Ljava/util/ArrayList;

    iput-object p7, p0, Le0/l;->h:Ljava/util/ArrayList;

    iput-object p8, p0, Le0/l;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le0/l;->c:Le0/t;

    iget-object v1, p0, Le0/l;->d:Landroid/view/View;

    iget-object v2, p0, Le0/l;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v1}, Le0/t;->j(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v3, p0, Le0/l;->e:Le0/c;

    iget-object v4, p0, Le0/l;->f:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3, v4, v1}, Le0/o;->f(Le0/t;Ljava/lang/Object;Le0/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Le0/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v2, p0, Le0/l;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v3, p0, Le0/l;->i:Ljava/lang/Object;

    if-eqz v3, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v2, v4}, Le0/t;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
