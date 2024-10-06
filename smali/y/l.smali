.class public final Ly/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Ly/j;


# direct methods
.method public constructor <init>(Ly/j;)V
    .locals 0

    iput-object p1, p0, Ly/l;->a:Ly/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    new-instance v0, Ly/t;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2}, Ly/t;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Ly/l;->a:Ly/j;

    .line 10
    .line 11
    invoke-interface {p2, p1, v0}, Ly/j;->a(Landroid/view/View;Ly/t;)Ly/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Ly/t;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/view/WindowInsets;

    .line 18
    .line 19
    return-object p1
.end method
