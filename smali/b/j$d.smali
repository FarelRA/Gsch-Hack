.class public final Lb/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Le/a$a;

.field public final synthetic b:Lb/j;


# direct methods
.method public constructor <init>(Lb/j;Le/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/j$d;->b:Lb/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/j$d;->a:Le/a$a;

    return-void
.end method


# virtual methods
.method public final a(Le/a;Landroidx/appcompat/view/menu/f;)Z
    .locals 1

    iget-object v0, p0, Lb/j$d;->a:Le/a$a;

    invoke-interface {v0, p1, p2}, Le/a$a;->a(Le/a;Landroidx/appcompat/view/menu/f;)Z

    move-result p1

    return p1
.end method

.method public final b(Le/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/j$d;->a:Le/a$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Le/a$a;->b(Le/a;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lb/j$d;->b:Lb/j;

    .line 7
    .line 8
    iget-object v0, p1, Lb/j;->o:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lb/j;->c:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lb/j;->p:Lb/m;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lb/j;->q:Ly/q;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ly/q;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p1, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 35
    .line 36
    invoke-static {v0}, Ly/m;->a(Landroid/view/View;)Ly/q;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ly/q;->a(F)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p1, Lb/j;->q:Ly/q;

    .line 45
    .line 46
    new-instance v1, Lb/j$d$a;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lb/j$d$a;-><init>(Lb/j$d;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ly/q;->d(Ly/r;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p1, Lb/j;->f:Lb/h;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v1, p1, Lb/j;->m:Le/a;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Lb/h;->onSupportActionModeFinished(Le/a;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    iput-object v0, p1, Lb/j;->m:Le/a;

    .line 65
    .line 66
    return-void
.end method

.method public final c(Le/a;Landroidx/appcompat/view/menu/f;)Z
    .locals 1

    iget-object v0, p0, Lb/j$d;->a:Le/a$a;

    invoke-interface {v0, p1, p2}, Le/a$a;->c(Le/a;Landroidx/appcompat/view/menu/f;)Z

    move-result p1

    return p1
.end method

.method public final d(Le/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lb/j$d;->a:Le/a$a;

    invoke-interface {v0, p1, p2}, Le/a$a;->d(Le/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
