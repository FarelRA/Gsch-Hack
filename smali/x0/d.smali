.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lx0/d;->d:I

    iget-object v1, p0, Lx0/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lx0/d;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ly/m;->e(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lx0/d;->c:I

    sub-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x0

    invoke-static {v1, v0}, Ly/m;->d(Landroid/view/View;I)V

    return-void
.end method
