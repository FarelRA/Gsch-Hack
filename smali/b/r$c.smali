.class public final Lb/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lb/r;


# direct methods
.method public constructor <init>(Lb/r;)V
    .locals 0

    iput-object p1, p0, Lb/r$c;->c:Lb/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 1

    iget-boolean p2, p0, Lb/r$c;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/r$c;->b:Z

    iget-object p2, p0, Lb/r$c;->c:Lb/r;

    iget-object v0, p2, Lb/r;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->h()V

    iget-object p2, p2, Lb/r;->c:Lb/r$e;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    invoke-virtual {p2, v0, p1}, Le/i;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/r$c;->b:Z

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/f;)Z
    .locals 2

    iget-object v0, p0, Lb/r$c;->c:Lb/r;

    iget-object v0, v0, Lb/r;->c:Lb/r$e;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Le/i;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
