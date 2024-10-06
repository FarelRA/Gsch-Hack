.class public Lb/p;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lb/h;


# instance fields
.field public b:Lb/j;

.field public final c:Lb/p$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/util/TypedValue;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0300ae

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    .line 18
    .line 19
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lb/p$a;

    .line 25
    .line 26
    move-object p2, p0

    .line 27
    check-cast p2, Lb/f;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lb/p$a;-><init>(Lb/f;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lb/p;->c:Lb/p$a;

    .line 33
    .line 34
    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Lb/i;->f(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lb/i;->c()Z

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lb/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/p;->b:Lb/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb/j;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2, p0}, Lb/j;-><init>(Landroid/content/Context;Landroid/view/Window;Lb/h;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lb/p;->b:Lb/j;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lb/p;->b:Lb/j;

    .line 21
    .line 22
    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lb/j;->q()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lb/j;->s:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v2, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lb/j;->d:Landroid/view/Window$Callback;

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method final b(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lb/p;->c:Lb/p$a;

    invoke-static {v1, v0, p0, p1}, Ly/c;->b(Ly/c$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lb/j;->q()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lb/j;->c:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/i;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/i;->d()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/i;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lb/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Lb/j;->t()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lb/j;->g:Lb/a;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lb/a;->m(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, v0, Lb/j;->J:Lb/j$f;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lb/j$f;->c:Lb/o;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v2, v0, Lb/j$f;->e:Lb/j;

    .line 30
    .line 31
    iget-object v2, v2, Lb/j;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lb/j$f;->c:Lb/o;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onSupportActionModeFinished(Le/a;)V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted(Le/a;)V
    .locals 0

    return-void
.end method

.method public final onWindowStartingSupportActionMode(Le/a$a;)Le/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/i;->h(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    check-cast v0, Lb/j;

    .line 1
    invoke-virtual {v0}, Lb/j;->q()V

    .line 2
    iget-object v1, v0, Lb/j;->s:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lb/j;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    check-cast v0, Lb/j;

    .line 3
    invoke-virtual {v0}, Lb/j;->q()V

    .line 4
    iget-object v1, v0, Lb/j;->s:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lb/j;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/i;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lb/p;->a()Lb/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/i;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
