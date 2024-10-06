.class public final Lb/n;
.super Lm1/h;
.source "SourceFile"


# instance fields
.field public final synthetic h0:Lb/j;


# direct methods
.method public constructor <init>(Lb/j;)V
    .locals 0

    iput-object p1, p0, Lb/n;->h0:Lb/j;

    invoke-direct {p0}, Lm1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lb/n;->h0:Lb/j;

    iget-object v1, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lb/j;->q:Ly/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ly/q;->d(Ly/r;)V

    iput-object v2, v0, Lb/j;->q:Ly/q;

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/n;->h0:Lb/j;

    .line 2
    .line 3
    iget-object v1, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/View;

    .line 33
    .line 34
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
