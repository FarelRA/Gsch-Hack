.class public final Lj2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Li2/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lj2/c;->f()Li2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lj2/c;->f()Li2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Li2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lj2/c;->f()Li2/a;

    move-result-object v0

    invoke-interface {v0}, Li2/a;->c()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lj2/c;->f()Li2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Li2/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lj2/c;->f()Li2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Li2/a;->e(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lj2/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lj2/c;

    iget-object v2, p0, Lj2/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lj2/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final f()Li2/a;
    .locals 1

    iget-object v0, p0, Lj2/c;->b:Li2/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2/c;->b:Li2/a;

    goto :goto_0

    :cond_0
    sget-object v0, Lj2/b;->a:Lj2/b;

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lj2/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
