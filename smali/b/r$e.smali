.class public final Lb/r$e;
.super Le/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic c:Lb/r;


# direct methods
.method public constructor <init>(Lb/r;Lb/j$e;)V
    .locals 0

    iput-object p1, p0, Lb/r$e;->c:Lb/r;

    invoke-direct {p0, p2}, Le/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lb/r$e;->c:Lb/r;

    iget-object v0, v0, Lb/r;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->o()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Le/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lb/r$e;->c:Lb/r;

    .line 8
    .line 9
    iget-boolean p3, p2, Lb/r;->b:Z

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    iget-object p3, p2, Lb/r;->a:Landroidx/appcompat/widget/d;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p3, Landroidx/appcompat/widget/d;->m:Z

    .line 17
    .line 18
    iput-boolean v0, p2, Lb/r;->b:Z

    .line 19
    .line 20
    :cond_0
    return p1
.end method
