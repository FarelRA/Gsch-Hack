.class public final Landroidx/appcompat/widget/a$a;
.super Landroidx/appcompat/view/menu/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Landroidx/appcompat/view/menu/m;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/a$a;->m:Landroidx/appcompat/widget/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p4, v0}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/f;Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p3, Landroidx/appcompat/view/menu/m;->A:Landroidx/appcompat/view/menu/h;

    .line 8
    .line 9
    iget p2, p2, Landroidx/appcompat/view/menu/h;->x:I

    .line 10
    .line 11
    const/16 p3, 0x20

    .line 12
    .line 13
    and-int/2addr p2, p3

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object p2, p1, Landroidx/appcompat/widget/a;->j:Landroidx/appcompat/widget/a$d;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p1, Landroidx/appcompat/view/menu/a;->i:Landroidx/appcompat/view/menu/k;

    .line 24
    .line 25
    check-cast p2, Landroid/view/View;

    .line 26
    .line 27
    :cond_1
    iput-object p2, p0, Landroidx/appcompat/view/menu/i;->f:Landroid/view/View;

    .line 28
    .line 29
    :cond_2
    iget-object p1, p1, Landroidx/appcompat/widget/a;->y:Landroidx/appcompat/widget/a$f;

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->i:Landroidx/appcompat/view/menu/j$a;

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->j:Lf/f;

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/j;->i(Landroidx/appcompat/view/menu/j$a;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/a$a;->m:Landroidx/appcompat/widget/a;

    iput-object v0, v1, Landroidx/appcompat/widget/a;->v:Landroidx/appcompat/widget/a$a;

    invoke-super {p0}, Landroidx/appcompat/view/menu/i;->c()V

    return-void
.end method
