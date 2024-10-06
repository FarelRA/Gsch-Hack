.class public final Lb/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lb/r;


# direct methods
.method public constructor <init>(Lb/r;)V
    .locals 0

    iput-object p1, p0, Lb/r$d;->b:Lb/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/f;)V
    .locals 4

    iget-object v0, p0, Lb/r$d;->b:Lb/r;

    iget-object v1, v0, Lb/r;->c:Lb/r$e;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/r;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {v1}, Landroidx/appcompat/widget/d;->c()Z

    move-result v1

    iget-object v0, v0, Lb/r;->c:Lb/r$e;

    const/16 v2, 0x6c

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, p1}, Le/i;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p1}, Lb/r$e;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, p1}, Le/i;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method
