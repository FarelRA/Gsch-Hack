.class public final Ld/a$b;
.super Ld/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public I:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lk/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a$b;Ld/a;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld/d$a;-><init>(Ld/d$a;Ld/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object p2, p1, Ld/a$b;->I:Lk/e;

    iput-object p2, p0, Ld/a$b;->I:Lk/e;

    iget-object p1, p1, Ld/a$b;->J:Lk/i;

    goto :goto_0

    :cond_0
    new-instance p1, Lk/e;

    invoke-direct {p1}, Lk/e;-><init>()V

    iput-object p1, p0, Ld/a$b;->I:Lk/e;

    new-instance p1, Lk/i;

    invoke-direct {p1}, Lk/i;-><init>()V

    :goto_0
    iput-object p1, p0, Ld/a$b;->J:Lk/i;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-object v0, p0, Ld/a$b;->I:Lk/e;

    invoke-virtual {v0}, Lk/e;->c()Lk/e;

    move-result-object v0

    iput-object v0, p0, Ld/a$b;->I:Lk/e;

    iget-object v0, p0, Ld/a$b;->J:Lk/i;

    invoke-virtual {v0}, Lk/i;->b()Lk/i;

    move-result-object v0

    iput-object v0, p0, Ld/a$b;->J:Lk/i;

    return-void
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ld/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/a;-><init>(Ld/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Ld/a;

    invoke-direct {v0, p0, p1}, Ld/a;-><init>(Ld/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
