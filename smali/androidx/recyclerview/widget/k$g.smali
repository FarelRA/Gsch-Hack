.class public abstract Landroidx/recyclerview/widget/k$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/k$g$a;,
        Landroidx/recyclerview/widget/k$g$b;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/k$g$b;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k$g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/k$g;->a:Landroidx/recyclerview/widget/k$g$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k$g;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/k$g;->c:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/k$g;->d:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/k$v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$g;->a:Landroidx/recyclerview/widget/k$g$b;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    check-cast v0, Landroidx/recyclerview/widget/k$h;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/k$v;->h(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Landroidx/recyclerview/widget/k$v;->e:Landroidx/recyclerview/widget/k$v;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iput-object v3, p1, Landroidx/recyclerview/widget/k$v;->e:Landroidx/recyclerview/widget/k$v;

    .line 17
    .line 18
    :cond_0
    iget v2, p1, Landroidx/recyclerview/widget/k$v;->f:I

    .line 19
    .line 20
    and-int/lit8 v2, v2, 0x10

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-nez v2, :cond_5

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/k$h;->a:Landroidx/recyclerview/widget/k;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->w()V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 36
    .line 37
    iget-object v5, v2, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 38
    .line 39
    check-cast v5, Landroidx/recyclerview/widget/l;

    .line 40
    .line 41
    iget-object v6, v5, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/k;

    .line 42
    .line 43
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v7, -0x1

    .line 48
    if-ne v6, v7, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/b;->f(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v7, v2, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 55
    .line 56
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/b$a;->c(I)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/b;->f(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/l;->b(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v1, 0x0

    .line 73
    :goto_1
    if-nez v1, :cond_4

    .line 74
    .line 75
    xor-int/lit8 v2, v1, 0x1

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->x(Z)V

    .line 78
    .line 79
    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k$v;->g()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/k;->removeDetachedView(Landroid/view/View;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-static {v3}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 93
    .line 94
    .line 95
    iget-object p1, v0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/k$p;->f(Landroidx/recyclerview/widget/k$v;)V

    .line 98
    .line 99
    .line 100
    throw v3

    .line 101
    :cond_5
    :goto_2
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method
