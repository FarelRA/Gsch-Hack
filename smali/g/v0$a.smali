.class public final Lg/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg/v0;


# direct methods
.method public constructor <init>(Lg/v0;)V
    .locals 0

    iput-object p1, p0, Lg/v0$a;->b:Lg/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg/v0$a;->b:Lg/v0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/v0;->c(Z)V

    return-void
.end method
