.class public final Landroidx/appcompat/widget/d$a;
.super Lm1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/d;->q(IJ)Ly/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public h0:Z

.field public final synthetic i0:I

.field public final synthetic j0:Landroidx/appcompat/widget/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/d;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/d$a;->j0:Landroidx/appcompat/widget/d;

    iput p2, p0, Landroidx/appcompat/widget/d$a;->i0:I

    invoke-direct {p0}, Lm1/h;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/d$a;->h0:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/d$a;->h0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d$a;->j0:Landroidx/appcompat/widget/d;

    iget-object v0, v0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/d$a;->i0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/d$a;->h0:Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d$a;->j0:Landroidx/appcompat/widget/d;

    iget-object v0, v0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
