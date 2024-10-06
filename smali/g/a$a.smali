.class public final Lg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;)V
    .locals 0

    iput-object p1, p0, Lg/a$a;->c:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lg/a$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/a$a;->c:Lg/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/a;->g:Ly/q;

    iget v1, p0, Lg/a$a;->b:I

    invoke-static {v0, v1}, Lg/a;->b(Lg/a;I)V

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/a$a;->a:Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lg/a$a;->c:Lg/a;

    invoke-static {v0}, Lg/a;->a(Lg/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a$a;->a:Z

    return-void
.end method
