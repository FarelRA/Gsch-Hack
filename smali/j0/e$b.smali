.class public final Lj0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/e;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
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

.field public final synthetic g:Lj0/e;


# direct methods
.method public constructor <init>(Lj0/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lj0/e$b;->g:Lj0/e;

    iput-object p2, p0, Lj0/e$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lj0/e$b;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lj0/e$b;->c:Ljava/lang/Object;

    iput-object p5, p0, Lj0/e$b;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lj0/e$b;->e:Ljava/lang/Object;

    iput-object p7, p0, Lj0/e$b;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lj0/e$b;->g:Lj0/e;

    iget-object v2, p0, Lj0/e$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lj0/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lj0/e;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v2, p0, Lj0/e$b;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lj0/e$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lj0/e;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v2, p0, Lj0/e$b;->e:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lj0/e$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lj0/e;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lj0/g;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
