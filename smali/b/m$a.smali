.class public final Lb/m$a;
.super Lm1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h0:Lb/m;


# direct methods
.method public constructor <init>(Lb/m;)V
    .locals 0

    iput-object p1, p0, Lb/m$a;->h0:Lb/m;

    invoke-direct {p0}, Lm1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lb/m$a;->h0:Lb/m;

    iget-object v1, v0, Lb/m;->b:Lb/j;

    iget-object v1, v1, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lb/m;->b:Lb/j;

    iget-object v1, v0, Lb/j;->q:Ly/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ly/q;->d(Ly/r;)V

    iput-object v2, v0, Lb/j;->q:Ly/q;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lb/m$a;->h0:Lb/m;

    iget-object v0, v0, Lb/m;->b:Lb/j;

    iget-object v0, v0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
