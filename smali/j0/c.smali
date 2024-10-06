.class public final Lj0/c;
.super Lj0/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lj0/c;->a:Landroid/view/View;

    invoke-direct {p0}, Lj0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lj0/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/c;->a:Landroid/view/View;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj0/q;->b(Landroid/view/View;F)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lj0/q;->a:Lj0/s;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lj0/g;->v(Lj0/g$d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
