.class public final Le/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/h<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e$a;->b:Landroid/content/Context;

    iput-object p2, p0, Le/e$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/e$a;->c:Ljava/util/ArrayList;

    new-instance p1, Lk/h;

    invoke-direct {p1}, Lk/h;-><init>()V

    iput-object p1, p0, Le/e$a;->d:Lk/h;

    return-void
.end method


# virtual methods
.method public final a(Le/a;Landroidx/appcompat/view/menu/f;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/e$a;->e(Le/a;)Le/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Le/e$a;->d:Lk/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p2, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/Menu;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lf/g;

    .line 17
    .line 18
    iget-object v2, p0, Le/e$a;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2, p2}, Lf/g;-><init>(Landroid/content/Context;Lt/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, v1}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Le/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 27
    .line 28
    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final b(Le/a;)V
    .locals 1

    invoke-virtual {p0, p1}, Le/e$a;->e(Le/a;)Le/e;

    move-result-object p1

    iget-object v0, p0, Le/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final c(Le/a;Landroidx/appcompat/view/menu/f;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/e$a;->e(Le/a;)Le/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Le/e$a;->d:Lk/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p2, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/Menu;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lf/g;

    .line 17
    .line 18
    iget-object v2, p0, Le/e$a;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2, p2}, Lf/g;-><init>(Landroid/content/Context;Lt/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, v1}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Le/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 27
    .line 28
    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final d(Le/a;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/e$a;->e(Le/a;)Le/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p2, Lt/b;

    .line 6
    .line 7
    new-instance v0, Lf/e;

    .line 8
    .line 9
    iget-object v1, p0, Le/e$a;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1, p2}, Lf/e;-><init>(Landroid/content/Context;Lt/b;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Le/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 15
    .line 16
    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final e(Le/a;)Le/e;
    .locals 5

    iget-object v0, p0, Le/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/e;

    if-eqz v3, :cond_0

    iget-object v4, v3, Le/e;->b:Le/a;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Le/e;

    iget-object v2, p0, Le/e$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Le/e;-><init>(Landroid/content/Context;Le/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
