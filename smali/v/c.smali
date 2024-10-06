.class public final Lv/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/f$b<",
        "Lv/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq/e;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lg/w$a;)V
    .locals 0

    iput-object p1, p0, Lv/c;->a:Lq/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lv/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lv/e$d;

    .line 2
    .line 3
    iget-object v0, p0, Lv/c;->b:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v1, p0, Lv/c;->a:Lq/e;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v1, p1, v0}, Lq/e;->a(ILandroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v2, p1, Lv/e$d;->b:I

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lv/e$d;->a:Landroid/graphics/Typeface;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lq/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v1, v2, v0}, Lq/e;->a(ILandroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
