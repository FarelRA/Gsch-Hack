.class public final Lj0/k$a$a;
.super Lj0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk/b;

.field public final synthetic b:Lj0/k$a;


# direct methods
.method public constructor <init>(Lj0/k$a;Lk/b;)V
    .locals 0

    iput-object p1, p0, Lj0/k$a$a;->b:Lj0/k$a;

    iput-object p2, p0, Lj0/k$a$a;->a:Lk/b;

    invoke-direct {p0}, Lj0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lj0/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/k$a$a;->b:Lj0/k$a;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/k$a;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lj0/k$a$a;->a:Lk/b;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
