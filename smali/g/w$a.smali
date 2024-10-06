.class public final Lg/w$a;
.super Lq/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/w;->i(Landroid/content/Context;Lg/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lg/w;


# direct methods
.method public constructor <init>(Lg/w;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lg/w$a;->b:Lg/w;

    iput-object p2, p0, Lg/w$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lq/e;-><init>()V

    return-void
.end method
