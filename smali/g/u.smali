.class public final Lg/u;
.super Lg/e0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lg/v$b;

.field public final synthetic l:Lg/v;


# direct methods
.method public constructor <init>(Lg/v;Landroid/view/View;Lg/v$b;)V
    .locals 0

    iput-object p1, p0, Lg/u;->l:Lg/v;

    iput-object p3, p0, Lg/u;->k:Lg/v$b;

    invoke-direct {p0, p2}, Lg/e0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lf/h;
    .locals 1

    iget-object v0, p0, Lg/u;->k:Lg/v$b;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lg/u;->l:Lg/v;

    iget-object v1, v0, Lg/v;->g:Lg/v$b;

    invoke-virtual {v1}, Lg/g0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lg/v;->g:Lg/v$b;

    invoke-virtual {v0}, Lg/v$b;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
