.class public final Lg/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lg/c0;


# direct methods
.method public constructor <init>(Lg/c0;)V
    .locals 0

    iput-object p1, p0, Lg/c0$b;->b:Lg/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/c0$b;->b:Lg/c0;

    iput-object v0, v1, Lg/c0;->n:Lg/c0$b;

    invoke-virtual {v1}, Lg/c0;->drawableStateChanged()V

    return-void
.end method
