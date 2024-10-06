.class public Ld/d;
.super Ld/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/d$a;
    }
.end annotation


# instance fields
.field public o:Ld/d$a;

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/d$a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ld/b;-><init>()V

    new-instance v0, Ld/d$a;

    invoke-direct {v0, p1, p0, p2}, Ld/d$a;-><init>(Ld/d$a;Ld/d;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Ld/d;->e(Ld/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/d;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Ld/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/d;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic b()Ld/b$c;
    .locals 1

    invoke-virtual {p0}, Ld/d;->f()Ld/d$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ld/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld/b;->b:Ld/b$c;

    .line 2
    .line 3
    iget v0, p0, Ld/b;->h:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ld/b$c;->d(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Ld/b;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ld/b;->c(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Ld/b;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    instance-of v0, p1, Ld/d$a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p1, Ld/d$a;

    .line 26
    .line 27
    iput-object p1, p0, Ld/d;->o:Ld/d$a;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public f()Ld/d$a;
    .locals 3

    new-instance v0, Ld/d$a;

    iget-object v1, p0, Ld/d;->o:Ld/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ld/d$a;-><init>(Ld/d$a;Ld/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Ld/d;->p:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ld/b;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Ld/d;->o:Ld/d$a;

    invoke-virtual {v0}, Ld/d$a;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/d;->p:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    invoke-super {p0, p1}, Ld/b;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Ld/d;->o:Ld/d$a;

    invoke-virtual {v1, p1}, Ld/d$a;->f([I)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Ld/d;->o:Ld/d$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Ld/d$a;->f([I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Ld/b;->d(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
