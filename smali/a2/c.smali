.class public La2/c;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/c$c;,
        La2/c$b;,
        La2/c$a;
    }
.end annotation


# instance fields
.field public final d:Lm1/h;

.field public final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

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
    new-instance p2, Lm1/h;

    .line 11
    .line 12
    invoke-direct {p2}, Lm1/h;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, La2/c;->d:Lm1/h;

    .line 16
    .line 17
    iput p1, p0, La2/c;->e:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;
    .locals 8

    .line 1
    new-instance v0, Lf/c;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "iv"

    .line 9
    .line 10
    invoke-virtual {p4, v1}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v1, "tag"

    .line 19
    .line 20
    invoke-virtual {p4, v1}, Le2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-virtual {v0, p4}, Lf/c;->f(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    iget-object p3, p3, Lv1/a;->a:Lv1/a$a;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, La2/c;->d:Lm1/h;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v3, p2

    .line 37
    move-object v5, p5

    .line 38
    invoke-virtual/range {v2 .. v7}, Lm1/h;->q(Ljava/security/Key;[B[B[B[B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    .line 44
    iget-object p1, p1, Lx/b;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p3, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p3
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lz1/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lz1/f;->a:Li2/a;

    .line 4
    .line 5
    iget v2, p0, La2/c;->e:I

    .line 6
    .line 7
    iget-object v3, p0, La2/c;->d:Lm1/h;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2, v0}, Lm1/h;->B(Li2/a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lz1/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, La2/c;->e:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lm1/h;->M(Ljava/security/Key;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
