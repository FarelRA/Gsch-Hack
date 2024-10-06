.class public final Le0/c$a;
.super Lh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le0/c;


# direct methods
.method public constructor <init>(Le0/c;)V
    .locals 0

    iput-object p1, p0, Le0/c$a;->a:Le0/c;

    invoke-direct {p0}, Lh/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/c$a;->a:Le0/c;

    .line 2
    .line 3
    iget-object v0, v0, Le0/c;->s:Le0/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Le0/c;->d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Le0/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final d(I)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Le0/c$a;->a:Le0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Le0/c$a;->a:Le0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method
