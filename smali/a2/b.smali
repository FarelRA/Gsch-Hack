.class public La2/b;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/b$a;,
        La2/b$b;,
        La2/b$c;
    }
.end annotation


# instance fields
.field public final d:Lx/b;

.field public final e:Lm1/h;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lz1/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "AES/GCM/NoPadding"

    .line 7
    .line 8
    iput-object p2, p0, Lz1/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p2, Lx/b;

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0x8

    .line 13
    .line 14
    const-string v0, "AES"

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p2, p1, v1, v0}, Lx/b;-><init>(IILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, La2/b;->d:Lx/b;

    .line 21
    .line 22
    new-instance p1, Lm1/h;

    .line 23
    .line 24
    invoke-direct {p1}, Lm1/h;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, La2/b;->e:Lm1/h;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lz1/d;[B[BLe2/a;Lv1/a;)[B
    .locals 7

    .line 1
    iget-object v0, p1, Lz1/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, [B

    .line 5
    .line 6
    new-instance v2, Lf2/a;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {v2, v0, p3}, Lf2/a;-><init>(I[B)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p1, Lz1/d;->b:Ljava/io/Serializable;

    .line 13
    .line 14
    move-object v4, p3

    .line 15
    check-cast v4, [B

    .line 16
    .line 17
    iget-object p1, p1, Lz1/d;->c:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, p1

    .line 20
    check-cast v5, [B

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    const-string p1, "alg"

    .line 25
    .line 26
    invoke-virtual {p4, p1}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "dir"

    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p1, p5, Lv1/a;->a:Lv1/a$a;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p5, Lv1/a;->b:Lv1/a$a;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, La2/b;->e:Lm1/h;

    .line 50
    .line 51
    move-object v6, p2

    .line 52
    invoke-virtual/range {v1 .. v6}, Lm1/h;->q(Ljava/security/Key;[B[B[B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, La2/b;->d:Lx/b;

    .line 2
    .line 3
    iget v0, v0, Lx/b;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lz1/f;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, La2/b;->e:Lm1/h;

    .line 8
    .line 9
    iget-object v3, p0, Lz1/f;->a:Li2/a;

    .line 10
    .line 11
    invoke-virtual {v2, v3, v0, v1}, Lm1/h;->B(Li2/a;ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final h()Lx/b;
    .locals 1

    iget-object v0, p0, La2/b;->d:Lx/b;

    return-object v0
.end method
