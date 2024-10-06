.class public final Landroidx/recyclerview/widget/n$a;
.super Ly/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Landroidx/recyclerview/widget/n;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/n;)V
    .locals 0

    invoke-direct {p0}, Ly/a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/n$a;->d:Landroidx/recyclerview/widget/n;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lz/d;)V
    .locals 3

    .line 1
    iget-object p2, p2, Lz/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v0, p0, Ly/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/n$a;->d:Landroidx/recyclerview/widget/n;

    .line 9
    .line 10
    iget-object v0, p2, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 11
    .line 12
    iget-boolean v1, v0, Landroidx/recyclerview/widget/k;->p:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, v0, Landroidx/recyclerview/widget/k;->w:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 40
    .line 41
    iget-object p2, p2, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final d(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Ly/a;->d(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/n$a;->d:Landroidx/recyclerview/widget/n;

    .line 10
    .line 11
    iget-object p3, p1, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 12
    .line 13
    iget-boolean v0, p3, Landroidx/recyclerview/widget/k;->p:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-boolean v0, p3, Landroidx/recyclerview/widget/k;->w:Z

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object p3, p3, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/a;

    .line 23
    .line 24
    iget-object p3, p3, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-lez p3, :cond_1

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p3, 0x0

    .line 35
    :goto_0
    if-eqz p3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p2, 0x0

    .line 39
    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/k;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getLayoutManager()Landroidx/recyclerview/widget/k$j;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/k$j;->b:Landroidx/recyclerview/widget/k;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 56
    .line 57
    :cond_4
    return v1
.end method
