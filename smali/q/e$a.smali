.class public final Lq/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:Lq/e;


# direct methods
.method public constructor <init>(Lq/e;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lq/e$a;->c:Lq/e;

    iput-object p2, p0, Lq/e$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq/e$a;->c:Lq/e;

    .line 2
    .line 3
    check-cast v0, Lg/w$a;

    .line 4
    .line 5
    iget-object v1, v0, Lg/w$a;->b:Lg/w;

    .line 6
    .line 7
    iget-boolean v2, v1, Lg/w;->k:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lq/e$a;->b:Landroid/graphics/Typeface;

    .line 12
    .line 13
    iput-object v2, v1, Lg/w;->j:Landroid/graphics/Typeface;

    .line 14
    .line 15
    iget-object v0, v0, Lg/w$a;->a:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v1, v1, Lg/w;->i:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
