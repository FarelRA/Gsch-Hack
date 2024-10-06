.class public abstract Lh0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/g;)Lh0/b;
    .locals 2

    new-instance v0, Lh0/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/n;

    invoke-interface {v1}, Landroidx/lifecycle/n;->getViewModelStore()Landroidx/lifecycle/m;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lh0/b;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/m;)V

    return-object v0
.end method
