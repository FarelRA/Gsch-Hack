.class public final Lg/g0$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lg/g0;


# direct methods
.method public constructor <init>(Lg/g0;)V
    .locals 0

    iput-object p1, p0, Lg/g0$b;->a:Lg/g0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lg/g0$b;->a:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/g0;->c()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lg/g0$b;->a:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->dismiss()V

    return-void
.end method
