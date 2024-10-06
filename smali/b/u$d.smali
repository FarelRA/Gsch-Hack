.class public final Lb/u$d;
.super Le/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroidx/appcompat/view/menu/f;

.field public f:Le/a$a;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lb/u;


# direct methods
.method public constructor <init>(Lb/u;Landroid/content/Context;Lb/j$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/u$d;->h:Lb/u;

    .line 2
    .line 3
    invoke-direct {p0}, Le/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lb/u$d;->d:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lb/u$d;->f:Le/a$a;

    .line 9
    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/f;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput p2, p1, Landroidx/appcompat/view/menu/f;->l:I

    .line 17
    .line 18
    iput-object p1, p0, Lb/u$d;->e:Landroidx/appcompat/view/menu/f;

    .line 19
    .line 20
    iput-object p0, p1, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/f$a;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lb/u$d;->f:Le/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Le/a$a;->d(Le/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/f;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/u$d;->f:Le/a$a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lb/u$d;->i()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lb/u$d;->h:Lb/u;

    .line 10
    .line 11
    iget-object p1, p1, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    .line 13
    iget-object p1, p1, Lg/a;->e:Landroidx/appcompat/widget/a;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->l()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    .line 2
    .line 3
    iget-object v1, v0, Lb/u;->i:Lb/u$d;

    .line 4
    .line 5
    if-eq v1, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lb/u;->q:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iput-object p0, v0, Lb/u;->j:Lb/u$d;

    .line 15
    .line 16
    iget-object v1, p0, Lb/u$d;->f:Le/a$a;

    .line 17
    .line 18
    iput-object v1, v0, Lb/u;->k:Le/a$a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lb/u$d;->f:Le/a$a;

    .line 22
    .line 23
    invoke-interface {v1, p0}, Le/a$a;->b(Le/a;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lb/u$d;->f:Le/a$a;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Lb/u;->p(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v2, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 43
    .line 44
    iput-object v1, v2, Lg/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    .line 45
    .line 46
    :cond_2
    iget-object v2, v0, Lb/u;->e:Lg/a0;

    .line 47
    .line 48
    invoke-interface {v2}, Lg/a0;->n()Landroidx/appcompat/widget/Toolbar;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v3, 0x20

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lb/u;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 58
    .line 59
    iget-boolean v3, v0, Lb/u;->v:Z

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lb/u;->i:Lb/u$d;

    .line 65
    .line 66
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/u$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Landroidx/appcompat/view/menu/f;
    .locals 1

    iget-object v0, p0, Lb/u$d;->e:Landroidx/appcompat/view/menu/f;

    return-object v0
.end method

.method public final f()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Le/f;

    iget-object v1, p0, Lb/u$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->i:Lb/u$d;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/u$d;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->w()V

    :try_start_0
    iget-object v1, p0, Lb/u$d;->f:Le/a$a;

    invoke-interface {v1, p0, v0}, Le/a$a;->c(Le/a;Landroidx/appcompat/view/menu/f;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->v()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->v()V

    throw v1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    .line 2
    .line 3
    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 6
    .line 7
    return v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/u$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/u$d;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/u$d;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Le/a;->c:Z

    .line 2
    .line 3
    iget-object v0, p0, Lb/u$d;->h:Lb/u;

    .line 4
    .line 5
    iget-object v0, v0, Lb/u;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
