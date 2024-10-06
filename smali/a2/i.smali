.class public La2/i;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/i$c;,
        La2/i$b;,
        La2/i$a;
    }
.end annotation


# instance fields
.field public final d:La2/d;

.field public final e:Lx/b;

.field public final f:La2/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;La2/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz1/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "N/A"

    .line 7
    .line 8
    iput-object p1, p0, Lz1/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, La2/i;->d:La2/d;

    .line 11
    .line 12
    new-instance p1, La2/h;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, v0}, La2/h;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, La2/i;->f:La2/h;

    .line 19
    .line 20
    new-instance p1, Lx/b;

    .line 21
    .line 22
    const-string v0, "AES"

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    iget p2, p2, La2/d;->g:I

    .line 26
    .line 27
    invoke-direct {p1, p2, v1, v0}, Lx/b;-><init>(IILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, La2/i;->e:Lx/b;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;
    .locals 13

    move-object v0, p0

    iget-object v1, v0, La2/i;->f:La2/h;

    sget-object v6, Lm1/h;->J:[B

    iget-object v2, v0, La2/i;->e:Lx/b;

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, La2/h;->b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;

    move-result-object v9

    iget-object v7, v0, La2/i;->d:La2/d;

    move-object v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, La2/n;->b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, La2/i;->f:La2/h;

    invoke-virtual {v0}, La2/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La2/i;->d:La2/d;

    invoke-virtual {v0}, La2/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 1

    iget-object v0, p0, La2/i;->f:La2/h;

    invoke-virtual {v0, p1, p2}, La2/h;->i(Ljava/security/Key;La2/f;)V

    return-void
.end method
