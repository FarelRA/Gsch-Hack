.class public final Le/e;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Le/e;->a:Landroid/content/Context;

    iput-object p2, p0, Le/e;->b:Le/a;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->c()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Le/e;->b:Le/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a;->e()Landroidx/appcompat/view/menu/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lf/g;

    .line 8
    .line 9
    iget-object v2, p0, Le/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Lf/g;-><init>(Landroid/content/Context;Lt/a;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    iget-object v0, v0, Le/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->h()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    iget-boolean v0, v0, Le/a;->c:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->i()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0}, Le/a;->j()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->l(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    iput-object p1, v0, Le/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->n(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Le/e;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->p(Z)V

    return-void
.end method
