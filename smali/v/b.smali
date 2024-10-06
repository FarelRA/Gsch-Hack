.class public final Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lv/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lv/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/b;->b:Lv/a;

    iput p3, p0, Lv/b;->c:I

    iput-object p4, p0, Lv/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lv/b;->c:I

    iget-object v1, p0, Lv/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lv/b;->b:Lv/a;

    invoke-static {v1, v2, v0}, Lv/e;->b(Landroid/content/Context;Lv/a;I)Lv/e$d;

    move-result-object v0

    iget-object v1, v0, Lv/e$d;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lv/e;->a:Lk/f;

    iget-object v3, p0, Lv/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lk/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
