.class public final Le0/d$b;
.super Le0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le0/e<",
        "Le0/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le0/d;


# direct methods
.method public constructor <init>(Le0/d;)V
    .locals 0

    iput-object p1, p0, Le0/d$b;->e:Le0/d;

    invoke-direct {p0, p1}, Le0/e;-><init>(Le0/d;)V

    return-void
.end method


# virtual methods
.method public final d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le0/d$b;->e:Le0/d;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Le0/d$b;->e:Le0/d;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
