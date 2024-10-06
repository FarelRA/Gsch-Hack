.class public final Landroidx/recyclerview/widget/k$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/k$j;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k$j;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k$j;->o(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/k$j;->f:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr v1, v0

    .line 10
    return v1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k$j;->t()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/k$k;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/k$k;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/k$k;->a:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    add-int/2addr v1, p1

    .line 27
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 28
    .line 29
    add-int/2addr v1, p1

    .line 30
    return v1
.end method

.method public final e(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/k$k;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/k$j$a;->a:Landroidx/recyclerview/widget/k$j;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/k$k;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/k$k;->a:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    sub-int/2addr v1, p1

    .line 27
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 28
    .line 29
    sub-int/2addr v1, p1

    .line 30
    return v1
.end method
